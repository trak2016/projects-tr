json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :user_id, :project_id, :student_email, :supervisor_email
  json.url reservation_url(reservation, format: :json)
end
