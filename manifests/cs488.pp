package { 'pkg-config':
    ensure => present
}

package { 'liblua5.1-0-dev':
    ensure => present,
    require => Exec['apt-get update']
}

package { 'gtkmm-2.4':
    ensure => present,
    require => Exec['apt-get update']
}

package { 'libgtkglextmm-x11-1.2-dev':
    ensure => present,
    require => Exec['apt-get update']
}

exec { "apt-get update":
    command => "/usr/bin/apt-get update"
}
