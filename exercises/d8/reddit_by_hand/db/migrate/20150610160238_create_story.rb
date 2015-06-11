class CreateStory < ActiveRecord::Migration
  def change
    create_table :stories do |t|
    	t.string :title
    	t.text :body
    	t.integer :user_id
    	t.integer :category_id
    end
  end
end
