class ExerciseEntriesController < ApplicationController
  def new
    @exercise_entry = ExerciseEntry.new(workout_id: params[:workout_id])
    @exercises = Exercise.all
    @exercise = @exercise_entry.build_exercise
  end

  def create
    @exercises = Exercise.all
    @exercise_entry = ExerciseEntry.new(exercise_entry_params)
    if @exercise_entry.save
      flash[:success] = "Exercise Entry sucessfully added to Workout!"
      redirect_to user_workout_path(id: @exercise_entry.workout_id, user_id: @exercise_entry.workout.user_id)
    else
      render :new
    end
  end

  def edit
    @exercise_entry = ExerciseEntry.find_by(id: params[:id])
    @exercises = Exercise.all
  end

  def update
    @exercise_entry = ExerciseEntry.find_by(id: params[:id])
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
    params.require(:exercise_entry).permit(:exercise_id, :workout_id, :weight_lbs, :sets, :reps, :notes, :exercise_rating, exercise_attributes: [:name, :description, :category])
  end
end
