class HomeController < ApplicationController
  def index
    render :csv => 'content'
  end
end
