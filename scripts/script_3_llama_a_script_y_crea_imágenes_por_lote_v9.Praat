
##Por hacer: incorporar posibilidad de cortes de inicio y final de los dibujos
##de cuestiones suprasegmentales y tal.

p$  = "/home/mauricio/publications_1_(in_preparation)/book_Figueroa_Muñoz_(álbum_espectrogramas)/"
s$  = p$ + "scripts/script_2_crea_imágenes_v10.Praat"
ip$ = p$ + "proceso_2_secuencias/"
op$ = p$ + "proceso_3_espectrogramas/"
w$  = ".wav"
t$  = ".TextGrid"

# #          script ipath opath  wav           textgrid      wlength       maxfq  dynrg DPT minpt maxpt  DINT  xspi   DFOR  forcl  forn drspk hFrom hTo  hosFrom hosTo  ssFrom  ssTo   dpi     nSeg      Hz
# runScript: s$,    ip$,  op$,   "ab01_w"+w$,  "ab01_w"+t$,  "wideband",   2500,  55,   0,  0,    350,   0,    20,    0,    5500,  5,   10,   0.7,  3.4, 0.65,   4.11,  0.000,  0.000, "600" ; fonación, 2.5kHz
# runScript: s$,    ip$,  op$,   "ab02_n"+w$,  "ab02_n"+t$,  "narrowband", 2500,  55,   0,  0,    350,   0,    20,    0,    5500,  5,   10,   0.7,  3.4, 0.65,   4.11,  0.000,  0.000, "600" ; fonación, 2.5kHz
# 
# 
# #          script ipath opath  wav            textgrid       wlength     maxfq  dynrg DPT minpt maxpt   DINT  xspi   DFOR forcl   forn drspk hFrom hTo  hosFrom hosTo    ssFrom ssTo   dpi     nSeg          Hz
# runScript: s$,    ip$,  op$,   "c01_ocl"+w$,  "c01_ocl"+t$,  "wideband", 5000,  55,   0,  0,    350,    0,    20,    0,   5500,   5,   10,   0.7,  3.4, 0.65,   3.985,   0.140, 0.460, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "c02_ocl"+w$,  "c02_ocl"+t$,  "wideband", 5000,  55,   0,  0,    350,    0,    20,    0,   5500,   5,   10,   0.7,  3.4, 0.65,   3.985,   0.140, 0.460, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "c03_ocl"+w$,  "c03_ocl"+t$,  "wideband", 5000,  55,   0,  0,    350,    0,    20,    0,   5500,   5,   10,   0.7,  3.4, 0.65,   3.985,   0.140, 0.460, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "c04_ocl"+w$,  "c04_ocl"+t$,  "wideband", 5000,  55,   0,  0,    350,    0,    20,    0,   5500,   5,   10,   0.7,  3.4, 0.65,   3.985,   0.140, 0.460, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "c05_ocl"+w$,  "c05_ocl"+t$,  "wideband", 5000,  55,   0,  0,    350,    0,    20,    0,   5500,   5,   10,   0.7,  3.4, 0.65,   3.985,   0.140, 0.460, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "c06_ocl"+w$,  "c06_ocl"+t$,  "wideband", 5000,  55,   0,  0,    350,    0,    20,    0,   5500,   5,   10,   0.7,  2.6, 0.65,   3.200,   0.000, 0.000, "600" ; 2 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "c07_ocl"+w$,  "c07_ocl"+t$,  "wideband", 5000,  55,   0,  0,    350,    0,    20,    0,   5500,   5,   10,   0.7,  2.6, 0.65,   3.200,   0.000, 0.000, "600" ; 2 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "c08_ocl"+w$,  "c08_ocl"+t$,  "wideband", 5000,  55,   0,  0,    350,    0,    20,    0,   5500,   5,   10,   0.7,  2.6, 0.65,   3.200,   0.000, 0.000, "600" ; 2 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "c09_ocl"+w$,  "c09_ocl"+t$,  "wideband", 5000,  55,   0,  0,    350,    0,    20,    0,   5500,   5,   10,   0.7,  2.6, 0.65,   3.200,   0.000, 0.000, "600" ; 2 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "c10_ocl"+w$,  "c10_ocl"+t$,  "wideband", 5000,  55,   0,  0,    350,    0,    20,    0,   5500,   5,   10,   0.7,  2.6, 0.65,   3.200,   0.000, 0.000, "600" ; 2 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "c11_ocl"+w$,  "c11_ocl"+t$,  "wideband", 5000,  55,   0,  0,    350,    0,    20,    0,   5500,   5,   10,   0.7,  3.4, 0.65,   3.985,   0.000, 0.000, "600" ; 4 segmentos, 5kHz
# 
# 
# #          script ipath opath  wav            textgrid       wlength     maxfq   dynrg DPT minpt maxpt DINT xspi DFOR forcl  forn drspk hFrom hTo  hosFrom hosTo    ssFrom  ssTo   dpi     nSeg           Hz
# runScript: s$,    ip$,  op$,   "c12_fri"+w$,  "c12_fri"+t$,  "wideband", 15000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.3, 0.65,   3.965,   0.000,  0.000, "600" ; 3 segmentos,   15kHz
# runScript: s$,    ip$,  op$,   "c13_fri"+w$,  "c13_fri"+t$,  "wideband", 15000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.3, 0.65,   3.965,   0.000,  0.000, "600" ; 4 SEGMENTOS,   5kHz
# runScript: s$,    ip$,  op$,   "c14_fri"+w$,  "c14_fri"+t$,  "wideband", 15000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.3, 0.65,   3.965,   0.000,  0.000, "600" ; 4 SEGMENTOS,   5kHz
# runScript: s$,    ip$,  op$,   "c15_fri"+w$,  "c15_fri"+t$,  "wideband", 15000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.3, 0.65,   3.965,   0.000,  0.000, "600" ; 4 SEGMENTOS,   5kHz
# runScript: s$,    ip$,  op$,   "c16a_fri"+w$, "c16a_fri"+t$, "wideband", 12000,  55,   0,  0,    350,  0,   20,  1,   4500,  4,   20,   0.7,  3.3, 0.65,   3.965,   0.163,  0.266, "600" ; 3 segmentos,   12kHz
# runScript: s$,    ip$,  op$,   "c16b_fri"+w$, "c16b_fri"+t$, "wideband", 12000,  55,   0,  0,    350,  0,   20,  1,   4500,  4,   24,   0.7,  3.3, 0.65,   3.965,   0.162,  0.368, "600" ; 3 segmentos,   12kHz
# runScript: s$,    ip$,  op$,   "c17_fri"+w$,  "c17_fri"+t$,  "wideband", 15000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.3, 0.65,   3.965,   0.000,  0.000, "600" ; 4 SEGMENTOS,   5kHz
# runScript: s$,    ip$,  op$,   "c18_fri"+w$,  "c18_fri"+t$,  "wideband", 15000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.3, 0.65,   3.965,   0.000,  0.000, "600" ; 3 segmentos,   15kHz
# runScript: s$,    ip$,  op$,   "c19_fri"+w$,  "c19_fri"+t$,  "wideband", 15000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.3, 0.65,   3.965,   0.000,  0.000, "600" ; 4 SEGMENTOS,   5kHz
# runScript: s$,    ip$,  op$,   "c20_fri"+w$,  "c20_fri"+t$,  "wideband", 15000,  55,   0,  0,    350,  0,   20,  1,   15000, 7,   10,   0.7,  3.3, 0.65,   3.965,   0.230,  0.339, "600" ; 3 segmentos,   15kHz
# runScript: s$,    ip$,  op$,   "c21_fri"+w$,  "c21_fri"+t$,  "wideband", 15000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.3, 0.65,   3.965,   0.000,  0.000, "600" ; 4 SEGMENTOS,   5kHz
# runScript: s$,    ip$,  op$,   "c22_fri"+w$,  "c22_fri"+t$,  "wideband", 15000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.3, 0.65,   3.965,   0.000,  0.000, "600" ; 4 SEGMENTOS,   5kHz
# runScript: s$,    ip$,  op$,   "c23_fri"+w$,  "c23_fri"+t$,  "wideband", 15000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.3, 0.65,   3.965,   0.000,  0.000, "600" ; 4 SEGMENTOS,   5kHz
# runScript: s$,    ip$,  op$,   "c24_fri"+w$,  "c24_fri"+t$,  "wideband", 15000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.3, 0.65,   3.965,   0.000,  0.000, "600" ; 3 segmentos,   15kHz
# runScript: s$,    ip$,  op$,   "c26_fri"+w$,  "c26_fri"+t$,  "wideband", 15000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.3, 0.65,   3.965,   0.000,  0.000, "600" ; 4 SEGMENTOS,   5kHz
# 
# 
# #          script ipath opath  wav            textgrid       wlength     maxfq   dynrg DPT minpt maxpt DINT xspi DFOR forcl  forn drspk hFrom hTo  hosFrom hosTo  ssFrom  ssTo   dpi     nSeg          Hz
# runScript: s$,    ip$,  op$,   "c27_afr"+w$,  "c27_afr"+t$,  "wideband", 9000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.000,  0.000, "600" ; 4 segmentos,  9kHz
# runScript: s$,    ip$,  op$,   "c28_afr"+w$,  "c28_afr"+t$,  "wideband", 9000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.000,  0.000, "600" ; 4 segmentos,  9kHz
# runScript: s$,    ip$,  op$,   "c29_afr"+w$,  "c29_afr"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.0, 0.65,   3.580, 0.000,  0.000, "600" ; 3 segmentos,  5kHz
# runScript: s$,    ip$,  op$,   "c30_afr"+w$,  "c30_afr"+t$,  "wideband", 9000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.000,  0.000, "600" ; 4 segmentos,  9kHz
# runScript: s$,    ip$,  op$,   "c31_afr"+w$,  "c31_afr"+t$,  "wideband", 9000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.000,  0.000, "600" ; 4 segmentos,  9kHz
# runScript: s$,    ip$,  op$,   "c32_afr"+w$,  "c32_afr"+t$,  "wideband", 9000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.000,  0.000, "600" ; 4 segmentos,  9kHz
# runScript: s$,    ip$,  op$,   "c33_afr"+w$,  "c33_afr"+t$,  "wideband", 9000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.000,  0.000, "600" ; 4 segmentos,  9kHz
# runScript: s$,    ip$,  op$,   "c34_afr"+w$,  "c34_afr"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.0, 0.65,   3.580, 0.000,  0.000, "600" ; 3 segmentos,  5kHz
# runScript: s$,    ip$,  op$,   "c35_afr"+w$,  "c35_afr"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.0, 0.65,   3.580, 0.000,  0.000, "600" ; 3 segmentos,  5kHz
# runScript: s$,    ip$,  op$,   "c36_afr"+w$,  "c36_afr"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.0, 0.65,   3.580, 0.000,  0.000, "600" ; 3 segmentos,  5kHz
# runScript: s$,    ip$,  op$,   "c37_afr"+w$,  "c37_afr"+t$,  "wideband", 9000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.000,  0.000, "600" ; 4 segmentos,  9kHz
# runScript: s$,    ip$,  op$,   "c38_afr"+w$,  "c38_afr"+t$,  "wideband", 9000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.000,  0.000, "600" ; 4 segmentos,  9kHz
# runScript: s$,    ip$,  op$,   "c39_afr"+w$,  "c39_afr"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.0, 0.65,   3.580, 0.000,  0.000, "600" ; 3 segmentos,  5kHz
# 
# 
# #          script ipath opath  wav            textgrid       wlength     maxfq   dynrg DPT minpt maxpt DINT xspi DFOR forcl  forn drspk hFrom hTo  hosFrom hosTo  ssFrom  ssTo   dpi     nSeg         Hz
# runScript: s$,    ip$,  op$,   "c41_nas"+w$,  "c41_nas"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.000,  0.000, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "c42_nas"+w$,  "c42_nas"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.000,  0.000, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "c43_nas"+w$,  "c43_nas"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.000,  0.000, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "c44_nas"+w$,  "c44_nas"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.000,  0.000, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "c45_nas"+w$,  "c45_nas"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.000,  0.000, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "c46_nas"+w$,  "c46_nas"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.000,  0.000, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "c47_nas"+w$,  "c47_nas"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.000,  0.000, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "c48_nas"+w$,  "c48_nas"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.000,  0.000, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "c49_nas"+w$,  "c49_nas"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.000,  0.000, "600" ; 4 segmentos, 5kHz
# 
# 
# #          script ipath opath  wav            textgrid       wlength     maxfq   dynrg DPT minpt maxpt DINT xspi DFOR forcl  forn drspk hFrom hTo  hosFrom hosTo  ssFrom  ssTo   dpi     nSeg         Hz
# runScript: s$,    ip$,  op$,   "c50_lat"+w$,  "c50_lat"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.000,  0.000, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "c51_lat"+w$,  "c51_lat"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.000,  0.000, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "c52_lat"+w$,  "c52_lat"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.0, 0.65,   3.580, 0.000,  0.000, "600" ; 3 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "c53_lat"+w$,  "c53_lat"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.000,  0.000, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "c54_lat"+w$,  "c54_lat"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.000,  0.000, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "c55_lat"+w$,  "c55_lat"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.0, 0.65,   3.580, 0.000,  0.000, "600" ; 3 segmentos, 5kHz
# 
# 
# #          script ipath opath  wav            textgrid       wlength     maxfq   dynrg DPT minpt maxpt DINT xspi DFOR forcl  forn drspk hFrom hTo  hosFrom hosTo  ssFrom  ssTo   dpi     nSeg         Hz
# runScript: s$,    ip$,  op$,   "c56_vib"+w$,  "c56_vib"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.0, 0.65,   3.580, 0.000,  0.000, "600" ; 3 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "c57_vib"+w$,  "c57_vib"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.0, 0.65,   3.580, 0.000,  0.000, "600" ; 3 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "c58_vib"+w$,  "c58_vib"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.0, 0.65,   3.580, 0.000,  0.000, "600" ; 3 segmentos, 5kHz
# 
# 
# #          script ipath opath  wav            textgrid       wlength     maxfq   dynrg DPT minpt maxpt DINT xspi DFOR forcl  forn drspk hFrom hTo  hosFrom hosTo  ssFrom  ssTo   dpi      nSeg           Hz
# runScript: s$,    ip$,  op$,   "c59_apr"+w$,  "c59_apr"+t$,  "wideband", 5000,   55,   0,  0,    350,  1,   20,  0,   5500,  5,   10,   0.7,  3.0, 0.65,   3.580, 0.070,  0.355, "600"  ; 4 SEGMENTOS,   5kHz
# runScript: s$,    ip$,  op$,   "c60_apr"+w$,  "c60_apr"+t$,  "wideband", 5000,   55,   0,  0,    350,  1,   20,  0,   5500,  5,   10,   0.7,  3.0, 0.65,   3.580, 0.067,  0.263, "600"  ; 4 SEGMENTOS,   5kHz
# runScript: s$,    ip$,  op$,   "c61_apr"+w$,  "c61_apr"+t$,  "wideband", 5000,   55,   0,  0,    350,  1,   20,  0,   5500,  5,   10,   0.7,  3.0, 0.65,   3.580, 0.078,  0.387, "600"  ; 4 SEGMENTOS,   5kHz
# runScript: s$,    ip$,  op$,   "c62_apr"+w$,  "c62_apr"+t$,  "wideband", 5000,   55,   0,  0,    350,  1,   20,  0,   5500,  5,   10,   0.7,  3.0, 0.65,   3.580, 0.073,  0.358, "600"  ; 4 SEGMENTOS,   5kHz
# runScript: s$,    ip$,  op$,   "c63_apr"+w$,  "c63_apr"+t$,  "wideband", 5000,   55,   0,  0,    350,  1,   20,  0,   5500,  5,   10,   0.7,  3.0, 0.65,   3.580, 0.070,  0.404, "600"  ; 4 SEGMENTOS,   5kHz
# runScript: s$,    ip$,  op$,   "c635_apr"+w$, "c635_apr"+t$, "wideband", 5000,   55,   0,  0,    350,  1,   20,  0,   5500,  5,   10,   0.7,  3.0, 0.65,   3.580, 0.079,  0.390, "600"  ; 4 SEGMENTOS,   5kHz
# runScript: s$,    ip$,  op$,   "c64_apr"+w$,  "c64_apr"+t$,  "wideband", 5000,   55,   0,  0,    350,  1,   20,  0,   5500,  5,   10,   0.7,  3.0, 0.65,   3.580, 0.070,  0.449, "600"  ; 4 SEGMENTOS,   5kHz
# runScript: s$,    ip$,  op$,   "c65_apr"+w$,  "c65_apr"+t$,  "wideband", 5000,   55,   0,  0,    350,  1,   20,  0,   5500,  5,   10,   0.7,  3.0, 0.65,   3.580, 0.070,  0.395, "600"  ; 4 SEGMENTOS,   5kHz
# runScript: s$,    ip$,  op$,   "c66_apr"+w$,  "c66_apr"+t$,  "wideband", 5000,   55,   0,  0,    350,  1,   20,  0,   5500,  5,   10,   0.7,  3.0, 0.65,   3.580, 0.076,  0.364, "600"  ; 4 SEGMENTOS,   5kHz
# 
# 
# #          script ipath opath  wav          textgrid    wlength     maxfq  dynrg DPT minpt maxpt  DINT  xspi   DFOR forcl   forn drspk hFrom hTo  hosFrom hosTo   ssFrom  ssTo   dpi     nSeg      Hz
# runScript: s$,    ip$,  op$,   "f01_V"+w$,  "f01_V"+t$, "wideband", 5000,  55,   0,  0,    350,   0,    20,    0,   5500,   5,   10,   0.7,  3.4, 0.65,   3.985,  0.000,  0.000, "600" ; fonación, 5kHz
# runScript: s$,    ip$,  op$,   "f02_C"+w$,  "f02_C"+t$, "wideband", 5000,  55,   0,  0,    350,   0,    20,    0,   5500,   5,   10,   0.7,  3.4, 0.65,   3.985,  0.000,  0.000, "600" ; fonación, 5kHz
# runScript: s$,    ip$,  op$,   "f03_W"+w$,  "f03_W"+t$, "wideband", 5000,  55,   0,  0,    350,   0,    20,    0,   5500,   5,   10,   0.7,  3.4, 0.65,   3.985,  0.000,  0.000, "600" ; fonación, 5kHz
# runScript: s$,    ip$,  op$,   "f04_F"+w$,  "f04_F"+t$, "wideband", 5000,  55,   0,  0,    350,   0,    20,    0,   5500,   5,   10,   0.7,  3.4, 0.65,   3.985,  0.000,  0.000, "600" ; fonación, 5kHz
# 
# 
# #          script ipath opath  wav            textgrid       wlength     maxfq   dynrg DPT minpt maxpt DINT xspi DFOR forcl  forn drspk hFrom hTo  hosFrom hosTo  ssFrom  ssTo   dpi     nSeg         Hz
# runScript: s$,    ip$,  op$,   "s1_sec"+w$,   "s1_sec"+t$,   "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  5.5, 0.65,   6.080, 0.000,  0.000, "600" ; secuenciasL, 5kHz
# runScript: s$,    ip$,  op$,   "s2_sec"+w$,   "s2_sec"+t$,   "wideband", 15000,  55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  5.5, 0.65,   6.170, 0.000,  0.000, "600" ; secuenciasL, 15kHz
# runScript: s$,    ip$,  op$,   "s3_sec"+w$,   "s3_sec"+t$,   "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  5.5, 0.65,   6.080, 0.000,  0.000, "600" ; secuenciasL, 5kHz
# runScript: s$,    ip$,  op$,   "s4_sec"+w$,   "s4_sec"+t$,   "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  5.5, 0.65,   6.080, 0.000,  0.000, "600" ; secuenciasL, 5kHz
# runScript: s$,    ip$,  op$,   "s5_sec"+w$,   "s5_sec"+t$,   "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  5.0, 0.65,   5.580, 0.000,  0.000, "600" ; secuenciasM, 5kHz
# runScript: s$,    ip$,  op$,   "s6_sec"+w$,   "s6_sec"+t$,   "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.000,  0.000, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "s7_sec"+w$,   "s7_sec"+t$,   "wideband", 5000,   55,   0,  0,    350,  1,   20,  0,   5500,  5,   10,   0.7,  5.5, 0.65,   6.080, 0.075,  1.003, "600" ; secuenciasL, 5kHz
# 
# 
# #          script ipath opath  wav            textgrid       wlength     maxfq   dynrg DPT minpt maxpt DINT xspi DFOR forcl  forn drspk hFrom hTo  hosFrom hosTo  ssFrom  ssTo   dpi     nSeg         Hz
# runScript: s$,    ip$,  op$,   "v01_voc"+w$,  "v01_voc"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  1,   4200,  4,   20,   0.7,  3.4, 0.65,   3.985, 0.122,  0.201, "600" ; ¿?
# runScript: s$,    ip$,  op$,   "v02_voc"+w$,  "v02_voc"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  1,   5000,  4,   15,   0.7,  3.4, 0.65,   3.985, 0.148,  0.257, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "v03_voc"+w$,  "v03_voc"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  1,   5900,  4,   10,   0.7,  3.4, 0.65,   3.985, 0.118,  0.254, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "v04_voc"+w$,  "v04_voc"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  1,   4800,  4,   10,   0.7,  3.4, 0.65,   3.985, 0.135,  0.280, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "v05_voc"+w$,  "v05_voc"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  1,   4800,  4,   10,   0.7,  3.4, 0.65,   3.985, 0.163,  0.275, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "v06_voc"+w$,  "v06_voc"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  1,   5300,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.242,  0.374, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "v07_voc"+w$,  "v07_voc"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  1,   5300,  5,   10,   0.7,  4.0, 0.65,   4.585, 0.156,  0.257, "600" ; ¿?
# runScript: s$,    ip$,  op$,   "v08_voc"+w$,  "v08_voc"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  1,   5300,  5,   20,   0.7,  3.4, 0.65,   3.985, 0.082,  0.224, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "v09_voc"+w$,  "v09_voc"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  1,   5500,  5,   20,   0.7,  5.0, 0.65,   5.580, 0.070,  0.243, "600" ; secuenciasM, 5kHz
# runScript: s$,    ip$,  op$,   "v10_voc"+w$,  "v10_voc"+t$,  "wideband", 5000,   55,   1,  0,    350,  1,   20,  0,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.124,  0.408, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "v11_voc"+w$,  "v11_voc"+t$,  "wideband", 5000,   55,   1,  0,    350,  1,   20,  0,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.121,  0.406, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "v12_voc"+w$,  "v12_voc"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.000,  0.000, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "v13_voc"+w$,  "v13_voc"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.000,  0.000, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "v14_voc"+w$,  "v14_voc"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  1,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.406,  0.527, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "v15_voc"+w$,  "v15_voc"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5500,  5,   10,   0.7,  3.7, 0.65,   4.285, 0.000,  0.000, "600" ; ¿?
# runScript: s$,    ip$,  op$,   "v16_voc"+w$,  "v16_voc"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  0,   5000,  4,   10,   0.7,  5.5, 0.65,   6.080, 0.329,  0.539, "600" ; ¿?
# runScript: s$,    ip$,  op$,   "v17_voc"+w$,  "v17_voc"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  1,   5000,  5,   2.5,  0.7,  3.4, 0.65,   3.985, 0.128,  0.257, "600" ; ¿?
# runScript: s$,    ip$,  op$,   "v18_voc"+w$,  "v18_voc"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  1,   5500,  5,   10,   0.7,  3.4, 0.65,   3.985, 0.099,  0.253, "600" ; ¿?
# runScript: s$,    ip$,  op$,   "v19_voc"+w$,  "v19_voc"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  1,   5000,  5,   20,   0.7,  2.6, 0.65,   3.180, 0.200,  0.356, "600" ; 2 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "v20_voc"+w$,  "v20_voc"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  1,   4500,  4,   10,   0.7,  3.4, 0.65,   3.985, 0.481,  0.578, "600" ; ¿?
# runScript: s$,    ip$,  op$,   "v21_voc"+w$,  "v21_voc"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  1,   4500,  3,   25,   0.7,  3.4, 0.65,   3.985, 0.473,  0.644, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "v22_voc"+w$,  "v22_voc"+t$,  "wideband", 5000,   55,   0,  0,    350,  0,   20,  1,   5000,  5,   2,    0.7,  3.6, 0.65,   4.185, 0.126,  0.166, "600" ; ¿?
# 
# #          script ipath opath  wav            textgrid       wlength     maxfq  dynrg DPT minpt maxpt   DINT  xspi   DFOR forcl   forn drspk hFrom hTo  hosFrom hosTo    ssFrom ssTo   dpi     nSeg          Hz
# runScript: s$,    ip$,  op$,   "test_1a"+w$,  "test_1a"+t$,  "wideband", 5000,  55,   0,  0,    350,    0,    20,    0,   5500,   5,   10,   0.7,  3.4, 0.65,   3.985,   0.140, 0.460, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "test_1b"+w$,  "test_1b"+t$,  "wideband", 5000,  55,   0,  0,    350,    0,    20,    0,   5500,   5,   10,   0.7,  3.4, 0.65,   3.985,   0.140, 0.460, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "test_1c"+w$,  "test_1c"+t$,  "wideband", 5000,  55,   0,  0,    350,    0,    20,    0,   5500,   5,   10,   0.7,  3.4, 0.65,   3.985,   0.140, 0.460, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "test_1d"+w$,  "test_1d"+t$,  "wideband", 5000,  55,   0,  0,    350,    0,    20,    0,   5500,   5,   10,   0.7,  3.4, 0.65,   3.985,   0.140, 0.460, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "test_1e"+w$,  "test_1e"+t$,  "wideband", 5000,  55,   0,  0,    350,    0,    20,    0,   5500,   5,   10,   0.7,  3.4, 0.65,   3.985,   0.140, 0.460, "600" ; 4 segmentos, 5kHz
# runScript: s$,    ip$,  op$,   "test_1f"+w$,  "test_1f"+t$,  "wideband", 5000,  55,   0,  0,    350,    0,    20,    0,   5500,   5,   10,   0.7,  3.4, 0.65,   3.985,   0.140, 0.460, "600" ; 4 segmentos, 5kHz
