# Itamae::Plugin::Recipe::Lltsv

itamae recipe plugin for [lltsv](https://github.com/sonots/lltsv).

[![Gem Version](https://badge.fury.io/rb/itamae-plugin-recipe-lltsv.svg)](https://badge.fury.io/rb/itamae-plugin-recipe-lltsv)
[![Build Status](https://travis-ci.com/taka0125/itamae-plugin-recipe-lltsv.svg?branch=master)](https://travis-ci.com/taka0125/itamae-plugin-recipe-lltsv)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'itamae-plugin-recipe-lltsv'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itamae-plugin-recipe-lltsv


## Testing

requirements [Docker](https://www.docker.com/)

- Build image


```sh
bundle exec itamae docker --node-yaml=recipes/node.yml recipes/install.rb --image=centos:7 --tag itamae-plugin-recipe-lltsv:latest
```

or

```sh
bundle exec itamae docker --node-yaml=recipes/node.yml recipes/install.rb --image=debian:jessie --tag itamae-plugin-recipe-lltsv:latest
```

- Run rspec

```sh
DOCKER_IMAGE=itamae-plugin-recipe-lltsv:latest bundle exec rspec
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/taka0125/itamae-plugin-recipe-lltsv.
