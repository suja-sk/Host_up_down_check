Check Server Status
This script checks the status of one or more remote servers using the ping command. The script takes the name of a file containing the server names as input, and outputs the status of each server to the console.

Getting Started
To use the script, simply clone or download the repository.

git clone git@github.com:100daysofdevops/N-days-of-automation.git
Prerequisites
The script requires Bash to be installed on your Linux system.

Usage
To use the script, simply run the command :

bash check_if_server_is_up_v2.sh
Input File Format
The input file should be a text file containing one server name or IP address per line. For example:

192.168.1.1
google.com
Shell one-liner
ping -c 1 SERVER_IP_ADDRESS >/dev/null && echo "Server is up" || echo "Server is down"