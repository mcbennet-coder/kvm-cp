#!/bin/bash

#TITLE OF PROGRAM
title="KVM C.P."
printf "\033]0;%s\007" "$title"


# DISCLAIMER
echo "================================================================================"
echo "                               DISCLAIMER"
echo "================================================================================"
echo "THIS SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR"
echo "IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,"
echo "FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT."
echo ""
echo "IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER"
echo "LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,"
echo "OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN"
echo "THE SOFTWARE."
echo ""
echo "BY USING THIS SOFTWARE, YOU ACKNOWLEDGE THAT:"
echo "1. YOU ARE USING THIS SOFTWARE AT YOUR OWN RISK"
echo "2. THE AUTHOR IS NOT RESPONSIBLE FOR ANY SYSTEM DAMAGE, DATA LOSS, OR"
echo "   OTHER ISSUES THAT MAY OCCUR"
echo "3. YOU ARE SOLELY RESPONSIBLE FOR ANY CHANGES MADE TO YOUR SYSTEM"
echo "4. THIS SOFTWARE MAY AFFECT SYSTEM STABILITY AND SECURITY"
echo ""
echo "This tool modifies kernel modules and requires root privileges."
echo "Improper use may cause system instability or break virtualization functionality."
echo "================================================================================"
echo ""

# Ask for confirmation
read -p "Do you accept the risks and want to continue? (y/N): " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Operation cancelled."
    exit 1
fi

clear

show_menu() {
    echo "KVM CONTROL PANEL"
    echo "Version 1.0"
    echo "Made by McBennet"
    echo ""
    echo "Menu"
    echo "1. Check KVM"
    echo "2. Enable KVM"
    echo "3. Disable KVM"
    echo "4. Exit"
}

while true; do
    show_menu
    echo -n "Enter your choice: "
    read choice
    
    case $choice in
        1)
            clear
            echo "Check KVM:"
            lsmod | grep kvm
            echo " "
            echo "[IF INPUT IS EMPTY THAT KVM IS DISABLED]"
            read -p "Press Enter to return to menu..."
            clear
            ;;
        2)
            clear
            echo "Enable KVM:"
            sudo modprobe kvm 2>/dev/null
            if grep -q "vmx" /proc/cpuinfo; then
                sudo modprobe kvm_intel 2>/dev/null
            elif grep -q "svm" /proc/cpuinfo; then
                sudo modprobe kvm_amd 2>/dev/null
            fi
            echo "KVM modules loaded"
            clear
            ;;
        3)
            clear
            echo "Disable KVM (need sudo or root)"
            sudo modprobe -r kvm_intel kvm_amd kvm 2>/dev/null
            echo "KVM disabled"
            clear
            ;;

        4)
            echo "Exiting..."
            exit 0
            ;;
        *)
            clear
            echo "Invalid choice. Please select 1-4."
            sleep 5
            clear
            ;;
    esac
    
    echo
    sleep 2
    clear
done