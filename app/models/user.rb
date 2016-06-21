class User < ActiveRecord::Base
  has_many :tweets

  validates_presence_of :name, :email, :password
  validates_uniqueness_of :email
end
