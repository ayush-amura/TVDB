class CreateActorsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :actors_users do |t|

    	t.references :actor, index: true, foreign_key: true
    	t.references :user, index: true, foreign_key: true
    
    end
  end
end
