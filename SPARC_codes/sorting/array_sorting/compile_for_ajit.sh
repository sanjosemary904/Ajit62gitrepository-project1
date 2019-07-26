genVmapAsm vmap.txt setup_page_tables.s
compileToSparc.py -g -I /usr/include -I ./ -s init.s -s setup_page_tables.s  -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -I $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/include -C $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/src -C $AJIT_TOOLS_RELEASE/tools/minimal_printf_timer/src -I $AJIT_TOOLS_RELEASE/tools/minimal_printf_timer/include -s array_sorting.s -E array_sorting.elf -V array_sorting.vars -H array_sorting.hex -M array_sorting.mmap -O array_sorting.objdump  -L LinkerScript.lnk  -D AJIT
echo "\nREADELF\n"
sparc-linux-readelf  --hex-dump=1 --hex-dump=2 --hex-dump=3  --hex-dump=.bss array_sorting.elf | grep 0x > array_sorting.hex 
generateMemoryMap_Byte array_sorting.hex > array_sorting.mmap
remapMemmap vmap.txt array_sorting.mmap array_sorting.mmap.remapped
