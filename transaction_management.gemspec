require_relative "lib/transaction_management/version"

Gem::Specification.new do |spec|
  spec.name        = "transaction_management"
  spec.version     = TransactionManagement::VERSION
  spec.authors     = ["Njunu-sk"]
  spec.email       = ["simonnjunu16@gmail.com"]
  spec.homepage    = "https://transactionmanagement.com"
  spec.summary     = "Component engine for implementing transaction management"
  spec.description = "Component engine for implementing transaction management"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_development_dependency "sqlite3"
  spec.add_dependency "rails", ">= 7.0.8"
end
