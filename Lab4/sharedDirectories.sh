#!/bin/bash

mkdir /home/accounting
mkdir /home/sales
mkdir /home/managers

chgrp -hR managers /home/managers
chgrp -hR accounting /home/accounting
chgrp -hR sales /home/sales

chmod g+s /home/managers
chmod g+s /home/accounting
chmod g+s /home/sales

chmod 770 /home/managers
chmod 770 /home/accounting
chmod 770 /home/sales



