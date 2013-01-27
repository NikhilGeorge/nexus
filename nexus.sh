#!/bin/bash
htmlcontent=`curl http://www.saholic.com/mobile-phones/lg-e960-nexus-4-16gb-1005331`
if [[ $htmlcontent == *"ADD TO CART"* ]]
then
	echo "ADD TO CART" > /tmp/nexusemail.txt
	/bin/mail -s "NEXUS AVAIALBAILITY : AVAILABLE" nikhgeo@gmail.com < /tmp/nexusemail.txt
else
	echo "NOT AVAILABLE"
fi
