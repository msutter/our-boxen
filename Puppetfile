# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "1.2.0"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",  "1.0.0"
github "gcc",      "1.0.0"
github "git",      "1.0.0"
github "homebrew", "1.1.2"
github "hub",      "1.0.0"
github "inifile",  "0.9.0", :repo => "cprice-puppet/puppetlabs-inifile"
github "nginx",    "1.1.0"
github "nodejs",   "1.0.0"
github "nvm",      "1.0.0"
github "ruby",     "3.6.1"
github "stdlib",   "3.0.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",     "1.0.0"

# ree
github "xquartz",  "1.0.0"
github "ree",      "1.0.3", :repo => "msutter/puppet-ree"


# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "memcached",     "1.0.0"

mod "onepassword",        "0.0.1",   :github_tarball => "boxen/puppet-onepassword"
mod "sublime_text_2",     "0.0.1",   :github_tarball => "boxen/puppet-sublime_text_2"
mod "gitx",               "0.0.1",   :github_tarball => "boxen/puppet-gitx"
mod "caffeine",           "0.0.1",   :github_tarball => "boxen/puppet-caffeine"
mod "imagemagick",        "0.0.1",   :github_tarball => "boxen/puppet-imagemagick"
mod "iterm2",             "0.0.1",   :github_tarball => "boxen/puppet-iterm2"
#mod "macvim",             "0.0.1",   :github_tarball => "boxen/puppet-macvim"
#mod "vcsrepo",            "0.1.0",   :github_tarball => "puppetlabs/puppetlabs-vcsrepo"
mod "osx",                "0.0.1",   :github_tarball => "boxen/puppet-osx"
mod "property_list_key",  "0.1.0",   :github_tarball => "glarizza/puppet-property_list_key"
mod "dropbox",    "0.0.2",   :github_tarball => "boxen/puppet-dropbox"
mod "sizeup",     "0.0.1",   :github_tarball => "boxen/puppet-sizeup"
mod "sparrow",    "0.0.1",   :github_tarball => "boxen/puppet-sparrow"
mod "chrome",     "0.0.2",   :github_tarball => "boxen/puppet-chrome"
#mod "handbrake",  "0.0.1",   :github_tarball => "boxen/puppet-handbrake"
