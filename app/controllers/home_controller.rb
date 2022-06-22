# frozen_string_literal: true

class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:developers]

  def index
    render file: Rails.public_path
  end

  def developers
    render :developers
  end

  def refresh_api_key
    current_user.regenerate_token

    redirect_to developers_path, notice: "Your new API key is #{current_user.token}"
  end
end
