# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-post-unslugify/version'

Gem::Specification.new do |spec|
  spec.name        = "jekyll-post-unslugify"
  spec.version     = Jekyll::PostUnslugify::VERSION
  spec.summary     = "Keep post title unslugified."
  spec.description = "A plugin to keep post title unslugified in Jekyll 3.0 and above."
  spec.authors     = ["rebornix"]
  spec.email       = "penn.lv@gmail.com"
  spec.homepage    = "https://github.com/rebornix/jekyll-post-unslugify"
  spec.license     = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "jekyll", [">= 3.0", "< 4.0"]
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'rake', '~> 0'
  spec.add_development_dependency "bundler", "~> 1.6"
end
