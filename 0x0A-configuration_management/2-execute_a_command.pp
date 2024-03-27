# Kills the process killmenow with command pkill
exec {'kill_killmenow_process':
  command => '/usr/bin/pkill -f killmenow',
  onlyif  => '/usr/bin/pgrep -f killmenow'
}
