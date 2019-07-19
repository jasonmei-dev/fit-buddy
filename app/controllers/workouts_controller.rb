class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :edit, :update, :destroy]

  def new
    @workout = Workout.new
  end

  def create
    @workout = current_user.workouts.build(workout_params)
    if @workout.save
      flash[:success] = "Workout successfully created!"
      redirect_to user_workout_path(current_user, @workout)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @workout.update(workout_params)
    redirect_to user_workout_path(id: @workout.id, user_id: @workout.user_id)
  end

  def destroy
    @workout.destroy
    redirect_to user_path(current_user)
  end

  private

  def workout_params
    params.require(:workout).permit(:name, :duration_mins, :share_status, :user_id)
  end

  def set_workout
    @workout = Workout.find(params[:id])
  end
end
