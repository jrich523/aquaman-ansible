# Used to configure the BBB for dev work (smb share)

run:

    curl https://raw.githubusercontent.com/jrich523/aquaman-ansible/master/setup.sh | sudo bash

> NOTE: password prompt provides no text, enter password at hang

should also have it configure
. node/npm version
. prod config? (roles/env?)
. set debian password
. platform config (npm bonescript/ or whatever for pi via global?)

example service config info for groups/cap

    DevicePolicy=closed
    DeviceAllow=/dev/spi/flash r
    DeviceAllow=/dev/spi/dsp rw
    DeviceAllow=/dev/uio/io-irq rw

    NoNewPrivileges=yes

    CapabilityBoundingSet=
    AmbientCapabilities=

    User=dspd
    Group=dspd
    SupplementaryGroups=spi gpio uio i2c