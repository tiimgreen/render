class Setting < ActiveRecord::Base
  validates :key, presence: true
  validates :value, presence: true
end
