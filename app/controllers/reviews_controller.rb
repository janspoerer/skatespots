class ReviewsController < ApplicationController

def index
#   @location = Location.find(:all)
  @reviews = Review.all
end

def show
  @review = Review.find(params[:id])
end

def create
  @review = Review.new(:)
end


end
