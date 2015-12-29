#ifndef KT_H
#define KT_H

typedef char C,*S;
typedef int I;
typedef void V;
typedef struct k0{I c,t,n;struct k0*k[1];} k,*K;
// definitions
#define P printf
#define R return
#define elif else if
#define OS(s) P("%s",s)
#define OI(s) P("%d",s)
#define OL(s) P("%s\n",s)
#define SZ(x) sizeof(x)
#define LN(s) strlen(s)

#endif // KT_H