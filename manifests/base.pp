class kexec_tools::base {

  package{'kexec-tools':
    ensure => present,
  }

  service{'kdump':
    ensure => running,
    enable => true,
    require => Package['kexec-tools'],
  }

}
