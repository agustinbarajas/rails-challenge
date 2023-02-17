class TodoCategory < ApplicationRecord
  belongs_to :to_do
  belongs_to :category
end
