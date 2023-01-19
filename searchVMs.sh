#!/bin/bash
archivo_logs="/var/log/ovirt-engine/engine.log"
dir="/home/joel/store/development/bash/vms-dup"
archivo=$dir"/log.log"
hosts=[""]
rm $dir"/vms.txt"
echo "Potenciales VMs duplicadas:"
for vm in `cat $archivo|grep "2023-01-1" |grep "unexpectedly detected as" |cut -d "(" -f 3|cut -d ")" -f 1|sort|uniq`
do
        echo "$vm"
        echo $vm>>$dir"/vms.txt"
done
cat vms.txt|grep vdi |wc -l
