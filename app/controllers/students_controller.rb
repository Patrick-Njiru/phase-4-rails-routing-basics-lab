class StudentsController < ApplicationController
  def index
    cheeses = Student.all
    render json: cheeses
  end
  def grades
    grades = Student.all.order("grade desc")
    render json: grades
  end
  def highest_grade
    highest_grade = Student.all.order("grade desc").limit(1).first
    render json: highest_grade
  end
end
