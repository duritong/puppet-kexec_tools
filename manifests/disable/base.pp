class kexec_tools::disable::base inherits kexec_tools::base {

  Package['kexec-tools']{
    ensure => absent,
    require => Service['kdump'],
  }

  Service['kdump']{
    ensure => stopped,
    enable => false,
    require => undef,
  }

}
