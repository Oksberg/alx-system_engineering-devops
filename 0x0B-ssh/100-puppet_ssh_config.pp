# Creates a manifest called config in ~/.ssh/
# Configured to use the private key ~/.ssh/school
file {'/root/.ssh/config':
  ensure  => present,
  content => 'Host 272031-web-01\n  Hostname 272031-web-01\nUser ubuntu\nIdentityFile ~/.ssh/school\nPasswordAuthentication no'
}
