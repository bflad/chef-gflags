# chef-gflags [![Build Status](https://secure.travis-ci.org/bflad/chef-gflags.png?branch=master)](http://travis-ci.org/bflad/chef-gflags)

## Description

Installs [gflags](https://code.google.com/p/gflags/). Please see [COMPATIBILITY.md](COMPATIBILITY.md) for more information about gflags versions that are tested and supported by cookbook versions.

## Requirements

### Platforms

* CentOS 6
* Fedora 18, 19, 20
* RHEL 6
* Ubuntu 12.04, 12.10, 13.04, 13.10

### Cookbooks

[Opscode Cookbooks](https://github.com/opscode-cookbooks/)

* [apt](https://github.com/opscode-cookbooks/apt)
* [build-essential](https://github.com/opscode-cookbooks/build-essential)
* [yum](https://github.com/opscode-cookbooks/yum)

## Attributes

These attributes are under the `node['gflags']` namespace.

Attribute | Description | Type | Default
----------|-------------|------|--------
install_type | Installation type for gflags ("archive" or "package") | String | "package"

### Archive Attributes

These attributes are under the `node['gflags']['archive']` namespace.

Attribute | Description | Type | Default
----------|-------------|------|--------
checksum | SHA256 checksum for archive | String | auto-detected (see attributes/default.rb)
install_dir | Installation prefix | String | /usr/local
url | Archive URL | String | `https://gflags.googlecode.com/files/gflags-#{node['gflags']['archive']['version']}.tar.bz2`
version | Archive version to install | String | 2.0

### Package Attributes

These attributes are under the `node['gflags']['package']` namespace.

Attribute | Description | Type | Default
----------|-------------|------|--------
cpp_packages | C++ packages for installation | Array of Strings | auto-detected (see attributes/default.rb)
python_packages | Python packages for installation | Array of Strings | auto-detected (see attributes/default.rb)

## Recipes

* `recipe[gflags]` Installs gflags
* `recipe[gflags::archive]` Installs gflags via archive
* `recipe[gflags::package]` Installs gflags via package
* `recipe[gflags::package_cpp]` Installs gflags C++ packages
* `recipe[gflags::package_python]` Installs gflags Python packages

## Usage

### Default Installation

Defaults to installing all packages and handling apt/yum::epel dependencies.

* Add `recipe[gflags]` to your node's run list

### Archive Installation

* If necessary, set `node['gflags']['archive']['version']` and `node['gflags']['archive']['checksum']`
* Set `node['gflags']['install_type']` to "archive" or add `recipe['gflags::archive']` to your node's run list

### All Packages Installation

* Add `recipe['gflags::package']` to your node's run list

### C++ Package Installation Only

* Add `recipe['gflags::package_cpp']` to your node's run list

### Python Package Installation Only

* Add `recipe['gflags::package_python']` to your node's run list

## Testing and Development

### Vagrant

Here's how you can quickly get testing or developing against the cookbook thanks to [Vagrant](http://vagrantup.com/) and [Berkshelf](http://berkshelf.com/).

    vagrant plugin install vagrant-berkshelf
    vagrant plugin install vagrant-cachier
    vagrant plugin install vagrant-omnibus
    git clone git://github.com/bflad/chef-gflags.git
    cd chef-gflags
    vagrant up BOX # BOX being centos6, ubuntu1204, ubuntu1210, or ubuntu1304

You can then SSH into the running VM using the `vagrant ssh BOX` command.

The VM can easily be stopped and deleted with the `vagrant destroy` command. Please see the official [Vagrant documentation](http://docs.vagrantup.com/v2/cli/index.html) for a more in depth explanation of available commands.

### Test Kitchen

Please see documentation in: [TESTING.md](TESTING.md)

## Contributing

Please use standard Github issues/pull requests and if possible, in combination with testing on the Vagrant boxes or Test Kitchen suite.

## Maintainers

* Brian Flad (<bflad417@gmail.com>)
