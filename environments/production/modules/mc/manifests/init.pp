class mc { 
exec { 'apt-get update': 
command => '/usr/bin/apt-get update' 
} 
package {'mc': 
require => Exec['apt-get update'], 
ensure => installed, 
} 
}
