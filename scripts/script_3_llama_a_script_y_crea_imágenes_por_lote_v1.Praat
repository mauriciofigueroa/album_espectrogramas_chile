
# Por hacer: incorporar posibilidad de cortes de inicio y final de los dibujos
# de cuestiones suprasegmentales y tal.

p$ = "/home/mauricio/publications_1_(in_preparation)/book_Muñoz_Figueroa_(álbum_de_espectrogramas)/"
s$ = p$ + "script_1b_crea_imágenes_v7.Praat"
f$ = p$ + "repositorio_de_secuencias_e_imágenes_01/"
w$ = ".wav"
t$ = ".TextGrid"

#          script path wav        textgrid   wlength     maxfq dynrg DPT minpt maxpt DINT xspi DFOR forcl drspk hFrom hTo  ssFrom ssTo  dpi
runScript: s$,    f$,  "c002"+w$, "c002"+t$, "wideband", 5000, 55,   1,  0,    350,  0,   20,  0,   5500, 10,   0.7,  5.5, 0.25,  0.50, "300"
runScript: s$,    f$,  "c003"+w$, "c003"+t$, "wideband", 5000, 55,   0,  0,    350,  1,   20,  0,   5500, 10,   0.7,  5.5, 0.20,  0.40, "600"
runScript: s$,    f$,  "c004"+w$, "c004"+t$, "wideband", 5000, 55,   0,  0,    350,  0,   20,  1,   5500, 10,   0.7,  5.5, 0.10,  0.30, "300"
runScript: s$,    f$,  "c005"+w$, "c005"+t$, "wideband", 5000, 55,   1,  0,    350,  0,   20,  0,   5500, 10,   0.7,  5.5, 0.00,  0.00, "600"
runScript: s$,    f$,  "c006"+w$, "c006"+t$, "wideband", 5000, 55,   0,  0,    350,  1,   20,  0,   5500, 10,   0.7,  5.5, 0.15,  0.59, "300"
runScript: s$,    f$,  "c007"+w$, "c007"+t$, "wideband", 5000, 55,   0,  0,    350,  0,   20,  1,   5500, 10,   0.7,  5.5, 0.10,  0.25, "600"
runScript: s$,    f$,  "c008"+w$, "c008"+t$, "wideband", 5000, 55,   1,  0,    350,  0,   20,  0,   5500, 10,   0.7,  5.5, 0.0,   0.0,  "300"
runScript: s$,    f$,  "v004"+w$, "v004"+t$, "wideband", 5000, 55,   0,  0,    350,  1,   20,  0,   5500, 10,   0.7,  5.5, 0.0,   0.0,  "600"
runScript: s$,    f$,  "v005"+w$, "v005"+t$, "wideband", 5000, 55,   0,  0,    350,  0,   20,  1,   5500, 10,   0.7,  5.5, 0.0,   0.0,  "300"
runScript: s$,    f$,  "v006"+w$, "v006"+t$, "wideband", 5000, 55,   1,  0,    350,  0,   20,  0,   5500, 10,   0.7,  5.5, 0.0,   0.0,  "600"
runScript: s$,    f$,  "v007"+w$, "v007"+t$, "wideband", 5000, 55,   0,  0,    350,  1,   20,  0,   5500, 10,   0.7,  5.5, 0.0,   0.0,  "300"
runScript: s$,    f$,  "v009"+w$, "v009"+t$, "wideband", 5000, 55,   0,  0,    350,  0,   20,  1,   5500, 10,   0.7,  5.5, 0.0,   0.0,  "600"
runScript: s$,    f$,  "v010"+w$, "v010"+t$, "wideband", 5000, 55,   1,  0,    350,  0,   20,  0,   5500, 10,   0.7,  5.5, 0.0,   0.0,  "300"
