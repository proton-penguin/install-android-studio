read -r -p "Do you want to read the terms and conditions? [y/N] " readterms
case "$readterms" in
    [yY][eE][sS]|[yY]) 
        less asl.txt
        ;;
    *)
        echo 
        ;;
esac

read -r -p "Do you agree with the terms and conditions? [y/N] " agree
case "$agree" in
    [yY][eE][sS]|[yY]) 
        echo Installing
        echo  
        ;;
    *)
        exit
        ;;
esac

sudo apt install wget -y
sudo rm ./android-studio-2022.3.1.20-linux.tar.gz
sudo rm -r ./android-studio
sudo rm -r /opt/android-studio
sudo rm /usr/share/applications/android-studio.desktop
wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2022.3.1.20/android-studio-2022.3.1.20-linux.tar.gz
tar -zxvf android-studio-2022.3.1.20-linux.tar.gz
sudo cp -r ./android-studio /opt/
sudo ln -sf /opt/android-studio/bin/studio.sh /bin/android-studio
sudo cp ./android-studio.desktop /usr/share/applications/android-studio.desktop
sudo rm ./android-studio-2022.3.1.20-linux.tar.gz
sudo rm -r ./android-studio
echo   
echo "\e[1;36mInstallation Complete\e[0m"
echo Android Studio might not appear in applications menu until you log out.
