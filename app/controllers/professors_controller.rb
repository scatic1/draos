class ProfessorsController < ApplicationController
  def index
  	#@professors = Professor.all
     @professors = Professor.search_professors(params[:search])
  end

  def show
  	@professors = Professor.all
     @professor=Professor.find_by_id(params[:id])
  end

  def new
  end
  def courses
      @professors = Professor.all
      @pom=params[:id]
  end

  def edit
    @professors = Professor.all
     @professor=Professor.find_by_id(params[:id])
  end

  def update
        @professors = Professor.all
     @professor=Professor.find_by_id(params[:id])
    respond_to do |format|
      if @professor.update(professor_params)
        format.html { redirect_to professors_path }
          format.html { redirect_to courses_path }
        format.json { render :index, status: :ok, location: professors }
      else
        format.html { render :edit }
        format.json { render json: @professor.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  @professor= Professor.find(params[:id])

  respond_to do |format|
    if @professor.destroy
      format.html { redirect_to professors_url }

      format.json { head :no_content }
    else
      format.html # do something here
      format.json { head :no_content }
    end
  end
end


def professor_params
      params.require(:professor).permit(:name, :surname, :phone, :date_of_birth, :email, :courses, :department, :publications, :cv,:academic_history,:career_history,:image)
    end

    public
    def download_resume
     @professors = Professor.all
     @professor = Professor.find_by_id(params[:id])
   @professor = Professor.new
     @students = Student.all
     pdf = WickedPdf.new.pdf_from_string(render_to_string('confirmations/zapdf.html.erb', layout: false))
     send_data pdf, :filename => "fajl.pdf", :type => "application/pdf", :disposition => "attachment"
    end
end