#!/bin/bash

mkdir /tmp/cgrp
mount -t cgroup -o rdma cgroup /tmp/cgrp

/bin/bash -c "sleep 6045d"
