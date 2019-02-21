# frozen_string_literal: true

require 'bundler/gem_tasks'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:rspec)

require 'rubocop/rake_task'
RuboCop::RakeTask.new

task :environment do
  env = File.read(File.expand_path('.env', __dir__))
  env.lines.each(&:strip!).reject(&:empty?).each do |line|
    key, value = line.split('=')
    ENV[key] = value
  end
end

task spec: :environment do
  Rake::Task[:rspec].invoke
end

desc 'Generate the client from the API description'
task :generate do
  exec 'generate-api gen lib --file=distance_matrix.json'
end

task default: %i[
  spec
  rubocop
]
