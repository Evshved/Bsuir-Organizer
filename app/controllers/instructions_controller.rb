class InstructionsController < ApplicationController
  require 'pry'
  before_action :authenticate_user!

  def index
  end

  def new
    @setting = current_user.build_setting
  end

  def create
    @setting = current_user.build_setting(setting_params)
    if @setting.save
      redirect_to root_path, notice: "Settings has been saved!"
    else
      render "new"
    end
  end

  def destroy
  end

  private
    def setting_params
      params.require(:setting).permit(:beginning_of_work, :end_of_work,
                              :time_home_to_work, :time_work_to_univer,
                              :time_univer_to_home, :min_work_time)
    end
end

