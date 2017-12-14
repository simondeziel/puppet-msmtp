#
# Class: msmtp
#
class msmtp (
  String $conf_content,
  String $conf_file                     = $msmtp::params::conf_file,
  Optional[String] $conf_owner          = $msmtp::params::conf_owner,
  Optional[String] $conf_group          = $msmtp::params::conf_group,
  Optional[String] $conf_mode           = $msmtp::params::conf_mode,
  Enum['present','absent'] $conf_ensure = $msmtp::params::conf_ensure,
  String $bin_file                      = $msmtp::params::bin_file,
  Optional[String] $bin_owner           = $msmtp::params::bin_owner,
  Optional[String] $bin_group           = $msmtp::params::bin_group,
  Optional[String] $bin_mode            = $msmtp::params::bin_mode,
  Array[String] $package_names          = $msmtp::params::package_names,
  String $package_ensure                = $msmtp::params::package_ensure,
) inherits msmtp::params {
  contain msmtp::install
  contain msmtp::config

  Class['::msmtp::install']
  -> Class['::msmtp::config']
}
