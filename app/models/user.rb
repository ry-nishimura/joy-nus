class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  has_many :recruitments

  validates :nickname, presence: true
  validates :birthday, presence: true
  validates :favorite_sports, presence: true
  validates :prefecture_id, numericality: { other_than: 1 }
end
