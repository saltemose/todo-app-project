class Edit < ApplicationRecord
    validates :name, :completed, :task_id, presence: true

    belongs_to :task
end
