#include <stdio.h>
int  main() {
/* Calculator using switch statement C*/
char opt;
int n1, n2;
float res;
printf("Choose an from these [ + - * / ] to perform the operation in C calculator:");
scanf("%c", &opt); // taking the operator or reading the operator

if(opt == '/') {
printf("You have selected Division");
}
else if(opt == '*') {
printf("You have selected Multiplication");
}
else if(opt == '-')  {
printf("You have selected Subraction");
}
else if(opt == '+') {
printf("You have selected addition");
}
printf("\n Enter your first number:");
scanf("%d", &n1); //read first number
printf("\n Enter second number:");
scanf("%d", &n2); //read second number

switch(opt) {
case '+':
res = n1 + n2; //adding 2 number
printf("Addition of %d and %d is: %2f", n1, n2, res);
break;

case '-':
res=n1 - n2; // sub 2 numbers
printf("Subraction of %d and %d is: %2f", n1, n2, res);
break;
case '*':
res= n1 * n2; // multiply two numbers
printf("Multiplication of %d and %d is: %2f", n1, n2, res);
break;

case '/':
if(n2 == 0) { // if n2 == 0; take another number
printf("\n Divisor cannot be zero. Please Enter new value:");
scanf("%d", &n2);
}
res = n1 / n2; // divide
printf("Division of %d  and %d  is :%2f",n1, n2, res);
break;

default:
printf("\n Something is wrong, check the options");
 }
return 0;
}
