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
macrosh(){ awk 'function n(x){if(k==length(l)){
if(getline l){k=0;return "\n"}else{return ""}}
else{return substr(l,++k,1)}}
function f(x,y){if(a==x){r[b]=y}}
BEGIN{for(i=255;i++<999;){r[i]=n()}i=256;
while(1){a=r[i++];b=r[i++];c=r[i++];
f("b",c)
f("-",r[b]-r[c])
f("<",r[b]<r[c])
f("r",r[r[c]])
f("w",r[r[c]]=r[b])
f("i",n())
f("o",printf "%s",r[c])
f("c",sprintf("%c",r[c]))
f("e",exit(r[c]))}'|sh;}
