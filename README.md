# dotnix
dotfiles nix based

See:
- https://www.nmattia.com/posts/2018-03-21-nix-reproducible-setup-linux-macos.html
- https://github.com/nmattia/homies

## How-To

Installing the package set:

``` shell
$ nix-env -f default.nix -i --remove-all
```

Listing the currently installed packages:

``` shell
$ nix-env -q
```

Listing the previous and current configurations:

``` shell
$ nix-env --list-generations
```

Rolling back to the previous configuration:

``` shell
$ nix-env --rollback
```

Deleting old configurations:

``` shell
$ nix-env --delete-generations [3 4 9 | old | 30d]
```