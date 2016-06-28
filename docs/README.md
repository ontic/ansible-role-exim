# Documentation

## Example

```
cron_tasks:
  - name: 'Magento Reindex'
    job: 'php -f /home/user/magento/shell/indexer.php --reindexall'
    minute: 0
    hour: 6
```

## Role Variables

Available variables are listed below, along with default values (see [defaults/main.yml](/defaults/main.yml)):

```
cron_packages:
```

A list of the Cron packages to install. Each package supports all parameters from the
[apt](http://docs.ansible.com/ansible/apt_module.html) or [yum](http://docs.ansible.com/ansible/yum_module.html) modules.
If the value remains omitted, the following packages will be installed by default.

| Debian/Ubuntu          | RedHat/CentOS           |
| :--------------------- | :---------------------- |
| cron                   | cronie                  |

```
cron_service_name:
```

The name of the daemon under which Cron runs. Typically this can be omitted since it's automatically determined
based on the target operating system. For RedHat/CentOS this is `crond` and Debian/Ubuntu it's `cron`.

```
cron_service_state: 'started'
```

The desired Cron service state, valid values are `started`, `stopped`, `restarted` or `reloaded`.

```
cron_service_enabled: yes
```

Whether the Cron service should start on boot, valid values are `yes`, or `no`.

```
cron_vars:
```

A list of the Cron variables to manage. Each variable supports all parameters from the
[cronvar](http://docs.ansible.com/ansible/cronvar_module.html) module.

```
cron_tasks:
```

A list of the Cron tasks to manage. Each task supports all parameters from the
[cron](http://docs.ansible.com/ansible/cron_module.html) module.