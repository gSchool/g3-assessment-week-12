class ViewWithTableGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  argument :mainthing, :type => :string, :default => "user"
  argument :mainthing_attribute_key1, :type => :string, :default => "name"
  argument :mainthing_attribute_key2, :type => :string, :default => "name"
  argument :mainthing_attribute_key3, :type => :string, :default => "name"
  argument :mainthing_attribute_key4, :type => :string, :default => "name"

  def make_my_table_view
    template "index.html.erb", "app/views/#{mainthing}s/index.html.erb"
  end

end
