module PeopleHelper

  def memories_created( person )
    if person.memories_created?
      render partial: "people/memories_created", locals: { person: person }
    end
  end

  def memories_about( person )
    if person.memories_about?
      render partial: "people/memories_about", locals: { person: person }
    end
  end

end
