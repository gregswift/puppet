class gluster::geo-rep {

    package { 'rsync':
        ensure => latest,
    }

    package { 'glusterfs-geo-replication':
        ensure => installed,
        require => [ Package['rsync'], Package['glusterfs-core'] ]
    }

    file { 'geo-rep-master':
        name => '/etc/logrotate.d/geo-rep-master',
        owner => root,
        group => root,
        mode => 0644,
        ensure => 'present',
        source => "puppet:///modules/gluster/geo-rep-master.logrotate",
    }

    file { 'geo-rep-slave':
        name => '/etc/logrotate.d/geo-rep-slave',
        owner => root,
        group => root,
        mode => 0644,
        ensure => 'present',
        source => "puppet:///modules/gluster/geo-rep-slave.logrotate",
    }

}
