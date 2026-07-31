#copyright john morris beck 2026 gpl2
fastfu(){ awk 'function f(x,y){if($2==x){print y";"}}
$1!="fastfu"{print} $1=="fastfu"{
a=$2;b=$3;c=$4;d=$5;
f("memcpy",a"("b","c","d")")
f("malloc",b"="a"("c")")
f("free",a"("b")")
f("assign",b"="c)
f("fgetc",b"="a"("c")")
f("fputc",a"("b","c")")
f("fflush",a"("b")")
f("get",b"=*"c)
f("set","*"b"="c)
f("control",b"("c"){")
f("literal",b)
f("case",a" "b":")
f("var",b" "c)}';};
compiler_target(){ a="$1";b="$2";shift 2;"$@"<"$a">"$b" 2>"$b.log"&}
