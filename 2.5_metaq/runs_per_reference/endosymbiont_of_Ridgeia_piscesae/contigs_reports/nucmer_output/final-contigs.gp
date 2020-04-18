set terminal canvas jsdir ""
set output "/home/crisdu/analyses_done/2.5_metaq/runs_per_reference/endosymbiont_of_Ridgeia_piscesae/contigs_reports/nucmer_output/final-contigs.html"
set xtics rotate ( \
 "0" 0, \
 "400000" 400000, \
 "800000" 800000, \
 "1200000" 1200000, \
 "1600000" 1600000, \
 "2000000" 2000000, \
 "2400000" 2400000, \
 "2800000" 2800000, \
 "3200000" 3200000, \
 "" 3442017 \
)
set ytics ( \
 "0" 0, \
 "200" 200, \
 "400" 400, \
 "600" 600, \
 "800" 800, \
 "1000" 1000, \
 "1200" 1200, \
 "1400" 1400, \
 "1600" 1600, \
 "" 1793 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:3442017]
set yrange [1:1793]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/crisdu/analyses_done/2.5_metaq/runs_per_reference/endosymbiont_of_Ridgeia_piscesae/contigs_reports/nucmer_output/final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/crisdu/analyses_done/2.5_metaq/runs_per_reference/endosymbiont_of_Ridgeia_piscesae/contigs_reports/nucmer_output/final-contigs.rplot" title "REV" w lp ls 2
