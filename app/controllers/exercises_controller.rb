class ExercisesController < ApplicationController
  def index
    if !params[:category].blank?
      @exercises = Exercise.by_category(params[:category])
    else
      @exercises = Exercise.all
    end
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
  end

  def edit
    @exercise = Exercise.find(params[:id])
  end

  def update
    @exercise = Exercise.find(params[:id])
    @exercise.update(exercise_params)
    redirect_to exercise_path(@exercise)
  end

  # def categories
  #
  # end

  private

  def exercise_params
    params.require(:exercise).permit(:name, :description, :category)
  end
end
