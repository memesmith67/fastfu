#copyright john morrris beck 2026 gpl2
fastfu(){ awk 'function f(x,y){if($2==x){print y";"}}
$1!="fastfu"{print} $1=="fastfu"{
a=$2;b=$3;c=$4;d=$5;
f("malloc",b"="a"("c")")
f("free",a"("b")")
f("assign",b"="c)
f("get",b"=*"c)
f("set","*"b"="c)
f("control",b"("c"){")
f("literal",b)
f("case",a" "b":")
f("var",b" "c)}';}
irsh(){ awk '{gsub(/[^ ]/,"\\\\&")}1'|awk '
{a=$1;b=$2}{c="{ "$0"</tmp/."a">/tmp/."b" 2>/tmp/.";
c=c b".e;printf %s $?>/tmp/."b".?;}&";system(c)}';}
macrosh(){ awk 'function nc(x){if(ci==length(l)){
if(getline l){ci=0;return "\n"}else{return ""}}
else{return substr(l,++ci,1)}}BEGIN{
for(i=255;i++<9999;){r[i]=nc()}i=256;
while(1){a=r[i++];b=r[i++];c=r[i++];
if(a=="-"){r[b]-=r[c]}
else if(a=="<"){r[b]=r[b]<r[c]}
else if(a=="r"){r[b]=r[r[c]]}
else if(a=="w"){r[r[c]]=r[b]}
else if(a=="i"){r[b]=nc()}
else if(a=="o"){printf "%s",r[b]}
else if(a=="c"){r[b]=sprintf("%c",r[c])}
else {exit(0)}}'};
