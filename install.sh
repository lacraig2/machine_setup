# run as root
apt update
apt install i3 htop git xclip
apt install python python3 python-pip python3-pip binwalk
cp config /home/luke/.config/i3/
cp ./i3status.conf /etc/
cp ./lock /bin
cp ./shrug /bin
mkdir /home/luke/terminal_sessions || true
echo "alias watchd=\"watch lsblk&&lsblk\"" >> /home/luke/.bashrc
echo "alias clip=\"xclip -selection clipboard\"" >> /home/luke/.bashrc
echo "test \"\$(ps -ocommand= -p \$PPID | awk '{print \$1}')\" == 'script' || (script -f /home/luke/terminal_sessions//\$(date +\"%d-%b-%y_%H-%M-%S\")_shell.log)" >> /home/luke/.bashrc
