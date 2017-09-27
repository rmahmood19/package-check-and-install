#!/bin/bash
#"Author : Reaz Mahmood"        
# Website: http://rmahmood.tech
if [ $# -eq 0 ] ; then
 echo " Please provide a package name as parameter."
 echo " Usage Example : $0 foo1"
 exit 2
fi
for i in $* ; do
{
        if rpm -q --quiet $i 2>&1 > /dev/null ; then
                echo -e "\033[31m$i\033[0m Already installed"
        else
                yum -y install $i
        fi
}
done
exit 0
~       
