class WelcomeController < ApplicationController
  def index
    @feed_list = Feed.order('updated_at desc')
    @entry_list = Entry.page(params[:page]).per(30).order('id desc')
  end
end
