class Person < ApplicationRecord
  has_one :user
  has_many :person_memories
  has_many :memories, through: :person_memories

  has_many :relationship_memberships, foreign_key: :person_id, class_name: "RelationshipMember"
  has_many :relationships, through: :relationship_memberships
  has_many :relationship_types, through: :relationships
  has_many :related_people, through: :relationships, class_name: "Person", foreign_key: :person_id, source: :people

  def full_name
    "#{self.first_name} #{self.middle_name} #{self.last_name}"
  end

  def weight_pounds
    pounds = self.birth_weight.floor
    ounces = ( 16 * ( self.birth_weight - pounds ) ).round
    "#{ pounds } pounds, #{ ounces } ounces"
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

  def user?
    !!self.user
  end

  def memories_about?
    self.memories.count != 0
  end

  def memories_created?
    self.user? && self.user.memories.count != 0
  end
end
