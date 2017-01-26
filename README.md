# Massive File Transfers using Tsunami UDP

Traditional file transfer protocols make use of TCP as the transport algorithm while performing the data tranfers. However, the performance of TCP degrades over long latency networks and therefore transferring petabytes of data over a long distance network can affect the performance. There have been proposals such as Tsunami UDP [1] which is a hybrid TCP/UDP based protocol and can improve the file transfer performance (almost by 10x)


# Installation

1. Run the shell script (install-tsunami-udp.sh) 

Shell script downloads the code and installs the necessary packages needed to run Tsunami UDP. Make sure to run the script on both the client and server.


# Performing Transfers

1. Start the server

tsunamid --port 46224 * # (Serves all files from current directory for copy)

2. Connect to server from client

tsunami connect [server address] get * # (copies all files served to current directory)

# References 

[1] http://tsunami-udp.sourceforge.net/

