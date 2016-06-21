class Tweet < ActiveRecord::Base
  validates :title, presence: true
  validates :text, presence: true, length: { maximum: 170 }
end
