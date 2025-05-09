select all
nocheck Remove
clearinfo

input_path$  = "/home/mauricio/publications_1_(in_preparation)/book_Figueroa_Muñoz_(álbum_espectrogramas)/grabaciones_y_anotación/04_cuarta_sesión/"
output_path$ = "/home/mauricio/publications_1_(in_preparation)/book_Figueroa_Muñoz_(álbum_espectrogramas)/espectrogramas/output/"

# WINDOWS (ejemplo de ruta): "c://home//mis documentos//proyecto tela//"
# WINDOWS (ejemplo de ruta): "c:\\home\\mis documentos\\proyecto tela\\"

wav_name$ = "TASCAM_0278_band.wav"
wav_id    = Read from file: input_path$ + wav_name$

tgd_name$ = "TASCAM_0278_band_v1.TextGrid"
tgd_id    = Read from file: input_path$ + tgd_name$
n_int_t1  = Get number of intervals: 1

for j from 1 to n_int_t1
  
  selectObject: tgd_id
  label_t1$ = Get label of interval: 1, j

  if label_t1$ != ""
  
    selectObject: tgd_id
    start_int_t1 = Get start time of interval: 1, j
    new_start_t1 = start_int_t1 - 0.050
    end_int_t1   = Get end time of interval: 1, j
    new_end_t1   = end_int_t1 + 0.050
    int_t2       = Get interval at time: 2, start_int_t1
    label_t2$    = Get label of interval: 2, int_t2
    int_t3       = Get interval at time: 3, start_int_t1
    label_t3$    = Get label of interval: 3, int_t3
    int_t4       = Get interval at time: 4, start_int_t1
    label_t4$    = Get label of interval: 4, int_t4
    out_name$    = label_t3$ + "_" + label_t4$

    appendInfoLine: j, tab$, label_t1$, tab$, label_t2$, tab$, label_t3$, tab$, label_t4$, tab$, out_name$

    id_section_tgd = Extract part: new_start_t1, new_end_t1, "no"
    Save as text file: output_path$ + out_name$ + ".TextGrid"

    selectObject: wav_id
    id_section_wav = Extract part: new_start_t1, new_end_t1, "rectangular", 1.0, 0
    Save as WAV file: output_path$ + out_name$ + ".wav"

    removeObject: id_section_tgd, id_section_wav

  endif

endfor
