# frozen_string_literal: true

require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  def setup
    @green = ingredients :one
    @red_name = ingredients :two
    @red_image_uid = ingredients :three
    @red_image_name = ingredients :four
    @red_user_id = ingredients :five
  end

  test "should be valid" do
    assert @green.valid?
  end

  test "should be not valid name" do
    assert_not @red_name.valid?
  end

  test "should be not valid image_uid" do
    assert_not @red_image_uid.valid?
  end

  test "should be not valid image_name" do
    assert_not @red_image_name.valid?
  end

  test "should be not valid user_id" do
    assert_not @red_user_id.valid?
  end
end
