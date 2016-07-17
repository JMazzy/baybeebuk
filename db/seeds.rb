relation_types = [ "biological", "adoptive", "spousal" ]

relation_types.each do |type|
  RelationshipType.create(
    name: type
  )
end

person = Person.create(
  first_name: "Foo",
  middle_name: "Theodore",
  last_name: "Bar",
  birth_date: Date.new(1985,6,7),
  birth_weight: 8.0 + 6.0/16,
  birth_place: "New York, NY",
  gender: "M")

user = User.create(
  email: "foobar@example.com",
  password: "foo1bar2",
  person_id: person.id )

little_jimmy = Person.create(
  first_name: "Jimmy",
  middle_name: "Foo",
  last_name: "Bar",
  birth_date: Date.new(2014,5,6),
  birth_weight: 10.0,
  birth_place: "Seattle, WA",
  gender: "M")

little_suzie = Person.create(
  first_name: "Suzie",
  middle_name: "Fooie",
  last_name: "Bar",
  birth_date: Date.new(2016,7,8),
  birth_weight: 7.0,
  birth_place: "Austin, TX",
  gender: "F")

foo_kid1 = Relationship.create(
  relationship_type_id: RelationshipType.find_or_create_by( name: "biological" ).id
)
foo_kid2 = Relationship.create(
  relationship_type_id: RelationshipType.find_or_create_by( name: "biological" ).id
)

RelationshipMember.create(
  relationship_id: foo_kid1.id,
  person_id: person.id,
  role: "father"
)

RelationshipMember.create(
  relationship_id: foo_kid1.id,
  person_id: little_jimmy.id,
  role: "son"
)

RelationshipMember.create(
  relationship_id: foo_kid2.id,
  person_id: person.id,
  role: "father"
)

RelationshipMember.create(
  relationship_id: foo_kid2.id,
  person_id: little_suzie.id,
  role: "daughter"
)

mem = Memory.create(
  user_id: user.id,
  title: "Tooth knocked out",
  body: "Little Jimmy fell off his bike and his front teeth came out.",
  memory_date: Date.new(2016,9,10) )

PersonMemory.create(
  person_id: little_jimmy.id,
  memory_id: mem.id
)

mem = Memory.create(
  user_id: user.id,
  title: "Suzie turned over",
  body: "Suzie turned herself over for the first time.",
  memory_date: Date.new(2017,2,10) )

PersonMemory.create(
  person_id: little_suzie.id,
  memory_id: mem.id
)
