#include "stdio.h"
#include "code.h"
void printMessage(void)
{
	int x=10; 
	int y=20;
	if (x>y)
	{
		printf("X = %d\n", x);
		printf("Y = %d\n", y);
		printf ("So X is greater than Y");
	}
	else if (x<y)
	{
		printf("X = %d\n", x);
		printf("Y = %d\n", y);
		printf ("So X is smaller than Y");
	}
	else if (x==y)
	{
		printf("X = %d\n", x);
		printf("Y = %d\n", y);
		printf ("So X & Y are Equal");
	}
}