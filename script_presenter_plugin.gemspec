lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'script_presenter_plugin/version'

Gem::Specification.new do |spec|
  spec.name          = 'script_presenter_plugin'
  spec.version       = ScriptPresenterPlugin::VERSION
  spec.authors       = ['Chris Marques', 'Rx']
  spec.email         = ["russell@voomify.com"]

  spec.summary       = %q{A COPRL presenter plugin that renders javascript}
  spec.homepage      = 'http://github.com/coprl/script_presenters_plugin'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', "~> 2.0"
  spec.add_development_dependency 'rake', "~> 10.0"
end
