#!/bin/bash
#exit 0
DEFAULT_MODE="ETHEREUM"
DEFAULT_DELAY=0
if [ "x$1" = "x" -o "x$1" = "xnone" ]; then
 DELAY=$DEFAULT_DELAY
else
 DELAY=$1
fi
VAL=`cat /home/drew/MODE`
if [ "${VAL}x" = "x" ]; then
 MODE=$DEFAULT_MODE
else
 MODE=$VAL
fi

sleep $DELAY

#GPU fans at 100%
echo "MODE ${MODE}"
#ls -1 /sys/class/drm/card*/device/hwmon/hwmon*/pwm1 | while read hwmon; do
# echo 255 > $hwmon;
#done;

pushd /home/drew/Claymore >> /dev/null 2>&1

if [ "${MODE}" = "ETHEREUM" ]; then
 su drew -c "screen -dmS ethm /home/drew/Claymore/start.bash"
 sleep 3
# xinit /usr/bin/nvidia-settings -a GPUFanControlState=1 -a GPUTargetFanSpeed=75 -a [gpu:0]/GPUMemoryTransferRateOffset[3]=2000 -a [gpu:1]/GPUMemoryTransferRateOffset[3]=1560 -- :0 -once
### xinit /usr/bin/nvidia-settings -a GPUFanControlState=1 -a GPUTargetFanSpeed=75 -a [gpu:0]/GPUMemoryTransferRateOffset[3]=2000 -a [gpu:1]/GPUMemoryTransferRateOffset[3]=1580 -a [gpu:0]/GPUGraphicsClockOffset[3]=100 -a [gpu:1]/GPUGraphicsClockOffset[3]=100 -- :0 -once
 xinit /usr/bin/nvidia-settings -a GPUFanControlState=1 -a GPUTargetFanSpeed=75 -a [gpu:0]/GPUMemoryTransferRateOffset[3]=2000 -a [gpu:1]/GPUMemoryTransferRateOffset[3]=1560 -a [gpu:0]/GPUGraphicsClockOffset[3]=120 -a [gpu:1]/GPUGraphicsClockOffset[3]=100 -- :0 -once
elif [ "${MODE}" = "ETC" ]; then
 su drew -c "screen -dmS ethm /home/drew/Claymore/ETC.bash"
 sleep 3
 xinit /usr/bin/nvidia-settings -a GPUFanControlState=1 -a GPUTargetFanSpeed=75 -a [gpu:0]/GPUMemoryTransferRateOffset[3]=1970 -a [gpu:1]/GPUMemoryTransferRateOffset[3]=1550 -- :0 -once
elif [ "${MODE}" = "EXPANSE" ]; then
 su drew -c "screen -dmS ethm /home/drew/Claymore/EXPANSE.bash"
 sleep 3
 xinit /usr/bin/nvidia-settings -a GPUFanControlState=1 -a GPUTargetFanSpeed=75 -a [gpu:0]/GPUMemoryTransferRateOffset[3]=1970 -a [gpu:1]/GPUMemoryTransferRateOffset[3]=1550 -- :0 -once
elif [ "${MODE}" = "MUSIC" ]; then
 su drew -c "screen -dmS ethm /home/drew/Claymore/MUSIC.bash"
 sleep 3
 xinit /usr/bin/nvidia-settings -a GPUFanControlState=1 -a GPUTargetFanSpeed=75 -a [gpu:0]/GPUMemoryTransferRateOffset[3]=1970 -a [gpu:1]/GPUMemoryTransferRateOffset[3]=1550 -- :0 -once
elif [ "${MODE}" = "UBIQ" ]; then
 su drew -c "screen -dmS ethm /home/drew/Claymore/UBIQ.bash"
 sleep 3
 xinit /usr/bin/nvidia-settings -a GPUFanControlState=1 -a GPUTargetFanSpeed=75 -a [gpu:0]/GPUMemoryTransferRateOffset[3]=1970 -a [gpu:1]/GPUMemoryTransferRateOffset[3]=1550 -- :0 -once
