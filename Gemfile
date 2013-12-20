#----------------------------------------------
# gem sources
#----------------------------------------------

source 'https://rubygems.org'

ruby '2.0.0'

#----------------------------------------------
# common gems
#----------------------------------------------

# rails, etc.
gem 'rails',                    '4.0.2'
gem 'sass-rails',               '~> 4.0.0'
gem 'coffee-rails',             '~> 4.0.0'

#drivers
gem 'pg',                       '~> 0.17.0'

# view gems
gem 'jquery-rails'
gem 'jbuilder',                 '~> 1.2'
gem 'foundation-rails'
gem 'slim-rails',               '~> 2.0.4'

# authentication/authorization
gem 'devise'

# other gems
gem 'uglifier',                 '>= 1.3.0'
gem 'turbolinks'
gem 'quiet_assets'

#----------------------------------------------
# environments
#----------------------------------------------

# local

group :test, :development do
  gem 'rspec-rails',            '~> 2.14.0'
  gem 'database_cleaner',       '~> 1.1.1'
  gem 'factory_girl_rails',     '~> 4.2.1'
  gem 'rails_layout'
end

#production/staging

group :production, :staging do
  gem 'rails_12factor'
end
