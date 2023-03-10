# frozen_string_literal: true

require_relative "lib/rulers/version"

Gem::Specification.new do |spec|
  spec.name = "rulers"
  spec.version = Rulers::VERSION
  spec.authors = ["AC Alexandre Calaça"]
  spec.email = ["alexcalaca@users.noreply.github.com"]

  spec.summary = "A Rails-like framework built from an empty directory, using the same Ruby features and structures that make Rails so interesting."
  spec.description = "The Rulers framework from the book 'Rebuilding Rails' by Noah Gibbs. Rulers is a Rack-based Web Framework that looks a lot like Ruby on Rails. It is a Rails-like framework built from an empty directory, using the same Ruby features and structures that make Rails so interesting."
  spec.homepage = "https://github.com/alexcalaca/rulers"
  spec.license  = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/alexcalaca/rulers"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

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

  spec.add_dependency "rack", "~> 2.2"
  spec.add_dependency "webrick"
  spec.add_dependency "rack-test"
  spec.add_dependency "minitest"
end
