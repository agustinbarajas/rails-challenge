class Category < ApplicationRecord
    has_many :todo_categories
    has_many :to_dos, through: :todo_categories
end
