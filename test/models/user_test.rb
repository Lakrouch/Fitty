# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @green = users :one
  end

  test 'should  be valid'  do
    assert @green.valid?
  end
end
