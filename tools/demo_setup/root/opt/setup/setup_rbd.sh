#!/bin/bash
set -e
ceph osd pool create rbd 64 8 replicated >/dev/null
ceph osd pool application enable rbd rbd >/dev/null
rbd config global set global rbd_default_features 'layering, deep-flatten'
