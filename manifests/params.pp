# @api private
# This class handles msmtp params. Avoid modifying private classes.
class msmtp::params {
  if ($::operatingsystem != 'Ubuntu') {
    fail("${module_name} does not support ${::operatingsystem}")
  }

  $aliases_content = undef
  $aliases_file    = undef
  $aliases_ensure  = 'present'

  # https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=883349
  $conf_file       = '/etc/msmtprc'
  $conf_owner      = 'root'
  $conf_group      = 'mail'
  $conf_mode       = '0640'
  $conf_ensure     = 'present'
  $bin_file        = '/usr/bin/msmtp'
  $bin_owner       = 'root'
  $bin_group       = 'mail'
  $bin_mode        = '2755'

  $package_ensure  = 'installed'
  $package_names   = ['msmtp','msmtp-mta']
}
