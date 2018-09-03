class VercompGenerator < Rails::Generators::Base
  source_root(File.expand_path(File.dirname(__FILE__)))
  def copy_initializer
    copy_file '../connection_adapters/connection_adapter_vercomp.rb', 'config/initializers/connection_adapter_vercomp.rb'
  end
end