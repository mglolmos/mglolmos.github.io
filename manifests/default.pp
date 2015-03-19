exec {
  'apt_update':
      command => '/usr/bin/apt-get update'
}

$base_packages = ['build-essential', 'git', 'ruby1.9.3', 'rubygems', 'curl']
package { $base_packages:
  ensure  => installed,
  require => Exec['apt_update'],
}

exec {
  'install_node':
    command => '/usr/bin/curl -sL https://deb.nodesource.com/setup | bash -',
    cwd     => '/tmp',
    require => Package[$base_packages],
}

package {
  'nodejs':
    ensure  => installed,
    require => Exec['install_node'],
}

package {
  'github-pages':
    ensure      => installed,
    provider    => 'gem',
    require     => Package['nodejs'],
    install_options => ['--no-ri', '--no-rdoc'],
}