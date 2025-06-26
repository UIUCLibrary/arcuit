require_relative "lib/arcuit/version"

Gem::Specification.new do |spec|
  spec.name        = "arcuit"
  spec.version     = Arcuit::VERSION
  spec.authors     = [ "Leonel Ramirez" ]
  spec.email       = [ "leonel@illinois.edu" ]
  spec.homepage    = "https://github.com/UIUCLibrary/arcuit"
  spec.summary     = "Arcuit (ARClight: University of Illinois Theme) is a Rails Engine that customizes Arclight for the specific requirements of the University of Illinois Urbana-Champaign Library."
  spec.description = ""
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/UIUCLibrary/arcuit"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.2.2.1"
  spec.add_dependency "arclight", ">= 1.4.0"
end
