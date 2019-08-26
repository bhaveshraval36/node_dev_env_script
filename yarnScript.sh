Output=`node --version`

if [ $Output != null ] || [ $Output != "" ]
then
   echo yarn installing
   sudo npm install -g yarn
   sudo chown -R $USER:$USER ~/.config/
else
   echo you required to install node
fi