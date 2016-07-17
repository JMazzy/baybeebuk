class Memory < ApplicationRecord
  belongs_to :user

  has_many :person_memories
  has_many :people, through: :person_memories
end
