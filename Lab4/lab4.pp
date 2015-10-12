file {"/home":
	ensure => "directory",
	owner => "mscott",
}

file {"/home/mscott":
	ensure => "directory",
	owner => "mscott",
	source => "/etc/skel/"

}

file {"/home/dschrute":
	ensure => "directory",
	owner => "dschrute",
	source => "/etc/skel/"

}

file {"/home/jhalpert":
	ensure => "directory",
	owner => "jhalpert",
	source => "/etc/skel/"
}

file {"/home/tflenderson":
	ensure => "directory",
	owner => "tflenderson",
	source => "/etc/skel/"
}

file {"/home/dphilbin":
	ensure => "directory",
	owner => "dphilbin",
	source => "/etc/skel/"
}

file {"/home/amartin":
	ensure => "directory",
	owner => "amartin",
	source => "/etc/skel/"
}

file {"/home/cbratton":
	ensure => "directory",
	owner => "cbratton",
	source => "/etc/skel/"
}

file {"/home/kmalone":
	ensure => "directory",
	owner => "kmalone",
	source => "/etc/skel/"
}

file {"/home/omartinez":
	ensure => "directory",
	owner => "omartinez",
	source => "/etc/skel/"
}

file {"/home/mpalmer":
	ensure => "directory",
	owner => "mpalmer",
	source => "/etc/skel/"
}

file {"/home/pbeesley":
	ensure => "directory",
	owner => "pbeesley",
	source => "/etc/skel/",
}

file {"/home/kkapoor":
	ensure => "directory",
	owner => "kkapoor",
	source => "/etc/skel/"
}

file {"/home/abernard":
	ensure => "directory",
	owner => "abernard",
	source => "/etc/skel/"
}

file {"/home/plapin":
	ensure => "directory",
	owner => "plaplin",
	source => "/etc/skel/"
}

file {"/home/shudson":
	ensure => "directory",
	owner => "shudon",
	source => "/etc/skel/"
}

file {"/home/sknott":
	ensure => "directory",
	owner => "sknott",
	source => "/etc/skel/"
}

group { "managers":
	ensure => "present",
}

group { "sales":
	ensure => "present",
}

group { "accounting": 
	ensure => "present",
	gid 3,
}

user{ 'mscott':
	ensure => 'present',
	password => 'ChangeMe'
	gid => '1',
	groups =['managers']
	home => '/home',
	shell => '/bin/bash',
	uid => '1',
}

user{ 'dschrute':
	ensure => 'present',
	password => 'ChangeMe'
	gid => '2',
	groups =['managers']
	home => 'path/to/home',
	shell => '/bin/bash',
	uid => '2',
}

user{ 'jhalpert':
	ensure => 'present',
	password => 'ChangeMe'
	gid => '3',
	groups =['managers']
	home => 'path/to/home',
	shell => '/bin/bash',
	uid => '3',
}

user{ 'tflenderson':
	ensure => 'present',
	password => 'ChangeMe'
	gid => '4',
	home => 'path/to/home',
	shell => '/bin/bash',
	uid => '4',
}

user{ 'dphilbin':
	ensure => 'present',
	password => 'ChangeMe'
	gid => '5',
	home => 'path/to/home',
	shell => '/bin/bash',
	uid => '5',
}

user{ 'amartin':
	ensure => 'present',
	password => 'ChangeMe'
	gid => '6',
	groups =['accounting']
	home => 'path/to/home',
	shell => '/bin/bash',
	uid => '6',
}

user{ 'cbratton':
	ensure => 'present',
	password => 'ChangeMe'
	gid => '7',
	home => 'path/to/home',
	shell => '/bin/bash',
	uid => '7',
}

user{ 'kmalone':
	ensure => 'present',
	password => 'ChangeMe'
	gid => '8',
	groups =['accounting']
	home => 'path/to/home',
	shell => '/bin/bash',
	uid => '8',
}

user{ 'omartinez':
	ensure => 'present',
	password => 'ChangeMe'
	gid => '9',
	groups =['accounting']
	home => 'path/to/home',
	shell => '/bin/bash',
	uid => '9',
}

user{ 'mpalmer':
	ensure => 'present',
	password => 'ChangeMe'
	gid => '10',
	home => 'path/to/home',
	shell => '/bin/bash',
	uid => '10',
}

user{ 'pbeesly':
	ensure => 'present',
	password => 'ChangeMe'
	gid => '11',
	home => 'path/to/home',
	shell => '/bin/bash',
	uid => '11',
}

user{ 'kkapoor':
	ensure => 'present',
	password => 'ChangeMe'
	gid => '12',
	home => 'path/to/home',
	shell => '/bin/bash',
	uid => '12',
}

user{ 'abernard':
	ensure => 'present',
	password => 'ChangeMe'
	gid => '13',
	groups =['sales']
	home => 'path/to/home',
	shell => '/bin/bash',
	uid => '13',
}

user{ 'plapin':
	ensure => 'present',
	password => 'ChangeMe'
	gid => '14',
	groups =['sales']
	home => 'path/to/home',
	shell => '/bin/bash',
	uid => '14',
}

user{ 'shudson':
	ensure => 'present',
	password => 'ChangeMe'
	gid => '15',
	groups =['sales']
	home => 'path/to/home',
	shell => '/bin/bash',
	uid => '15',
}

user{ 'sknott':
	ensure => 'present',
	password => 'ChangeMe'
	gid => '16',
	home => 'path/to/home',
	shell => '/bin/bash',
	uid => '16',
}