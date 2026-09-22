# Digi-Battle.com

**WORK IN PROGRESS!** - This documentation is still being created in-line with the current development of the site.


## Contributing
todo...


## Dependencies
todo...


## Building 

The project offers a production build config and an optimized local development build config. The difference being `jekyll-sitemap` and `jekyll-redirect-from` are removed from the optimized build as they significantly increase build times.

Optimized local development build:
```bash
bundle config set --local without production

bundle install

bundle exec jekyll clean

bundle exec jekyll serve --incremental --config _config_dev.yml
```

Production build:
```bash
bundle config unset --local without

bundle install

bundle exec jekyll clean

bundle exec jekyll serve --incremental --config _config.yml
```


## SEO

Binned jekyll-seo-tag because it was really clunky to define custom values from a collection's layout page. 

SEO tags are created in /includes/seo.

Page title = page.seo_title -> if it's a card page then construct a title -> page.title -> blank
Page description = page.seo_description -> if it's a card page then construct description -> take first 150 chars from page content
Image = page.seo_image -> if it's a card page then grab the card image absolute url using the page.card_id
