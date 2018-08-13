#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

vpn_online_option_string="@vpn_online_icon"
vpn_offline_option_string="@vpn_offline_icon"

vpn_online_icon_default="✔"
vpn_offline_icon_default="✖"

source $CURRENT_DIR/shared.sh

main() {
  if [[ $(ifconfig -s | awk '{print $1}' | grep -c tun9) -eq 1 ]]; then
    printf "$(get_tmux_option "$vpn_online_option_string" "$vpn_online_icon_default")"
  else
    printf "$(get_tmux_option "$vpn_offline_option_string" "$vpn_offline_icon_default")"
  fi
}
main
