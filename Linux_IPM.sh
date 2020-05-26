#!/usr/bin/bash
#  bash  Linux_IPM.sh Log-File.log
#
# Version
# DIMM
# FIRMWARE
# SOCKET
# REGION
# NAMESPACE  <<<<   as of  15d04 2020WW07  Not working in Linux.
# SYSTEM CAPABILITIES
# MEMORYRESOURCES
# TOPOLOGY
# SENSOR
# SYSTEM NFIT
# ALL DIMM
#
##### to Default file  AMI_ipmctl.log -- Appended
echo "  " >> AMI_ipmctl.log
echo "  " >> AMI_ipmctl.log
echo "* ****************************** * ****************************** *" >> AMI_ipmctl.log
echo "ipmctl Version" >> AMI_ipmctl.log
ipmctl version >> AMI_ipmctl.log
echo "  " >> AMI_ipmctl.log
echo "  " >> AMI_ipmctl.log
echo "* ****************************** * ****************************** *" >> AMI_ipmctl.log
echo "show -dimm" >> AMI_ipmctl.log
ipmctl show -dimm >> AMI_ipmctl.log
echo "  " >> AMI_ipmctl.log
echo "  " >> AMI_ipmctl.log
echo "* ****************************** * ****************************** *" >> AMI_ipmctl.log
echo "show -firmware" >> AMI_ipmctl.log
ipmctl show -firmware >> AMI_ipmctl.log
echo "  " >> AMI_ipmctl.log
echo "  " >> AMI_ipmctl.log
echo "* ****************************** * ****************************** *"  >> AMI_ipmctl.log
echo "show socket" >> AMI_ipmctl.log
ipmctl show -socket >> AMI_ipmctl.log
echo "  "  >> AMI_ipmctl.log
echo "  "  >> AMI_ipmctl.log
echo "* ****************************** * ****************************** *" >> AMI_ipmctl.log
echo "show -region" >> AMI_ipmctl.log
ipmctl show -region >> AMI_ipmctl.log
echo "  " >> AMI_ipmctl.log
echo "  " >> AMI_ipmctl.log
echo "* ****************************** * ****************************** *" >> AMI_ipmctl.log
# echo "show -namespace" >> AMI_ipmctl.log
# ipmctl show -namespace  >> AMI_ipmctl.log
# echo "  " >> AMI_ipmctl.log
# echo "  " >> AMI_ipmctl.log
echo "* ****************************** * ****************************** *"  >> AMI_ipmctl.log
echo "show -system -capabilities" >> AMI_ipmctl.log
ipmctl show -system -capabilities >> AMI_ipmctl.log
echo "  " >> AMI_ipmctl.log
echo "  " >> AMI_ipmctl.log
echo "* ****************************** * ****************************** *" >> AMI_ipmctl.log
echo "show -memoryresources" >> AMI_ipmctl.log
ipmctl show -memoryresources >> AMI_ipmctl.log
echo "  " >> AMI_ipmctl.log
echo "  " >> AMI_ipmctl.log
echo "* ****************************** * ****************************** *" >> AMI_ipmctl.log
echo "show -topology" >> AMI_ipmctl.log
ipmctl show -topology >> AMI_ipmctl.log
echo "  " >> AMI_ipmctl.log
echo "  " >> AMI_ipmctl.log
echo "* ****************************** * ****************************** *"  >> AMI_ipmctl.log
echo "show -sensor" >> AMI_ipmctl.log
ipmctl show -sensor >> AMI_ipmctl.log
echo "  " >> AMI_ipmctl.log
echo "  " >> AMI_ipmctl.log
echo "* ****************************** * ****************************** *" >> AMI_ipmctl.log
echo "show -system nfit" >> AMI_ipmctl.log
ipmctl show -system NFIT >> AMI_ipmctl.log
echo "  " >> AMI_ipmctl.log
echo "  " >> AMI_ipmctl.log 
echo "* ****************************** * ****************************** *" >> AMI_ipmctl.log
echo "show -all dimm" >> AMI_ipmctl.log
ipmctl show -a -dimm >> AMI_ipmctl.log
echo "  " >> AMI_ipmctl.log
echo "* ****************************** * ****************************** *"  >> AMI_ipmctl.log
echo "* ****************************** * ****************************** *"  >> AMI_ipmctl.log
#
#
#
#
#
##### Output to Named Log  $1
# Clear log of old data first
echo "  " > $1
echo "  " >> $1
echo "* ****************************** * ****************************** *" >> $1
echo "ipmctl Version" >> $1
ipmctl version >> $1
echo "  " >> $1
echo "  " >> $1
echo "* ****************************** * ****************************** *" >> $1
echo "show -dimm" >> $1
ipmctl show -dimm >> $1
echo "  " >> $1
echo "  " >> $1
echo "* ****************************** * ****************************** *" >> $1
echo "show -firmware" >> $1
ipmctl show -firmware >> $1
echo "  " >> $1
echo "  " >> $1
echo "* ****************************** * ****************************** *"  >> $1
echo "show socket" >> $1
ipmctl show -socket >> $1
echo "  "  >> $1
echo "  "  >> $1
echo "* ****************************** * ****************************** *" >> $1
echo "show -region" >> $1
ipmctl show -region >> $1
echo "  " >> $1
echo "  " >> $1
echo "* ****************************** * ****************************** *" >> $1
# echo "show -namespace" >> $1
# ipmctl show -namespace  >> $1
# echo "  " >> $1
# echo "  " >> $1
echo "* ****************************** * ****************************** *"  >> $1
echo "show -system -capabilities" >> $1
ipmctl show -system -capabilities >> $1
echo "  "   >> $1
echo "  "   >> $1
echo "* ****************************** * ****************************** *" >> $1
echo "show -memoryresources" >> $1
ipmctl show -memoryresources >> $1
echo "  " >> $1
echo "  " >> $1
echo "* ****************************** * ****************************** *" >> $1
echo "show -topology" >> $1
ipmctl show -topology >> $1
echo "  " >> $1
echo "  " >> $1
echo "* ****************************** * ****************************** *"  >> $1
echo "show -sensor" >> $1
ipmctl show -sensor >> $1
echo "  " >> $1
echo "  " >> $1
echo "* ****************************** * ****************************** *" >> $1
echo "show -system nfit" >> $1
ipmctl show -system NFIT >> $1
echo "  "   >> $1
echo "  "   >> $1
echo "* ****************************** * ****************************** *" >> $1
echo "show -all dimm" >> $1
ipmctl show -a -dimm >> $1
echo "  " >> $1
echo "* ****************************** * ****************************** *" >> $1 
echo "* ****************************** * ****************************** *" >> $1 