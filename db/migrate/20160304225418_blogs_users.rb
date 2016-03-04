class BlogsUsers < ActiveRecord::Migration
  def change
    create_table :blog_users, id: false do |t|
      t.column :blog_id, :integer
      t.column :user_id, :integer
    end
  end
end
