# == Schema Information
#
# Table name: jobs
#
#  id                 :bigint           not null, primary key
#  company_name       :string(255)
#  compensation_range :string(255)
#  compnay_website    :string(255)
#  link_to_apply      :string(255)
#  remote             :boolean          default(FALSE)
#  role_type          :string(255)
#  title              :string(255)
#  year_of_experience :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :bigint           not null
#
# Indexes
#
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
end
