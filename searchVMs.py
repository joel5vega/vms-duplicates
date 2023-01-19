import os
logfile= "log.log"
pattern= "unexpectedly detected as"
VMnameList=[]

with open(logfile) as file:
    lines = file.readlines()
    for line in lines:
        if pattern in line:
            VMname = line.split("(")[2].split(")")[0]
            if VMname not in VMnameList:
                VMnameList.append(VMname)
                print(VMname)
          

with open("VMs.txt", "w") as file:
    for vm in VMnameList:
        file.write(vm+"\n")       

     
#connect via ssh to a list of host an run : ps aux | grep vm , if present save the host name

