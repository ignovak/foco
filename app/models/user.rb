class User < ActiveRecord::Base
  has_many :projects
  has_many :reviews

  attr_accessible :email, :name

  validates_presence_of :name, :email
  validates_uniqueness_of :email
end
