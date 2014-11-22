source 'https://rubygems.org'

ruby '2.1.4'
gem 'rails', '4.1.8'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'therubyracer',  platforms: :ruby
gem 'less-rails'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'unicorn'
gem 'twitter-bootstrap-rails'
gem 'simple_form'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

group :production do
  gem 'rails_12factor'
  gem 'pg'
end

group :test, :development do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'launchy'
end

group :test do
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
end

group :development do    #access at rails/routes
  gem 'spring'
  gem 'sextant'
end

