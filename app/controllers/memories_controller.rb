class MemoriesController < ApplicationController
  def index
    @memories = current_user.memories
    flash["notice"] = "testing"
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def memory_params
    params.require( :memory ).permit( :user_id, :person_id, :title, :body, :memory_date )
  end
end
