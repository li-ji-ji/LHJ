#!/bin/bash
# save this file to ${HOME}/.config/clash/start-clash.sh

# save pid file
echo $$ > ${HOME}/.config/clash/clash.pid

diff ${HOME}/.config/clash/config.yaml <(curl -s ${CLASH_URL})
if [ "$?" == 0 ]
then
    /home/lhj/.config/clash/clash
else
    TIME=`date '+%Y-%m-%d %H:%M:%S'`
    cp ${HOME}/.config/clash/config.yaml "${HOME}/.config/clash/bak/config.yaml.bak${TIME}"
    curl -L -o ${HOME}/.config/clash/config.yaml ${CLASH_URL}
    /home/lhj/.config/clash/clash
fi
