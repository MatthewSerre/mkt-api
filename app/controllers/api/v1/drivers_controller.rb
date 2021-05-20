class Api::V1::DriversController < ApplicationController

    def index
        drivers = Driver.all
        render json: drivers
    end

    def babies
        drivers = Driver.where(baby: true)
        render json: drivers
    end

    # def characteristic
    #     characteristics = params[:q].split(',')
    #     query_string = ""
    #     characteristics.each do |characteristic|
    #         query_string += ": true"
    #     end
    #     drivers = Driver.where()
    # end

    def high_end
        drivers = Driver.where(rarity: "High-End")
        render json: drivers
    end

    def kongs
        drivers = Driver.where(kong: true)
        render json: drivers
    end

    def koopalings
        drivers = Driver.where(koopaling: true)
        render json: drivers
    end

    def name
        driver = Driver.find_by(name: params[:q].titleize)
        render json: driver
    end

    def name_contains
        drivers = Driver.where("name LIKE ?", "%" + params[:q].titleize + "%")
        render json: drivers
    end

    def normal
        drivers = Driver.where(rarity: "Normal")
        render json: drivers
    end

    def special_skill
        driver = Driver.where(special_skill: params[:q].titleize)
        render json: driver
    end

    def super
        drivers = Driver.where(rarity: "Super")
        render json: drivers
    end

end
