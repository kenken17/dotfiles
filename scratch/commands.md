password file contains:
```sh
  vpn.secrets.password:MY_PASSWORD
```

command:
```sh
  nmcli con up gcc-dev passwd-file ~/.passwd/vpn-gcc-dev
```
