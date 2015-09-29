group { "managers":
	ensure => "present",
}

group { "sales":
	ensure => "present",
}

group { "accounting": 
	ensure => "present",
}

user{ 'mscott':
	ensure => 'present',
	password => 'ChangeMe',
	groups => ['managers'],
	home => '/home/mscott/',
	shell => '/bin/bash',
	uid => '1001',
}

user{ 'dschrute':
	ensure => 'present',
	password => 'ChangeMe',
	groups => ['managers'],
	home => '/home/dschrute/',
	shell => '/bin/bash',
	uid => '1002',
}

user{ 'jhalpert':
	ensure => 'present',
	password => 'ChangeMe',
	groups => ['managers'],
	home => '/home/jhalpert/',
	shell => '/bin/bash',
	uid => '1003',
}

user{ 'tflenderson':
	ensure => 'present',
	password => 'ChangeMe',
	groups => ['accounting'],
	home => '/home/tflenderson/',
	shell => '/bin/bash',
	uid => '1004',
}

user{ 'dphilbin':
	ensure => 'present',
	password => 'ChangeMe',
	groups => ['accounting'],
	home => '/home/philbin/',
	shell => '/bin/bash',
	uid => '1005',
}

user{ 'amartin':
	ensure => 'present',
	password => 'ChangeMe',
	groups => ['accounting'],
	home => '/home/amartin/',
	shell => '/bin/bash',
	uid => '1006',
}

user{ 'cbratton':
	ensure => 'present',
	password => 'ChangeMe',
	groups => ['accounting'],
	home => '/home/cbratton/',
	shell => '/bin/bash',
	uid => '1007',
}

user{ 'kmalone':
	ensure => 'present',
	password => 'ChangeMe',
	groups => ['accounting'],
	home => '/home/kmalone/',
	shell => '/bin/bash',
	uid => '1008',
}

user{ 'omartinez':
	ensure => 'present',
	password => 'ChangeMe',
	groups => ['accounting'],
	home => '/home/omartinez/',
	shell => '/bin/bash',
	uid => '1009',
}

user{ 'mpalmer':
	ensure => 'present',
	password => 'ChangeMe',
	groups => ['sales'],
	home => '/home/mpalmer/',
	shell => '/bin/bash',
	uid => '1010',
}

user{ 'pbeesly':
	ensure => 'present',
	password => 'ChangeMe',
	groups => ['sales'],
	home => '/home/pbeesly/',
	shell => '/bin/bash',
	uid => '1011',
}

user{ 'kkapoor':
	ensure => 'present',
	password => 'ChangeMe',
	groups => ['sales'],
	home => '/home/kkapoor/',
	shell => '/bin/bash',
	uid => '1012',
}

user{ 'abernard':
	ensure => 'present',
	password => 'ChangeMe',
	groups => ['sales'],
	home => '/home/abernard/',
	shell => '/bin/bash',
	uid => '1013',
}

user{ 'plapin':
	ensure => 'present',
	password => 'ChangeMe',
	groups => ['sales'],
	home => '/home/plaplin/',
	shell => '/bin/bash',
	uid => '1014',
}

user{ 'shudson':
	ensure => 'present',
	password => 'ChangeMe',
	groups => ['sales'],
	home => '/home/shudson/',
	shell => '/bin/bash',
	uid => '1015',
}

user{ 'sknott':
	ensure => 'present',
	password => 'ChangeMe',
	home => '/home/',
	shell => '/bin/bash',
	uid => '1016',
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
	owner => "pbeesly",
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
	owner => "plapin",
	source => "/etc/skel/"
}

file {"/home/shudson":
	ensure => "directory",
	owner => "shudson",
	source => "/etc/skel/"
}

file {"/home/sknott":
	ensure => "directory",
	owner => "sknott",
	source => "/etc/skel/"
}
