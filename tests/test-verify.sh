#!/bin/bash

# Verify the mail name has be updated.
docker exec --tty ${container_id} env TERM=xterm cat /etc/mailname