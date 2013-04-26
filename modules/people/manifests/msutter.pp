class people::msutter {

  include people::msutter::params
  include people::msutter::applications
  #include people::msutter::repositories
  include people::msutter::config

  notify { 'class people::msutter declared': }

  ###############
  # User Config #
  ###############

  # Changes the default shell to the zsh version we get from Homebrew
  # Uses the osx_chsh type out of boxen/puppet-osx
  # osx_chsh { 'msutter':
  #   shell   => '/opt/boxen/homebrew/bin/zsh',
  #   require => Package['zsh'],
  # }

  # file_line { 'add zsh to /etc/shells':
  #   path    => '/etc/shells',
  #   line    => "${boxen::config::homebrewdir}/bin/zsh",
  #   require => Package['zsh'],
  # }

  ##################################
  ## Facter, Puppet, and Envpuppet##
  ##################################

  repository { "${people::msutter::params::my_sourcedir}/puppet":
    source => 'puppetlabs/puppet',
  }

  repository { "${people::msutter::params::my_sourcedir}/facter":
    source => 'puppetlabs/facter',
  }

  file { '/bin/envpuppet':
    ensure  => link,
    mode    => '0755',
    target  => "${people::msutter::params::my_sourcedir}/puppet/ext/envpuppet",
    require => Repository["${people::msutter::params::my_sourcedir}/puppet"],
  }
}
