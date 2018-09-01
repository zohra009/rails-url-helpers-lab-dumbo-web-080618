class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end
  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id]) #put this at top b4 the conditionals
      if @student.active == true
        @status = "This student is currently active."
      else
        @status = "This student is currently inactive."
      end
      # byebug
      # redirect_to student_path

    end
end
