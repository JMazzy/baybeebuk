class Person < ApplicationRecord
  has_many :person_memories
  has_many :memories, through: :person_memories

  has_many :relationship_memberships, foreign_key: :person_id, class_name: "RelationshipMember"
  has_many :relationships, through: :relationship_memberships
  has_many :relationship_types, through: :relationships
  has_many :related_people, through: :relationships, class_name: "Person", foreign_key: :person_id, source: :people

  def full_name
    "#{self.first_name} #{self.middle_name} #{self.last_name}"
  end

  def relatives
    self.related_people
    .where( "people.id != #{self.id}" )
    .includes( :relationship_members, :relationships )
  end

  def blood_relatives
    self.related_people.joins(:relationships).joins(:relationship_types)
  end

  def parents
    self.relatives
    .where( "relationship_members.role = 'father' OR relationship_members.role = 'mother'")
  end

  def children
    self.relatives
    .where( "relationship_members.role = 'daughter' OR relationship_members.role = 'son'")
  end
end
