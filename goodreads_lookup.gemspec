
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "goodreads_lookup/version"

Gem::Specification.new do |spec|
  spec.name          = "goodreads_lookup"
  spec.version       = GoodreadsLookup::VERSION
  spec.authors       = ["Nick Basso"]
  spec.email         = ["nick.basso@shopify.com"]

  spec.summary       = "Gets information about a book using the Goodreads API."
  spec.description   = "Uses the Goodreads API to lookup and return the title and author of a book by ISBN."
  spec.homepage      = "https://github.com/NickGBasso/goodreads_lookup"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency "nokogiri"
end
