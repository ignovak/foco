class Project < ActiveRecord::Base
  belongs_to :user
  has_many :reviews

  attr_accessible :description, :name
end
