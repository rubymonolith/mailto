# Make it a little easier to integrate email into support flows, etc.
module MailtoHelper
  def mail_to_template(template, text, **kwargs, &block)
    contents = File.read Rails.root.join("app/mailtos/#{template}.txt.erb")
    parser = Mailto::Frontmatter.new render inline: contents
    data = parser.data.merge("body": parser.body)
    email = data.delete("to")
    mail_to email, text, **data.merge(kwargs), &block
  end
end
