#!/bin/bash

# Aktualizacja systemu
echo "Aktualizowanie systemu..."
sudo apt update && sudo apt upgrade -y
read -p "Naciśnij Enter, aby kontynuować..."

# Instalacja podstawowych narzędzi
echo "Instalowanie narzędzi: curl..."
sudo apt install -y curl
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi: git..."
sudo apt install -y git
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi: vim..."
sudo apt install -y vim
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi: build-essential..."
sudo apt install -y build-essential
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi: python3-pip..."
sudo apt install -y python3-pip
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi: python3-dev..."
sudo apt install -y python3-dev
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi: libssl-dev..."
sudo apt install -y libssl-dev
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi: libpcap-dev..."
sudo apt install -y libpcap-dev
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi: wireshark..."
sudo apt install -y wireshark
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi: nmap..."
sudo apt install -y nmap
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi: dnsutils..."
sudo apt install -y dnsutils
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi: netcat..."
sudo apt install -y netcat
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi: openssh-server..."
sudo apt install -y openssh-server
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi: sshpass..."
sudo apt install -y sshpass
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi: tcpdump..."
sudo apt install -y tcpdump
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi: net-tools..."
sudo apt install -y net-tools
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi: iputils-ping..."
sudo apt install -y iputils-ping
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi: unzip..."
sudo apt install -y unzip
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi: zip..."
sudo apt install -y zip
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi: tmux..."
sudo apt install -y tmux
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi: screen..."
sudo apt install -y screen
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi: jq..."
sudo apt install -y jq
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi: wget..."
sudo apt install -y wget
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi: traceroute..."
sudo apt install -y traceroute
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi: htop..."
sudo apt install -y htop
read -p "Naciśnij Enter, aby kontynuować..."

# Instalacja narzędzi do testów penetracyjnych
echo "Instalowanie narzędzi do testów penetracyjnych: metasploit-framework..."
sudo apt install -y metasploit-framework
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: aircrack-ng..."
sudo apt install -y aircrack-ng
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: john..."
sudo apt install -y john
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: hydra..."
sudo apt install -y hydra
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: nikto..."
sudo apt install -y nikto
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: burpsuite..."
sudo apt install -y burpsuite
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: sqlmap..."
sudo apt install -y sqlmap
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: gobuster..."
sudo apt install -y gobuster
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: wfuzz..."
sudo apt install -y wfuzz
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: enum4linux..."
sudo apt install -y enum4linux
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: responder..."
sudo apt install -y responder
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: dnsrecon..."
sudo apt install -y dnsrecon
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: sublist3r..."
sudo apt install -y sublist3r
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: dnsmap..."
sudo apt install -y dnsmap
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: crackmapexec..."
sudo apt install -y crackmapexec
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: smbclient..."
sudo apt install -y smbclient
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: dirb..."
sudo apt install -y dirb
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: dirbuster..."
sudo apt install -y dirbuster
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: iproute2..."
sudo apt install -y iproute2
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: netdiscover..."
sudo apt install -y netdiscover
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: ettercap-text-only..."
sudo apt install -y ettercap-text-only
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: xhydra..."
sudo apt install -y xhydra
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: mitmproxy..."
sudo apt install -y mitmproxy
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: smbexec..."
sudo apt install -y smbexec
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: pspy..."
sudo apt install -y pspy
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: setool3..."
sudo apt install -y setool3
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: amass..."
sudo apt install -y amass
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: wafw00f..."
sudo apt install -y wafw00f
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie narzędzi do testów penetracyjnych: ffuf..."
sudo apt install -y ffuf
read -p "Naciśnij Enter, aby kontynuować..."

# Instalacja pakietów Pythona
echo "Instalowanie pakietów Pythona: requests..."
apt install python3-requests
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie pakietów Pythona: scapy..."
apt install python3-scapy
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie pakietów Pythona: beautifulsoup4..."
apt install python3-beautifulsoup4
read -p "Naciśnij Enter, aby kontynuować..."

echo "Instalowanie pakietów Pythona: selenium..."
apt install python3-selenium
read -p "Naciśnij Enter, aby kontynuować..."

# Zakończenie instalacji
echo "Instalacja zakończona. Wszystkie narzędzia zostały zainstalowane!"
