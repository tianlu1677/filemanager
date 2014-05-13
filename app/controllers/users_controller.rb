class UsersController < ApplicationController

  def index
    @users = User.last
  end

end