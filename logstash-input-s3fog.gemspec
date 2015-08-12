Gem::Specification.new do |s|
  s.name = 'logstash-input-s3fog'
  s.version         = '0.0.2'
  s.licenses = ['Apache License (2.0)']
  s.summary = "This example input streams a string at a definable interval."
  s.description = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program"
  s.authors = ["Jonas Björk"]
  s.email = 'jonas.bjork@gmail.com'
  s.homepage = "https://jonasbjork.net/"
  s.require_paths = ["lib"]

  # Files
  s.files = `git ls-files`.split($\)
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "input" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core", '>= 1.4.0', '< 2.0.0'
  s.add_runtime_dependency 'logstash-codec-plain', '~> 1.0', '>= 1.0.0'
  s.add_runtime_dependency "rack", '~> 1.6', '>= 1.6.4'
  s.add_runtime_dependency "sinatra", '~> 0'
  s.add_runtime_dependency "jls-lumberjack", '~> 0'
  s.add_runtime_dependency "elasticsearch", '~> 1.0', '>= 1.0.12'
  s.add_runtime_dependency "fog", '~> 0'
  s.add_runtime_dependency "unf", '~> 0'
  s.add_runtime_dependency "excon", '~> 0'
  s.add_runtime_dependency 'stud', '~> 0'

  s.add_development_dependency 'logstash-devutils', '~> 0'
end