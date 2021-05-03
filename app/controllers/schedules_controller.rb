class SchedulesController < ApplicationController
  include SchedulesHelper

  before_action :set_user, only: %i[ destroy ]

  # GET /users or /users.json
  def index
    current = Time.now
    @firefighters = User.includes(:schedules).joins(:schedules).where('? <= start_at AND end_at <= ?', current.beginning_of_day, current.beginning_of_day + 1.day )
    @availabilities = format_multiple_availabilities(@firefighters)
  end

  def create
    @schedule = Schedule.new(schedule_params)
    @schedule.schedulable = current_user

    respond_to do |format|
      if @schedule.save
        format.html { redirect_to schedules_path, notice: "Schedule was successfully created." }
      else
        format.html { render :index, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @schedule.destroy
    respond_to do |format|
      format.html { redirect_to schedules_url, notice: "Schedule was successfully destroyed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def schedule_params
      params.require(:schedule).permit(:start_at, :end_at)
    end
end
