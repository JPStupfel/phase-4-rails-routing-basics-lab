class StudentsController < ApplicationController
    def index
        render json: Student.all
    end
    def grades
        graded = Student.all.order :grade 
        render json: graded.reverse
    end
end
