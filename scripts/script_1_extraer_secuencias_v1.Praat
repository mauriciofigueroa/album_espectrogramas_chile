select all
nocheck Remove
clearinfo 

input_path$  = "/home/mauricio/publications_1_(in_preparation)/book_Muñoz_Figueroa_(álbum_de_espectrogramas)/grabaciones_01/"
output_path$ = "/home/mauricio/publications_1_(in_preparation)/book_Muñoz_Figueroa_(álbum_de_espectrogramas)/repositorio_de_secuencias_e_imágenes_01/"

# WINDOWS (ejemplo de ruta): "c://home//mis documentos//proyecto tela//"
# WINDOWS (ejemplo de ruta): "c:\\home\\mis documentos\\proyecto tela\\"

wav_list_id = Create Strings as file list: "wavList", input_path$ + "*.wav"
tgd_list_id = Create Strings as file list: "tgdList", input_path$ + "*.TextGrid"
n_files     = Get number of strings

for i from 1 to n_files

  selectObject: wav_list_id
  wav_name$ = Get string: i
  wav_id    = Read from file: input_path$ + wav_name$

  selectObject: tgd_list_id
  tgd_name$ = Get string: i
  tgd_id    = Read from file: input_path$ + tgd_name$
  n_int_t3  = Get number of intervals: 3

  for j from 1 to n_int_t3
    
    selectObject: tgd_id
    label_t3$ = Get label of interval: 3, j

    if label_t3$ != ""
    
      start_int_t3 = Get start time of interval: 3, j
      int_t2       = Get interval at time: 2, start_int_t3
      label_t2$    = Get label of interval: 2, int_t2
      int_t1       = Get interval at time: 1, start_int_t3
      label_t1$    = Get label of interval: 1, int_t1
      start_int_t1 = Get start time of interval: 1, int_t1
      end_int_t1   = Get end time of interval: 1, int_t1

      id_section_tgd = Extract part: start_int_t1 - 0.05, end_int_t1 + 0.05, 0
      Save as text file: output_path$ + label_t2$ + ".TextGrid"

      selectObject: wav_id
      id_section_wav = Extract part: start_int_t1 - 0.05, end_int_t1 + 0.05, "rectangular", 1.0, 0
      Save as WAV file: output_path$ + label_t2$ + ".wav"

      appendInfoLine: i, tab$, j, tab$, label_t1$, tab$, label_t2$, tab$, label_t3$, tab$, start_int_t1, tab$, end_int_t1

      removeObject: id_section_tgd, id_section_wav

    endif

  endfor
endfor
