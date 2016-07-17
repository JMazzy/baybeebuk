class PeopleController < ApplicationController
  def show
    @person = current_user.person.related_people.find( params[:id] )

    if !@person
      redirect_to memories_path
    end
  end
end
