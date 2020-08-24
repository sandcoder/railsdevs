# == Schema Information
#
# Table name: jobs
#
#  id                 :bigint           not null, primary key
#  company_name       :string(255)
#  compensation_range :string(255)
#  compensation_type  :string(255)
#  compnay_website    :string(255)
#  estimated_hours    :string(255)
#  featured           :boolean          default(FALSE)
#  featured_until     :datetime
#  headquaters        :string(255)
#  link_to_apply      :string(255)
#  price              :integer
#  published_at       :datetime
#  remote             :boolean          default(FALSE)
#  role_type          :string(255)
#  slug               :string(255)
#  status             :string(255)      default("pending")
#  title              :string(255)
#  upsell_type        :string(255)
#  year_of_experience :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :bigint           not null
#
# Indexes
#
#  index_jobs_on_slug     (slug) UNIQUE
#  index_jobs_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Job < ApplicationRecord
  belongs_to :user

  has_rich_text :description
  has_rich_text :company_description
  has_one_attached :company_logo

  extend FriendlyId
  friendly_id :slug_candidates, use: [:slugged, :finders]

  JOB_STATUSES = {
    pending: "pending",
    published: "published",
    archived: "archived"    
  }.freeze

  COMPENSATION_TYPES =[
    "Contract",
    "Full-time"
  ]

  HOURLY_RANGES = [
    'less than 10',
    '10-30',
    '30-60',
    '60-90',
    '100 +'
  ].freeze
  COMPENSATION_RANGES = [
    '50,000 - 60,000',
    '60,000 - 70,000',
    '70,000 - 80,000',
    '80,000 - 90,000',
    '90,000 - 100,000',
    '100,000 - 110,000',
    '110,000 - 120,000',
    '120,000 - 130,000',
    'greater than 130,000'
  ].freeze

  def slug_candidates
    [:title, [:title, :company_name]]
  end

  def pending?
    self.status == Job::JOB_STATUSES[:pending]
  end

  def published?
    self.status == Job::JOB_STATUSES[:published]
  end

  def archived?
    self.status == Job::JOB_STATUSES[:archived]
  end


  def should_generate_new_friendly_id?
    if !slug?
      title_changed?
    else
      false
    end
  end


end
