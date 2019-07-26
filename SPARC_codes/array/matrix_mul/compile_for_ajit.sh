genVmapAsm vmap.txt setup_page_tables.s
compileToSparc.py -I /usr/include -I ./ -o 0 -s init.s -s setup_page_tables.s  -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -I $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/include -C $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/src -C $AJIT_TOOLS_RELEASE/tools/minimal_printf_timer/src -I $AJIT_TOOLS_RELEASE/tools/minimal_printf_timer/include -s matrix_mul.s -E matrix_mul.elf -V matrix_mul.vars -H matrix_mul.hex -M matrix_mul.mmap -O matrix_mul.objdump  -L LinkerScript.lnk  -D AJIT
echo "\nREADELF\n"
sparc-linux-readelf  --hex-dump=1 --hex-dump=2 --hex-dump=3  --hex-dump=.bss matrix_mul.elf | grep 0x > matrix_mul.hex 
generateMemoryMap_Byte matrix_mul.hex > matrix_mul.mmap
remapMemmap vmap.txt matrix_mul.mmap matrix_mul.mmap.remapped
