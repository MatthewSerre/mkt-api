class Api::V1::DriversController < ApplicationController

    def index
        drivers = Driver.all
        render json: drivers.to_json
    end

    def babies
        drivers = Driver.where(is_baby: true)
        render json: drivers.to_json
    end

    def favorite_courses
        driver_id = Driver.find_by(name: params[:driver_name].titleize)
        level = params[:level].to_i
        case level
        when 6..7
            level6 = CourseDriverConnection.where(driver_id: driver_id, is_favorite_at_level_6: true)
            level3 = CourseDriverConnection.where(driver_id: driver_id, is_favorite_at_level_3: true)
            base = CourseDriverConnection.where(driver_id: driver_id, is_favorite: true)
            connections = level6 + level3 + base
            connections.sort_by {|obj| obj.id}
        when 3..5
            level3 = CourseDriverConnection.where(driver_id: driver_id, is_favorite_at_level_3: true)
            base = CourseDriverConnection.where(driver_id: driver_id, is_favorite: true)
            connections = level3 + base
        else
            connections = CourseDriverConnection.where(driver_id: driver_id, is_favorite: true)
        end
        favorite_courses = []
        connections.each do |connection|
            course = Course.find(connection.course.id)
            favorite_courses << course
        end
        render json: favorite_courses.to_json
    end

    def high_end
        drivers = Driver.where(rarity: "High-End")
        render json: drivers.to_json
    end

    def kongs
        drivers = Driver.where(is_kong: true)
        render json: drivers.to_json
    end

    def koopalings
        drivers = Driver.where(is_koopaling: true)
        render json: drivers.to_json
    end

    def name
        driver = Driver.find_by(name: params[:driver_name].titleize)
        render json: driver.to_json
    end

    def name_contains
        drivers = Driver.where("name LIKE ?", "%#{params[:driver_name].titleize}%")
        render json: drivers.to_json
    end

    def normal
        drivers = Driver.where(rarity: "Normal")
        render json: drivers.to_json
    end

    def super
        drivers = Driver.where(rarity: "Super")
        render json: drivers.to_json
    end

end
