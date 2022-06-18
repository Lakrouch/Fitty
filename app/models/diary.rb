# frozen_string_literal: true

class Diary < ApplicationRecord
  belongs_to :user
  has_many :notes
end
