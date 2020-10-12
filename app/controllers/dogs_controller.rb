class DogsController < ApplicationController
  def index
    @dogs = Dog.all
    @dogs_adopted 
  end

  def new 
    @dog = Dog.new 
  end

  def create 
    @dog = Dog.new(dog_params)
    if @dog.save
      redirect_to dogs_path 
    else 
      render "new"
    end
  end

  def show 
    @dog = Dog.find(params[:id])
  end

  def edit 
    @dog = Dog.find(params[:id])
  end

  def update 
    @dog = Dog.find(params[:id])
    if @dog.update(dog_params)
      redirect_to dogs_path
    else
      redirect_to dogs_path 
    end
  end

  def destroy 
    @dog = Dog.find(params[:id])
    @dog.destroy
    redirect_to dogs_path
  end

  # def state 
  #   @dogs_adopted = Dogs.find(params[:adopted])
  #   if @dogs_adopted === true 
  #    "perrito adoptado"
  #   else
  #    "perrito en adopción"
  #   end
  # end
  
  
  private
  def dog_params 
    params.require(:dog).permit(:name, :content, :adopted)
  end
end
