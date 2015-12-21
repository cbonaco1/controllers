class UsersController < ApplicationController
  def index
    render text: "I'm in the index action!"
    #byebug
  end

  def new
    render text: "Here in new!"
  end

  def create
    render text: "Here in create!"
    #byebug
  end

  def show
    render text: "Here in show!"
  end

  def update
    render text: "Here in update!"
  end

  def edit
    render text: "Here in edit"
  end
end
