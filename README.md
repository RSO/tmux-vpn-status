# tmux-vpn-status

Tmux plugin that I use to check whether I'm connected to my VPN.

Inspired by https://github.com/tmux-plugins/tmux-online-status

## Usage
Add `VPN: #{vpn_status}` to your `status-right` or `status-left` options in `.tmux.conf`, like so:

```
set -g status-right "#[bold]VPN: #{vpn_status}#[nobold]"
```

## Configuration options
This plugin allows you to configure three things:

```
set -g @vpn_online_icon "yes"
set -g @vpn_offline_icon "no"
# Check in ifconfig what the interface name of your VPN is
set -g @vpn_interface_name "tun1"
```

## Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'RSO/tmux-vpn-status'

Hit `prefix + I` to fetch the plugin and source it.

`#{vpn_status}` interpolation should now work.

## Manual Installation

Clone the repo:

    $ git clone https://github.com/RSO/tmux-vpn-status ~/clone/path

Add this line to the bottom of `.tmux.conf`:

    run-shell ~/clone/path/vpn_status.tmux

Reload TMUX environment:

    # type this in terminal
    $ tmux source-file ~/.tmux.conf

`#{vpn_status}` interpolation should now work.

## License

[MIT](LICENSE.md)
