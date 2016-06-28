# Documentation

## Example

```
exim_config:
  - { option: 'dc_eximconfig_configtype', value: 'internet' }
  - { option: 'dc_other_hostnames', value: '{{ ansible_hostname }}' }
  - { option: 'dc_local_interfaces', value: '127.0.0.1 ; ::1' }
  - { option: 'dc_readhost', value: '' }
  - { option: 'dc_relay_domains', value: '' }
  - { option: 'dc_minimaldns', value: 'false' }
  - { option: 'dc_relay_nets', value: '' }
  - { option: 'dc_smarthost', value: '' }
  - { option: 'CFILEMODE', value: '644' }
  - { option: 'dc_use_split_config', value: 'false' }
  - { option: 'dc_hide_mailname', value: '' }
  - { option: 'dc_mailname_in_oh', value: 'true' }
  - { option: 'dc_localdelivery', value: 'mail_spool' }
```

## Role Variables

Available variables are listed below, along with default values (see [defaults/main.yml](/defaults/main.yml)):

```
exim_packages:
```

A list of the Exim packages to install. Each package supports all parameters from the
[apt](http://docs.ansible.com/ansible/apt_module.html) or [yum](http://docs.ansible.com/ansible/yum_module.html) modules.
If the value remains omitted, the following packages will be installed by default.

| Debian/Ubuntu          | RedHat/CentOS           |
| :--------------------- | :---------------------- |
| exim4                  | exim                    |

```
exim_service_name:
```

The name of the daemon under which Exim runs. Typically this can be omitted since it's automatically determined
based on the target operating system. For RedHat/CentOS this is `exim` and Debian/Ubuntu it's `exim4`.

```
exim_service_state: 'started'
```

The desired Exim service state, valid values are `started`, `stopped`, `restarted` or `reloaded`.

```
exim_service_enabled: yes
```

Whether the Exim service should start on boot, valid values are `yes`, or `no`.

```
exim_config:
```

An array of option hashes used to customise Exim configuration settings. Each option expects at least
two parameters, `option` which is the name of the option and `value`, a string value to be associated
with an option. An optional parameter `state` can also be specified which determines whether a particular
option should exist in the configuration file. Valid values are `present` or `absent`.

```
exim_passwd_clients:
```

An array of authentication settings used when authenticating to a remote host as a client.