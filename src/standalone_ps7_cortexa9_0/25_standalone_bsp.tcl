# This script will create a standalone domain for a processor and its architecture
# Workspace should be set externally

set script [info script] 
set script_dir [file normalize [file dirname $script]]

puts "INFO: Running $script"

set domain_name [file tail $script_dir]

# Modify these for custom domain/BSP settings

set os "standalone"
set proc "ps7_cortexa9_0"
set keep_boot_domain "1"

# Destination platform needs to be made active first
platform active "system_wrapper"

domain create -name $domain_name -proc $proc -os $os

if {$keep_boot_domain == 1} {
	platform config -create-boot-bsp
	platform write
}

# Customize BSP, this replaces *.mss file
bsp config clocking "false"
bsp config enable_sw_intrusive_profiling "false"
bsp config hypervisor_guest "false"
bsp config lockstep_mode_debug "false"
bsp config microblaze_exceptions "false"
bsp config predecode_fpu_exceptions "false"
bsp config profile_timer "none"
bsp config sleep_timer "none"
bsp config stdin "ps7_uart_1"
bsp config stdout "ps7_uart_1"
bsp config ttc_select_cntr "2"
bsp config xil_interrupt "false"
bsp config zynqmp_fsbl_bsp "false"
bsp config archiver "arm-none-eabi-ar"
bsp config assembler "arm-none-eabi-as"
bsp config compiler "arm-none-eabi-gcc"
bsp config compiler_flags "-O2 -c"
bsp config dependency_flags "-MMD -MP"
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns"
