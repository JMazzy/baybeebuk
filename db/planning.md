## Database Schema Plan

### Devise

#### User
  - id
  - email (string)
  - [devise stuff]

### Basic Features

#### Person
  - id
  - first_name
  - middle_name
  - last_name
  - birth_date
  - birth_place
  - birth_weight
  - gender
  - (avatar) add later

#### UserPerson
  - id
  - user_id
  - person_id

#### Relationship
  - id
  - person_id
  - relation_id

#### Memory
  - id
  - user_id
  - person_id
  - title
  - body
  - memory_date

### Photo feature

#### Image (stored Amazon AWS)
- id
- file
- caption

#### MemoryPhoto
- id
- memory_id
- photo_id
