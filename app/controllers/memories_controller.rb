class MemoriesController < ApplicationController
  def index
    @memories = current_user.memories.order( memory_date: :desc )
  end

  def show
    @memory = Memory.find( params[:id] )
  end

  def new
    @memory = Memory.new
  end

  def create
    @memory = Memory.new( memory_params )
    if @memory.save
      flash[:success] = "Memory created successfully."
      redirect to: memory_path( @memory )
    else
      flash[:danger] = "Memory could not be created due to errors."
      redirect to: :back
    end
  end

  def edit
    @memory = Memory.find( params[:id] )
  end

  def update
    @memory = Memory.find( params[:id] )
    if @memory.update( memory_params )
      flash[:success] = "Memory updated successfully."
      redirect to: memory_path( @memory )
    else
      flash[:danger] = "Memory could not be updated due to errors."
      redirect to: :back
    end
  end

  def destroy
    @memory = Memory.find( params[:id] )
    if @memory.destroy
      flash[:success] = "Memory deleted."
      redirect to: memories_path
    else
      flash[:danger] = "Memory could not be destroyed."
      redirect to: :back
    end
  end

  private

  def memory_params
    params.require( :memory ).permit( :user_id, :person_id, :title, :body, :memory_date )
  end
end
