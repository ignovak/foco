class RemoveTimestampsFromReviewData < ActiveRecord::Migration
  def change
    remove_timestamps :review_data
  end
end
