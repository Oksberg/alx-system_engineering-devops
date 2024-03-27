# Creates a manifest called config in ~/.ssh/
# Configured to use the private key ~/.ssh/school
include stdlib

file_line {'No password authentication':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => 'PasswordAuthentication no',
  replace => true
}

file_line {'Specifying identity file':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school',
  replace => true
}
