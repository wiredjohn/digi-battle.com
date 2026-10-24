bundle config set --local without production

bundle install

bundle exec jekyll clean

bundle exec jekyll serve --incremental --config _config_dev.yml