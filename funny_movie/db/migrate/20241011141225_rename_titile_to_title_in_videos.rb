class RenameTitileToTitleInVideos < ActiveRecord::Migration[7.2]
  def change
    rename_column :video, :titile, :title
  end
end
