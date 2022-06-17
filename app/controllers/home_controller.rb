# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    render file: Rails.public_path
  end
end
