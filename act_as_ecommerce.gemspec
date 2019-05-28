$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "act_as_ecommerce/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "act_as_ecommerce"
  spec.version     = ActAsEcommerce::VERSION
  spec.authors     = ["Myk Klemme"]
  spec.email       = ["mykklemme@gmail.com"]
  spec.homepage    = "https://github.com/invisiblehats/act_as_ecommerce"
  spec.summary     = "A rails engine for working with subscriptions, selling products, and handling payments."
  spec.description = "A rails engine for working with subscriptions, selling products, and handling payments. Includes products, subscriptions, invoices, coupons, charges, etc."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.0.rc1"

  spec.add_development_dependency "pg"
end
