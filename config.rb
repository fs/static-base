set :js_dir, 'assets/javascripts'
set :css_dir, 'assets/stylesheets'
set :images_dir, 'assets/images'
set :fonts_dir, 'assets/fonts'
set :partials_dir, 'partials'

activate :autoprefixer, browsers: ['last 2 versions', 'ie 9']

configure :build do
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets

  # Only Including Tracking Code in Builds
  activate :google_analytics do |ga|
    ga.tracking_id = 'UA-XXXXXXX-X'
  end
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.method = :git
end

# Silence I18n warning, http://stackoverflow.com/a/20381730
I18n.config.enforce_available_locales = false
