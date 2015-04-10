# zabbixagent

#### Table of Contents

1. [Overview](#overview)
2. [Setup ](#setup)
3. [Usage ](#usage)
4. [Limitations - OS compatibility](#limitations)

## Overview

This is a simple Puppet module Zabbix Agent
Made by Fernando Vieira - fndiaz

## Setup

To install the correct Zabbix Agent package on your system, include the 'zabbixagent : include zabbixagent'

## Usage

* Install Zabbix Agent with default settings

~~~
    class { 'zabbixagent': }
~~~

* Instal Zabbix Agent with some arguments

~~~
    class {'zabbixagent':
        ensure => running,
        enable => true,
        zserver=> '192.168.1.1',
    }
~~~

## Limitations

* Debian 6, 7
* Ubuntu 10.04, 12.04, 14.04


