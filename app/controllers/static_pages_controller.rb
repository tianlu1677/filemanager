class StaticPagesController < ApplicationController
  # before_action :authenticate_user!
  def home
   redirect_to attachments_path and return if current_user.present?
  end

  def help
  end

  def xianshi

  end

  def front

  end

  def detail
    
  end

  def uploadfile

  end



  def about

  end
end
