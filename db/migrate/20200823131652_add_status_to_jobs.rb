class AddStatusToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :price, :integer
    add_column :jobs, :compensation_type, :string, after: :compensation_range
    add_column :jobs, :estimated_hours, :string, after: :compensation_type
    add_column :jobs, :status, :string, default: "pending"
    add_column :jobs, :headquarters, :string
    add_column :jobs, :upsell_type, :string
    add_column :jobs, :published_at, :datetime
    add_column :jobs, :featured_until, :datetime
    add_column :jobs, :featured, :boolean, default: false
  end
end
