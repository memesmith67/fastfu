fastfu(){ awk 'BEGIN{print "#include <stdlib.h>\n#include <stdio.h>\nint main(){int *t,*u,*g,s;s=sizeof(int);g=malloc(s*256);g['x']=1;g['f']=0;while(g['x']){switch(g['f']){"}{
d["case"]=$1" "$2":";
d["break"]=$1;
d["op"]="g["$5"]=g["$2"] "$3" g["$4"]";
d["realloc"]="t="$1"(g,sizeof(int)*g["$2"]);if(t==NULL){g["$2"]=0;}else{u=g;g=t;free(u);};";
d["get"]="g["$3"]=g[g["$2"]]";
d["set"]="g[g["$3"]]=g["$2"]";
d["input"]="t=g["$2"];while('\n'!=(*(g+t++)=getchar()))";
d["output"]="t=g["$2"];while(*(g+t))putchar(*(g+t++));fflush(stdout)"
o=d[$1];if(!o){exit 1}print o";"}END{print "default:g['x']=0;break;}}free(g);return 0}';};
