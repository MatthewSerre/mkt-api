# frozen_string_literal: true

require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test 'can see the home page' do
    get '/'
    assert_select 'h4', 'Mario Kart Tour API aims to be a robust resource for developers to leverage when creating applications or websites related to the popular Mario Kart Tour mobile game'
  end
end
