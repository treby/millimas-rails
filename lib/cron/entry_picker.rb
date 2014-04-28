require 'feedzirra'

class Cron::EntryPicker
  def self.init
    feed_list = Feed.all

    entries = []
    feed_list.each do |feed|
      next unless feed.url.nil?
      obj_feed = Feedzirra::Feed.fetch_and_parse(feed.feed_url)

      feed.url            = obj_feed.url
      feed.feed_url       = obj_feed.feed_url

      feed.title          = obj_feed.title
      feed.etag           = obj_feed.etag
      feed.last_modified  = obj_feed.last_modified

      feed_entries = feed_entries(feed.id, obj_feed.entries)
      entries.concat(feed_entries) if feed.save
    end

    save_entries(entries)
  end

  def self.update
    feed_list = Feed.all

    new_entries = []
    feed_list.each do |feed|
      obj_entry_list = new_entries!(feed)
      feed_entry_list = feed_entries(feed.id, obj_entry_list)
      new_entries.concat(feed_entry_list) if obj_entry_list.present?
    end

    save_entries(new_entries)
  end


  private
  def self.feed_entries(feed_id, obj_entry_list)
    entry_list = []
    return nil if obj_entry_list.blank?
    obj_entry_list.each do |obj_entry|
      entry = Entry.new
      entry.title     = obj_entry.title
      entry.url       = obj_entry.url
      entry.author    = obj_entry.author
      entry.summary   = obj_entry.summary
      entry.published = obj_entry.published
      entry.feed_id   = feed_id

      entry_list.push(entry)
    end

    entry_list
  end

  def self.save_entries(entry_list)
    entry_list.sort_by! { |entry| entry.published }
    return if entry_list.empty?

    puts '---'
    puts Time.now
    entry_list.each do |entry|
      next if /^PR:/ === entry.title
      puts sprintf('Save 「%s」 of 「%s」', entry.title, entry.feed.title)

      entry.save
    end
  end

  def self.new_entries!(stored_feed)
    obj_feed = Feedzirra::Feed.fetch_and_parse(stored_feed.feed_url)
    unless obj_feed.instance_variable_defined?(:@last_modified)
      puts sprintf('ignored because obj_feed is %s (%s)', obj_feed.class, stored_feed.feed_url)
      return
    end

    return if stored_feed.last_modified.blank?
    return if stored_feed.last_modified == obj_feed.last_modified

    new_entries = []
    latest_entry = stored_feed.entries.last
    obj_feed.entries.each do |entry|
      new_entries.push(entry) if entry.published > latest_entry.published
    end

    # Feedの更新
    stored_feed.title = obj_feed.title
    stored_feed.etag = obj_feed.etag
    stored_feed.last_modified = obj_feed.last_modified
    stored_feed.save

    new_entries
  end
end
