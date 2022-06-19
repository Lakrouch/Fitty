# frozen_string_literal: true

require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  def setup
    @green = notes :one
    @red_diary_id = notes :two
    @red_dish_id = notes :four
  end

  test "should be valid" do
    assert @green.valid?
  end

  test "should be not valid diary_id" do
    assert_not @red_diary_id.valid?
  end

  test "should be not valid dish_id" do
    assert_not @red_dish_id.valid?
  end
end
