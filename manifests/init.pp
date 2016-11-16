class limits inherits limits::params {

  #/etc/security/limits.conf
  #TODO: mirar quna fer servir limits.d en lloc del limits.conf
  concat { $limits::params::limits_conf:
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }

  concat::fragment{ 'limits.conf header':
    target  => $limits::params::limits_conf,
    order   => '00',
    content => template("${module_name}/limits_header.erb"),
  }

}
