# Install SquareMile WordPress theme

class squaremile::install {

  exec { 'submodule-init':
    cwd     => '/home/vagrant/',
    command => 'git submodule init',
  }

  exec { 'submodule-update':
    cwd     => '/home/vagrant',
    command => 'git submodule update',
    require => Exec['submodule-init'],
    creates => '/home/vagrant/squaremile-wordpress-theme/index.php',
  }

  file { '/vagrant/wordpress/wp-content/themes/squaremile':
    ensure => 'link',
    target => '/home/vagrant/squaremile-wordpress-theme',
    require => Exec['submodule-update'],
  }
}
