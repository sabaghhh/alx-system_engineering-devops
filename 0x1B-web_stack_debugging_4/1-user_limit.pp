# Enable the user holberton to login and open files without error.


exec { 'file limit config':
  command => "sed -i s/'nofile 5'/'nofile 100'/g /etc/security/limits.conf",
  path    => '/bin'
}

exec { 'file limit config_2':
  command => "sed -i s/'nofile 4'/'nofile 100'/g /etc/security/limits.conf",
  path    => '/bin'
}
