/*
* @Author: Anton Kundenko
* @Date:   2015-12-30 13:21:52
* @Last Modified by:   Anton Kundenko
* @Last Modified time: 2015-12-30 13:22:35
*/
#ifndef KT_H
#define KT_H

typedef char C,*S;
typedef int I;
typedef void V;
typedef struct k0{I t;struct k0*k[99];} k,*K;
// definitions
#define P printf
#define R return
#define elif else if
#define OS(s) P("%s",s)
#define OI(s) P("%d",s)
#define OL(s) P("%s\n",s)
#define SZ(x) sizeof(x)
#define LN(s) strlen(s)

#define TYPE_INT 6

#endif // KT_H