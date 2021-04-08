class Todo < ApplicationRecord
  enum status: [:created, :completed, :deleted]

  after_create_commit -> { broadcast_prepend_to 'todos' }
  after_destroy_commit -> { broadcast_remove_to 'todos' }
end
