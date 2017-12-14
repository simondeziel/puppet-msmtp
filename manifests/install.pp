# @api private
# This class handles msmtp packages. Avoid modifying private classes.
class msmtp::install inherits msmtp {
  package { $package_names:
    ensure => $package_ensure,
  }

  if $package_ensure != 'absent' {
    file { $bin_file:
      owner => $bin_owner,
      group => $bin_group,
      mode  => $bin_mode,  
    }
  }
}
