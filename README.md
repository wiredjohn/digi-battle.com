# Digi-Battle.com
**WORK IN PROGRESS!** - This documentation is still being created in-line with the current development of the site.

This is the website source code for [digi-battle.com](https://digi-battle.com), the Digimon Digi-Battle Card Database.


## Contributing
To find out how to fix a bug, write an article or otherwise get involved, check out the [Contributing Guide](/CONTRIBUTING.md).


## Contact 
Get in touch or leave feedback:

- GitHub [discussions tab](/discussions)
- If you don't want to use GitHub you can [email me directly](mailto:digi-battle@wiredjohn.com)


## Dependencies
- Ruby (>=3.4.5)
- Bundler (>=2.6.9)
- Git


## Setup
Clone the Git repository:

```bash
git clone https://github.com/wiredjohn/digi-battle.com.git
cd digi-battle.com
```

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
