class Api::V1::DriversController < ApplicationController

    def index
        drivers = Driver.all
        render json: drivers.to_json
    end

end
