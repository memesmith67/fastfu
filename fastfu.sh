#copyright john morris beck 2026 gpl2
macrosh(){ sh|sh;}
fastfu(){ awk '{
d["malloc"]=$3"="$2"("$4")"
d["free"]=$2"("$3")"
d["control"]=$3"("$4"){"
d["literal"]=$3
d["case"]=$2" "$3":"
d["var"]=$3" "$4
d["assign"]=$3"="$4
d["get"]=$3"=*"$4
d["set"]="*"$3"="$4
print $1=="fastfu"?d[$2]";":$0}';}
