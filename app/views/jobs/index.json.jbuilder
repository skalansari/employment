json.array!(@jobs) do |job|
  json.extract! job, :id, :name, :overview, :type_id, :user_id, :filled
  json.url job_url(job, format: :json)
end
