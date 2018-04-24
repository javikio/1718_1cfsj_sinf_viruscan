#!/bin/bash
# Simple script to launch antivirus tools

# Include functions from other file
source tools.sh
# Main body

clear
while true
do
  simple_menu
  case $Option in
    1 )
      echo "1 .- Install"
      sudo apt-get install clamav clamav-daemon -y > /dev/null 2> /dev/null

      if [ $? = 0 ]
        then
          echo "Installed correctly"
        else
          echo "Installation failed"
      fi
      ;;

    2 )
      echo "2 .- Update database clamav"
      sudo freshclam > /dev/null 2> /dev/null

      if [ $? = 0 ]
        then
          echo "Update correctly"
        else
          echo "Updated failed"
      fi
      ;;

    3 )
      echo "3 .- Scan directory."
      provide_dir
      echo "scanning "$Dir"..."
      clamscan /$Dir
      ;;

    4 )
      echo "4 .- Scan all"
      sudo clamscan -r /
      ;;

    5 )
      echo "Exit"
      clear
      exit 1
      ;;

    * )
      echo "sorry, wrong option"
      exit 1
      ;;

  esac
done
exit 0
