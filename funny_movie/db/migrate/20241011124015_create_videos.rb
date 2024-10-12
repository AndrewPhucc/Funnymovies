class CreateVideos < ActiveRecord::Migration[7.2]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :url
      t.string :user
      t.string :references

      t.timestamps
    end
  end
end
