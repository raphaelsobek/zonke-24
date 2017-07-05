source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
gem 'rails', '~> 5.0.3'

gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'devise'
gem 'bcrypt-ruby','~>3.0.0'
gem 'simple_form'
gem 'faker', group: :development
gem 'kaminari'
gem	'geocoder'
# gem 'font-awesome-rails'
gem 'font-awesome-sass', '~> 4.4.0'
gem "rolify"
gem "cancan"
gem 'figaro'
# gem 'carrierwave', '~> 1.0'
# gem 'mini_magick'
# gem 'fog'
gem "paperclip", "~> 5.0.0"
gem 'dropzonejs-rails'
gem 'uglifier'
group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
	gem 'sqlite3'
end	
group :production  do
gem 'pg'
gem 'rails_12factor'
end 

group :development do
  gem 'web-console', '>= 3.3.0'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
