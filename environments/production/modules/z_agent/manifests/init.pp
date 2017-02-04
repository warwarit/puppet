class z_agent {
	file {'/temp':
		ensure	=> 'directory',
	} 
	file {"/temp/zabbix-release_3.0-1+jessie_all.deb":
		require	=> file['/temp'],
		ensure	=> file,
		source	=> "puppet:///modules/z_agent/zabbix-release_3.0-1+jessie_all.deb",		
	}
	exec {'dpkg -i /temp/zabbix-release_3.0-1+jessie_all.deb':
		require => file['/temp/zabbix-release_3.0-1+jessie_all.deb'],
		command	=> 'dpkg -i /temp/zabbix-release_3.0-1+jessie_all.deb',
		path	=> '/bin/:/sbin/:/usr/bin/:/usr/sbin/',
	}
	exec { 'apt-get update':
		require => exec['dpkg -i /temp/zabbix-release_3.0-1+jessie_all.deb'],
		command	=> 'apt-get update',
		path    => '/bin/:/sbin/:/usr/bin/:/usr/sbin/',
	}
	exec { 'apt-get install -y zabbix-agent':
		require	=> exec['apt-get update'],
		command => 'apt-get install -y zabbix-agent',
		path    => '/bin/:/sbin/:/usr/bin/:/usr/sbin/',
	}
	file {'/etc/zabbix/zabbix_agentd.conf':
		require	=> exec['apt-get install -y zabbix-agent'],
		ensure  => file,
		source  => "puppet:///modules/z_agent/zabbix_agentd.conf",
		owner	=> 'root',
		group	=> 'root',
		mode	=> '0644',
	}
	service { 'zabbix-agent':
		require	=> file['/etc/zabbix/zabbix_agentd.conf'],
		ensure => 'running',
	}
	
}
