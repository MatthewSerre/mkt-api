# app/controllers/concerns/secured.rb

# frozen_string_literal: true

module Secured
  extend ActiveSupport::Concern

  included do
    before_action :authenticate_request!
  end

  private

  def authenticate_request!
    auth_token
  rescue JWT::VerificationError, JWT::DecodeError
    render json: { errors: ["Unauthorized. Please provide a valid authorization token."] }, status: :unauthorized
  end

  def http_token
    request.headers["Authorization"].split(" ").last if request.headers["Authorization"].present?
  end

  def auth_token
    JsonWebToken.verify(http_token)
  end
end
