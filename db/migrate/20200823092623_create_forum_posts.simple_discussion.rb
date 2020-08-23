# This migration comes from simple_discussion (originally 20170417012932)
class CreateForumPosts < ActiveRecord::Migration[4.2]
  def change
    create_table :forum_posts do |t|
      t.integer :forum_thread_id, foreign_key: true,   :null => false
      t.integer :user_id, foreign_key: true,   :null => false
      t.text     :body
      t.boolean  :solved, default: false

      t.timestamps
    end
  end
end
