# Install SquareMile WordPress theme

class squaremile::install {
  file { '/vagrant/wordpress/wp-content/themes/squaremile':
    ensure => 'link',
    target => '/home/vagrant/squaremile-wordpress-theme',
  }
}
