# frozen_string_literal: true

require 'test_helper'

class DiaryTest < ActiveSupport::TestCase

  def setup
    @diary_green = diaries(:one)
    @diary_red = diaries(:two)
  end

  test 'should  be valid' do
    assert @diary_green.valid?
  end

  test 'should be not valid' do
    assert_not @diary_red.valid?
  end
end
