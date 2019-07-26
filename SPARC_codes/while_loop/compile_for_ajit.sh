genVmapAsm vmap.txt setup_page_tables.s
compileToSparc.py -I /usr/include -I ./ -o 0 -s init.s -s setup_page_tables.s  -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -I $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/include -C $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/src -C $AJIT_TOOLS_RELEASE/tools/minimal_printf_timer/src -I $AJIT_TOOLS_RELEASE/tools/minimal_printf_timer/include -s while.s -E while.elf -V while.vars -H while.hex -M while.mmap -O while.objdump  -L LinkerScript.lnk  -D AJIT
echo "\nREADELF\n"
sparc-linux-readelf  --hex-dump=1 --hex-dump=2 --hex-dump=3  --hex-dump=.bss while.elf | grep 0x > while.hex 
generateMemoryMap_Byte while.hex > while.mmap
remapMemmap vmap.txt while.mmap while.mmap.remapped
