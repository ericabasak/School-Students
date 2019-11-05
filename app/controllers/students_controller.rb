class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  
  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    redirect_to school_path(@student.school)
    # redirect_to students_path
  end

  def edit
  end

  def destroy

  end

  private 

  def student_params
    params.require(:student).permit(:name, :age, :school_id)
  end
end
