class fndiaz_zabbixagent::install {

    package { $::fndiaz_zabbixagent::package_name:
        ensure  => present,
    }

    file { $::fndiaz_zabbixagent::folder_log:
        ensure  => directory,
        owner   => "zabbix",
        group   => "zabbix",
        source  => "puppet:///files/var/log/zabbix",
        require => Package[$::fndiaz_zabbixagent::package_name]
    }

    file { $::fndiaz_zabbixagent::file_conf:
        owner   => 'root',
        group   => 'root',
        mode    => '644',
        content => template($::fndiaz_zabbixagent::template),
        require => Package[$::fndiaz_zabbixagent::package_name],
        notify => Service[$::fndiaz_zabbixagent::service_name],
    }

    service { $::fndiaz_zabbixagent::service_name:
        ensure  => $::fndiaz_zabbixagent::ensure,
        enable  => $::fndiaz_zabbixagent::enable,
        hasstatus   => true,
        hasrestart => true,
        require => Package[$::fndiaz_zabbixagent::package_name],
    }

}
