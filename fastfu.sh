#copyright john morris beck 2026 gpl2
macrosh(){ sh|sh;}
fastfu(){ awk '{
f["malloc"]=$3"="$2"("$4")"
f["free"]=$2"("$3")"
f["control"]=$3"("$4"){"
f["literal"]=$3
f["case"]=$2" "$3":"
f["var"]=$3" "$4
f["assign"]=$3"="$4
print "fastfu"==$1?f[$2]";":$0}';}
