class Api::V1::GlidersController < ApplicationController
    # include Secured

    def index
        gliders = Glider.all.order(:position)
        render json: gliders
    end

    def high_end
        gliders = Glider.where(rarity: "High-End").order(:position)
        render json: gliders
    end

    def name
        glider = Glider.find_by(name: params[:q]).order(:position)
        render json: !glider.nil? ? glider : []
    end

    def name_contains
        gliders = Glider.where("name LIKE ?", "%" + params[:q].titleize + "%").order(:position)
        render json: gliders
    end

    def normal
        gliders = Glider.where(rarity: "Normal").order(:position)
        render json: gliders
    end

    def special_skill
        glider = Glider.where(special_skill: params[:q].titleize).order(:position)
        render json: glider
    end

    def super
        gliders = Glider.where(rarity: "Super").order(:position)
        render json: gliders
    end
end
