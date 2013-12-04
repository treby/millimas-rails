class WelcomeController < ApplicationController
  def index
    @entry_list = Entry.page(params[:page]).per(30).order('id desc')
  end
end
