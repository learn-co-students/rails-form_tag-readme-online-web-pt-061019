class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t| # create table called 'posts'
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
