set terminal canvas jsdir ""
set output "/home/crisdu/analyses_done/2.5_metaq/runs_per_reference/Geobacter_pickeringii/contigs_reports/nucmer_output/final-contigs.html"
set ytics ( \
 "0" 0, \
 "2000" 2000, \
 "4000" 4000, \
 "6000" 6000, \
 "8000" 8000, \
 "10000" 10000, \
 "12000" 12000, \
 "14000" 14000, \
 "" 15992 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:*]
set yrange [1:15992]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/crisdu/analyses_done/2.5_metaq/runs_per_reference/Geobacter_pickeringii/contigs_reports/nucmer_output/final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/crisdu/analyses_done/2.5_metaq/runs_per_reference/Geobacter_pickeringii/contigs_reports/nucmer_output/final-contigs.rplot" title "REV" w lp ls 2
