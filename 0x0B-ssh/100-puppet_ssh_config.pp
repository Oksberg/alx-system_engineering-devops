# Creates a manifest called config in ~/.ssh/
# Configured to use the private key ~/.ssh/school
file {'/root/.ssh/school':
  ensure  => present,
  content => 'PasswordAuthentication => no\nIdentityFile /root/.ssh/school'
}
