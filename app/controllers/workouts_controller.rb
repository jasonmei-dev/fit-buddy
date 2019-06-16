class WorkoutsController < ApplicationController
  def new
    @workout = Workout.new
  end

  def create
    @workout = current_user.workouts.new(workout_params)
    if @workout.save
      redirect_to workout_path(@workout)
    else
      redirect_to new_workout_path
    end
  end

  def show
    @workout = current_user.workouts.find(params[:id])
    binding.pry
  end

  private

  def workout_params
    params.require(:workout).permit(:name, :duration_mins, :share_status)
  end
end
