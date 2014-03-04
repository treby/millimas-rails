require 'feedzirra'

class Cron::EntryPicker
  def self.init
    feed_list = Feed.all

    feed_list.each do |feed|
      obj_feed = Feedzirra::Feed.fetch_and_parse(feed.feed_url)
      next if /^PR:/ === obj_feed.title

      feed.title          = obj_feed.title
      feed.url            = obj_feed.url
      feed.feed_url       = obj_feed.feed_url
      feed.etag           = obj_feed.etag
      feed.last_modified  = obj_feed.last_modified

      save_entries(feed.id, obj_feed.entries) if feed.save
    end
  end

  def self.update
    puts '---'
    puts Time.now
    feed_list = Feed.all

    feed_list.each do |feed|
      check_new_entries(feed)
    end
  end


  private
  def self.save_entries(feed_id, obj_entry_list)
    obj_entry_list.reverse.each do |obj_entry|
      puts obj_entry.title

      entry = Entry.new
      entry.feed_id   = feed_id
      entry.title     = obj_entry.title
      entry.url       = obj_entry.url
      entry.author    = obj_entry.author
      entry.summary   = obj_entry.summary
      entry.published = obj_entry.published

      entry.save
    end
  end

  def self.check_new_entries(stored_feed)
    feed = Feedzirra::Feed.fetch_and_parse(stored_feed.feed_url)
    unless feed.instance_variable_defined?(:@last_modified)
      puts sprintf('feed is %s (%s)', feed.class, stored_feed.feed_url)
      return
    end

    if stored_feed.last_modified == feed.last_modified
      return
    end

    latest_entry = stored_feed.entries.last
    new_entries = []
    feed.entries.each do |entry|
      new_entries.push(entry) if entry.published > latest_entry.published
    end
    puts sprintf('%d entries found. - %s', new_entries.count, stored_feed.title) if new_entries.present?
    save_entries(stored_feed.id, new_entries)

    stored_feed.title = feed.title
    stored_feed.etag = feed.etag
    stored_feed.last_modified = feed.last_modified
    stored_feed.save
  end
end
