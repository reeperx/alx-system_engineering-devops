# install flask from pip3
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}

exec { 'upgrade_werkzeug':
  command => 'pip3 install --upgrade Werkzeug==2.1.1',
  path    => '/usr/local/bin',
  require => Package['flask'],
}
