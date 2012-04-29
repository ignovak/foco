class AddYoutubeUrlToProject < ActiveRecord::Migration
  def change
    add_column :projects, :youtube_url, :string, default: 'http://www.youtube.com/watch?v=QH2-TGUlwu4'
  end
end
