class postfix::augeas {
  augeas::lens {'postfix_transport':
    ensure      => present,
    lens_source => 'puppet:///modules/postfix/lenses/postfix_transport.aug',
    test_source => 'puppet:///modules/postfix/lenses/test_postfix_transport.aug',
  }
}
