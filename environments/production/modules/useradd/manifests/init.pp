class useradd {
#	group {'test':
#	ensure 	=> 'present',
#	gid	=> '1002',
#	}
	user {'test2':
#	name 	=> 'test',
	ensure 	=> 'present',
	uid 	=> '1003',
	gid 	=> '1002',
#	groups 	=> 'test',
	password => '$6$qwertyAa123$MKOcp7Y8EDBFLzuOVaK7ZjGhxFufxfPOh2N5G5RwgYS9oG/UqkCScqOjrEeCxzWuTEFOYFpp5nDCCAaza0QYd/',
	managehome => 'true',
	shell 	=> "/bin/bash",
	home 	=> "/home/test2",
#	mode 	=> '0644',
	}	
}
