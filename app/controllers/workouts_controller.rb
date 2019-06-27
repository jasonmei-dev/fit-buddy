class WorkoutsController < ApplicationController
  def new
    @workout = Workout.new(user_id: params[:user_id])
  end

  def create
    @workout = current_user.workouts.new(workout_params)
    if @workout.save
      redirect_to user_workout_path(id: @workout.id, user_id: @workout.user_id)
    else
      redirect_to new_user_workout_path(current_user)
    end
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def edit
    @workout = Workout.find(params[:id])
  end

  def update
    @workout = Workout.find(params[:id])
    @workout.update(workout_params)
    redirect_to user_workout_path(id: @workout.id, user_id: @workout.user_id)
  end
  
  private

  def workout_params
    params.require(:workout).permit(:name, :duration_mins, :share_status, :user_id)
  end
end
