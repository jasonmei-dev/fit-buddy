class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.create(exercise_params)
    redirect_to exercise_path(@exercise)
  end

  def show
    @exercise = Exercise.find(params[:id])
    @avg_rating = @exercise.exercise_entries.average(:exercise_rating)
  end

  def edit
    @exercise = Exercise.find(params[:id])
  end

  def update
    @exercise = Exercise.find(params[:id])
    @exercise.update(exercise_params)
    redirect_to exercise_path(@exercise)
  end

  private

  def exercise_params
    params.require(:exercise).permit(:name, :description, :category)
  end
end
