class file2 {
	file {"/home/max/f1.conf":
#		path	=> "/home/tt",
		ensure	=> file,
		source	=> "puppet:///modules/file2/f1.conf",		
		backup	=> false, 
		owner	=> 'max',
		group	=> 'max',
		mode	=> '0777',
	}	
}
