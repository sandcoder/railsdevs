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
require 'test_helper'

class JobTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
