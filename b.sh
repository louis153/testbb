
#!/bin/bash
ESC="\033[1;"
GRE="${ESC}32m"
YEL="${ESC}33m"
RED="${ESC}31m"
BLU="${ESC}34m"
NOR="${ESC}0m"
TOMCAT_PORT=8080
JAR=/etc/alternatives/java_sdk_1.7.0/bin/jar
TIME=$(date +%F-%H%M)
proj=$1
password=hycadmin333
#DIRHOME="$(/home/admin/works/$proj/target)"
RUNPORT=$(netstat -ant|grep 8027|awk '{printf$4}'|awk -F ':::' '{printf$2}')
RUNPORT1=$(netstat -ant|grep 8026|awk '{printf$4}'|awk -F ':::' '{printf$2}')
RUNPORT2=$(netstat -ant|grep 8035|awk '{printf$4}'|awk -F ':::' '{printf$2}')
if [ $# -ne 1  ]
then
echo "Usage: `basename $0` [projs:wangyijikai|ventimerService|jklogic|jdfbcpapi|venuemanage|jdcqweb|jcgamelogic|jdcaiqiu|venuesmapi|jdfbdata|acmtadm|actmapi|hljsigweb|barcelonaentry|teenagers|spltdata|sportsdt|sportsmwap|hljtcpadm|hljtcpapi|venstocks|fbcpdata|cpstoreapi|userwebservice|tcjfweb|tcjfadmin|venueappapi|venueadmin|venuemanage|vinfoservice|orderservice|longtiweb|sportsmapi|gunqiudata|dcjcdata|jkadm]"
exit 1
fi
if [  "x${proj}" != "xjdfbcpapi" -a  "x${proj}" != "xjdcqweb" -a   "x${proj}" != "xjcgamelogic" -a  "x${proj}" != "xjdcaiqiu" -a  "x${proj}" != "xvenuesmapi" -a   "x${proj}" != "xjdfbdata" -a   "x${proj}" != "xactmadm" -a   "x${proj}" != "xhljsigweb" -a  "x${proj}" != "xactmapi"  -a  "x${proj}" != "xspltdata"  -a    "x${proj}" != "xsportsmwap"  -a   "x${proj}" != "xhljtcpadm" -a  "x${proj}" != "xhljtcpapi" -a  "x${proj}" != "xfbcpdata"  -a    "x${proj}" != "xuserwebservice" -a  "x${proj}" != "xtcjfweb" -a "x${proj}" != "xtcjfadmin" -a  "x${proj}" != "xsportsmapi"  -a "x${proj}" != "xvenueadmin" -a "x${proj}" != "xvenuemanage"   -a "x${proj}" != "xventimer" -a "x${proj}" != "xvenstocks" -a "x${proj}" != "xlongtiweb"  -a  "x${proj}" != "xgunqiudata" -a  "x${proj}" != "xdcjcdata"  -a  "x${proj}" != "xvenuemanage"  -a  "x${proj}" != "xjklogic"  -a  "x${proj}" != "xjkadm"   -a  "x${proj}" != "xventimerService"   -a  "x${proj}" != "xwangyijikai"    ]
then
  echo "The project name input error!"
  exit 1
else
echo -e "\033[1;35m ${proj} -----------开始发布 -------------  \033[34m"
fi

echo -e "${BLU}Input Number 1,Stop Tomcat! \nInput Number 2,Stop && Start Tomcat!${NOR}"
read -p "Enter Number:" Number
case $Number in
1)
        echo -e "${RED}Input Number 1,Stop Tomcat!Continue after 3 seconds${NOR}"
                for ((i=3;i>=1;i--))do
                echo -e "${YEL}$i seconds continue!${NOR}"
                sleep 1
                done
if [  "x${proj}" == "xactmadm"  ]
then
     PID=$(ps -ef |grep tomcat |grep -w tomcat_actmadm'/conf'|grep -v 'grep'|awk '{print $2}')
  if [ ! $PID ]; then
        echo -e "${YEL}Tomcat Not Runing!${NOR}"
  else
        echo -e "${YEL}Tomcat is Runing! Tomcat Pid=$PID${NOR}"
        sleep 1
        echo -e "${RED} $PID${NOR}"
       # echo -e "${RED}Kill -9 $PID${NOR}"
       # sleep 1&& kill -9 $PID
     PID2=$(ps -ef |grep tomcat |grep -w tomcat_actmadm'/conf'|grep -v 'grep'|awk '{print $2}')
     if [ ! $PID2 ];then
     echo -e "${GRE}Kill Tomcat OK!${GRE}"
     else
     echo -e "${RED}Kill Tomcat Error!${NOR}"
        fi
  fi
