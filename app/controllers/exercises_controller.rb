class ExercisesController < ApplicationController
  before_action :set_exercise, only: [:show, :edit, :update]

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
  end

  def edit
  end

  def update
    @exercise.update(exercise_params)
    redirect_to exercise_path(@exercise)
  end

  private

  def exercise_params
    params.require(:exercise).permit(:name, :description, :category)
  end

  def set_exercise
    @exercise = Exercise.find(params[:id])
  end
end
