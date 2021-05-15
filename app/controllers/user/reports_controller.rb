class User::ReportsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @report = Report.new
  end
  
  def create
    @report = Report.new(report_params)
    @report.user_id = current_user.id
    if @report.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  private
  
  def report_params
    params.require(:report).permit(:report_title, :sentence, :user_id, :is_comfortable)
  end
  
end
