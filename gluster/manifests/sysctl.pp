class gluster::sysctl {
    # Per gluster's recommendation
    sysctl::conf { 'vm.vfs_cache_pressure': value => '100' }
    sysctl::conf { 'vm.dirty_expire_centisecs': value => '500' }
    sysctl::conf { 'vm.dirty_writeback_centisecs': value => '100' }
    sysctl::conf { 'vm.dirty_background_ratio': value => '1' }
    sysctl::conf { 'vm.dirty_ratio': value => '3' }
    sysctl::conf { 'vm.swappiness': value => '0' }
    sysctl::conf { 'net.core.rmem_default': value => '262144' }
    sysctl::conf { 'net.core.rmem_max': value => '4194304' }
    sysctl::conf { 'net.core.wmem_default': value => '262144' }
    sysctl::conf { 'net.core.wmem_max': value => '4194304' }
    sysctl::conf { 'net.ipv4.tcp_rmem': value => '4096 262144 4194304' }
    sysctl::conf { 'net.ipv4.tcp_wmem': value => '4096 262144 4194304' }
}
