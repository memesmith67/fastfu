#copyright john morris beck july 5 2026 - licened gpl2

fastfu(){ awk 'BEGIN{print "#include <stdlib.h>\nint main(){int *t,*g=malloc(256);while(g['x']){switch(g['f']){"}{
d["case"]=$1" "$2":";
d["break"]=$1;
d["realloc"]="t="$1"(g,sizeof(int)*g["$2"]);t==NULL?g["$2"]=0:(g=t;free(t));";
d["get"]="g["$3"]=g[g["$2"]]";
d["set"]="g[g["$3"]]=g["$2"]";
d["input"]="t=g[x];while('\n'!=(*(g+t++)=getchar()))";
d["output"]="t=g[x];while(*(g+t))putchar(*(g+t++));fflush(stdout)"
o=d[$1];if(!o){exit 1}print o";"}END{print "default:x=0;break;}}free(g);return 0}';};
