# README

* Install RVM

* Clone this repo

* Install Postgres

* Ruby version: 2.3.3

* Configuration

Set in config/application.yaml

* Database creation

Set up the correct DB config vars
```yaml
DB_HOST: 'localhost'
DB_USER: 'any_username'
DB_PASS: 'any-password'
```

The current configuration for email sending:
```yaml
SES_SERVER_ADDRESS: 'email-smtp.eu-west-1.amazonaws.com'
SES_SMTP_USER: 'AMZNSMTPID'
SES_SMTP_PASS: 'amznsmtpiamusersecretkey'
DEVISE_MAIL_SENDER: "'My Domain' <no-reply@my.domain>"
ADMIN_MAIL_SENDER: "'My Domain' <admin@my.domain>"
APP_DOMAIN: 'my.domain'
```

* Database initialization

```bash
$ rails db:create
```

* How to run the test suite

* Deployment instructions: use heroku

## Transactional email

Use AWS SES in production

Look for the flow [here](https://2017doneright.com/sending-emails-with-smtp-and-amazon-ses-in-ruby-on-rails-318b47b6994a)



