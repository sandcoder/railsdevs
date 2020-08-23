# This migration comes from simple_discussion (originally 20170417012933)
class CreateForumSubscriptions < ActiveRecord::Migration[4.2]
  def change
    create_table :forum_subscriptions do |t|
      t.integer :forum_thread_id, foreign_key: true, :null => false
      t.integer :user_id, foreign_key: true, :null => false
      t.string   :subscription_type

      t.timestamps
    end
    add_index :forum_subscriptions, [:forum_thread_id, :user_id]
  end
end
