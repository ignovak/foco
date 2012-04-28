class User < ActiveRecord::Base
  has_many :projects

  attr_accessible :email, :name

  validates_presence_of :name, :email
  validates_uniqueness_of :email
end
