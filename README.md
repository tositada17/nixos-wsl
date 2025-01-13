# nixos-wsl
My NixOS System configurations for WSL

main branch is not merged yet.  
wsl branch is working.  
nixos-flakebooks branch is the branch to try https://nixos-and-flakes.thiscute.world/  

```bash
$ cd /etc/nixos
$ nix flake check
$ sudo nixos-rebuild switch
```

# use develop enviroment  
`nix develop` default read flake.nix  

```bash
[nixos/]$ nix develop ./develop/python3.12/
```