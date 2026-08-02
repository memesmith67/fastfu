#copyright john morris beck 2026 gpl2
macrosh(){ sh|sh;}
fastfu(){ awk '
"fastfu"!=$1;"fastfu"==$1{
if ($3$4 !~ /^[a-zA-Z0-9_*()+|-&!~\/]+$/) exit 1
f["malloc"]=$3"="$2"("$4")"
f["free"]=$2"("$3")"
f["control"]=$3"("$4"){"
f["literal"]=$3
f["case"]=$2" "$3":"
f["assign"]=$3"="$4
print f[$2]";"}';}
