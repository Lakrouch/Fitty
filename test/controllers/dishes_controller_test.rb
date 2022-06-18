# frozen_string_literal: true

require 'test_helper'

class DishesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get '/dishes/index'
    assert_response :success
  end
end
