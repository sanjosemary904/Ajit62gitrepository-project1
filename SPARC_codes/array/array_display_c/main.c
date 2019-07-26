#include<stdio.h>
#include <stdint.h>

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

void main ()
{
	#ifdef AJIT
	__enable_serial();
	#endif

	 
	int matrix [3][4] = { {1, 2, 3, 4},
		           {5, 6, 7, 8},
		           {9, 10, 11, 12}
		         };

	int row, column=0;

for (row=0; row<3; row++)
{
	for(column=0; column<4; column++)
	{
		PRINTF("%d\t", matrix[row][column]);
	}
        PRINTF("\n");
}


}





