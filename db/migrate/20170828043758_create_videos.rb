class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|

    	t.string :title,null: false
      t.string :language,null: false
      t.string :genre,null: false
      t.integer :year_release,null: false
      t.integer :rating,null: false
      t.string :type,null: false

      # t.timestamps
    end
      
  end
end
