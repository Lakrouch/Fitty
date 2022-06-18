# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :merged_tables

  validates :email, :encrypted_password, presence: true

  has_one :profile, dependent: :destroy
  has_many :dishes, dependent: :destroy
  has_one :diary, dependent: :destroy
  has_many :notes, through: :diary, dependent: :destroy
  has_many :ingredients, dependent: :destroy

  private

  def merged_tables
    Profile.create({ name: email, role: 0, user_id: id })
    Diary.create({ user_id: id })
  end
end
