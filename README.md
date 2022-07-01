# Mailto

Mailto makes it easy to create mailto templates that customers can use to communicate quickly and efficiently with you. The result? You don't have to worry about the complexity of "contact us" forms, weird pop-up chat windows, and all that non-sense. It's just conversation between you and your customer over email.

## Installation

Run from the root of your Rails application:

```sh
$ bundle add "mailto"
```

Then install it by running:

```sh
$ ./bin/rails generate mailto:install
```

This creates the `./app/mailtos` directory and populates it with a few example templates, like `./app/mailtos/support.txt.erb`.

## Usage

To use from your application, call the `mailto` view helper from any view templates:

```
<h1>Get help!</h1>
<p>If you're still having trouble after reading our <a href="/support">support docs</a>, you can <% mail_to_template "support", "send us an email" %> and we'll check it out.</p>
```

When the user clicks on the `mailto` link, they'll get an email that's populated with the contents of your template.

## Contributing

Open an recreatable issue or a PR with a fix and tests.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
