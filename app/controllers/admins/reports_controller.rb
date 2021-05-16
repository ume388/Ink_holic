class Admins::ReportsController < ApplicationController
  before_action :authenticate_admin!
  
  def index
    @reports = Report.page(params[:page]).reverse_order
  end
  
  def show
    @report = Report.find(params[:id])
  end
  
  def edit
    @report = Report.find(params[:id])
  end
  
  def update
    @report = Report.find(params[:id])
    if @report.update(report_params)
      redirect_to admins_reports_path
    else
      render 'edit'
    end
  end
  
  private
  
  def report_params
    params.require(:report).permit(:report_title, :sentence, :user_id, :is_comfortable)
  end
  
end
