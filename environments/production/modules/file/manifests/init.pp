class file {
	file {"/home/tt":
#		path	=> "/home/tt",
		ensure	=> file,
		source	=> "puppet:///modules/t/tt",		
		backup	=> false, 
#		owner	=> 'yar',
#		group	=> 'yar',
#		mode	=> '0777',
	}	
}
