class Api::V1::KartsController < ApplicationController
    # include Secured

    def index
        karts = Kart.all
        render json: karts
    end

    def high_end
        karts = Kart.where(rarity: "High-End")
        render json: karts
    end

    def name
        kart = Kart.find_by(name: params[:q])
        render json: !kart.nil? ? kart : []
    end

    def name_contains
        karts = Kart.where("name LIKE ?", "%" + params[:q].titleize + "%")
        render json: karts
    end

    def normal
        karts = Kart.where(rarity: "Normal")
        render json: karts
    end

    def special_skill
        kart = Kart.where(special_skill: params[:q].titleize)
        render json: kart
    end

    def super
        karts = Kart.where(rarity: "Super")
        render json: karts
    end

end
