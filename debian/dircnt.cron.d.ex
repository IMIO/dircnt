#
# Regular cron jobs for the dircnt package
#
0 4	* * *	root	[ -x /usr/bin/dircnt_maintenance ] && /usr/bin/dircnt_maintenance
