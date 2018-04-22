class kexec_tools::disable::base inherits kexec_tools::base {

  # TODO: can't blindly uninstall kexec-tools here, since
  #       there is a dependency with abrt.

  Service['kdump']{
    ensure => stopped,
    enable => false,
    require => undef,
  }

}