fi
if [  "x${proj}" == "xsportsmwap"  ]
then
     PID=$(ps -ef |grep tomcat |grep -w tomcat_actmadm'/conf'|grep -v 'grep'|awk '{print $2}')
  if [ ! $PID ]; then
        echo -e "${YEL}Tomcat Not Runing!${NOR}"
  else
        echo -e "${YEL}Tomcat is Runing! Tomcat Pid=$PID${NOR}"
        sleep 1
        echo -e "${RED} $PID${NOR}"
       # echo -e "${RED}Kill -9 $PID${NOR}"
       # sleep 1&& kill -9 $PID
     PID2=$(ps -ef |grep tomcat |grep -w tomcat_actmadm'/conf'|grep -v 'grep'|awk '{print $2}')
     if [ ! $PID2 ];then
     echo -e "${GRE}Kill Tomcat OK!${GRE}"
     else
     echo -e "${RED}Kill Tomcat Error!${NOR}"
        fi
  fi
fi
if [  "x${proj}" == "xvenuemanage"  ]
then
     PID=$(ps -ef |grep tomcat |grep -w tomcat_actmadm'/conf'|grep -v 'grep'|awk '{print $2}')
  if [ ! $PID ]; then
        echo -e "${YEL}Tomcat Not Runing!${NOR}"
  else
        echo -e "${YEL}Tomcat is Runing! Tomcat Pid=$PID${NOR}"
        sleep 1
        echo -e "${RED} $PID${NOR}"
       # echo -e "${RED}Kill -9 $PID${NOR}"
       # sleep 1&& kill -9 $PID
     PID2=$(ps -ef |grep tomcat |grep -w tomcat_actmadm'/conf'|grep -v 'grep'|awk '{print $2}')
     if [ ! $PID2 ];then
     echo -e "${GRE}Kill Tomcat OK!${GRE}"
     else
     echo -e "${RED}Kill Tomcat Error!${NOR}"
        fi
  fi
fi
if [  "x${proj}" == "xactmapi"  ]
then
     PID=$(ps -ef |grep tomcat |grep -w tomcat_actmapi'/conf'|grep -v 'grep'|awk '{print $2}')
  if [ ! $PID ]; then
        echo -e "${YEL}Tomcat Not Runing!${NOR}"
  else
        echo -e "${YEL}Tomcat is Runing! Tomcat Pid=$PID${NOR}"
        sleep 1
        echo -e "${RED} $PID${NOR}"
       # echo -e "${RED}Kill -9 $PID${NOR}"
       # sleep 1&& kill -9 $PID
     PID2=$(ps -ef |grep tomcat |grep -w tomcat_actmapi'/conf'|grep -v 'grep'|awk '{print $2}')
     if [ ! $PID2 ];then
     echo -e "${GRE}Kill Tomcat OK!${GRE}"
     else
     echo -e "${RED}Kill Tomcat Error!${NOR}"
        fi
  fi
fi
if [  "x${proj}" == "xjklogic"  ]
then
     PID=$(ps -ef |grep tomcat |grep -w tomcat_jikai'/conf'|grep -v 'grep'|awk '{print $2}')
  if [ ! $PID ]; then
        echo -e "${YEL}Tomcat Not Runing!${NOR}"
  else
        echo -e "${YEL}Tomcat is Runing! Tomcat Pid=$PID${NOR}"
        sleep 1
        echo -e "${RED} $PID${NOR}"
       # echo -e "${RED}Kill -9 $PID${NOR}"
       # sleep 1&& kill -9 $PID
     PID2=$(ps -ef |grep tomcat |grep -w tomcat_jikai'/conf'|grep -v 'grep'|awk '{print $2}')
     if [ ! $PID2 ];then
     echo -e "${GRE}Kill Tomcat OK!${GRE}"
     else
     echo -e "${RED}Kill Tomcat Error!${NOR}"
        fi
  fi
