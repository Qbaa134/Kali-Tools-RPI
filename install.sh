#!/bin/bash

# Aktualizacja systemu
echo "Aktualizowanie systemu..."
sudo apt update && sudo apt upgrade -y

# Instalacja podstawowych narzędzi
echo "Instalowanie podstawowych narzędzi..."
sudo apt install -y \
    curl \
    git \
    vim \
    build-essential \
    python3-pip \
    python3-dev \
    libssl-dev \
    libpcap-dev \
    wireshark \
    nmap \
    dnsutils \
    netcat \
    openssh-server \
    sshpass \
    tcpdump \
    net-tools \
    iputils-ping \
    unzip \
    zip \
    tmux \
    screen \
    jq \
    wget \
    traceroute \
    htop

# Instalacja narzędzi do testów penetracyjnych
echo "Instalowanie narzędzi do testów penetracyjnych..."

sudo apt install -y \
    metasploit-framework \
    aircrack-ng \
    john \
    hydra \
    nikto \
    burpsuite \
    sqlmap \
    gobuster \
    wfuzz \
    enum4linux \
    responder \
    dnsrecon \
    sublist3r \
    dnsmap \
    crackmapexec \
    smbclient \
    dirb \
    dirbuster \
    iproute2 \
    netdiscover \
    ettercap-text-only \
    xhydra \
    mitmproxy \
    smbexec \
    pspy \
    setool3 \
    amass \
    wafw00f \
    zaproxy \
    msfvenom \
    gobuster \
    nuclei \
    dnschef \
    evil-winrm

# Instalacja narzędzi do analizy sieci
echo "Instalowanie narzędzi do analizy sieci..."
sudo apt install -y \
    wireshark \
    tcpdump \
    ncat \
    snort \
    tshark \
    scapy \
    ettercap \
    mitmproxy \
    dsniff

# Instalacja narzędzi do inżynierii wstecznej i exploitacji
echo "Instalowanie narzędzi do inżynierii wstecznej..."
sudo apt install -y \
    gdb \
    radare2 \
    binwalk \
    pwndbg \
    ltrace \
    strace \
    vol.py

# Instalacja dodatkowych narzędzi do exploitacji i manipulacji
echo "Instalowanie narzędzi do exploitacji i manipulacji..."
sudo apt install -y \
    p0f \
    metasploit-framework \
    python3-scapy \
    mtr \
    socat

# Zainstaluj dodatkowe zależności
echo "Instalowanie dodatkowych zależności..."
sudo apt install -y \
    libssl-dev \
    libffi-dev \
    libpcap-dev \
    libusb-1.0-0-dev

# Instalacja i konfiguracja Python3
echo "Instalowanie Pythona i pip3..."
sudo apt install -y python3 python3-pip

# Instalacja pakietów Pythona (jeśli potrzebujesz)
echo "Instalowanie pakietów Pythona..."
pip3 install requests scapy beautifulsoup4 selenium

# Zakończenie instalacji
echo "Instalacja zakończona. Wszystkie narzędzia zostały zainstalowane!"
