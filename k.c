/*
* @Author: Anton Kundenko
* @Date:   2015-12-30 13:28:32
* @Last Modified by:   Anton Kundenko
* @Last Modified time: 2015-12-30 13:43:59
*/
#include <stdio.h>
#include "kt.h"
#include "k.h"

K con(I t,S v){K z=(K)malloc(99*SZ(k0));R z;}
I des(K x){free(x);R 1;}
I plus(I x,I y){R x+y;}
I minus(I x,I y){R x-y;}
I title(){OL("Toy interpreter Koan v0.0.1");prompt();R 1;}
I prompt(){OS("> ");R 1;}