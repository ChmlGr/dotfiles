#!/bin/bash
clear
echo "#################################"
echo "This script makes all pictures in selected custom directory"
echo "available as your system-wide GNOME wallpapers." 
# It reads/lists all pictures in selected directory and creates mybackgrounds.xml file in /usr/local/share/gnome-background-properties/. USAGE: Make this script executable (chmod +x backgrounds.sh) and execute it (sudo ./backgrounds.sh or ./backgrounds.sh as root)." 
echo "#################################"
echo
# if doesn't exists creating directory /usr/local/share/gnome-background-properties
mkdir -p /usr/local/share/gnome-background-properties
echo "Enter the path to your pictures directory"
echo \(\for example\: \/home\/myname\/Pictures\/\) 
echo "Don't forget the slash at the end of pathname!"
echo -n "$"
read DIRECTORY
echo
if [ ! -d $DIRECTORY ]
then
echo "Sorry, you entered wrong path."
echo "Directory $DIRECTORY doesnot exists"
echo "You have to start the Script again."  
    exit
fi
echo "You selected $DIRECTORY:"
ls $DIRECTORY > lspictures.txt
cat lspictures.txt
echo
# creating the head of mybackgrounds.xml
echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
<!DOCTYPE wallpapers SYSTEM \"gnome-wp-list.dtd\">
<wallpapers>" > mybackgrounds.xml
# looking for all pictures in $DIRECTORY
echo "OK. Now we are creating mybackgrounds.xml"
# This script is looking for .png and .jpg files only, but you can add here another file types. The "<options>stretched</options>" should work best for unknow sized files.
for i in $DIRECTORY*.jpg $DIRECTORY*.png; do
    echo "<wallpaper>
    <name>$i</name>
    <filename>$i</filename>
      <options>stretched</options>
          <pcolor>#8f4a1c</pcolor>
              <scolor>#8f4a1c</scolor>
                  <shade_type>solid</shade_type>
                    </wallpaper>" >> mybackgrounds.xml
done
# creating the bottom of mybackgrounds.xml
echo "</wallpapers>" >> mybackgrounds.xml
# Change <name>/path_to/picture</name> to <name>picture</name> and move mybackgrounds.xml  to /usr/local/share/gnome-background-properties/.
sed 's/<name>\/usr\/share\/backgrounds\//<name>/g' mybackgrounds.xml > /usr/local/share/gnome-background-properties/mybackgrounds.xml
# if you like to copy mybackgrounds.xml to /usr/share/gnome-background-properties/mybackgrounds.xml as well
cp /usr/local/share/gnome-background-properties/mybackgrounds.xml /usr/share/gnome-background-properties/mybackgrounds.xml
# clear now
rm mybackgrounds.xml
rm lspictures.txt
echo
echo "#################################"
echo "You're almost done. Log out and back in. Invoke the Desktop"
echo "Background Change application again, and all your selected" 
echo "wallpapers should be available."
echo "#################################"
echo
exit 0
