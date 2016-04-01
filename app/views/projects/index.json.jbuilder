json.array!(@projects) do |project|
  json.extract! project, :id, :topic, :description, :reserved, :supervisor
  json.url project_url(project, format: :json)
end
