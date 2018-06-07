#!/bin/bash --rcfile

source /etc/bash.bashrc
source ~/.bashrc

cat /etc/aiyprojects.info

cd ~/AIY-voice-kit-python
source env/bin/activate

echo "Dev terminal is ready! See the demos in 'src/examples' to get started."

until $(curl --output /dev/null --silent --head --fail http://google.com ); do
	sleep 4
done

sleep 2

src/assistant_grpc_demo.py

