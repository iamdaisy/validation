class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false, default: ""
      t.text :content, null: false, default: ""
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
