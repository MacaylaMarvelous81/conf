#!/usr/bin/env sh

if [ -d /run/systemd/system ]; then
  systemctl --user enable psd.service
  systemctl --user start psd.service

  systemctl --user enable systemd-tmpfiles-setup.service
  systemctl --user start systemd-tmpfiles-setup.service

  systemctl --user enable systemd-tmpfiles-clean.timer
  systemctl --user start systemd-tmpfiles-clean.timer
fi
