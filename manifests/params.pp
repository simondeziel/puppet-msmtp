# @api private
# This class handles msmtp params. Avoid modifying private classes.
class msmtp::params {
  if ($::operatingsystem != 'Ubuntu') {
    fail("${module_name} does not support ${::operatingsystem}")
  }

  $package_ensure = 'installed'
  $package_names  = ['msmtp','msmtp-mta']

  # https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=883349
  $conf_file      = '/etc/msmtprc'
  $conf_owner     = 'root'
  $conf_group     = 'mail'
  $conf_mode      = '0640'
  $conf_ensure    = 'present'
  $bin_file       = '/usr/bin/msmtp'
  $bin_owner      = 'root'
  $bin_group      = 'mail'
  $bin_mode       = '2755'
}
