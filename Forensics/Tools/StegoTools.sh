#!/bin/bash
#This Script For Installing Almost All StgoTools You Need in CTF 

### steghide  ###
apt-get install steghide > /dev/null 2>&1
echo -e "\e[36m[*] \e[92msteghide installed successfully"

### stegcracker ###
apt-get install steghide -y > /dev/null 2>&1
pip3 install stegcracker -U --force-reinstall > /dev/null 2>&1
echo -e "\e[36m[*] \e[92mstegcracker installed successfully"

### segsnow ###
apt-get install stegsnow > /dev/null 2>&1
echo -e "\e[36m[*] \e[92mstegsnow installed successfully"
### snowcracker ###
#!/bin/bash
wget -q -O /usr/bin/snowcracker https://raw.githubusercontent.com/0xMohammed/SnowCracker/master/snowcracker.py
apt-get install dos2unix > /dev/null 2>&1
chmod a+x /usr/bin/snowcracker && dos2unix /usr/bin/snowcracker > /dev/null 2>&1
echo -e "\e[36m[*] \e[92msnowcracker installed successfully"

### stegify ###
#!/bin/bash
go get -u github.com/DimitarPetrov/stegify
echo -e "\e[36m[*] \e[92mstegify installed successfully"

### openpuff ###
#!/bin/bash
apt install wine > /dev/null 2>&1
set -e
rm -r /opt/openpuff > /dev/null 2>&1 ; wget -q -O /tmp/openpuff.zip http://embeddedsw.net/zip/OpenPuff_release.zip
unzip /tmp/openpuff.zip -d /opt/openpuff > /dev/null 2>&1
rm /tmp/openpuff.zip

cat << EOF > /usr/bin/openpuff
#!/bin/bash
wine /opt/openpuff/OpenPuff_release/OpenPuff.exe \$@
EOF
chmod +x /usr/bin/openpuff
echo -e "\e[36m[*] \e[92mopenpuff installed successfully"

### mp3stego ###
#!/bin/bash
set -e

wget -q -O /tmp/mp3stego.zip http://www.petitcolas.net/fabien/software/MP3Stego_1_1_18.zip
rm -r /opt/mp3stego > /dev/null 2>&1 ; unzip /tmp/mp3stego.zip -d /opt/mp3stego  > /dev/null 2>&1 
rm /tmp/mp3stego.zip

cat << EOF > /usr/bin/mp3stego-decode
#!/bin/sh
cd /opt/mp3stego/MP3Stego_1_1_18/MP3Stego/
wine /opt/mp3stego/MP3Stego_1_1_18/MP3Stego/Decode.exe \$@
EOF
chmod +x /usr/bin/mp3stego-decode

cat << EOF > /usr/bin/mp3stego-encode
#!/bin/sh
wine /opt/mp3stego/MP3Stego_1_1_18/MP3Stego/Encode.exe \$@
EOF
chmod +x /usr/bin/mp3stego-encode 
echo -e "\e[36m[*] \e[92mmp3stego installed successfully"

### outguess ###

set -e

wget -q -O /usr/bin/outguess-0.13 https://github.com/mmayfield1/SSAK/raw/master/programs/64/outguess_0.13
chmod +x /usr/bin/outguess-0.13
echo -e "\e[36m[*] \e[92moutguess installed successfully"

### openstego ###
#!/bin/bash

set -e
wget -q -O /tmp/openstego.deb https://github.com/syvaidya/openstego/releases/download/openstego-0.7.4/openstego_0.7.4-1_amd64.deb
dpkg -i /tmp/openstego.deb > /dev/null 2>&1 || apt-get install -f -y > /dev/null 2>&1
rm /tmp/openstego.deb
cat << EOF > /usr/bin/openstego
#!/bin/sh
java -jar /usr/share/openstego/lib/openstego.jar \$@  
EOF
chmod +x /usr/bin/openstego
echo -e "\e[36m[*] \e[92mopenstego installed successfully"
### jsteg ###
#!/bin/bash

