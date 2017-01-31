Atlassian Confluence war file deploying tools
=========================

[![licence badge]][licence]

# Preparation

You need to a onfluence-init.properties file insert into a WAR file of Atlassian Confluence.

```
$ echo "confluence.home = /var/atlassian/application-data/confluence" > WEB-INF/classes/confluence-init.properties
$ jar uf confluence.war WEB-INF
```

# File Construction

```
.
├── docker-compose.yml
├── Dockerfile
├── confluence.war
└── server.xml
```

`confluence.war` is a WAR file of Atlassian Confluence. 

`server.xml` is a tomcat configuration file.

# Usage

Run `docker-command`.

# Reference

- [Installing the Confluence EAR-WAR Edition - Atlassian Documentation](https://confluence.atlassian.com/conf54/confluence-installation-and-upgrade-guide/confluence-installation-guide/installing-the-confluence-ear-war-edition)

[licence]: <LICENSE>
[licence badge]: http://img.shields.io/badge/license-MIT-blue.svg?style=flat
