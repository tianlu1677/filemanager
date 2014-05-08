class AttachmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @attachments = Attachment.all
  end
  def new
    @attachment = Attachment.new
  end

  def create
    @attachment = Attachment.new(attachment_params)

    if @attachment.save
      flash[:success] = "上传成功啦！"
      render 'show'
    else
      false[:fail] = "上传失败，请重新上传"
      render 'new'
    end
  end

  def show
    @attachment = Attachment.find(params[:id])
  end

  def edit
    @attachment = Attachment.find(params[:id])
  end

  def update
    @attachment = Attachment.find(params[:id])
    if @attachment.update_attributes(attachment_params)
      flash[:success] ="文件更新成功"
      render 'show'
    else
      render 'edit'
    end
  end

  def destroy
    Attachment.find(params[:id]).destroy
    flash[:success] = "文件删除成功"
  end



  private
  def attachment_params
    params.require(:attachment).permit( :title, :attachment_width, :attachment_width, :attachment_height, :attachment_size,
                                       :attachment_type, :attachment_name, :attachment_updated_at,:attachment_category, :link)
  end

end
