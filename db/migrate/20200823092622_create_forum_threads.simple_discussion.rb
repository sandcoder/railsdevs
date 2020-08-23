# This migration comes from simple_discussion (originally 20170417012931)
class CreateForumThreads < ActiveRecord::Migration[4.2]
  def change
    create_table :forum_threads do |t|
      t.integer :forum_category_id, foreign_key: true,   :null => false
      t.integer :user_id, foreign_key: true,   :null => false
      t.string :title, null: false
      t.string :slug, null: false
      t.integer :forum_posts_count, default: 0
      t.boolean :pinned, default: false
      t.boolean :solved, default: false

      t.timestamps
    end
  end
end
