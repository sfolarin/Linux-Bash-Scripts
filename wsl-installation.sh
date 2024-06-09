#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${GREEN}************************************************************************************************${NC}"
echo -e "*                 ${RED} Author: Shola Folarin ${NC}                                                        *"
echo -e "*                 ${RED} Date:   06/08/2024 ${NC}                                                           *"
echo -e "*  ${RED}Purpose: The purpose of this script is to install Window for subsystems linux (WSL)${NC}           *"
echo -e "*  ${RED}Usage: You have to run as an administrator user on PowerShell using: wsl bash script.sh${NC}       *"
echo -e "${GREEN}************************************************************************************************${NC}" 
echo ""

echo ""
echo -e "${GREEN}Step 1 - Enable the Windows Subsystem for Linux${NC}"
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
echo ""
echo -e "${GREEN}Step 2 - Check requirements for running WSL 2${NC}"
echo "To update to WSL 2, you must be running Windows 10..."
echo "To check your version and build number, select Windows logo key + R, type winver, select OK"
echo ""
echo -e "${GREEN}Step 3 - Enable Virtual Machine feature${NC}"
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
echo ""
echo "Restart your machine to complete the WSL install and update to WSL 2."
echo ""
echo -e "${GREEN}Step 4 - Download the Linux kernel update package${NC}"
echo ""
echo "copy this on google to download: WSL2 Linux kernel update package for x64 machines"
echo ""
echo " If you're not sure what kind of machine you have, open Command Prompt or PowerShell and enter: systeminfo | find 'System Type'"
echo ""
echo "Run the update package downloaded in the previous step. (Double-click to run)"
echo ""
echo -e "${GREEN}Step 5 - Set WSL 2 as your default version${NC}"
echo ""
wsl --set-default-version 2

echo -e "${RED}NAME                                   FRIENDLY NAME ${NC}"
echo -e "${GREEN}Install a Linux distribution (e.g., Ubuntu)${NC}"
echo -e "${GREEN}Replace 'Ubuntu' with your preferred distribution${NC}"
echo -e "${RED}"
echo -e "${BLUE}Pick from the following options ${NC}"
echo -e "${BLUE}Ubuntu                         Ubuntu ${NC}"
echo -e "${BLUE}Debian                         Debian GNU/Linux ${NC}"
echo -e "${BLUE}kali-linux                     Kali Linux Rolling ${NC}"
echo -e "${BLUE}Ubuntu-18.04                   Ubuntu 18.04 LTS ${NC}"
echo -e "${BLUE}Ubuntu-20.04                   Ubuntu 20.04 LTS ${NC}"
echo -e "${BLUE}Ubuntu-22.04                   Ubuntu 22.04 LTS ${NC}"
echo -e "${BLUE}Ubuntu-24.04                   Ubuntu 24.04 LTS ${NC}"
echo -e "${BLUE}OracleLinux_7_9                Oracle Linux 7.9 ${NC}"
echo -e "${BLUE}OracleLinux_8_7                Oracle Linux 8.7 ${NC}"
echo -e "${BLUE}OracleLinux_9_1                Oracle Linux 9.1 ${NC}"
echo -e "${BLUE}openSUSE-Leap-15.5             openSUSE Leap 15.5 ${NC}"
echo -e "${BLUE}SUSE-Linux-Enterprise-Server-15-SP4    SUSE Linux Enterprise Server 15 SP4 ${NC}"
echo -e "${BLUE}SUSE-Linux-Enterprise-15-SP5           SUSE Linux Enterprise 15 SP5 ${NC}"
echo -e "${BLUE}openSUSE-Tumbleweed                    openSUSE Tumbleweed ${NC}"

wsl --install -d Ubuntu-22.04

echo -e "${GREEN}WSL installation completed. Please restart your computer to apply changes.${NC}"


