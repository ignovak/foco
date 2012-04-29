class Project < ActiveRecord::Base
  belongs_to :user
  has_many :reviews, dependent: :destroy

  attr_accessible :description, :name
end
