#! /bin/sh
git clone --depth 1 -b bundler-plugin-eval-hooks https://github.com/ccutrer/rubygems.git /tmp/rubygems
gem -C /tmp/rubygems/bundler build bundler.gemspec 
gem install /tmp/rubygems/bundler/bundler-2.6.0.dev.gem
bundle config set --local path vendor/bundle
bundle plugin install bundler-alias
bundle config set --local aliases 'puppet:openvox'
bundle plugin list
bundle config list

