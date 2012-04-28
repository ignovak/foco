class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :user
      t.references :project

      t.timestamps
    end
    add_index :reviews, :user_id
    add_index :reviews, :project_id

    add_column :projects, :user_id, :integer
  end
end
