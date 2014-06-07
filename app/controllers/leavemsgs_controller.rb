class LeavemsgsController < ApplicationController
  before_action :set_leavemsg, only: [:show, :edit, :update, :destroy]

  # GET /leavemsgs
  # GET /leavemsgs.json
  def index
    @leavemsgs = Leavemsg.all
  end

  # GET /leavemsgs/1
  # GET /leavemsgs/1.json
  def show
  end

  # GET /leavemsgs/new
  def new
    @leavemsg = Leavemsg.new
  end

  # GET /leavemsgs/1/edit
  def edit
  end

  # POST /leavemsgs
  # POST /leavemsgs.json
  def create
    @leavemsg = Leavemsg.new(leavemsg_params)
  
      if @leavemsg.save
       flash.now[:success] = "你已经成功留言"
       flash.now[:success] = "个人信息保存成功拉！"
       redirect_to  attachments_url
      else
        flash.now[:fail] = "成功留言失败"
        render 'new'
      
    end
  end

  # PATCH/PUT /leavemsgs/1
  # PATCH/PUT /leavemsgs/1.json
  def update
    respond_to do |format|
      if @leavemsg.update(leavemsg_params)
        format.html { redirect_to @leavemsg, notice: 'Leavemsg was successfully updated.' }
        format.json { render :show, status: :ok, location: @leavemsg }
      else
        format.html { render :edit }
        format.json { render json: @leavemsg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leavemsgs/1
  # DELETE /leavemsgs/1.json
  def destroy
    @leavemsg.destroy
    respond_to do |format|
      format.html { redirect_to leavemsgs_url, notice: 'Leavemsg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leavemsg
      @leavemsg = Leavemsg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leavemsg_params
      params.require(:leavemsg).permit(:msgname, :msgcontent)
    end
end
