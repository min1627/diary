class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|

      t.timestamps null: false
      t.integer :user_id
    end
  end

  
end
