node 'puppet.petabyte.cl' {
  class {'foreman':
    ssl                     => false,
    locations_enabled       => true,
    organizations_enabled   => true,
    initial_organization    => 'txel',
    initial_location        => 'dc-01'
  }

  foreman::plugin {'discovery':}
}