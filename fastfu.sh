#copyright john morris beck 2026 gpl2
macrosh(){ sh|sh;}
fastfu(){ awk '$1!="fastfu";$1!="fastfu"{
    t=$3$4$6~/^[a-zA-Z0-9_()*]*$/
    t+=$5~/^[-+<>\/*%&|!=]+$/
    $2!="literal"&&t&&exit 1
    f["assign"]=$3"="$4$5$6
    f["declare"]=$3" "$4
    f["malloc"]=$3"="$2"("$4")"
    f["free"]=$2"("$3")"
    f["control"]=$3"("$4"){"
    f["case"]=$2" "$3":"
    f["literal"]=$3
    print f[$2]";"}';}
