# Linux Phones

Scripts and configs useful for Linux on Phones (such as postmarketOS on Pinephone).

## Crust Deep Sleep

A shell script to put the CRUST firmware into deep sleep mode, to maximize the
battery life.

### Setup

Install the script and desktop launcher:

```bash
cd crust-deep-sleep/
sudo cp deepsleep.sh /usr/local/bin/
sudo cp net.kirsle.Deepsleep.desktop /usr/share/applications/
```

Set your sudoers file to allow running the script w/o password:

```bash
visudo

# and insert a line like:
%wheel ALL=(ALL) NOPASSWD: /usr/local/bin/deepsleep.sh
```
