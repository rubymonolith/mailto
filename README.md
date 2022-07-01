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

Create a mailto template in the `app/mailtos` folder that looks like this:

```txt
---
subject: Having trouble at <%= request.url %>
to: support@example.com
---

Greetings,

I was trying to request the page <%= request.url %> and it said there was an error. Could you please have a look?

Here's my browser information: <%= request.user_agent %>

Cheers!
```

Then load the `mail_to_template` view helper from any of your views:

```
<h1>Get help!</h1>
<p>If you're still having trouble after reading our <a href="/support">support docs</a>, you can <% mail_to_template :support, "send us an email" %> and we'll check it out.</p>
```

When the user clicks on the link, they'll get an email that's populated with the contents of your template.

### Production use case

[Rocketship](https://rocketship.io/) uses mailto templates on its websites, like [Legible News](https://www.legiblenews.com/) to streamline communications with customers.

Here's what it looks like for an error when a page isn't found:

```txt
---
subject: Not found error at <%= request.url %>
to: support@legiblenews.com
---

Greetings,

I was trying to request the page <%= request.url %> and it said it couldn't be found, but I'm pretty sure this should work. Could you please have a look?

Cheers!
```

When the customer clicks on the "email support" link, the templates is populated in their email:

![https://s3.amazonaws.com/bradgessler/OTvCp9Xd3X6LkRNfSSN1jcTRPW9ezlt3oCw5R9R19sjyCa1Ywv2nbtRc9LtwMSxWLJ75X4mYm6Al90q6dNYcLEivnONalotmlQKa.png](Email message is populated with contents of template when a customer clicks on the mailto link)

## Contributing

Open an recreatable issue or a PR with a fix and tests.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
