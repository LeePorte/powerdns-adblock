## PowerDNS adblock updater

This collection of scripts should be installed in /etc/powerdns for debian based distros. Adjust to suit your distro.

It uses http://winhelp2002.mvps.org/hosts.txt as the source. This is frequently updated and includes spyware, adware and ad servers.

### Invoking the scripts

A simple entry such as the following is needed in your crontab;

```
0 4 * * * /etc/powerdns/./update-auth-zone >/dev/null 2>&1
```
This will update the adblock list on a nightly basis. The overhead on doing this is small, so I stick with a daily update aproximately an hour apart on each of my internal DNS servers. If there is no difference in the block list then no action is taken.
