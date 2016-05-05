class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
    	t.string :institute
    	t.string :course
    	t.string :duration
    	t.string :fee
      t.timestamps null: false
    end
  end
end
