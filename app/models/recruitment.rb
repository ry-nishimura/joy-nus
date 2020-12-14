class Recruitment < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :experience
  belongs_to :user

  validates :date, presence: true
  validates :time, presence: true
  validates :team, presence: true
  validates :sport, presence: true
  validates :place, presence: true
end