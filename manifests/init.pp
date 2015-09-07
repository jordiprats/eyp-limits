class limits inherits limits::params {

  package { $limits::params::package:
    ensure => 'installed',
  }

  #/etc/security/limits.conf
  concat { $limits::params::limits_conf:
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    require => Package[$limits::params::package],
  }

  concat::fragment{ 'limits.conf header':
    target  => $limits::params::limits_conf,
    order   => '00',
    content => template("${module_name}/limits_header.erb"),
  }

}
