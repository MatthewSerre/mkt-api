class Api::V1::CoursesController < ApplicationController

    def index
        binding.pry
        courses = Course.all
        render json: courses
    end

end
