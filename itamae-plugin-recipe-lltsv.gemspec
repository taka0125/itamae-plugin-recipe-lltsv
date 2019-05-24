
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "itamae/plugin/recipe/lltsv/version"

Gem::Specification.new do |spec|
  spec.name          = "itamae-plugin-recipe-lltsv"
  spec.version       = Itamae::Plugin::Recipe::Lltsv::VERSION
  spec.authors       = ["Takahiro Ooishi"]
  spec.email         = ["taka0125@gmail.com"]

  spec.summary       = %q{itamae recipe plugin for lltsv.}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/taka0125/itamae-plugin-recipe-lltsv"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "itamae"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_development_dependency "docker-api"
  spec.add_development_dependency "serverspec"
end
