class Api::V1::DriversController < ApplicationController
    include Secured
    skip_before_action :authenticate_request!, only: [:test]

    def index
        drivers = Driver.all
        render json: drivers
    end

    def babies
        drivers = Driver.where(baby: true)
        render json: drivers
    end

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
        render json: !driver.nil? ? driver : []
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

    def test
        driver = Driver.find_by(name: "Mario")
        render json: !driver.nil? ? driver : []
    end

end
