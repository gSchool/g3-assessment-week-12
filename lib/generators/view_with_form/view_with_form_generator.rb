class ViewWithFormGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  argument :mainthing, :type => :string, :default => "user"
  argument :belongsto, :type => :string, :default => "owner"
  argument :mainthing_attribute_key1, :type => :string, :default => "name"
  argument :mainthing_attribute_key2, :type => :string, :default => "name"
  argument :mainthing_attribute_key3, :type => :string, :default => "name"
  argument :mainthing_attribute_key4, :type => :string, :default => "name"

  def make_my_view
    template "new.html.erb", "app/views/#{mainthing}s/new.html.erb"
  end

end
