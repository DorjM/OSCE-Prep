for i in `objdump -d $1 | tr '\t' ' ' | tr ' ' '\n' | egrep '^[0-9a-f]{2}$' `; do echo -n "\x$i" ; done | paste -d '' -s | sed 's/^/"/' | sed 's/$/"/g'
