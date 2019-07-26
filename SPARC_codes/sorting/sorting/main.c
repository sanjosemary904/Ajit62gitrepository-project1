#include<stdio.h>

#ifdef AJIT
#include "core_portme.h"
#include "ajit_access_routines.h"

int __enable_serial()
{
	__ajit_write_serial_control_register__ ( TX_ENABLE | RX_ENABLE);
	return(0);
}


#endif
#ifdef AJIT
#define PRINTF ee_printf
#else
#define PRINTF printf
#endif


void main()
{
int a, b;

a = 7;
b = 8;

a = b + 2;

	__enable_serial();
	PRINTF("HELLO WORLD %d \n, a");

}



