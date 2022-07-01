class Mailto::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path("templates", __dir__)

  def copy_templates
    directory "mailtos", "app/mailtos"
  end
end
