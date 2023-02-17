class Category < ApplicationRecord
    has_many :todo_categories
    has_many :to_dos, through: :todo_categories

    validates :title, uniqueness: {
        message: 'already exists'
    }
    validates :title, presence: true
    validates :title, length: {
        minimum: 3,
        too_short: 'must have a minimum of %{count} characters'
    }
end
