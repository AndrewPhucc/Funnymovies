class AddUserIdToVideos < ActiveRecord::Migration[7.2]
  def change
    add_reference :videos, :user, null: false, foreign_key: true
  end
end