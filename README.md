 here are the instructions to make your kit works on the start up.


1- go to the file manager 
2- make a new file on /home/pi. 
3- Name it as startassistant.sh 
4- open it with the text editor and paste the following code:
 

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


5- save it. Note that this will make the press button program  works. Change the last line if you want to use another one
6- go to the terminal and paste this command --> 
nano ~/.config/lxsession/LXDE-pi/autostart

7- now the file will open on the terminal add this line at the end -->
@lxterminal -l -e "/home/pi/startassistant.sh"

8- ctrl-x then press y then Enter to save and close it 
9- now on the terminal write this command --> 
sudo chmod +x startassistant.sh

 10- shutdown --> reboot --> enjoy!
