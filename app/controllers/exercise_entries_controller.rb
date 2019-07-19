class ExerciseEntriesController < ApplicationController
  before_action :set_exercise_entry, only: [:edit, :update, :destroy]
  before_action :set_exercises, only: [:new, :create, :edit]

  def new
    @exercise_entry = ExerciseEntry.new(workout_id: params[:workout_id])
    @exercise = @exercise_entry.build_exercise
  end

  def create
    @exercise_entry = ExerciseEntry.new(exercise_entry_params)
    if @exercise_entry.save
      flash[:success] = "Exercise Entry sucessfully added to Workout!"
      redirect_to user_workout_path(id: @exercise_entry.workout_id, user_id: @exercise_entry.workout.user_id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @exercise_entry.update(exercise_entry_params)
    redirect_to user_workout_path(id: @exercise_entry.workout_id, user_id: @exercise_entry.workout.user_id)
  end

  def destroy
    @exercise_entry.destroy
    redirect_to user_workout_path(id: @exercise_entry.workout_id, user_id: @exercise_entry.workout.user_id)
  end

  private

  def exercise_entry_params
    params.require(:exercise_entry).permit(:exercise_id, :workout_id, :weight_lbs, :sets, :reps, :notes, :exercise_rating, exercise_attributes: [:name, :description, :category])
  end

  def set_exercise_entry
    @exercise_entry = ExerciseEntry.find(params[:id])
  end

  def set_exercises
    @exercises = Exercise.all
  end
end
