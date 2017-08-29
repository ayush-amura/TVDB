class CreateActors < ActiveRecord::Migration[5.1]
  def change
    create_table :actors do |t|

    	t.string :name,null: false
      t.integer :age,null: false
      t.integer :rating,null: false
      # t.timestamps
    end
    
  end
end
