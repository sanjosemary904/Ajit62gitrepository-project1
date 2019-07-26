compileToSparc.py -I /usr/include -I ./ -s init.s -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -s sum_N_numbers.s -E sum_N_numbers.elf -V sum_N_numbers.vars -H sum_N_numbers.hex -M sum_N_numbers.mmap -O sum_N_numbers.objdump  -L LinkerScript.lnk  -D AJIT
echo "READELF"
generateMemoryMap_Byte sum_N_numbers.hex > sum_N_numbers.mmap