fi
if [  "x${proj}" == "xwangyijikai"  ]
then
     PID=$(ps -ef |grep tomcat |grep -w tomcat_jikai'/conf'|grep -v 'grep'|awk '{print $2}')
  if [ ! $PID ]; then
        echo -e "${YEL}Tomcat Not Runing!${NOR}"
  else
        echo -e "${YEL}Tomcat is Runing! Tomcat Pid=$PID${NOR}"
        sleep 1
        echo -e "${RED} $PID${NOR}"
       # echo -e "${RED}Kill -9 $PID${NOR}"
       # sleep 1&& kill -9 $PID
     PID2=$(ps -ef |grep tomcat |grep -w tomcat_jikai'/conf'|grep -v 'grep'|awk '{print $2}')
     if [ ! $PID2 ];then
     echo -e "${GRE}Kill Tomcat OK!${GRE}"
     else
     echo -e "${RED}Kill Tomcat Error!${NOR}"
        fi
  fi
fi
if [  "x${proj}" == "xjkadm"  ]
then
     PID=$(ps -ef |grep tomcat |grep -w tomcat_jikaiweb'/conf'|grep -v 'grep'|awk '{print $2}')
  if [ ! $PID ]; then
        echo -e "${YEL}Tomcat Not Runing!${NOR}"
  else
        echo -e "${YEL}Tomcat is Runing! Tomcat Pid=$PID${NOR}"
        sleep 1
        echo -e "${RED} $PID${NOR}"
       # echo -e "${RED}Kill -9 $PID${NOR}"
       # sleep 1&& kill -9 $PID
     PID2=$(ps -ef |grep tomcat |grep -w tomcat_jikaiweb'/conf'|grep -v 'grep'|awk '{print $2}')
     if [ ! $PID2 ];then
     echo -e "${GRE}Kill Tomcat OK!${GRE}"
     else
     echo -e "${RED}Kill Tomcat Error!${NOR}"
        fi
  fi
fi
if [  "x${proj}" == "xvenstocks"  ]
then
     PID=$(ps -ef |grep tomcat |grep -w tomcat_venstocks'/conf'|grep -v 'grep'|awk '{print $2}')
  if [ ! $PID ]; then
        echo -e "${YEL}Tomcat Not Runing!${NOR}"
  else
        echo -e "${YEL}Tomcat is Runing! Tomcat Pid=$PID${NOR}"
        sleep 1
        echo -e "${RED} $PID${NOR}"
       # echo -e "${RED}Kill -9 $PID${NOR}"
       # sleep 1&& kill -9 $PID
     PID2=$(ps -ef |grep tomcat |grep -w tomcat_venstocks'/conf'|grep -v 'grep'|awk '{print $2}')
     if [ ! $PID2 ];then
     echo -e "${GRE}Kill Tomcat OK!${GRE}"
     else
     echo -e "${RED}Kill Tomcat Error!${NOR}"
        fi
  fi
fi
if [  "x${proj}" == "xventimerService"  ]
then
     PID=$(ps -ef |grep tomcat |grep -w tomcat_venstocks'/conf'|grep -v 'grep'|awk '{print $2}')
  if [ ! $PID ]; then
        echo -e "${YEL}Tomcat Not Runing!${NOR}"
  else
        echo -e "${YEL}Tomcat is Runing! Tomcat Pid=$PID${NOR}"
        sleep 1
        echo -e "${RED} $PID${NOR}"
       # echo -e "${RED}Kill -9 $PID${NOR}"
       # sleep 1&& kill -9 $PID
     PID2=$(ps -ef |grep tomcat |grep -w tomcat_venstocks'/conf'|grep -v 'grep'|awk '{print $2}')
     if [ ! $PID2 ];then
     echo -e "${GRE}Kill Tomcat OK!${GRE}"
     else
     echo -e "${RED}Kill Tomcat Error!${NOR}"
     exit 1
        fi
  fi
fi
;;
2)
	echo -e "${YEL}Input Number 2,Stop Tomcat!&Start Tomcat!Continue after 3 seconds${NOR}"
                for ((i=3;i>=1;i--))do
                echo -e "${YEL}$i seconds continue!${NOR}"
                sleep 1
                done
