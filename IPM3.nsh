echo -off

:GIT 

:START
#:DMP
#date >> AMI_DMP.log
#time >> AMI_DMP.log
#	echo " "
#	echo " "
#	echo "* ************************************ * ************************************ *"
#	echo "* ************************************ * ************************************ *"
#	echo "* ************************************ * ************************************ *"
#	echo "* ************************************ * ************************************ *"
#	echo "* ************************************ * ************************************ *"
#	echo "* ************************************ * ************************************ *"
#	echo "* ************************************ * ************************************ *"
#	echo "* ************************************ * ************************************ *"
#	echo "* ************************************ * ************************************ *" >> AMI_DMP.log
#	echo "* ************************************ * ************************************ *" >> AMI_DMP.log
#	echo "* ************************************ * ************************************ *" >> AMI_DMP.log
#
#:EFI_Drivers_MemMap_PCI
#for %a in drivers memmap pci 
# 	echo " " >> AMI_DMP.log
#	echo " " >> AMI_DMP.log
#	echo "* ************************************ * ************************************ *" >> AMI_DMP.log
#	echo %a >> AMI_DMP.log
#
#
#	%a >> AMI_DMP.log
#	%a
#	echo " "
#	echo " "
#	echo "* ************************************ * ************************************ *"
#endfor
#
#	echo " "  
#	echo " " 
#	echo "* ************************************ * ************************************ *" 
#	echo " "  
#	echo " " 


:IPMCTL	
date
time

date > AMI_ipmctl.log
time >> AMI_ipmctl.log
:Version
	echo " " >> AMI_ipmctl.log
	echo "* ************************************ * ************************************ *" >> AMI_ipmctl.log
	echo " " >> AMI_ipmctl.log
	echo " " >> AMI_ipmctl.log
	echo "* ************************************ * ************************************ *" >> AMI_ipmctl.log
	echo " " >> AMI_ipmctl.log
	echo " " >> AMI_ipmctl.log
	echo "* ************************************ * ************************************ *" >> AMI_ipmctl.log
	echo "version" >> AMI_ipmctl.log
	ipmctl version >> AMI_ipmctl.log
	echo " "  
	echo " " 
	echo "* ************************************ * ************************************ *" 
	ipmctl version
	echo " "  
	echo " " 
	echo "* ************************************ * ************************************ *" 

:pMEM_ipmctl
For %b in dimm firmware topology "system -capabilities" memoryresources region namespace sensor "system nfit" 
	echo " " >> AMI_ipmctl.log
	echo " " >> AMI_ipmctl.log
	echo "* ************************************ * ************************************ *" >> AMI_ipmctl.log
	echo "show -%b" >> AMI_ipmctl.log
	ipmctl show -%b >> AMI_ipmctl.log
	echo " "  
	echo " " 
	echo "* ************************************ * ************************************ *" 
	echo "show -%b"  
	ipmctl show -%b  
endfor

:DONE 
	echo " " >> AMI_ipmctl.log
	echo " " >> AMI_ipmctl.log
	echo "* ************************************ * ************************************ *" >> AMI_ipmctl.log
	echo DONE >> AMI_ipmctl.log
	echo DONE

:END
