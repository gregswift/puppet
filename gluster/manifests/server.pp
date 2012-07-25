class gluster::server inherits gluster {

    class { 'gluster::sysctl': stage => pre }

    Service['glusterd'] {
        enable => true,
        ensure => running,
    }

    file { 'gluster-server':
        name => '/etc/logrotate.d/gluster-server',
        owner => root,
        group => root,
        mode => 0644,
        ensure => 'present',
        source => "puppet:///modules/gluster/gluster-server.logrotate",
    }

}
