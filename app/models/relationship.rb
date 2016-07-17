class Relationship < ApplicationRecord
  belongs_to :relationship_type
  has_many :relationship_members
  has_many :people, through: :relationship_members
end
