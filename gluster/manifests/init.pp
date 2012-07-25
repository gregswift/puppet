class gluster {

    package { 'fuse':
        ensure => installed,
    }

    package { 'fuse-libs':
        ensure => installed,
    }

    package { 'glusterfs-core':
        ensure => installed,
    }

    package { 'glusterfs-fuse':
        ensure => installed,
        require => [ Package['fuse'], Package['fuse-libs'], Package['glusterfs-core'] ]
    }

    service { 'glusterd':
        name => 'glusterd',
        enable => false,
        ensure => stopped,
        require => Package['glusterfs-core'],
    }

    file { 'gluster-client':
        name => '/etc/logrotate.d/gluster-client',
        owner => root,
        group => root,
        mode => 0644,
        ensure => 'present',
        source => "puppet:///modules/gluster/gluster-client.logrotate",
    }

}
