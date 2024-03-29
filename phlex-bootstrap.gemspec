# frozen_string_literal: true

require_relative "lib/phlex/version"

Gem::Specification.new do |spec|
  spec.name = "phlex-bootstrap"
  spec.version = Phlex::Bootstrap::VERSION
  spec.authors = ["Jeff Perrin"]
  spec.email = ["jeffperrin@gmail.com"]

  spec.summary = "Phlex components for Bootstrap"
  spec.description = ""
  spec.homepage = "https://github.com/jeffperrin/phlex-bootstrap"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.2.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/jeffperrin/phlex-bootstrap"
  spec.metadata["changelog_uri"] = "https://github.com/jeffperrin/phlex-bootstrap/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "phlex", "~> 1.8"
  spec.add_dependency "zeitwerk", "~> 2.6"

  spec.metadata["rubygems_mfa_required"] = "true"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
