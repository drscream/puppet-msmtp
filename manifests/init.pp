class msmtp ( $mailhost, $mailuser, $mailpass, $mailfingerprint, $mailaddrroot ) {
	package { 'msmtp-mta':
		ensure => installed,
	}

	file { '/etc/msmtprc':
		owner   => root,
		group   => root,
		mode    => 664,
		content => template('msmtp/msmtprc.erb'),
	}
	
	file { '/etc/aliases':
		owner   => root,
		group   => root,
		mode    => 664,
		content => template('msmtp/aliases.erb'),
	}
}
