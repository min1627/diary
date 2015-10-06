class AddCoulmnToActivity < ActiveRecord::Migration
  def change
  	add_column :activities, :alcohol, :float
  	add_column :activities, :exercise, :float
  	add_column :activities, :reading, :float
  	add_column :activities, :comment, :text
  end
end
