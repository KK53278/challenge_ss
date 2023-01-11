class AttendancesController < ApplicationController

  def index
    @attendances = Attendance.order(updated_at: :desc)
    render json: @attendances
  end

  # def show
  #   @attendance = Attendance.find(params[:id])
  #   render json: @attendance
  # end

  def create
    @attendance = Attendance.new(attendance_params)
    if attendance.save
      render json: @attendance
    else
      render json: @attendance.errors, status: 422
    end
  end

  private

  def attendance_params
    params.require(:attendance).permit(:status)
  end
end
