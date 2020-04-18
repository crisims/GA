set terminal canvas jsdir ""
set output "/home/crisdu/analyses_done/2.5_metaq/runs_per_reference/Marivita_cryptomonadis/contigs_reports/nucmer_output/final-contigs.html"
set xtics rotate ( \
 "0" 0, \
 "600000" 600000, \
 "1200000" 1200000, \
 "1800000" 1800000, \
 "2400000" 2400000, \
 "3000000" 3000000, \
 "3600000" 3600000, \
 "4200000" 4200000, \
 "" 4610381 \
)
set ytics ( \
 "0" 0, \
 "1000" 1000, \
 "2000" 2000, \
 "3000" 3000, \
 "4000" 4000, \
 "5000" 5000, \
 "6000" 6000, \
 "7000" 7000, \
 "8000" 8000, \
 "" 8896 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:4610381]
set yrange [1:8896]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/crisdu/analyses_done/2.5_metaq/runs_per_reference/Marivita_cryptomonadis/contigs_reports/nucmer_output/final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/crisdu/analyses_done/2.5_metaq/runs_per_reference/Marivita_cryptomonadis/contigs_reports/nucmer_output/final-contigs.rplot" title "REV" w lp ls 2
