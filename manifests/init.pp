class myfile2 {
  $msg_body = lookup(myfile::msg_body, undef, undef, "default content for myfile\n\n")
  file {'/tmp/myfile2':
    owner   => root,
    ensure  => present,
    content => $msg_body,
  }
}
