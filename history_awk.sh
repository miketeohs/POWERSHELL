# https://stackoverflow.com/questions/17091500/awk-command-to-print-until-end-of-line#comment103029424_31100196
# https://stackoverflow.com/questions/5081916/how-to-print-all-the-columns-after-a-particular-number-using-awk
# https://stackoverflow.com/questions/2961635/using-awk-to-print-all-columns-from-the-nth-to-the-last
history | awk '{print substr($0, index($0,$2))}'
history | awk '{ s = ; for (i = 2; i <= NF; i++) s = s   ; print s }'
history | awk -v N=2 '{sep=; for (i=N; i<=NF; i++) {printf(%s%s,sep,); sep=OFS}; printf(n)}'
history | sed -re 's,\s+, ,g' | cut -d ' ' -f 3-
