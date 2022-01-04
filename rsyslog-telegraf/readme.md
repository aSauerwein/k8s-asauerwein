# rsyslog
## intro
telegraf syslog only supports syslog with ISO8601 timestamp.
Some Cisco devices send syslog with EPOCH timestamp which is therefore not directly supported by telegraf
i use rsyslog with remote logging to eliminiate this error

rsyslog documentation:
https://github.com/rsyslog/rsyslog-docker/tree/master/appliance/alpine


multi container pod
rsyslog writes files
telegraf tails files and writes to influxdb with logfmt
