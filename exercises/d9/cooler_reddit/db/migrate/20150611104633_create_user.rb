class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name
    	t.string :user_name
    	t.integer :karma
    end
  end
end
