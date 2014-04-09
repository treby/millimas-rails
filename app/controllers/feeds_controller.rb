class FeedsController < ApplicationController
  def show
    @feed = Feed.find(params[:id])
    @entry_list = @feed.entries.page(params[:page]).per(30).order('id desc')
  end
end
