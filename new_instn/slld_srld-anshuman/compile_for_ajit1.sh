compileToSparc.py -g -I /usr/include -I ./  -s slld_srld.s -E slld_srld.elf -V slld_srld.vars -H slld_srld.hex -M slld_srld.mmap -O slld_srld.objdump  -L LinkerScript.lnk  -D AJIT

#AD
remapMemmap vmap.txt slld_srld.mmap slld_srld.mmap.remapped
