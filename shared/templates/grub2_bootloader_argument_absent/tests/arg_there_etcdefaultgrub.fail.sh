#!/bin/bash

# platform = multi_platform_rhel
# packages = grub2-tools,grubby

# Adds argument from kernel command line in /etc/default/grub
if ! grep -q '^GRUB_CMDLINE_LINUX=.*{{{ARG_NAME}}}.*"' '/etc/default/grub' ; then
	sed -i 's/\(^GRUB_CMDLINE_LINUX=".*\)"$/\1 {{{ ARG_NAME }}}"/' '/etc/default/grub'
fi

