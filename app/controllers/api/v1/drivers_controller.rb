class Api::V1::DriversController < ApplicationController
    # include Secured
    # skip_before_action :authenticate_request!, only: [:test]

    def index
        drivers = Driver.all.order(:position)
        render json: drivers
    end

    def babies
        drivers = Driver.where(baby: true).order(:position)
        render json: drivers
    end

    def daily_selects
        drivers = Driver.where(is_daily_select: true).order(:position)
        render json: drivers
    end

    def high_end
        drivers = Driver.where(rarity: "High-End").order(:position)
        render json: drivers
    end

    def in_pipes
        drivers = Driver.where(is_in_pipes: true).order(:position)
        render json: drivers
    end

    def kongs
        drivers = Driver.where(kong: true).order(:position)
        render json: drivers
    end

    def koopalings
        drivers = Driver.where(koopaling: true).order(:position)
        render json: drivers
    end

    def name
        driver = Driver.find_by(name: params[:q].titleize)
        render json: !driver.nil? ? driver : []
    end

    def name_contains
        drivers = Driver.where("name LIKE ?", "%" + params[:q].titleize + "%").order(:position)
        render json: drivers
    end

    def normal
        drivers = Driver.where(rarity: "Normal").order(:position)
        render json: drivers
    end

    def special_skill
        driver = Driver.where(special_skill: params[:q].titleize).order(:position)
        render json: driver
    end

    def super
        drivers = Driver.where(rarity: "Super").order(:position)
        render json: drivers
    end

    def test
        driver = Driver.find_by(name: "Mario")
        render json: !driver.nil? ? driver : []
    end

end
