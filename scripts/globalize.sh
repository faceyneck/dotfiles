#/bin/bash

#Make a script to add scripts from ~/scripts to /bin

#Add requisite variables


echo "What do you want to call your script?"
read script

sleep 1

echo "Writing scrip to ~/scripts..."
sleep 2
touch $script

echo "Making script executable..."
sleep 2

echo "Adding script to /bin..."
ln -s /bin/$script
sleep 2

echo "Done!"
