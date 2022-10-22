class InstructorsController < ApplicationController

def index
render json: Instructor.all
end

def show
instructor = find_Instructor
render json: instructor

def create
instructor = Instructor.create!(instructor_params))
render json: instructor, status: :created
    end

    def destroy
        instructor = find_Instructor
    instructor.destroy
    end


private
  def find_Instructor
  instructor = Instructor.find(params[:id])
  end


  def instructor_params
(params.permit(:name))
  end
end