set -e

wget -q -O /usr/bin/jsteg https://github.com/lukechampine/jsteg/releases/download/v0.1.0/jsteg-linux-amd64
chmod +x /usr/bin/jsteg

wget -q -O /usr/bin/slink https://github.com/lukechampine/jsteg/releases/download/v0.2.0/slink-linux-amd64
chmod +x /usr/bin/slink
echo -e "\e[36m[*] \e[92mjsteg installed successfully"

### zsteg ###
#!/bin/bash

set -e

apt-get install -y ruby-dev > /dev/null 2>&1
gem install rake > /dev/null 2>&1
gem install zsteg > /dev/null 2>&1
echo -e "\e[36m[*] \e[92mzsteg installed successfully"

### stegsolve ###
#!/bin/bash

set -e

wget -q -O /opt/Stegsolve.jar http://www.caesum.com/handbook/Stegsolve.jar

cat << EOF > /usr/bin/stegsolve
#!/bin/sh
java -jar /opt/Stegsolve.jar \$@  > /dev/null 2>&1
EOF
chmod +x /usr/bin/stegsolve

echo -e "\e[36m[*] \e[92mstegsolve installed successfully"
### jphide ### 

#!/bin/bash

set -e

wget -q -O /usr/bin/jphide https://github.com/mmayfield1/SSAK/raw/master/programs/64/jphide
chmod +x /usr/bin/jphide

wget -q -O /usr/bin/jpseek https://github.com/mmayfield1/SSAK/raw/master/programs/64/jpseek
chmod +x /usr/bin/jpseek

echo -e "\e[36m[*] \e[92mjphide installed successfully"

### stegdetect ###
#!/bin/bash

set -e

wget -q -O /tmp/stegdetect.deb http://old-releases.ubuntu.com/ubuntu/pool/universe/s/stegdetect/stegdetect_0.6-6_amd64.deb

dpkg -i /tmp/stegdetect.deb > /dev/null 2>&1 ; apt-get install -f -y > /dev/null 2>&1
rm /tmp/stegdetect.deb

echo -e "\e[36m[*] \e[92mstegdetect installed successfully"

### hexyl ###
#!/bin/bash

set -e

wget -q -O /tmp/hexyl.dev https://github.com/sharkdp/hexyl/releases/download/v0.4.0/hexyl_0.4.0_amd64.deb
dpkg -i /tmp/hexyl.dev > /dev/null 2>&1

echo -e "\e[36m[*] \e[92mhexyl installed successfully"

### steganabara ###
#!/bin/bash

set -e

wget -q -O /tmp/steganabara.tar.gz http://www.caesum.com/handbook/steganabara-1.1.1.tar.gz

mkdir -p /opt/steganabara
tar -xf /tmp/steganabara.tar.gz -C /opt/steganabara  
rm /tmp/steganabara.tar.gz

cat <<END > /usr/bin/steganabara
#!/bin/bash 
java -cp /opt/steganabara/Steganabara/bin steganabara.Steganabara 
END
chmod 755 /usr/bin/steganabara

echo -e "\e[36m[*] \e[92msteganabara installed successfully"

## stegpy ###

#!/bin/bash

set -e
pip3 install stegpy > /dev/null 2>&1
echo -e "\e[36m[*] \e[92mstegpy installed successfully"  

### spectrology ###
#!/bin/bash

set -e

rm -r /opt/spectrology > /dev/null 2>&1 ; git clone https://github.com/solusipse/spectrology.git /opt/spectrology > /dev/null 2>&1
rm /usr/bin/spectrology > /dev/null 2>&1 ; ln -s /opt/spectrology/spectrology.py /usr/bin/spectrology 

echo -e "\e[36m[*] \e[92mspectrology installed successfully" 

### stegoVeritas ###
#!/bin/bash

set -e

pip3 install stegoveritas > /dev/null 2>&1
stegoveritas_install_deps > /dev/null 2>&1
echo -e "\e[36m[*] \e[92mstegoVeritas installed successfully"



