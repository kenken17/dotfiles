password file contains:
```sh
  MY_PASSWORD
```

command:
```sh
  nmcli con mod gcc-dev vpn.secrets "password=$(cat ~/.passwd/vpn-gcc-dev)"
  nmcli con up gcc-dev -a
```
