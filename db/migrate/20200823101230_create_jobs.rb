class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :link_to_apply
      t.string :company_name
      t.string :compnay_website
      t.string :role_type
      t.string :compensation_range
      t.boolean :remote, default: false
      t.string :year_of_experience
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
