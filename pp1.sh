#!/bin/bash
validator(){
curlna=`curl 'https://www.paypal.com/kr/signup/account?country.x=KR&locale.x=ko_KR&Z3JncnB0=' -H "User-Agent: Mozilla/5.0 (Windows NT 6.1; rv:62.0) Gecko/20100101 Firefox/62.0" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8" -H "Accept-Language: id,en-US;q=0.7,en;q=0.3" --compressed -H "Referer: https://www.paypal.com/kr/signup/account?country.x=KR&locale.x=ko_KR&Z3JncnB0=" -H "Content-Type: application/x-www-form-urlencoded" -H "Cookie: cookie_check=yes; tsrce=consonbdnodeweb; ts=vreXpYrS"%"3D1632250069"%"26vteXpYrS"%"3D1537557469"%"26vr"%"3Dfd58c30e1650a0e66f93ff2dffffb671"%"26vt"%"3Dfd58c3221650a0e66f93ff2dffffb670; x-pp-s=eyJ0IjoiMTUzNzU1NTY4MzY1NSIsIm0iOiIwIn0; nsid=s"%"3AKa_mouCUXytdV0UgsbzIY8sUmhzZx2NN.zicHitaaGDB8QCGcgofqyvOpGxwcCspESgc2uFu9fK4; X-PP-SILOVER=name"%"3DLIVE6.WEB.1"%"26silo_version"%"3D880"%"26app"%"3Dconsonbdnodeweb"%"26TIME"%"3D3812402523"%"26HTTP_X_PP_AZ_LOCATOR"%"3Ddcg13.slc; akavpau_ppsd=1537556283~id=00f68ecf5247bfac27fd1a8f5b2d1ef3; 44907=; LANG=ko_KR"%"3BKR; AKDC=slc-b-origin-www-2.paypal.com; htdebug=; tcs=main"%"3Aonbrd"%"3Aorganic"%"3Asignup"%"3Aaccount"%"7C_eventId_personal" -H "DNT: 1" -H "Connection: keep-alive" -H "Upgrade-Insecure-Requests: 1" -H "TE: Trailers" --data "_csrf=CsNFrVrOxtYXLDUHRBqHKcMW9uPqoEikOCfsc"%"3D&country=KR&email=$1&password=Rizky1997&confirmPassword=Rizky1997&bp_mid=v"%"3D1"%"3Ba1"%"3Dna"%"7Ea2"%"3Dna"%"7Ea3"%"3Dna"%"7Ea4"%"3DMozilla"%"7Ea5"%"3DNetscape"%"7Ea6"%"3D5.0+"%"28Windows"%"29"%"7Ea7"%"3D20100101"%"7Ea8"%"3Dna"%"7Ea9"%"3Dtrue"%"7Ea10"%"3DWindows+NT+6.1"%"7Ea11"%"3Dtrue"%"7Ea12"%"3DWin32"%"7Ea13"%"3Dna"%"7Ea14"%"3DMozilla"%"2F5.0+"%"28Windows+NT+6.1"%"3B+rv"%"3A62.0"%"29+Gecko"%"2F20100101+Firefox"%"2F62.0"%"7Ea15"%"3Dfalse"%"7Ea16"%"3Did"%"7Ea17"%"3Dna"%"7Ea18"%"3Dwww.paypal.com"%"7Ea19"%"3Dna"%"7Ea20"%"3Dna"%"7Ea21"%"3Dna"%"7Ea22"%"3Dna"%"7Ea23"%"3D1366"%"7Ea24"%"3D768"%"7Ea25"%"3D24"%"7Ea26"%"3D728"%"7Ea27"%"3Dna"%"7Ea28"%"3DSat+Sep+22+2018+01"%"3A47"%"3A50+GMT"%"2B0700+"%"28SE+Asia+Standard+Time"%"29"%"7Ea29"%"3D7"%"7Ea30"%"3Dna"%"7Ea31"%"3Dyes"%"7Ea32"%"3Dna"%"7Ea33"%"3Dyes"%"7Ea34"%"3Dno"%"7Ea35"%"3Dno"%"7Ea36"%"3Dyes"%"7Ea37"%"3Dno"%"7Ea38"%"3Donline"%"7Ea39"%"3Dno"%"7Ea40"%"3DWindows+NT+6.1"%"7Ea41"%"3Dno"%"7Ea42"%"3Dno"%"7E&bp_ks1=v"%"3D1"%"3Bl"%"3D9"%"3BDi0"%"3A16116Ui0"%"3A92Di1"%"3A490Di2"%"3A90Ui1"%"3A15Ui2"%"3A95Di3"%"3A6Ui3"%"3A120Di4"%"3A166Ui4"%"3A79Di5"%"3A187Ui5"%"3A134Di6"%"3A131Ui6"%"3A79Di7"%"3A71Ui7"%"3A95Di8"%"3A131Ui8"%"3A113&bp_ks2=&bp_ks3=" --compressed -s` #kita lakukan curlnya
if [[ $curlna =~ "이미 PayPal 계정을 가지고 있는 것으로 보입니다" ]]; then
	printf "[$1] LIVE => $1 \n"
else
	printf "[$1] DIE => $1 \n"
fi
}
echo ""
echo "List In This Directory : "
ls
echo "Delimeter List -> email"
echo -n "Masukan File List : "
read list
if [ ! -f $list ]; then
	echo "$list No Such File"
exit
fi
	x=$(gawk '{ print $1 }' $list) #variable
	IFS=$'\r\n' GLOBIGNORE='*' command eval  'emailna=($x)' #untuk membaca variable x
for (( i = 0; i < "${#emailna[@]}"; i++ )); do
		mail1="${emailna[$i]}"
		validator $mail1
done