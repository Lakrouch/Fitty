# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, :encrypted_password, presence: true

  has_one :profile, dependent: :destroy
  has_many :dishes, dependent: :destroy
  has_one :diary
  has_many :notes, through: :diary, dependent: :destroy
  has_many :ingredients, dependent: :destroy

end
