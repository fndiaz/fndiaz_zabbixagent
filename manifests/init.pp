# == Class: fndiaz_zabbixagent
#
# Módulo Zabbix Agent 
#
# === Examples
#
# class {'fndiaz_zabbixagent':
#         ensure => stopped,
#         enable => false,
# }
#
# === Authors
#
# Fernando Vieira <fndiaz02@gmail.com>
#
#
class fndiaz_zabbixagent (

$package_name   = $fndiaz_zabbixagent::params::package_name,
$service_name   = $fndiaz_zabbixagent::params::service_name,
$folder_log     = $fndiaz_zabbixagent::params::folder_log,
$file_conf      = $fndiaz_zabbixagent::params::file_conf,
$template       = $fndiaz_zabbixagent::params::template,
$ensure         = $fndiaz_zabbixagent::params::ensure,
$enable         = $fndiaz_zabbixagent::params::enable,
$zserver       = $fndiaz_zabbixagent::params::zserver

)inherits fndiaz_zabbixagent::params
{

include fndiaz_zabbixagent::install

}
