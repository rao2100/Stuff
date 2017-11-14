#!/bin/bash
fileName=$(ls -td /home/fwuser/cdm/applications/appRT2/fwhome/statistics/statisticsManager/capture/*_low.capture | head -1);
#echo $fileName
#tail -f $fileName
#grep "Gx840_Server_CCRCount" $fileName | grep "opendaylightRemotePeer" | tail -5
capture=$(grep "DBP_Total_Request_Received_Count" $fileName | grep "opendaylight01" | grep "ALL" | tail -1| awk -F, '{ print $5,$19}');
#echo $capture;
if [ -z "$capture" ]; then
    #echo "capture is empty";
    
    fileName=$(ls -td /home/fwuser/cdm/applications/appRT2/fwhome/statistics/statisticsManager/complete/*_low.stats.csv | head -1);
    complete=$(grep "DBP_Total_Request_Received_Count" $fileName | grep "opendaylight01" | grep "ALL" | tail -1 | awk -F, '{ print $5,$19}');
    echo $complete;
else
    echo $capture;
fi


#echo "-----------------------------------------------------------------------------------";

#fileName=$(ls -td /home/fwuser/cdm/applications/appRT2/fwhome/statistics/statisticsManager/complete/*_low.stats.csv | head -1);

#complete=$(grep "DBP_Total_Request_Received_Count" $fileName | grep "opendaylight01" | grep "ALL" | tail -1 | awk -F, '{ print $5,$19}');
#echo $complete;

