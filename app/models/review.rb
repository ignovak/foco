class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  has_many :review_data, dependent: :destroy

  attr_accessible :project_id

end
