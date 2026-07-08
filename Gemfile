source 'https://rubygems.org'

group :test do
  # Test framework
  gem 'rake'
  gem 'rack'
  gem 'rack-test'

  ruby_version = Gem::Version.new(RUBY_VERSION)

  # Rails version based on Ruby version
  if ruby_version < Gem::Version.new('3.0')
    gem 'rails', '~> 6.1'
  else
    gem 'rails', '~> 7.0'
  end

  # Sinatra version
  gem 'sinatra', '~> 3.0'

  # Hanami framework based on Ruby version
  if ruby_version < Gem::Version.new('3.0')
    gem 'hanami', '~> 1.3'
    gem 'hanami-controller', '~> 1.3'
    gem 'hanami-router', '~> 1.3'
  else
    gem 'hanami', '~> 2.0'
    gem 'hanami-controller', '~> 2.0'
    gem 'hanami-router', '~> 2.0'
  end

  gem 'tzinfo'
end

gemspec
