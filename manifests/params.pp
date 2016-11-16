class limits::params {

  $limits_conf='/etc/security/limits.conf'
  case $::osfamily
  {
    'redhat':
    {
    }
    'Debian':
    {
    }
    'Suse':
    {
    }
    default: { fail('Unsupported OS!')  }
  }
}
