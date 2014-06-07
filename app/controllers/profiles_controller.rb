class ProfilesController < ApplicationController
  before_action :authenticate_user!
  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    if @profile.save
      flash.now[:success] = "个人信息保存成功拉！"
      
    else
      false.now[:fail] = "没保存成功"
      render 'new'
    end
  end

  def show
    # @profile = Profile.find(params[:id])
    @profile = current_user.profile
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update_attributes(profile_params)
      flash.now[:success] ="个人信息更新成功"
      render 'edit'      
    end
  end

  private
  def profile_params
    params.require(:profile).permit( :nickname, :age, :gender, :birthday)
  end

end
