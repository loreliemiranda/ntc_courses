class InstructorsController < ApplicationController
 def show
    @instructor = Instructor.find(params[:id])
  end

def new
   @instructor = Instructor.new
  end
def create
   @instructor = Instructor.new(instructor_params)
    if @instructor.save
	flash[:success] = "Instructor successfully added."
	redirect_to root_url
    else
      render 'new'
    end
  end

  private

 def instructor_params
      params.require(:instructor).permit(:first_name, :middle_name, :last_name, :birth_date)
    end

end
