class WelcomeController < ApplicationController
  def index
    @entry_list = Entry.order('id desc')
  end
end
