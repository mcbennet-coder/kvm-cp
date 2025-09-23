# KVM CP
KVM CONTROL PANEL - is the simple bash script for managing KVM (Kernel-based Virtual Machine) modules in Linux.

## Description of script

The script provides an interactive menu for checking the status, enabling and disabling KVM on your system, and checking whether kernels are loaded. KVM enables hardware virtualization on Linux systems.

## Script functions
- Checking the status of KVM modules
- Enabling KVM (with automatic detection of the processor type: Intel or AMD)
- Disabling KVM
- Intuitive text interface

## Requirements
- Operating system on Linux kernel based.
- Superuser access (sudo) or root.
- Hardware virtualization support (VT-x/AMD-V)

## DISCLAIMER
THIS SOFTWARE IS PROVIDED "AS IS," WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND NON-INFRINGEMENT OF THIRD-PARTY RIGHTS.

IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY CLAIM, DAMAGES, OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT, OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE USE OF OR
ACTIONS RELATED TO THE SOFTWARE.

BY USING THIS SOFTWARE, YOU ACKNOWLEDGE THAT:

1. YOUR USE OF THIS SOFTWARE IS AT YOUR SOLE RISK.

2. THE AUTHOR IS NOT RESPONSIBLE FOR ANY SYSTEM DAMAGE, DATA LOSS, OR OTHER PROBLEMS THAT MAY ARISE.

3. YOU ARE SOLELY RESPONSIBLE FOR ANY CHANGES MADE TO YOUR SYSTEM.

4. THIS SOFTWARE MAY AFFECT SYSTEM STABILITY AND SECURITY.

This tool modifies kernel modules and requires root privileges. Improper use may result in system instability or disruption of virtualization functionality.

## Install
- Download the kvmcp.sh file and give it the execute attributes (executable file) and you can use the script. For convenient use, you can drop it on your desktop.
