# frozen_string_literal: true

require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  def setup
    @green = profiles :one
    @red_name = profiles :two
    @red_role = profiles :three
    @red_user_id = profiles :four
  end

  test 'should  be valid'  do
    assert @green.valid?
  end

  test 'should be not valid name' do
    assert_not @red_name.valid?
  end

  test 'should be not valid role' do
    assert_not @red_role.valid?
  end

  test 'should be not valid user_id' do
    assert_not @red_user_id.valid?
  end
end
