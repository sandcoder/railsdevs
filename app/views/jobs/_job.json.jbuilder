json.extract! job, :id, :title, :link_to_apply, :description, :company_name, :compnay_website, :company_description, :role_type, :compensation_range, :remote, :year_of_experience, :user_id, :created_at, :updated_at
json.url job_url(job, format: :json)
