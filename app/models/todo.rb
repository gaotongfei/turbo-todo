class Todo < ApplicationRecord
  enum status: [:created, :completed, :deleted]

  after_create_commit -> { broadcast_prepend_to 'todos' }
end
