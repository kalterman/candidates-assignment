#!/bin/bash
#add fix to exercise6-fix here
if [ $HOSTNAME == "server1" ]
then
  DEST_SRV="server2"
else
  DEST_SRV="server1"
fi
LAST_ARG="${@: -1}"
DEST_PATH=vagrant@"$DEST_SRV":"$LAST_ARG"
SOURCE_FILES=${@:1:$#-1}
sudo apt-get install sshpass
sshpass -p vagrant scp -v $SOURCE_FILES $DEST_PATH &> /tmp/ex6.log
echo "*** Log location: /tmp/ex6.log *** CHECK IT OUT ***"
grep "Sink" /tmp/ex6.log | awk '{s+=$3} END {print s}'