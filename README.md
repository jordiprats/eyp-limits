# limits

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with limits](#setup)
    * [What limits affects](#what-limits-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with limits](#beginning-with-limits)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)

## Overview

Controll your /etc/security/limits.conf via puppet

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

Put the classes, types, and resources for customizing, configuring, and doing
the fancy stuff with your module here.

## Reference

Here, list the classes, types, providers, facts, etc contained in your module.
This section should include all of the under-the-hood workings of your module so
people know what the module is touching on their system but don't need to mess
with things. (We are working on automating this section!)

## Limitations

Tested on Ubuntu and CentOS
