class Edit < ApplicationRecord
    validates :name, :task_id, presence: true

    belongs_to :task
end
