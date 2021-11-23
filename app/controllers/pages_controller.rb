class PagesController < ApplicationController
    def index
        @pages = Page.all
    end

    def show
        render plain: params[:id]
    end
end
