class HomeController < ApplicationController
  def index
    @books = Book.all
    respond_to do |format|
      format.html
      format.csv { render :csv => 'export' }
    end
  end
end