if [  "x${proj}" == "xactmadm"  ]
then
     PID=$(ps -ef |grep tomcat |grep -w tomcat_actmadm'/conf'|grep -v 'grep'|awk '{print $2}')
  if [ ! $PID ]; then
        echo -e "${YEL}Tomcat Not Runing!${NOR}"
  else
        echo -e "${YEL}Tomcat is Runing! Tomcat Pid=$PID${NOR}"
        sleep 1
        echo -e "${RED}Kill -9 $PID${NOR}"
        sleep 1&& kill -9 $PID
     PID2=$(ps -ef |grep tomcat |grep -w tomcat_actmadm'/conf'|grep -v 'grep'|awk '{print $2}')
     if [ ! $PID2 ];then
     echo -e "${GRE}Kill Tomcat OK!${GRE}"
     else
     echo -e "${RED}Kill Tomcat Error!${NOR}"
     exit 1
        fi
  fi
              sleep 1
   if  [  "x${proj}" == "xactmadm" ];then
   rm -rf /home/actmapi/tomcat_actmadm/webapps/$proj* && sleep 2 && /usr/bin/sshpass  -p $password  scp  -P   20022 admin@113.4.12.13:/home/admin/works/$proj/target/*.war  /home/actmapi/tomcat_actmadm/webapps
   if  [ ! -f "/home/actmapi/tomcat_actmadm/webapps/$proj.war" ];then
   echo -e "${YEL}$proj does not exist${NOR}"
   exit 1
   else
       echo -e "${GRE} SCP Successful ${NOR}"        
  fi
fi
	sh  /home/actmapi/tomcat_actmadm/bin/startup.sh && echo -e "${YEL} sleep 30s ${NOR}" && sleep 30
		fi

#	RUNPORT=$(netstat -ant|grep 8027|awk '{printf$4}'|awk -F ':::' '{printf$2}')
if [ ! $RUNPORT ]; then
	echo -e "${RED}tomcat port $RUNPORT run error${NOR}"
 else
	echo -e "${GRE}tomcat port $RUNPORT run ok${NOR}"
 fi

if [  "x${proj}" == "xsportsmwap"  ]
then
     PID=$(ps -ef |grep tomcat |grep -w tomcat_actmadm'/conf'|grep -v 'grep'|awk '{print $2}')
  if [ ! $PID ]; then
        echo -e "${YEL}Tomcat Not Runing!${NOR}"
  else
        echo -e "${YEL}Tomcat is Runing! Tomcat Pid=$PID${NOR}"
        sleep 1
        echo -e "${RED}Kill -9 $PID${NOR}"
        sleep 1&& kill -9 $PID
     PID2=$(ps -ef |grep tomcat |grep -w tomcat_actmadm'/conf'|grep -v 'grep'|awk '{print $2}')
     if [ ! $PID2 ];then
     echo -e "${GRE}Kill Tomcat OK!${GRE}"
     else
     echo -e "${RED}Kill Tomcat Error!${NOR}"
     exit 1
        fi
  fi
              sleep 1
   if  [  "x${proj}" == "xsportsmwap" ];then
   rm -rf /home/actmapi/tomcat_actmadm/webapps/$proj* && sleep 2 && /usr/bin/sshpass  -p $password  scp  -P   20022 admin@113.4.12.13:/home/admin/works/$proj/target/*.war  /home/actmapi/tomcat_actmadm/webapps
   if  [ ! -f /home/actmapi/tomcat_actmadm/webapps/$proj.war ];then
   echo -e "${YEL}$proj does not exist,Ready Create a directory CMP${NOR}"
   exit 1
   else
       echo -e "${GRE} SCP Successful ${NOR}"        
  fi
fi
        sh  /home/actmapi/tomcat_actmadm/bin/startup.sh && echo -e "${YEL} sleep 30s ${NOR}" && sleep 30
                fi

 #       RUNPORT=$(netstat -ant|grep 8027|awk '{printf$4}'|awk -F ':::' '{printf$2}')

 if [ ! $RUNPORT ]; then
        echo -e "${RED}tomcat port $RUNPORT run error${NOR}"
 else
        echo -e "${GRE}tomcat port $RUNPORT run ok${NOR}"
 fi

if [  "x${proj}" == "xvenuemanage"  ]
then
     PID=$(ps -ef |grep tomcat |grep -w tomcat_actmadm'/conf'|grep -v 'grep'|awk '{print $2}')
  if [ ! $PID ]; then
        echo -e "${YEL}Tomcat Not Runing!${NOR}"
  else
        echo -e "${YEL}Tomcat is Runing! Tomcat Pid=$PID${NOR}"
        sleep 1
        echo -e "${RED}Kill -9 $PID${NOR}"
        sleep 1&& kill -9 $PID
     PID2=$(ps -ef |grep tomcat |grep -w tomcat_actmadm'/conf'|grep -v 'grep'|awk '{print $2}')
     if [ ! $PID2 ];then
     echo -e "${GRE}Kill Tomcat OK!${GRE}"
     else
     echo -e "${RED}Kill Tomcat Error!${NOR}"
     exit 1
        fi
  fi
              sleep 1
   if  [  "x${proj}" == "xvenuemanage" ];then
   rm -rf /home/actmapi/tomcat_actmadm/webapps/$proj* && sleep 2 && /usr/bin/sshpass  -p $password  scp  -P   20022 admin@113.4.12.13:/home/admin/works/$proj/target/*.war  /home/actmapi/tomcat_actmadm/webapps
   if  [ ! -f /home/actmapi/tomcat_actmadm/webapps/venuesmanage.war ];then
   echo -e "${YEL}$proj does not exist,Ready Create a directory CMP${NOR}"
   exit 1
   else
       echo -e "${GRE} SCP Successful ${NOR}"        
  fi
fi
        sh  /home/actmapi/tomcat_actmadm/bin/startup.sh && echo -e "${YEL} sleep 30s ${NOR}" && sleep 30
                fi

  #      RUNPORT=$(netstat -ant|grep 8027|awk '{printf$4}'|awk -F ':::' '{printf$2}')

 if [ ! $RUNPORT ]; then
        echo -e "${RED}tomcat port $RUNPORT run error${NOR}"
 else
        echo -e "${GRE}tomcat port $RUNPORT run ok${NOR}"
 fi

if [  "x${proj}" == "xactmapi"  ]
then
     PID=$(ps -ef |grep tomcat |grep -w tomcat_actmapi'/conf'|grep -v 'grep'|awk '{print $2}')
  if [ ! $PID ]; then
        echo -e "${YEL}Tomcat Not Runing!${NOR}"
  else
        echo -e "${YEL}Tomcat is Runing! Tomcat Pid=$PID${NOR}"
        sleep 1
        echo -e "${RED}Kill -9 $PID${NOR}"
        sleep 1&& kill -9 $PID
     PID2=$(ps -ef |grep tomcat |grep -w tomcat_actmapi'/conf'|grep -v 'grep'|awk '{print $2}')
     if [ ! $PID2 ];then
     echo -e "${GRE}Kill Tomcat OK!${GRE}"
     else
     echo -e "${RED}Kill Tomcat Error!${NOR}"
     exit 1
        fi
  fi
              sleep 1
   if  [  "x${proj}" == "xactmapi" ];then
   rm -rf /home/actmapi/tomcat_actmapi/webapps/$proj* && sleep 2 && /usr/bin/sshpass  -p $password  scp  -P   20022 admin@113.4.12.13:/home/admin/works/$proj/target/*.war  /home/actmapi/tomcat_actmapi/webapps
   if  [ ! -f /home/actmapi/tomcat_actmapi/webapps/$proj.war ];then
   echo -e "${YEL}$proj does not exist ${NOR}"
   exit 1
   else
       echo -e "${GRE} SCP Successful ${NOR}"        
  fi
fi
        sh  /home/actmapi/tomcat_actmapi/bin/startup.sh && echo -e "${YEL} sleep 30s ${NOR}" && sleep 30
                fi

   #     RUNPORT=$(netstat -ant|grep 8026|awk '{printf$4}'|awk -F ':::' '{printf$2}')

 if [ ! $RUNPORT1 ]; then
        echo -e "${RED}tomcat port $RUNPORT1 run error${NOR}"
 else
        echo -e "${GRE}tomcat port $RUNPORT1 run ok${NOR}"
 fi

if [  "x${proj}" == "xjklogic"  ]
then
     PID=$(ps -ef |grep tomcat |grep -w tomcat_jikai'/conf'|grep -v 'grep'|awk '{print $2}')
  if [ ! $PID ]; then
        echo -e "${YEL}Tomcat Not Runing!${NOR}"
  else
        echo -e "${YEL}Tomcat is Runing! Tomcat Pid=$PID${NOR}"
        sleep 1
        echo -e "${RED}Kill -9 $PID${NOR}"
        sleep 1&& kill -9 $PID
     PID2=$(ps -ef |grep tomcat |grep -w tomcat_jikai'/conf'|grep -v 'grep'|awk '{print $2}')
     if [ ! $PID2 ];then
     echo -e "${GRE}Kill Tomcat OK!${GRE}"
     else
     echo -e "${RED}Kill Tomcat Error!${NOR}"
     exit 1
        fi
  fi
              sleep 1
   if  [  "x${proj}" == "xjklogic" ];then
   rm -rf /home/actmapi/tomcat_jikai/webapps/$proj* && sleep 2 && /usr/bin/sshpass  -p $password  scp  -P   20022 admin@113.4.12.13:/home/admin/works/$proj/target/*.war  /home/actmapi/tomcat_jikai/webapps
   if  [ ! -f /home/actmapi/tomcat_jikai/webapps/$proj.war ];then
   echo -e "${YEL}$proj does not exist ${NOR}"
   exit 1
   else
       echo -e "${GRE} SCP Successful ${NOR}"        
  fi
fi
        sh  /home/actmapi/tomcat_jikai/bin/startup.sh && echo -e "${YEL} sleep 30s ${NOR}" && sleep 30
                fi

   #     RUNPORT=$(netstat -ant|grep 8026|awk '{printf$4}'|awk -F ':::' '{printf$2}')

 if [ ! $RUNPORT1 ]; then
        echo -e "${RED}tomcat port $RUNPORT2 run error${NOR}"
 else
        echo -e "${GRE}tomcat port $RUNPORT2 run ok${NOR}"
 fi

if [  "x${proj}" == "xwangyijikai"  ]
then
     PID=$(ps -ef |grep tomcat |grep -w tomcat_jikai'/conf'|grep -v 'grep'|awk '{print $2}')
  if [ ! $PID ]; then
        echo -e "${YEL}Tomcat Not Runing!${NOR}"
  else
        echo -e "${YEL}Tomcat is Runing! Tomcat Pid=$PID${NOR}"
        sleep 1
        echo -e "${RED}Kill -9 $PID${NOR}"
        sleep 1&& kill -9 $PID
     PID2=$(ps -ef |grep tomcat |grep -w tomcat_jikai'/conf'|grep -v 'grep'|awk '{print $2}')
     if [ ! $PID2 ];then
     echo -e "${GRE}Kill Tomcat OK!${GRE}"
     else
     echo -e "${RED}Kill Tomcat Error!${NOR}"
     exit 1
        fi
  fi
              sleep 1
   if  [  "x${proj}" == "xwangyijikai" ];then
   rm -rf /home/actmapi/tomcat_jikai/webapps/wangyijikai* && sleep 2 && /usr/bin/sshpass  -p $password  scp  -P   20022 admin@113.4.12.13:/home/admin/works/jdjikai/target/*.war  /home/actmapi/tomcat_jikai/webapps && sleep 20 && mv /home/actmapi/tomcat_jikai/webapps/jdjikai.war /home/actmapi/tomcat_jikai/webapps/wangyijikai.war 
   if  [ ! -f /home/actmapi/tomcat_jikai/webapps/wangyijikai.war ];then
   echo -e "${YEL}$proj does not exist ${NOR}"
   exit 1
   else
       echo -e "${GRE} SCP Successful ${NOR}"        
  fi
fi
        sh  /home/actmapi/tomcat_jikai/bin/startup.sh && echo -e "${YEL} sleep 30s ${NOR}" && sleep 30
                fi

   #     RUNPORT=$(netstat -ant|grep 8026|awk '{printf$4}'|awk -F ':::' '{printf$2}')

 if [ ! $RUNPORT1 ]; then
        echo -e "${RED}tomcat port $RUNPORT2 run error${NOR}"
 else
        echo -e "${GRE}tomcat port $RUNPORT2 run ok${NOR}"
 fi




;;
*)
	echo -e "${RED}ERROR!please input 1 and 2!${NOR}"

;;
esac


