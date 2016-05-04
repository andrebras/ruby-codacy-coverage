lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.authors       = ["Nuno Teixeira"]
  gem.email         = ["nuno@codacy.com"]
  gem.description   = "Post code coverage results to Codacy."
  gem.summary       = "Post code coverage results to Codacy."
  gem.homepage      = "https://codacy.com"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "codacy-coverage"
  gem.require_paths = ["lib"]
  gem.version       = '0.1.1'

  gem.required_ruby_version = '>= 1.8.7'

  gem.add_dependency 'simplecov',   '~> 0.10'
  gem.add_dependency 'rest-client', '~> 1.8'

  gem.add_development_dependency 'bundler', '~> 1.7'
end
