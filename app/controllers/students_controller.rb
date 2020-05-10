class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    #@student = Student.find(params[:id])
  end

  def new 
  end

  def create
    session[:form_params] = params.inspect
    redirect_to new_student_path
    #@student = Student.create(first_name: params[:first_name],
    #last_name: params[:last_name])
    #Eredirect_to new_student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
