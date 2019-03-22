# limits

#### Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
    * [What limits affects](#what-limits-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with limits](#beginning-with-limits)
4. [Usage](#usage)
5. [Limitations](#limitations)

## Overview

Control your **/etc/security/limits.conf** via puppet

## Module Description

This module fully manages /etc/security/limits.conf so this will overwrite your
existing file

## Setup

### What limits affects

* /etc/security/limits.conf WILL BE overwritten

### Setup Requirements

pluginsync must be enabled

### Beginning with limits

Simple example

```puppet
class { "limits": }

limits::limit { "nofile *":
  domain => "*",
  item => 'nofile',
  value => '123456',
}

limits::limit { "nproc *":
  domain => "*",
  item => 'nproc',
  value => '123456',
}
```

This will generate the following entries:

```
* - nofile 123456
* - nproc 123456
```

## Usage

### class limits
Without parameters, it just setups the limits.conf file with a header

### define limits::limit

* domain: user, %group or * (means all)
* type: soft, hard or - (means both)
* item: can be one of the following:
 * core - limits the core file size (KB)
 * data - max data size (KB)
 * fsize - maximum filesize (KB)
 * memlock - max locked-in-memory address space (KB)
 * nofile - max number of open files
 * rss - max resident set size (KB)
 * stack - max stack size (KB)
 * cpu - max CPU time (MIN)
 * nproc - max number of processes
 * as - address space limit (KB)
 * maxlogins - max number of logins for this user
 * maxsyslogins - max number of logins on the system
 * priority - the priority to run user process with
 * locks - max number of file locks the user can hold
 * sigpending - max number of pending signals
 * msgqueue - max memory used by POSIX message queues (bytes)
 * nice - max nice priority allowed to raise to values: [-20, 19]
 * rtprio - max realtime priority
 * chroot - change root to directory (Debian-specific)
* value: value for item

## Limitations

Tested on
* Ubuntu 14.04
* CentOS 5
* CentOS 6
* CentOS 7
* SLES 11 SP3
