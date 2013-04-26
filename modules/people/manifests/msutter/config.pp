class people::msutter::config (
  $my_homedir   = $people::msutter::params::my_homedir,
  $my_sourcedir = $people::msutter::params::my_sourcedir,
  $my_username  = $people::msutter::params::my_username
) {

  ###################
  # Config Settings #
  ###################

  property_list_key { 'Disable Ducking Autocorrect':
    ensure     => present,
    path       => "${my_homedir}/Library/Preferences/.GlobalPreferences.plist",
    key        => 'NSAutomaticSpellingCorrectionEnabled',
    value      => false,
    value_type => 'boolean',
  }

  file { '.GlobalPreferences Plist':
    ensure  => file,
    require => Property_list_key['Disable Ducking Autocorrect'],
    path    => "${my_homedir}/Library/Preferences/.GlobalPreferences.plist",
    mode    => '0600',
  }

  # NOTE: Dock prefs only take effect when you restart the dock
  property_list_key { 'Hide the dock':
    ensure     => present,
    path       => "${my_homedir}/Library/Preferences/com.apple.dock.plist",
    key        => 'autohide',
    value      => true,
    value_type => 'boolean',
    notify     => Exec['Restart the Dock'],
  }

  exec { 'Restart the Dock':
    command     => '/usr/bin/killall -HUP Dock',
    refreshonly => true,
  }

  property_list_key { 'Align the Dock Left':
    ensure     => present,
    path       => "${my_homedir}/Library/Preferences/com.apple.dock.plist",
    key        => 'orientation',
    value      => 'left',
    notify     => Exec['Restart the Dock'],
  }

  property_list_key { 'Lower Right Hotcorner - Screen Saver':
    ensure     => present,
    path       => "${my_homedir}/Library/Preferences/com.apple.dock.plist",
    key        => 'wvous-br-corner',
    value      => 10, 
    value_type => 'integer',
    notify     => Exec['Restart the Dock'],
  }

  property_list_key { 'Lower Right Hotcorner - Screen Saver - modifier':
    ensure     => present,
    path       => "${my_homedir}/Library/Preferences/com.apple.dock.plist",
    key        => 'wvous-br-modifier',
    value      => 0,
    value_type => 'integer',
    notify     => Exec['Restart the Dock'],
  }

  file { 'Dock Plist':
    ensure  => file,
    require => [
                 Property_list_key['Lower Right Hotcorner - Screen Saver - modifier'],
                 Property_list_key['Hide the dock'],
                 Property_list_key['Align the Dock Left'],
                 Property_list_key['Lower Right Hotcorner - Screen Saver'],
                 Property_list_key['Lower Right Hotcorner - Screen Saver - modifier'],
               ],  
    path    => "${my_homedir}/Library/Preferences/com.apple.dock.plist",
    mode    => '0600',
    notify     => Exec['Restart the Dock'],
  }

  property_list_key { 'Disable "Are you sure you want to open this?" Messages':
    ensure     => present,
    path       => "${my_homedir}/Library/Preferences/com.apple.LaunchServices.plist",
    key        => 'LSQuarantine',
    value      => false,
    value_type => 'boolean',
  }

  file { 'LaunchServices Plist':
    ensure  => file,
    require => Property_list_key['Disable "Are you sure you want to open this?" Messages'],
    path    => "${my_homedir}/Library/Preferences/com.apple.LaunchServices.plist",
    mode    => '0600',
  }

  property_list_key { 'Disable Gatekeeper':
    ensure => present,
    path   => '/var/db/SystemPolicy-prefs.plist',
    key    => 'enabled',
    value  => 'no',
  }

  #property_list_key { 'Keymapping':
  #  ensure => present,
  #  path   => '/Library/Preferences/ByHost/.GlobalPreferences.*.plist',
  #  key    => 'com.apple.keyboard.modifiermapping.1452-581-0',
  #  value  => [{'HIDKeyboardModifierMappingDst' => 2,
  #              'HIDKeyboardModifierMappingSrc' => 0,
  #            }],
  #  value_type => hash,
  #}
}