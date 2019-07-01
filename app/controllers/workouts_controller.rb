class WorkoutsController < ApplicationController
  def new
    @workout = Workout.new
  end

  def create
    @user = current_user
    @workout = @user.workouts.build(workout_params)
    if @workout.save
      redirect_to user_workout_path(@user, @workout)
    else
      redirect_to new_user_workout_path(@user)
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
