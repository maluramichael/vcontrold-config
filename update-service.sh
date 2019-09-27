#!/bin/bash

scp *.xml *.txt *.sh *.tmpl *.service heizung:heizung/
ssh heizung "cd heizung && sudo cp service.service /lib/systemd/system/vcontrold.service && sudo chmod 644 /lib/systemd/system/vcontrold.service && sudo systemctl enable vcontrold && sudo systemctl restart vcontrold"
