class CreateUsersVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :users_videos do |t|

    	t.references :user, index: true, foreign_key: true
    	t.references :video, index: true, foreign_key: true
    

    end
  end
end
