#iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 2080

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/gitlab
cd /www/bot.allevents.nyc
git reset HEAD -\-hard;
git pull

# casperjs bot.js

i=0;
while true; do
	i=$[$i+1]
	echo casperjs bot.js \#$i
	casperjs bot.js --iteration=$i
	sleep 5
done