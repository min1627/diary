class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
	  t.timestamps null: false
	  t.string :username
    end
  end
end
