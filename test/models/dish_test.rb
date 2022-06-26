# frozen_string_literal: true

require 'test_helper'

class DishTest < ActiveSupport::TestCase
  def setup
    @green = dishes :one
    @red_name = dishes :two
    @red_cal = dishes :three
    @red_recipe = dishes :four
    @red_image_uid = dishes :five
    @red_image_name = dishes :six
    @red_user_id = dishes :seven
  end

  test 'should be valid' do
    assert @green.valid?
  end

  test 'should be not valid name' do
    assert_not @red_name.valid?
  end

  test 'should be not valid cal' do
    assert_not @red_cal.valid?
  end

  test 'should be not valid recipe' do
    assert_not @red_recipe.valid?
  end

  test 'should be not valid image_uid' do
    assert_not @red_image_uid.valid?
  end

  test 'should be not valid image_name' do
    assert_not @red_image_name.valid?
  end

  test 'should be not valid user_id' do
    assert_not @red_user_id.valid?
  end
end
