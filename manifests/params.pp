class limits::params {

  $limits_conf='/etc/security/limits.conf'
  case $::osfamily
  {
    'redhat':
    {
      $package='pam'
    }
    'Debian':
    {
      $package='libpam-modules'
    }
    default: { fail('Unsupported OS!')  }
  }
}
