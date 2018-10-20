# Puppet msmtp

Manages msmtp MTA via Puppet.

## Requirements
* Ubuntu 16.04+

## Usage

To configure msmtp's msmtprc and aliases file using templates from the foo module:

```puppet
  class { 'msmtp':
    aliases_file    => '/etc/aliases',
    aliases_content => epp('foo/msmtp/aliases.epp'),
    conf_content    => epp('foo/msmtp/msmtprc.epp'),
  }
```
