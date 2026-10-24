bundle config unset --local without

bundle install

bundle exec jekyll clean

bundle exec jekyll serve --incremental --config _config.yml