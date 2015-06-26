set :js_dir, "assets/javascripts"
set :css_dir, "assets/stylesheets"
set :images_dir, "assets/images"
set :fonts_dir, "assets/fonts"
set :partials_dir, "partials"

activate :autoprefixer, browsers: ["last 2 versions", "ie 9"]
activate :livereload

# https://github.com/middleman/middleman/issues/742
proxy "/CNAME", "/CNAME.html", layout: false, ignore: true

# Foundation is bundled with modernizr used for feature-detection.
# Importing it, so it can be used directly with `javascript_include_tag`
sprockets.import_asset "vendor/modernizr"

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
  activate :imageoptim

  # Only Including Tracking Code in Builds
  activate :google_analytics do |ga|
    ga.tracking_id = "UA-XXXXXXX-X"
  end
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.method = :git
  deploy.remote = ENV["GIT_REMOTE"]
end
