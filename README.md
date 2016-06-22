# ansible-cloudwatch-logs-agent

An Ansible role to install AWS Cloudwatch Logs agent on Ubuntu 16.04

## Prerequisites

This role assumes you run Ubuntu 16.04 on EC2.

## Usage

Include the folder in your roles directory. You can add log files to the configuration in, for example, your group_vars, like this:

```
logs:
  - file: /var/log/syslog
    format: "%b %d %H:%M:%S"
    group_name: syslog
```

## Author

Mijndert Stuij <mijndert@mijndertstuij.nl>

Inspired by [https://github.com/christianewillman/ansible-aws-cloudwatch-logs](https://github.com/christianewillman/ansible-aws-cloudwatch-logs)

## License

MIT
