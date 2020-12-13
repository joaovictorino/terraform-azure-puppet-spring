class { '::mysql::server':
  restart => true,
  override_options => {
    'mysqld' => {
      'bind_address' => '0.0.0.0'
    }
  }
}

mysql::db { 'petclinic':
  user => 'petclinic',
  password => 'petclinic',
  host => '%',
  grant => ['ALL PRIVILEGES'],
  require => Service['mysqld'],
  sql => [ '/home/azureuser/mysql/script/schema.sql',
           '/home/azureuser/mysql/script/data.sql' ]
}