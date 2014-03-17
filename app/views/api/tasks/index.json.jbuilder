json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :priority, :due_date, :done, :list_id
  json.url task_url(task, format: :json)
end
