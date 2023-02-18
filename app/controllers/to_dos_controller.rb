class ToDosController < ApplicationController
  before_action :set_todo, only: %i[ show edit update ]

  def index
    @to_dos = ToDo.all
  end

  def show
  end

  def new
    @to_do = ToDo.new
  end

  def edit
  end

  def create
  end

  def update
  end

  private
    def set_todo
      @to_do = ToDo.find(params[:id])
    end

    def todo_params
      params.require(:title).permit(:title, :description, :image, :categories)
    end
end
