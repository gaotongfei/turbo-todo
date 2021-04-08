class Todo < ApplicationRecord
  enum status: [:created, :completed, :deleted]
end
