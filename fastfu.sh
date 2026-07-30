fastfu(){ #copyright john morrris beck 2026 gpl2
    awk 'function c(x,y){print $2==x?y";":""}
$1!="fastfu",$1=="fastfu"{
a=$2;b=$3;c=$4;d=$5;
c("memcpy",a"("b","c","d")")
c("malloc",b"="a"("c")")
c("free",a"("b")")
c("assign",c"="d)
c("fgetc",b"="a"("c")")
c("fputc",a"("b","c")")
c("fflush",a"("b")")
c("get",c"=*"d)
c("set","*"c"="b)
c("control",b"("c"){")
c("literal",a)
c("case",a" "b":")
c("var",a" "b)}';};
