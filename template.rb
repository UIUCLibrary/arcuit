# frozen_string_literal: true

gem 'arclight', '= 1.6.0'

after_bundle do
  generate 'blacklight:install', '--devise'
  generate 'arclight:install', '-f'

  rake 'db:migrate'
end

gem "arcuit", git: "https://github.com/UIUCLibrary/arcuit"
