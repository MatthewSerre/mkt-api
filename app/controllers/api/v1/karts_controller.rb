# frozen_string_literal: true

module Api
  module V1
    class KartsController < ApplicationController
      # include Secured

      def index
        karts = Kart.all.order(:position)
        render json: karts
      end

      def high_end
        karts = Kart.where(rarity: "High-End").order(:position)
        render json: karts
      end

      def name
        kart = Kart.find_by(name: params[:q])
        render json: kart.nil? ? [] : kart
      end

      def name_contains
        karts = Kart.where("name LIKE ?", "%#{params[:q].titleize}%").order(:position)
        render json: karts
      end

      def normal
        karts = Kart.where(rarity: "Normal").order(:position)
        render json: karts
      end

      def special_skill
        kart = Kart.where(special_skill: params[:q].titleize).order(:position)
        render json: kart
      end

      def super
        karts = Kart.where(rarity: "Super").order(:position)
        render json: karts
      end
    end
  end
end
