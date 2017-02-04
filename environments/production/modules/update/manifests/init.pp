class update { 
exec { 'apt-get update': 
command => '/usr/bin/apt-get update' 
} 
exec {'apt-get upgrade': 
require => Exec['apt-get update'], 
command => '/usr/bin/apt-get -y upgrade' 
} 
}

