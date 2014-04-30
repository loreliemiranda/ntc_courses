class CoursesController < ApplicationController
  def show
    @course = Course.find(params[:id])
  end

def new
   @course = Course.new
  end
def create
   @course = Course.new(course_params)
    if @course.save
	flash[:success] = "Course successfully added."
	redirect_to root_url
    else
      render 'new'
    end
  end

  private

 def course_params
      params.require(:course).permit(:name, :description)
    end

end
