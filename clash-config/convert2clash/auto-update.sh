
echo `date "+%Y-%m-%d %H:%M:%S"`
# sleep 20s
echo `date "+%Y-%m-%d %H:%M:%S"`
sudo python /home/lhj/.config/clash/convert2clash/Robot.py
sudo systemctl restart clash.service
