class Api::V1::CoursesController < ApplicationController
    include Secured

    def index
        courses = Course.all
        render json: courses, status: 401
    end

    def debut_system
        courses = Course.where(debut_system: params[:q].downcase == "mobile" ? params[:q].titleize : params[:q].upcase)
        render json: courses
    end

    def name
        course = Course.find_by(name: params[:q])
        render json: course
    end

    def name_contains
        courses = Course.where("name LIKE ?", "%" + params[:q].titleize + "%")
        render json: courses
    end

    def normal
        courses = Course.where(is_reverse: false, is_trick: false)
        render json: courses
    end

    def reverse
        courses = Course.where(is_reverse: true, is_trick: false)
        render json: courses
    end

    def reverse_trick
        courses = Course.where(is_reverse: true, is_trick: true)
        render json: courses
    end

    def trick
        courses = Course.where(is_reverse: false, is_trick: true)
        render json: courses
    end

end
