#!/bin/bash
myhash(){
	username=$1
	hashsum=0
	seed=66
	
	for (( i=1; i<= 10; i++ ))
	do 
		username=${username}$1
	done
	
	for (( i=1; i<= `expr length ${username}`; i++ ))
	do
		chr=`expr substr ${username} ${i} 1`
		val=`echo -n ${chr} | od -An -td`
		hashsum=`expr ${hashsum} \*  ${seed} + ${val}`		
	done
	
	echo `expr ${hashsum} % 65535`
}

date_time=`date "+%Y-%m-%d"`
log_file="${date_time}.log"

echo "[*] Changing user ID" | tee -a ${log_file}

for user in david dklv xdd zxh yuzh cjch fsch clsong ywen qzzh lysong xlzh 
do
	uid=`myhash ${user}`
	echo "${user} new ID : ${uid}"
	usermod -u $uid $user >> ${log_file} 2>&1
	echo "------------------"
done

echo `date`     | tee -a ${log_file}
echo "[*] Done" | tee -a ${log_file}
