class RelationshipMember < ApplicationRecord
  belongs_to :person
  belongs_to :relationship
end
