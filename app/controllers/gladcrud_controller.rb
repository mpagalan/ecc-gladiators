class GladcrudController < ApplicationController
  def new
    @newglad = Gladiator.new(params[:gladiator])
  end
  
  def create
    @newglad = Gladiator.new(params[:gladiator])
    if @newglad.save
      redirect_to fight_path
    else
      render 'new'
    end
  end
  

  def edit
    @gladiator = Gladiator.find(params[:id])
  end

  def update
    @gladiator = Gladiator.find(params[:id])
  end

  def destroy
    @gladiator = Gladiator.find(params[:id])
    @gladiator.destroy
    flash[:notice] = 'Deleted !'
    redirect_to fight_path
  end

end
