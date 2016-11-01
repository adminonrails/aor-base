require 'rails/generators/erb/scaffold/scaffold_generator'
require 'rails/generators/rails/scaffold_controller/scaffold_controller_generator'

module Admin
  class ScaffoldControllerGenerator < Rails::Generators::NamedBase
    def invoke_default
      Erb::Generators::ScaffoldGenerator.source_root File.expand_path('../../templates/erb/scaffold', __FILE__)
      Rails::Generators::ScaffoldControllerGenerator.source_root File.expand_path('../../templates/rails/scaffold_controller', __FILE__)
      invoke 'scaffold_controller', ARGV
    end
  end
end
