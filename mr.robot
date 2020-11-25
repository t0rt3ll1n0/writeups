solved: True
Time: 2 hour + 1 hour (2 different days)
platform: tryhackme
nmap > port opened:
22 > SSH > closed
80 > HTTP > open
443 > HTTPS > open
ubuntu linux 18.04
.::..::..::. 
writeup:
/robots > key-1-of-3.txt > FLAG 1'
/robots > fsocity.dic > 7mb pass list
/wp-login.php > assume is using wp
hydra > bruteforce with an user list quickly created by me
hydra > password found > wp-admin login
modify a theme > msfvenom php reverse shell > past code in a new page
ncat -lvp 4444 > mavigate to that page > reverse shell
daemon own
cd /home > key-2-of-3.txt > insufficient permissions
cd /home > ls > md5.txt > cat md5.txt > md5 hash of robot passwd
crackstation > md5 cracked > su robot 
user own
cat /home/robot/user.txt > FLAG 2'
check SUID > nmap 
nmap --version > 3.8.xx > deprecated
nmap interactive shell as sudo > !sh > root shell
system own
cat /root/root.txt > FLAG 3'
---------------------------------------
