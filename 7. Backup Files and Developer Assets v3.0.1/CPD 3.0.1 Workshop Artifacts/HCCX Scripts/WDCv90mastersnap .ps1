#-----------------------------------------------------------------------------------------
# Script:      WDCv90mastersnap.ps1                                                       |
# Author:      Rich Russo                                                                 |
# Description: Creates a snapshot for Master images with names starting with WDCv9        |
# Updates:     2020-05-26 Burt Vialpando - CPD V9.0 workshop dev cluster.                 |
#-----------------------------------------------------------------------------------------

Connect-VIServer -Server 10.77.16.14											#Connect to vCenter Server (using Raleigh vCenter)
$SnapName = Read-Host -Prompt "Enter Name of Snapshot"							#Get name of snapshot
$SnapName = $SnapName.Trim()													#Remove leading and trailing spaces from snapshot name
While ($SnapName -eq ""){														#Loop while snapshot name is blank
	write-host ">>Snapshot name cannot be blank<<"								#Display blank name warning
	write-host ""																#Skip a line
	$SnapName = Read-Host -Prompt "Enter Name of Snapshot"						#Get name of snapshot
	$SnapName = $SnapName.Trim()												#Remove leading and trailing spaces from snapshot name
} 

$SnapDesc = Read-Host -Prompt "Enter Description of Snapshot"					#Get description of snapshot
$SnapDesc = $SnapDesc.Trim()													#Remove leading and trailing spaces from snapshot description
If ($SnapDesc -eq "") {															#Check if description is blank
	$SnapDesc = $SnapName														#If so, set Description to Name
}

For ($NodeIDX=1; $NodeIDX -le 5; $NodeIDX++) {											#Loop through nodes per clone
	$CloneName = "WDCv9_"+$NodeIDX.ToString()										#Set name of clone based number
	$NodeSnap = "Node"+$NodeIDX.ToString()+" "+$SnapName                                #Apply Node number to name
	New-Snapshot -VM $CloneName -Name $NodeSnap -Description $SnapDesc -Memory:$false	#Create snapshot for specified VM
}

