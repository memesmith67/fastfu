fastfu(){ #copyright john morrris beck 2026 gpl2
    awk 'function f(x,y){print $2==x?y";":""}
$1!="fastfu",$1=="fastfu"{
a=$2;b=$3;c=$4;d=$5;
f("memcpy",a"("b","c","d")")
f("malloc",b"="a"("c")")
f("free",a"("b")")
f("assign",c"="d)
f("fgetc",b"="a"("c")")
f("fputc",a"("b","c")")
f("fflush",a"("b")")
f("get",c"=*"d)
f("set","*"c"="b)
f("control",b"("c"){")
f("literal",a)
f("case",a" "b":")
f("var",a" "b)}';};
