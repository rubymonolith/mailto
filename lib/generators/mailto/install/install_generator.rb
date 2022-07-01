class Mailto::InstallGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("templates", __dir__)

  def copy_templates
    directory "mailtos", "app/mailtos"
  end
end
