class MenuController < ApplicationController
  load_and_authorize_resource

  def index
    @menus = Menu.all

    respond_to do |format|
      format.html
    end
  end
end
