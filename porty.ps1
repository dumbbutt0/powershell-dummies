$ports=(80,443,21,22);$ip=("127.0.0.1");foreach ($port in $ports) {try{$socket=New-Object System.Net.Sockets.TcpClient($ip,$port);} catch{};if ($socket -eq $null) {echo $ip" is closed on port "$port;} else {echo $ip" is open on port "$port"!"; $socket =$null;}}
