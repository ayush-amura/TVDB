class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|

    	t.string :name, null: false
      t.integer :age,null: false
      t.string :email,null: false
      t.integer :contact_no,null: false
      t.string :type,null: false
      # t.timestamps
    end
  end
end
