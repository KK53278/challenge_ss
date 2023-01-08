class TimesController < ApplicationController

  def index
    times = Time.order(updated_at: :desc)
    render json: times
  end

  def show
    time = Time.find(params[:id])
    render json: time
  end

  def create
    time = Time.new(time_params)
    if time.save
      render json: time
    else
      render json: time.errors, status: 422
    end
  end

  private

  def time_params
    params.require(:time).permit(:status)
  end
end
