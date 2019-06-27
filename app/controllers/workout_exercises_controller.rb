class WorkoutExercisesController < ApplicationController
  def new
    @workout_exercise = WorkoutExercise.new(workout_id: params[:workout_id])
    @exercises = Exercise.all
  end

  def create
    @workout_exercise = WorkoutExercise.new(workout_exercise_params)
    if @workout_exercise.save
      redirect_to user_workout_path(id: @workout_exercise.workout_id, user_id: @workout_exercise.workout.user_id)
    else
      redirect_to new_workout_exercise_path
    end
  end

  def edit
    @workout_exercise = WorkoutExercise.find_by(workout_id: params[:workout_id])
    @exercises = Exercise.all
  end

  def update
    @workout_exercise = WorkoutExercise.find_by(workout_id: params[:workout_exercise][:workout_id])
    @workout_exercise.update(workout_exercise_params)
    redirect_to user_workout_path(id: @workout_exercise.workout_id, user_id: @workout_exercise.workout.user_id)
  end

  def destroy
  end

  private

  def workout_exercise_params
    params.require(:workout_exercise).permit(:exercise_id, :workout_id, :weight_lbs, :sets, :reps, :notes, :exercise_rating)
  end
end
