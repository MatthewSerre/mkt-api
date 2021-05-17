class Api::V1::DriversController < ApplicationController

    def index
        drivers = Driver.all
        binding.pry
        render json: drivers

    end

    def babies
        drivers = Driver.where(is_baby: true)
        render json: drivers
    end

    def favorite_courses
        driver = Driver.find_by(name: params[:name].titleize)
        favorite_courses = driver.favorite_courses(params[:level].to_i)
        render json: favorite_courses
    end

    def favored_courses
        driver = Driver.find_by(name: params[:name].titleize)
        favored_courses = driver.favored_courses
        render json: favored_courses
    end

    def high_end
        drivers = Driver.where(rarity: "High-End")
        render json: drivers
    end

    def kongs
        drivers = Driver.where(is_kong: true)
        render json: drivers
    end

    def koopalings
        drivers = Driver.where(is_koopaling: true)
        render json: drivers
    end

    def name
        driver = Driver.find_by(name: params[:driver_name].titleize)
        render json: driver
    end

    def name_contains
        drivers = Driver.where("name LIKE ?", "%#{params[:driver_name].titleize}%")
        render json: drivers
    end

    def normal
        drivers = Driver.where(rarity: "Normal")
        render json: drivers
    end

    def super
        drivers = Driver.where(rarity: "Super")
        render json: drivers
    end

end
