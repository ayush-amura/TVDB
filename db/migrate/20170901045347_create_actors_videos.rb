class CreateActorsVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :actors_videos do |t|
    t.references :actor, index: true, foreign_key: true
    	t.references :video, index: true, foreign_key: true

    end
  end
end


