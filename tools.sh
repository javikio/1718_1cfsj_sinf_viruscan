# File that contains functions for antivirus launcher whatthevirus.sh
# don not execute it directly
#hello
simple_menu () {
  echo "Please, write an option:"
  echo "1 .- Refresh virus database"
  echo "2 .- Scan a directory"
  echo "3 .- Scan all"
 
  read $Option
exit $Option
}

provide_dir () {
  echo "Please, provide a directory to scan"
  read $Dir
exit $Dir
}
