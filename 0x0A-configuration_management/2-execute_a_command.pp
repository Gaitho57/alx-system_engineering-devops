# manifest that kills a process named killmenow
exec{ 'killmenow':
  command  => 'pkill killmenow',
  provider => 'shell',
  path     => '/usr/bin/',
}