fi
#xinit /usr/bin/nvidia-settings -a GPUFanControlState=1 -a GPUTargetFanSpeed=70 -- :0 -once
#xinit /usr/bin/nvidia-settings -a GPUFanControlState=1 -a GPUTargetFanSpeed=70 -a [gpu:0]/GPUGraphicsClockOffset[3]=100 -a [gpu:0]/GPUMemoryTransferRateOffset[3]=1880 -a [gpu:1]/GPUGraphicsClockOffset[3]=0 -a [gpu:1]/GPUMemoryTransferRateOffset[3]=1100 -- :0 -once
#xinit /usr/bin/nvidia-settings -a GPUFanControlState=1 -a GPUTargetFanSpeed=70 -a [gpu:0]/GPUGraphicsClockOffset[3]=50 -a [gpu:0]/GPUMemoryTransferRateOffset[3]=100 -a [gpu:1]/GPUGraphicsClockOffset[3]=50 -a [gpu:1]/GPUMemoryTransferRateOffset[3]=1000 -- :0 -once
###xinit /usr/bin/nvidia-settings -a GpuPowerMizerMode=1 -a GPUFanControlState=1 -a GPUTargetFanSpeed=70 -a [gpu:0]/GPUMemoryTransferRateOffset[3]=900 -a [gpu:0]/GPUGraphicsClockOffset[3]=0 -a [gpu:1]/GPUMemoryTransferRateOffset[3]=900 -a [gpu:1]/GPUGraphicsClockOffset[3]=0 -- :0 -once
#xinit /usr/bin/nvidia-settings -a GPUFanControlState=1 -a GPUTargetFanSpeed=55 -a [gpu:0]/GPUGraphicsClockOffset[3]=0 -a [gpu:0]/GPUMemoryTransferRateOffset[3]=0 -a [gpu:1]/GPUGraphicsClockOffset[3]=0 -a [gpu:1]/GPUMemoryTransferRateOffset[3]=0 -a [gpu:0]/GPUGraphicsClockOffset[3]=0 -a [gpu:0]/GPUMemoryTransferRateOffset[3]=0 -- :0 -once xinit /usr/bin/nvidia-settings -a GPUFanControlState=1 -a GPUTargetFanSpeed=55 -- :0 -once 
#xinit /usr/bin/nvidia-settings -a GPUFanControlState=1 -a GPUTargetFanSpeed=70 -a GPUMemoryTransferRateOffset[3]=1600 -a GPUGraphicsClockOffset[3]=100-- :0 -once



#xinit /usr/bin/nvidia-settings -a [gpu:0]/GPUFanControlState=1 -a [fan:0]/GPUTargetFanSpeed=70 -a [gpu:1]/GPUFanControlState=1 -a [fan:1]/GPUTargetFanSpeed=70 -a [gpu:2]/GPUFanControlState=1 -a [fan:2]/GPUTargetFanSpeed=70 -a GPUGraphicsClockOffset[3]=0 -a GPUMemoryTransferRateOffset[3]=0 -- :0 -once


popd >> /dev/null 2>&1

#DID NOT WORK???
###v for musicoin/digicash
#cd /home/drew/ccminer
#su drew -c "screen -dmS ethm ./go.mine"
#sleep 4
#xinit /usr/bin/nvidia-settings -a [gpu:0]/GPUFanControlState=1 -a [fan:0]/GPUTargetFanSpeed=100 -a [gpu:1]/GPUFanControlState=1 -a [fan:1]/GPUTargetFanSpeed=100 -a [gpu:0]/GPUGraphicsClockOffset[3]=150 -a [gpu:0]/GPUMemoryTransferRateOffset[3]=-50 -a [gpu:1]/GPUGraphicsClockOffset[3]=0 -a [gpu:1]/GPUMemoryTransferRateOffset[3]=0 -- :0 -once
# ^ for musicoin/digicash
