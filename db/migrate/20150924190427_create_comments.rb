class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|

      t.timestamps null: false
      t.integer :user_id
      t.integer :activity_id
      t.string :content
    end
  end
end
