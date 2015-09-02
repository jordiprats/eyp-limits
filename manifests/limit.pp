define limits::limit ( $domain=$name, $type="-", $item, $value ) {
  #
  concat::fragment{ "limits.conf ${name} ${type} ${item} ${value}":
    target  => $limits::params::limits_conf,
    order => '01',
    content => template("${module_name}/limit.erb"),
  }
}
