# == Class: zabbixagent
#
# Módulo Zabbix Agent 
#
class zabbixagent (

$package_name   = $zabbixagent::params::package_name,
$service_name   = $zabbixagent::params::service_name,
$folder_log     = $zabbixagent::params::folder_log,
$file_conf      = $zabbixagent::params::file_conf,
$template       = $zabbixagent::params::template,
$ensure         = $zabbixagent::params::ensure,
$enable         = $zabbixagent::params::enable,
$zserver        = $zabbixagent::params::zserver

)inherits zabbixagent::params
{

include zabbixagent::install

}
