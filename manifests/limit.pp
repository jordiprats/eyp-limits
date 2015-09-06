define limits::limit ( $item, $value, $domain=$name, $type='-' ) {
  #
  concat::fragment{ "limits.conf ${name} ${type} ${item} ${value}":
    target  => $limits::params::limits_conf,
    order => '01',
    content => template("${module_name}/limit.erb"),
  }
}
