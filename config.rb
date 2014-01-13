require 'slim'

configure :build do
  activate :minify_css
  activate :minify_javascript
end

activate :deploy do |deploy|
  deploy.method = :git
end

# silence i18n warning
::I18n.config.enforce_available_locales = false
