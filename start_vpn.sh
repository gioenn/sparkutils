#!/bin/bash

path="${VPN_HOME}/*.ovpn"

echo $VPN_HOME

for f in $path ; do
  sudo openvpn --config ~/openvpn/samver3.ovpn  &
done

