# @api private
# This class handles msmtp config. Avoid modifying private classes.
class msmtp::config inherits msmtp {
  # system-wide config file
  file { $conf_file:
    content   => $conf_content,
    owner     => $conf_owner,
    group     => $conf_group,
    mode      => $conf_mode,
    ensure    => $conf_ensure,
    # may contain plaintext passwords
    show_diff => false,
  }

  if $aliases_file {
    file { $aliases_file:
      content => $aliases_content,
      ensure  => $aliases_ensure,
    }
  }
}
