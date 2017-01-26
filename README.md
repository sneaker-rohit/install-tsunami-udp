# Performing Massive File Transfers using Tsunami U


Traditional file transfer protocols make use of TCP as the transport algorithm while performing the data tranfers. However, the performance of TCP degrades over long latency networks and therefore transferring petabytes of data over a long distance network can affect the performance. There have been proposals such as Tsunami UDP which is a hybrid TCP/UDP based protocol and can improve the file transfer performance (almost by 10x)


# Installation

1. Run 
Contains the shell script which installs the necessary packages and the code required to run tsunami-udp. For more information on tsunami-udp please visit tsunami-udp.sourceforge.net


To perform the file transfers 

tsunamid --port 46224 * # (Serves all files from current directory for copy)

tsunami connect [server] get * # (copies all files served to current directory)
