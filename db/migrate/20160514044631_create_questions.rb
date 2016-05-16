class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
        
        t.string "title"
        t.text "content"
        t.string "quser"
        
        
      t.timestamps null: false
    end
  end
end
