#!/bin/bash
# Copyright (c) Ontic. (http://www.ontic.com.au). All rights reserved.
# See the COPYING file bundled with this package for license details.

# Verify the mail name has be updated.
docker exec --tty ${container_id} env TERM=xterm cat /etc/mailname