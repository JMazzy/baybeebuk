class Memory < ApplicationRecord
  belongs_to :user

  has_many :person_memories
  has_many :people, through: :person_memories

  def formatted_date
    date = self.memory_date
    date.strftime("%B %e, %Y")
  end
end
