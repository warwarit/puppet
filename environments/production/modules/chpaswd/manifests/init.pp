class chpaswd {
	user {'test':
	ensure 	=> 'present',
	password => '$6$dsdsfdgjdirgjs$hBkukPRxhWN5EXN2X7qOha.m8Z95JQ/iBl8aoSbeeQTpzFF4D84j1eq07lHLK34unzEnLqqsRT/BQa83985qB1',
	}	
}
