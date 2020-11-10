# frozen_string_literal: true

json.extract! @task, :id, :name, :completed, :created_at, :updated_at

json.array!(@edits) do |edit|
  json.extract! edit, :id, :name, :completed, :created_at
end