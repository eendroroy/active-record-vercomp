# frozen_string_literal: true

class VercompGenerator < Rails::Generators::Base
  source_root File.expand_path('templates', __dir__)
  def copy_initializer
    copy_file '../templates/connection_adapter_vercomp.rb', 'config/initializers/connection_adapter_vercomp.rb'
    copy_file(
      '../templates/enable_vercomp_extension.rb',
      "db/migrate/#{Time.now.utc.strftime('%Y%m%d%H%M%S')}_enable_vercomp_extension.rb"
    )
  end
end
