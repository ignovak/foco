class CreateReviewData < ActiveRecord::Migration
  def change
    create_table :review_data do |t|
      t.integer :time
      t.float :attention
      t.float :meditation
      t.float :delta
      t.float :theta
      t.float :alpha1
      t.float :alpha2
      t.float :beta1
      t.float :beta2
      t.float :gamma1
      t.float :gamma2
      t.float :signal_quality
      t.references :review

      t.timestamps
    end
    add_index :review_data, :review_id
  end
end
