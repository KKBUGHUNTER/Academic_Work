#!/bin/bash


Flutter_Install(){
	
	sudo snap install flutter --classic  -y
	flutter sdk-path
	flutter doctor
	read -p "Do you want to Setup Flutter Path? (y/n): " flutter_path
	if [[ $flutter_path == "y" ]]; then
		export PATH="$PATH:/snap/bin/flutter/bin"
		echo -e "\n\n Flutter Path Setup Competed......\n\n"
	fi
	echo -e "\n\n Flutter Install Competed......\n\n"
}


echo -e " \n\n\t\t\t Welcome to Software Installer\n\t 1. Update System\n\t 2. Media Softwares VLC\n\t 3. Programming Software Python,GCC,GIT\n\t 4. Code Editer VScode \n\t 5. Flutter\n\n";
read -p "Enter Your Option: " choice

case $choice in
    1)
        sudo apt update
		sudo apt upgrade
		echo -e "\n\n Update Competed......\n\n"

        ;;
    2)
        sudo snap install vlc -y
		echo -e "\n\n VLC Media Install Competed......\n\n"
        ;;
    3)
        esudo apt install python3 -y
		echo -e "\n\n Python Install Competed......\n\n"
		sudo apt install git -y
		echo -e "\n\n GIT Install Competed......\n\n"
		sudo apt install gcc -y
		echo -e "\n\n GCC Install Competed......\n\n"
        ;;
    4)
    	sudo snap install code --classic -y
		echo -e "\n\n VS Code Install Competed......\n\n"
    	;;
    5)
    	sudo snap install code --classic -y
		read -p "Do you want to install Flutter? (y/n): " install_flutter
			if [[ $install_flutter == "y" ]]; then
			FLutter_Install  # Call the Flutter Install Function.
		fi
    	;;
    *)
        echo "Invalid choice"
        ;;
esac


