set terminal canvas jsdir ""
set output "/home/crisdu/analyses_done/2.5_metaq/runs_per_reference/Aquimarina_sp._22II-S11-z7/contigs_reports/nucmer_output/final-contigs.html"
set xtics rotate ( \
 "0" 0, \
 "700000" 700000, \
 "1400000" 1400000, \
 "2100000" 2100000, \
 "2800000" 2800000, \
 "3500000" 3500000, \
 "4200000" 4200000, \
 "4900000" 4900000, \
 "5600000" 5600000, \
 "" 5687995 \
)
set ytics ( \
 "0" 0, \
 "2000" 2000, \
 "4000" 4000, \
 "6000" 6000, \
 "8000" 8000, \
 "" 9429 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:5687995]
set yrange [1:9429]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/crisdu/analyses_done/2.5_metaq/runs_per_reference/Aquimarina_sp._22II-S11-z7/contigs_reports/nucmer_output/final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/crisdu/analyses_done/2.5_metaq/runs_per_reference/Aquimarina_sp._22II-S11-z7/contigs_reports/nucmer_output/final-contigs.rplot" title "REV" w lp ls 2
