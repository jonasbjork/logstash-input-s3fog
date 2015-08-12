Gem::Specification.new do |s|
  s.name = 'logstash-input-s3fog'
  s.version         = '0.0.1'
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
  s.add_runtime_dependency 'logstash-codec-plain'
  s.add_runtime_dependency "rack"
  s.add_runtime_dependency "sinatra"
  s.add_runtime_dependency "jls-lumberjack"
  s.add_runtime_dependency "elasticsearch"
  s.add_runtime_dependency "fog"
  s.add_runtime_dependency "unf"
  s.add_runtime_dependency "excon"
  s.add_runtime_dependency "bunny"
  s.add_runtime_dependency 'stud'
  
  s.add_development_dependency 'logstash-devutils'

end