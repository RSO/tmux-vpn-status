#!/usr/bin/env bash

main() {
  if [[ $(ifconfig -s | awk '{print $1}' | grep -c tun9) -eq 1 ]]; then
    echo "✔ VPN"
  else
    echo "✖ VPN"
  fi
}
main
