## Database Schema Plan

#### User
  - id
  - email (string)
  - [devise stuff]


#### Person
  - id
  - first_name
  - middle_name
  - last_name
  - pregnancy_date
  - birth_date
  - birth_place
  - birth_weight
  - gender


#### UserPerson
  - id
  - user_id
  - child_id
  - relationship


#### Photo (stored Amazon AWS)
  - id
  - source
  - caption


#### Memory
  - id
  - user_id
  - child_id
  - title
  - body
  - memory_date


#### MemoryPhoto
  - id
  - memory_id
  - photo_id
