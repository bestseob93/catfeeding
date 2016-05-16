class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :writename
      t.string :titleofpost
      t.text :descriptionofpost
      t.string :school
      t.string :sex
      t.string :per_count
       
      t.timestamps null: false
    end
  end
end
