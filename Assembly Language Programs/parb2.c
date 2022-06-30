#include<lpc214x.h>
//124373 * 0.25 = 31093 = 7975H
//124373 * 0.75 = 93280; 93280/2 = 46640 = B630
voidon_delay(void){
T0MR0=0x7974;
T0PR=0;
T0TCR=1;
while(T0TC!=T0MR0);
T0TCR=2;
T0TC=0;
}
voidoff_delay(void){
T0MR0=0xB630;
T0PR=1;
T0TCR=1;
while(T0TC!=T0MR0);
T0TCR=2;
T0TC=0;
}
int main(void){
T0MCR=4;
IODIR1=0x00010000;
while(1){
IOSET1=1<<16;
on_delay();
IOCLR1=1<<16;
off_delay();
}
}
