# frozen_string_literal: true

require_relative "lib/foo_et_al/version"

Gem::Specification.new do |spec|
  spec.name = "foo_et_al"
  spec.version = FooEtAl::VERSION
  spec.authors = ["EFigueroa12"]
  spec.email = ["efigueroa6912@gmail.com"]

  spec.summary = "Calculates Foo Et Al parameterizations"
  spec.homepage = "https://github.com/EFigueroa12/FooEtAl"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_development_dependency "rspec", "~> 3.8"
  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
