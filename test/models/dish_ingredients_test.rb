# frozen_string_literal: true

require 'test_helper'

class DishIngredientsTest < ActiveSupport::TestCase
  def setup
    @green = dish_ingredients(:one)
    @red_ingredient_id = dish_ingredients(:two)
    @red_dish_id = dish_ingredients(:three)
  end

  test "should  be valid" do
    assert @green.valid?
  end

  test "should be not valid ingredient_id" do
    assert_not @red_ingredient_id.valid?
  end

  test "should be not valid dish_id" do
    assert_not @red_dish_id.valid?
  end
end
