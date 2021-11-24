class PagesController < ApplicationController
    def index
        @pages = Page.all
    end

    def show
        @page = Page.find(params[:id])
    end

    def new
        @page = Page.new
    end

    def create
        render plain: params.to_json
    end
end
