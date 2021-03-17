# Basic Config

A project whose sole purpose is to quickly install basic configuration files to
be able to work effectively on temporary machines, like OCI containers or
virtual machines.

## Installation

Download `basic-config.run` and run:

```bash
./basic-config.run
```

## Config Files

Config files are placed in the `config_files` directory in either the `home` or
`root` folder. Files placed in `home` will be installed in the `$HOME` directory
of the user executing `basic-config.run`. Files in `root` will follow their path
from there to be installed in the `/` of a file system.

For instance, a file `src/config_files/home/.vimrc` will be installed in
`$HOME/.vimrc`, where `$HOME` depends on the user running `basic-config.run`. In
contrast, a file `src/config_files/root/etc/vimrc` will be installed in
`/etc/vimrc` regardless of the user who has called `basic-config.run`.
