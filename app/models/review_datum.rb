class ReviewDatum < ActiveRecord::Base
  belongs_to :review
  attr_accessible :alpha1, :alpha2, :attention, :beta1, :beta2, :delta, :gamma1, :gamma2, :meditation, :signal_quality, :theta, :time
end
