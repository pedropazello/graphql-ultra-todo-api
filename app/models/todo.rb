class Todo < ApplicationRecord
  validates_presence_of :description, :checked
end
