class ExerciseEntriesController < ApplicationController
  def new
    @exercise_entry = ExerciseEntry.new(workout_id: params[:workout_id])
    @exercises = Exercise.all
    @exercise = Exercise.new
  end

  def create
    # raise params.inspect
    if params[:exercise_entry][:exercise_id].empty?
      @exercise = Exercise.create(exercise_params)
      params[:exercise_entry][:exercise_id] = @exercise.id
    end
    @exercise_entry = ExerciseEntry.new(exercise_entry_params)
    
    if @exercise_entry.save
      redirect_to user_workout_path(id: @exercise_entry.workout_id, user_id: @exercise_entry.workout.user_id)
    else
      raise params.inspect
      redirect_to new_exercise_entry_path
    end
  end

  def edit
    @exercise_entry = ExerciseEntry.find_by(workout_id: params[:workout_id])
    @exercises = Exercise.all
  end

  def update
    @exercise_entry = ExerciseEntry.find_by(workout_id: params[:exercise_entry][:workout_id])
    @exercise_entry.update(exercise_entry_params)
    redirect_to user_workout_path(id: @exercise_entry.workout_id, user_id: @exercise_entry.workout.user_id)
  end

  def destroy
    @exercise_entry = ExerciseEntry.find(params[:id])
    @exercise_entry.destroy
    redirect_to user_workout_path(id: @exercise_entry.workout_id, user_id: @exercise_entry.workout.user_id)
  end

  private

  def exercise_entry_params
    params.require(:exercise_entry).permit(:exercise_id, :workout_id, :weight_lbs, :sets, :reps, :notes, :exercise_rating)
  end

  def exercise_params
    params[:exercise_entry].require(:exercise).permit(:name, :description, :category)
  end
end
