class ProfessorsController < ApplicationController
  def index
  	@professors = Professor.all
  end

  def show
  	@professors = Professor.all
     @professor=Professor.find_by_id(params[:id])
  end

  def new
  end

  def edit
  end
end
