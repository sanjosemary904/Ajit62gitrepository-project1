genVmapAsm vmap.txt setup_page_tables.s
compileToSparc.py -I /usr/include -I ./ -o 0 -s init.s -s setup_page_tables.s  -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -I $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/include -C $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/src -C $AJIT_TOOLS_RELEASE/tools/minimal_printf_timer/src -I $AJIT_TOOLS_RELEASE/tools/minimal_printf_timer/include -s slld_srld.s -E slld_srld.elf -V slld_srld.vars -H slld_srld.hex -M slld_srld.mmap -O slld_srld.objdump  -L LinkerScript.lnk  -D AJIT
echo "\nREADELF\n"
sparc-linux-readelf  --hex-dump=1 --hex-dump=2 --hex-dump=3  --hex-dump=.bss slld_srld.elf | grep 0x > slld_srld.hex 
generateMemoryMap_Byte slld_srld.hex > slld_srld.mmap
remapMemmap vmap.txt slld_srld.mmap slld_srld.mmap.remapped
