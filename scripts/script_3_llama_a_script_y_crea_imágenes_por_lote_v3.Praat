
# Por hacer: incorporar posibilidad de cortes de inicio y final de los dibujos
# de cuestiones suprasegmentales y tal.

p$ = "/home/mauricio/publications_1_(in_preparation)/book_Figueroa_Muñoz_(álbum_espectrogramas)/espectrogramas/"
s$ = p$ + "script_2_crea_imágenes_v7.Praat"
f$ = p$ + "output/"
w$ = ".wav"
t$ = ".TextGrid"

#prompt    script path wav            textgrid       wlength     maxfq  dynrg DPT minpt maxpt DINT xspi DFOR forcl  forn  drspk hFrom hTo  hosFrom hosTo   ssFrom  ssTo   dpi     nSeg         Hz
runScript: s$,    f$,  "c01_ocl"+w$,  "c01_ocl"+t$,  "wideband", 5000,  55,   1,  0,    350,  1,   20,  0,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.140,  0.460, "600" ; 4 segmentos, 5kHz # sacar v11 de esta
runScript: s$,    f$,  "c02_ocl"+w$,  "c02_ocl"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.000,  0.000, "300" ; 4 segmentos, 5kHz
runScript: s$,    f$,  "c05_ocl"+w$,  "c05_ocl"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.000,  0.000, "300" ; 4 segmentos, 5kHz
runScript: s$,    f$,  "c06_ocl"+w$,  "c06_ocl"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  2.6, 0.65,   3.200,  0.000,  0.000, "300" ; 2 segmentos, 5kHz
runScript: s$,    f$,  "c07_ocl"+w$,  "c07_ocl"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  2.6, 0.65,   3.200,  0.000,  0.000, "300" ; 2 segmentos, 5kHz
runScript: s$,    f$,  "c08_ocl"+w$,  "c08_ocl"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  2.6, 0.65,   3.200,  0.000,  0.000, "300" ; 2 segmentos, 5kHz
runScript: s$,    f$,  "c10_ocl"+w$,  "c10_ocl"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  2.6, 0.65,   3.200,  0.000,  0.000, "300" ; 2 segmentos, 5kHz
runScript: s$,    f$,  "c11_ocl"+w$,  "c11_ocl"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.000,  0.000, "300" ; 4 segmentos, 5kHz
runScript: s$,    f$,  "c12_fri"+w$,  "c12_fri"+t$,  "wideband", 15000, 55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.3, 0.65,   3.965,  0.000,  0.000, "300" ; 3 segmentos, 15kHz
runScript: s$,    f$,  "c13_fri"+w$,  "c13_fri"+t$,  "wideband", 15000, 55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.3, 0.65,   3.965,  0.000,  0.000, "300" ; 3 segmentos, 15kHz
runScript: s$,    f$,  "c14_fri"+w$,  "c14_fri"+t$,  "wideband", 15000, 55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.3, 0.65,   3.965,  0.000,  0.000, "300" ; 3 segmentos, 15kHz
runScript: s$,    f$,  "c15_fri"+w$,  "c15_fri"+t$,  "wideband", 15000, 55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.3, 0.65,   3.965,  0.000,  0.000, "300" ; 3 segmentos, 15kHz
runScript: s$,    f$,  "c16a_fri"+w$, "c16a_fri"+t$, "wideband", 15000, 55,   0,  0,    350,  0,   20,  1,   10000, 5,    10,   0.7,  3.3, 0.65,   3.965,  0.178,  0.297, "300" ; 3 segmentos, 15kHz *
runScript: s$,    f$,  "c16b_fri"+w$, "c16b_fri"+t$, "wideband", 15000, 55,   0,  0,    350,  0,   20,  1,   8000,  4,    10,   0.7,  3.3, 0.65,   3.965,  0.293,  0.435, "300" ; 3 segmentos, 15kHz *
runScript: s$,    f$,  "c17_fri"+w$,  "c17_fri"+t$,  "wideband", 15000, 55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.3, 0.65,   3.965,  0.000,  0.000, "300" ; 3 segmentos, 15kHz
runScript: s$,    f$,  "c18_fri"+w$,  "c18_fri"+t$,  "wideband", 15000, 55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.3, 0.65,   3.965,  0.000,  0.000, "300" ; 3 segmentos, 15kHz
runScript: s$,    f$,  "c19_fri"+w$,  "c19_fri"+t$,  "wideband", 15000, 55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.3, 0.65,   3.965,  0.000,  0.000, "300" ; 3 segmentos, 15kHz
runScript: s$,    f$,  "c20_fri"+w$,  "c20_fri"+t$,  "wideband", 15000, 55,   0,  0,    350,  0,   20,  1,   15000, 7,    10,   0.7,  3.3, 0.65,   3.965,  0.230,  0.339, "300" ; 3 segmentos, 15kHz *
runScript: s$,    f$,  "c22_fri"+w$,  "c22_fri"+t$,  "wideband", 15000, 55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.3, 0.65,   3.965,  0.000,  0.000, "300" ; 3 segmentos, 15kHz
runScript: s$,    f$,  "c23_fri"+w$,  "c23_fri"+t$,  "wideband", 15000, 55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.3, 0.65,   3.965,  0.000,  0.000, "300" ; 3 segmentos, 15kHz
runScript: s$,    f$,  "c24_fri"+w$,  "c24_fri"+t$,  "wideband", 15000, 55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.3, 0.65,   3.965,  0.000,  0.000, "300" ; 3 segmentos, 15kHz
runScript: s$,    f$,  "c26_fri"+w$,  "c26_fri"+t$,  "wideband", 15000, 55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.3, 0.65,   3.965,  0.000,  0.000, "300" ; 3 segmentos, 15kHz
runScript: s$,    f$,  "c27_afr"+w$,  "c27_afr"+t$,  "wideband", 9000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.000,  0.000, "300" ; 4 segmentos, 9kHz
runScript: s$,    f$,  "c33_afr"+w$,  "c33_afr"+t$,  "wideband", 9000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.000,  0.000, "300" ; 4 segmentos, 9kHz
runScript: s$,    f$,  "c34_afr"+w$,  "c34_afr"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.0, 0.65,   3.580,  0.000,  0.000, "300" ; 3 segmentos, 5kHz
runScript: s$,    f$,  "c35_afr"+w$,  "c35_afr"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.0, 0.65,   3.580,  0.000,  0.000, "300" ; 3 segmentos, 5kHz
runScript: s$,    f$,  "c36_afr"+w$,  "c36_afr"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.0, 0.65,   3.580,  0.000,  0.000, "300" ; 3 segmentos, 5kHz
runScript: s$,    f$,  "c37_afr"+w$,  "c37_afr"+t$,  "wideband", 9000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.000,  0.000, "300" ; 4 segmentos, 9kHz
runScript: s$,    f$,  "c38_afr"+w$,  "c38_afr"+t$,  "wideband", 9000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.000,  0.000, "300" ; 4 segmentos, 9kHz
runScript: s$,    f$,  "c41_nas"+w$,  "c41_nas"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.0, 0.65,   3.580,  0.000,  0.000, "300" ; 3 segmentos, 5kHz
runScript: s$,    f$,  "c42_nas"+w$,  "c42_nas"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.000,  0.000, "300" ; 4 segmentos, 5kHz
runScript: s$,    f$,  "c43_nas"+w$,  "c43_nas"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.000,  0.000, "300" ; 4 segmentos, 5kHz
runScript: s$,    f$,  "c44_nas"+w$,  "c44_nas"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.000,  0.000, "300" ; 4 segmentos, 5kHz
runScript: s$,    f$,  "c45_nas"+w$,  "c45_nas"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.0, 0.65,   3.580,  0.000,  0.000, "300" ; 3 segmentos, 5kHz
runScript: s$,    f$,  "c46_nas"+w$,  "c46_nas"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.000,  0.000, "300" ; 4 segmentos, 5kHz
runScript: s$,    f$,  "c47_nas"+w$,  "c47_nas"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.000,  0.000, "300" ; 4 segmentos, 5kHz
runScript: s$,    f$,  "c48_nas"+w$,  "c48_nas"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.000,  0.000, "300" ; 4 segmentos, 5kHz
runScript: s$,    f$,  "c49_nas"+w$,  "c49_nas"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.0, 0.65,   3.580,  0.000,  0.000, "300" ; 3 segmentos, 5kHz
runScript: s$,    f$,  "c50_lat"+w$,  "c50_lat"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.000,  0.000, "300" ; 4 segmentos, 5kHz
runScript: s$,    f$,  "c51_lat"+w$,  "c51_lat"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.000,  0.000, "300" ; 4 segmentos, 5kHz
runScript: s$,    f$,  "c52_lat"+w$,  "c52_lat"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.0, 0.65,   3.580,  0.000,  0.000, "300" ; 3 segmentos, 5kHz
runScript: s$,    f$,  "c53_lat"+w$,  "c53_lat"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.000,  0.000, "300" ; 4 segmentos, 5kHz
runScript: s$,    f$,  "c54_lat"+w$,  "c54_lat"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.000,  0.000, "300" ; 4 segmentos, 5kHz
runScript: s$,    f$,  "c55_lat"+w$,  "c55_lat"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.0, 0.65,   3.580,  0.000,  0.000, "300" ; 3 segmentos, 5kHz
runScript: s$,    f$,  "c56_vib"+w$,  "c56_vib"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.0, 0.65,   3.580,  0.000,  0.000, "300" ; 3 segmentos, 5kHz
runScript: s$,    f$,  "c57_vib"+w$,  "c57_vib"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.0, 0.65,   3.580,  0.000,  0.000, "300" ; 3 segmentos, 5kHz
runScript: s$,    f$,  "c58_vib"+w$,  "c58_vib"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.0, 0.65,   3.580,  0.000,  0.000, "300" ; 3 segmentos, 5kHz
runScript: s$,    f$,  "c59_apr"+w$,  "c59_apr"+t$,  "wideband", 5000,  55,   0,  0,    350,  1,   20,  0,   5500,  5,    10,   0.7,  3.0, 0.65,   3.580,  0.073,  0.418, "300" ; 3 segmentos, 5kHz
runScript: s$,    f$,  "c60_apr"+w$,  "c60_apr"+t$,  "wideband", 5000,  55,   0,  0,    350,  1,   20,  0,   5500,  5,    10,   0.7,  3.0, 0.65,   3.580,  0.088,  0.385, "300" ; 3 segmentos, 5kHz
runScript: s$,    f$,  "c61_apr"+w$,  "c61_apr"+t$,  "wideband", 5000,  55,   0,  0,    350,  1,   20,  0,   5500,  5,    10,   0.7,  3.0, 0.65,   3.580,  0.078,  0.387, "300" ; 3 segmentos, 5kHz
runScript: s$,    f$,  "c62_apr"+w$,  "c62_apr"+t$,  "wideband", 5000,  55,   0,  0,    350,  1,   20,  0,   5500,  5,    10,   0.7,  3.0, 0.65,   3.580,  0.073,  0.358, "300" ; 3 segmentos, 5kHz
runScript: s$,    f$,  "c63_apr"+w$,  "c63_apr"+t$,  "wideband", 5000,  55,   0,  0,    350,  1,   20,  0,   5500,  5,    10,   0.7,  3.0, 0.65,   3.580,  0.070,  0.404, "300" ; 3 segmentos, 5kHz
runScript: s$,    f$,  "c635_apr"+w$, "c635_apr"+t$, "wideband", 5000,  55,   0,  0,    350,  1,   20,  0,   5500,  5,    10,   0.7,  3.0, 0.65,   3.580,  0.070,  0.395, "300" ; 3 segmentos, 5kHz
runScript: s$,    f$,  "c64_apr"+w$,  "c64_apr"+t$,  "wideband", 5000,  55,   0,  0,    350,  1,   20,  0,   5500,  5,    10,   0.7,  3.0, 0.65,   3.580,  0.071,  0.431, "300" ; 3 segmentos, 5kHz
runScript: s$,    f$,  "c65_apr"+w$,  "c65_apr"+t$,  "wideband", 5000,  55,   0,  0,    350,  1,   20,  0,   5500,  5,    10,   0.7,  3.0, 0.65,   3.580,  0.070,  0.400, "300" ; 3 segmentos, 5kHz
runScript: s$,    f$,  "s1_sec"+w$,   "s1_sec"+t$,   "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  5.5, 0.65,   6.080,  0.000,  0.000, "300" ; secuenciasL, 5kHz
runScript: s$,    f$,  "s2_sec"+w$,   "s2_sec"+t$,   "wideband", 15000, 55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  5.5, 0.65,   6.170,  0.000,  0.000, "300" ; secuenciasL, 15kHz
runScript: s$,    f$,  "s3_sec"+w$,   "s3_sec"+t$,   "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  5.5, 0.65,   6.080,  0.000,  0.000, "300" ; secuenciasL, 5kHz
runScript: s$,    f$,  "s4_sec"+w$,   "s4_sec"+t$,   "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  5.5, 0.65,   6.080,  0.000,  0.000, "300" ; secuenciasL, 5kHz
runScript: s$,    f$,  "s5_sec"+w$,   "s5_sec"+t$,   "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  5.0, 0.65,   5.580,  0.000,  0.000, "300" ; secuenciasM, 5kHz
runScript: s$,    f$,  "s6_sec"+w$,   "s6_sec"+t$,   "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.000,  0.000, "300" ; 4 segmentos, 5kHz
runScript: s$,    f$,  "s7_sec"+w$,   "s7_sec"+t$,   "wideband", 5000,  55,   0,  0,    350,  1,   20,  0,   5500,  5,    10,   0.7,  5.5, 0.65,   6.080,  0.075,  1.003, "300" ; secuenciasL, 5kHz
runScript: s$,    f$,  "v01_voc"+w$,  "v01_voc"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  1,   5500,  5,    10,   0.7,  3.6, 0.65,   4.185,  0.138,  0.224, "300" ; ¿?
runScript: s$,    f$,  "v02_voc"+w$,  "v02_voc"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  1,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.150,  0.271, "300" ; 4 segmentos, 5kHz
runScript: s$,    f$,  "v03_voc"+w$,  "v03_voc"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  1,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.121,  0.265, "300" ; 4 segmentos, 5kHz
runScript: s$,    f$,  "v04_voc"+w$,  "v04_voc"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  1,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.139,  0.290, "300" ; 4 segmentos, 5kHz
runScript: s$,    f$,  "v05_voc"+w$,  "v05_voc"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  1,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.166,  0.276, "300" ; 4 segmentos, 5kHz
runScript: s$,    f$,  "v07_voc"+w$,  "v07_voc"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  1,   5500,  5,    10,   0.7,  4.0, 0.65,   4.585,  0.158,  0.263, "300" ; ¿?
runScript: s$,    f$,  "v08_voc"+w$,  "v08_voc"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  1,   5000,  4,    20,   0.7,  3.4, 0.65,   3.985,  0.113,  0.289, "300" ; 4 segmentos, 5kHz
runScript: s$,    f$,  "v09_voc"+w$,  "v09_voc"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  1,   5500,  5,    20,   0.7,  5.0, 0.65,   5.580,  0.070,  0.243, "300" ; secuenciasM, 5kHz
runScript: s$,    f$,  "v10_voc"+w$,  "v10_voc"+t$,  "wideband", 5000,  55,   1,  0,    350,  1,   20,  0,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.137,  0.474, "300" ; 4 segmentos, 5kHz
runScript: s$,    f$,  "v12_voc"+w$,  "v12_voc"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.000,  0.000, "300" ; 4 segmentos, 5kHz
runScript: s$,    f$,  "v13_voc"+w$,  "v13_voc"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.000,  0.000, "300" ; 4 segmentos, 5kHz
runScript: s$,    f$,  "v14_voc"+w$,  "v14_voc"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  1,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.406,  0.527, "300" ; 4 segmentos, 5kHz
runScript: s$,    f$,  "v15_voc"+w$,  "v15_voc"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  3.7, 0.65,   4.285,  0.000,  0.000, "300" ; ¿?
runScript: s$,    f$,  "v16_voc"+w$,  "v16_voc"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  1,   5000,  4,    10,   0.7,  5.5, 0.65,   6.080,  0.329,  0.539, "600" ; secuenciasL, 5kHz # TextGrid de secuencia modificado (no el original)
runScript: s$,    f$,  "v17_voc"+w$,  "v17_voc"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,    10,   0.7,  5.0, 0.65,   5.580,  0.000,  0.000, "300" ; secuenciasM, 5kHz
runScript: s$,    f$,  "v18_voc"+w$,  "v18_voc"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  1,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.101,  0.248, "300" ; 4 segmentos, 5kHz
runScript: s$,    f$,  "v19_voc"+w$,  "v19_voc"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  1,   5500,  5,    10,   0.7,  2.6, 0.65,   3.180,  0.245,  0.313, "300" ; 2 segmentos, 5kHz
runScript: s$,    f$,  "v20_voc"+w$,  "v20_voc"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  1,   5500,  5,    10,   0.7,  5.0, 0.65,   5.580,  0.457,  0.584, "300" ; secuenciasM, 5kHz
runScript: s$,    f$,  "v21_voc"+w$,  "v21_voc"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  1,   5500,  5,    10,   0.7,  3.4, 0.65,   3.985,  0.473,  0.567, "300" ; 4 segmentos, 5kHz
runScript: s$,    f$,  "v22_voc"+w$,  "v22_voc"+t$,  "wideband", 5000,  55,   0,  0,    350,  0,   20,  1,   5500,  5,    10,   0.7,  3.6, 0.65,   4.185,  0.128,  0.165, "300" ; ¿?
