module Api::V1
  class MenusController < ApplicationController

    def index
      @menus = Menu.all
      render json: @tasks
    end
  end
end
