#!/bin/bash
#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

function vendor_imports() {
    cat <<EOF >>"$1"
		"hardware/qcom-caf/common/libqti-perfd-client",
		"vendor/qcom/opensource/display",
EOF
}

set -e

export DEVICE=munch
export DEVICE_COMMON=sm8250-common
export VENDOR=xiaomi

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
