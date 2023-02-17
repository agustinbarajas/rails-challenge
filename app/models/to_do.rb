class ToDo < ApplicationRecord
    has_many :todo_categories
    has_many :categories, through: :todo_categories

    validates :title, uniqueness: {
        message: 'This task has already been created before'
    }
    validates :title, presence: true
    validates :title, length: {
        minimum: 3,
        too_short: 'Task name must have a minimum of %{count} characters'
    }
end
