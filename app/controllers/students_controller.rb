class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        grades = Student.order(grade: "DESC")
        render json: grades
    end

    def highest_grade
        students = Student.order(grade: :DESC).first
        #Student.max_by(:grade)??
        render json: students
    end


end
