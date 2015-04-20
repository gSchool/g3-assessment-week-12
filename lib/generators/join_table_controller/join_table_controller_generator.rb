class JoinTableControllerGenerator < Rails::Generators::Base

  argument :mainthing, :type => :string, :default => "thing"
  argument :belongsto, :type => :string, :default => "user"
  argument :belongstoalso, :type => :string, :default => "owner"
  argument :mainthing_attribute_key1, :type => :string, :default => "name"
  argument :mainthing_attribute_key2, :type => :string, :default => "name"
  argument :mainthing_attribute_key3, :type => :string, :default => "name"
  argument :mainthing_attribute_key4, :type => :string, :default => "name"

  def make_my_join_controller

    create_file "app/controllers/#{mainthing.pluralize}_controller.rb", <<-FILE
class #{mainthing.pluralize.capitalize}Controller < ApplicationController

  def index
    @#{mainthing} = #{mainthing.capitalize}.all
  end

  def new
    @#{belongsto} = #{belongsto.capitalize}.find(params[:#{belongsto}_id])
    @#{mainthing} = #{mainthing.capitalize}.new
  end

  def create
    @#{belongsto} = #{belongsto.capitalize}.find(params[:#{belongsto}_id])
    @#{mainthing} = @#{belongsto}.#{mainthing.pluralize}.new(#{mainthing}_params)
    if @#{mainthing}.save
      redirect_to #{belongsto}_path(@#{belongsto}), notice: "Your #{mainthing} has been created."
    else
      render :new
    end
  end

  def show
    @#{mainthing} = #{mainthing.capitalize}.find(params[:id])
  end

  def edit
    @#{mainthing} = #{mainthing.capitalize}.find(params[:id])
  end

  def update
    @#{belongsto} = #{belongsto.capitalize}.find(params[:#{belongsto}_id])
    @#{mainthing} = #{mainthing.capitalize}.find(params[:id])
    if @#{mainthing}.save
      redirect_to #{belongsto}_path(@#{belongsto}), notice: "Your #{mainthing} has been created."
    else
      render :edit
    end
  end

  def destroy
    @#{mainthing} = #{mainthing.capitalize}.find(params[:id])
    @#{mainthing}.destroy
  end

  private

  def #{mainthing}_params
    params.require(:#{mainthing}).permit(:#{belongsto}_id, :#{belongstoalso}_id, :#{mainthing_attribute_key1},
    :#{mainthing_attribute_key2}, :#{mainthing_attribute_key3}, :#{mainthing_attribute_key4})
  end

end

FILE

end
end
