Gem::Specification.new do |s|
  s.name          = 'logstash-input-rds'
  s.version       = '0.11.0'
  s.summary       = 'Stream events from RDS to Logstash'

  s.authors       = ['Andrew Schleifer']
  s.email         = 'me@andrewschleifer.name'

  s.require_paths = ['lib']
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "input" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", "~> 2.0"
  s.add_runtime_dependency 'logstash-codec-plain'
  s.add_runtime_dependency 'stud', '>= 0.0.22'
  s.add_development_dependency 'logstash-devutils', '>= 0.0.16'
end