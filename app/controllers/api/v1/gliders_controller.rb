class Api::V1::GlidersController < ApplicationController
    # include Secured

    def index
        gliders = Glider.all
        render json: gliders
    end

    def high_end
        gliders = Glider.where(rarity: "High-End")
        render json: gliders
    end

    def name
        glider = Glider.find_by(name: params[:q])
        render json: !glider.nil? ? glider : []
    end

    def name_contains
        gliders = Glider.where("name LIKE ?", "%" + params[:q].titleize + "%")
        render json: gliders
    end

    def normal
        gliders = Glider.where(rarity: "Normal")
        render json: gliders
    end

    def special_skill
        glider = Glider.where(special_skill: params[:q].titleize)
        render json: glider
    end

    def super
        gliders = Glider.where(rarity: "Super")
        render json: gliders
    end
end
