# frozen_string_literal: true

module Api
  module V1
    class CoursesController < ApplicationController
      # include Secured

      def index
        courses = Course.all.order(:name)
        render json: courses
      end

      def debut_system
        courses = Course.debut_system(params[:q])
        render json: courses
      end

      def name
        course = Course.find_by(name: params[:q])
        render json: course.nil? ? [] : course
      end

      def name_contains
        courses = Course.where("name LIKE ?", "%#{params[:q].titleize}%").order(:name)
        render json: courses
      end

      def normal
        courses = Course.where(is_reverse: false, is_trick: false).order(:name)
        render json: courses
      end

      def ranked
        courses = Course.where(is_ranked: true).order(:name)
        render json: courses
      end

      def reverse
        courses = Course.where(is_reverse: true, is_trick: false).order(:name)
        render json: courses
      end

      def reverse_trick
        courses = Course.where(is_reverse: true, is_trick: true).order(:name)
        render json: courses
      end

      def trick
        courses = Course.where(is_reverse: false, is_trick: true).order(:name)
        render json: courses
      end
    end
  end
end
