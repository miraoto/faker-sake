
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "faker/sake/version"

Gem::Specification.new do |spec|
  spec.name          = "faker-sake"
  spec.version       = Faker::Sake::VERSION
  spec.authors       = ["miraoto"]
  spec.email         = ["miraoto@gmail.com"]

  spec.summary       = %q{Japanese sake library that generate fake date.}
  spec.description   = %q{Japanese sake library that generate fake date.}
  spec.homepage      = "https://github.com/miraoto/faker-sake"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
