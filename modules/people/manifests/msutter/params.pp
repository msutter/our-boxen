class people::msutter::params {
  # $::luser and $::boxen_srcdir come from Boxen's custom facts
  #$my_username  = $::luser
  $my_username  = 'tgdsuma5'
  $my_homedir   = "/Users/${people::msutter::params::my_username}"
  $my_sourcedir = $::boxen_srcdir
}
