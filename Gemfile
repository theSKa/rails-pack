source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.3'

# Active record with postgres
gem 'pg'

# Use Puma as the app server
gem 'puma', '~> 3.7'

# Security, limit number request per second. Read more: https://github.com/kickstarter/rack-attack
gem 'rack-attack'

# Use jbuilder for JSON rendering (view separation)
gem 'jbuilder'

# Faster rendering JSON file.
# Read more: https://github.com/brianmario/yajl-ruby
gem 'yajl-ruby', require: 'yajl'

# Schema validation
# https://github.com/ruby-json-schema/json-schema
gem 'json-schema'

# Timeout for long-running request
gem 'rack-timeout'

# Token based authentication for Rails JSON APIs
gem 'devise_token_auth', github: 'lynndylanhurley/devise_token_auth', branch: 'master'
gem 'omniauth'


# Environment management
gem 'figaro'

# Styleguide
gem 'rubocop'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

# expose an admin interface to all models
# gem 'rails_admin'
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'pry'
  gem 'pry-byebug'
  gem 'byebug', platform: :mri

  # Read more: https://github.com/collectiveidea/json_spec
  gem 'json_spec'

  # Read more: https://github.com/charliesome/better_errors
  # gem 'better_errors'
  # gem 'binding_of_caller'

  # Read more: https://github.com/awesome-print/awesome_print
  # run ap User.all to see afect
  gem 'awesome_print', require:'ap'

  # Integrate Rails project with Rails Panel (chrome extension)
  # Read More: https://github.com/dejan/rails_panel
  gem 'meta_request'

  # Use RSpec for specs
  gem 'rspec-rails'

  # Automatic generate API documentation based on comments in RSpec
  gem 'rspec_api_documentation'

  # RSpec coverage
  gem 'simplecov', :require => false

  # Faker
  gem 'faker'

  # Use Factory Girl for generating random test data
  gem 'factory_girl_rails'

  # Fake email
  gem 'letter_opener',:require => false

end

group :development do
  gem 'listen', '~> 3.0.5'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # JSON Schema tooling
  # Read more:
  # - https://github.com/interagent/prmd
  # - https://spacetelescope.github.io/understanding-json-schema/index.html
  # gem 'prmd'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
