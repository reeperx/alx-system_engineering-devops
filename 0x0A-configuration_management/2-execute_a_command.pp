# Execute the command given
exec { 'pkill killmenow':
	path	=> '/usr/bin:/usr/sbin:/bin'
}


