class DogsController < ApplicationController

  def home

  end

  def index
    @dogs = Dog.all
  end

  def new

  end

  def show
    @dog = Dog.find(params[:id])
  end

  def create
    Dog.create(dog_params)
    redirect_to dogs_path
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update(dog_params)
    redirect_to dogs_path
  end

  private
  def dog_params
    params.require(:dog).permit(:name)
  end

end
