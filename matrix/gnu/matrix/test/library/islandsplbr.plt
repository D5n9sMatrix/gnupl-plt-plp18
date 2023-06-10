#!/usr/bin/gnuplot
#
# Plots a map of Denmark with different resolutions
#
# AUTHOR: Hagen Wierstorf

reset

# png
set terminal pngcairo size 350,262 enhanced font 'Verdana,10'

# color definitions
set border lw 1.5
set style line 1 lc rgb 'gray' lt 1 lw 1
set style line 2 lc rgb 'black' lt 1 lw 1

unset key
set border 0
unset tics

#set size ratio -1

# Plot only Denmark
set xrange [7.5:13]
set yrange [54.5:58]

# plotting in different resolutions
set output "/home/denis/Workspace/gnupl-plt/gnu/matrix/img/denmark_110m.png"
plot "/home/denis/Workspace/gnupl-plt/gnu/matrix/bin/data/data2.txt" with filledcurves ls 7, \
    '' with l ls 8
set output "/home/denis/Workspace/gnupl-plt/gnu/matrix/img/denmark_50m.png"
plot "/home/denis/Workspace/gnupl-plt/gnu/matrix/bin/data/data3.txt" with filledcurves ls 9, \
    '' with l ls 10
set output "/home/denis/Workspace/gnupl-plt/gnu/matrix/img/denmark_10m.png"
plot "/home/denis/Workspace/gnupl-plt/gnu/matrix/bin/data/data4.txt" with filledcurves ls 11, \
    '' with l ls 12
