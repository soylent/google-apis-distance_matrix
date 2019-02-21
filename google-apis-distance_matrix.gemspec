# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name        = 'google-apis-distance_matrix'
  s.version     = '0.1'
  s.authors     = 'soylent'
  s.summary     = 'Google Distance Matrix API Client'
  s.description = 'Google Distance Matrix API Client'

  s.files = Dir['lib/**/*', 'README.md']

  s.add_development_dependency 'google-api-client', '~> 0.28'
  s.add_development_dependency 'pry-byebug'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec', '~> 3.8'
  s.add_development_dependency 'rubocop', '~> 0.64.0'
  s.add_development_dependency 'vcr', '~> 4.0'
  s.add_development_dependency 'webmock', '~> 3.5'

  # We need to install development dependencies of the `google-api-client` gem
  # in order to use the `generate-api` command.
  google_api_client = Gem::Specification.find_by_name('google-api-client')
  google_api_client.dependencies.reject(&:runtime?).each do |dependency|
    s.add_development_dependency(dependency)
  end
end
