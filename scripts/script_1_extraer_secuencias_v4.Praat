select all
nocheck Remove
# clearinfo

input_path$  = "/home/mauricio/publications_1_(in_preparation)/book_Figueroa_Muñoz_(álbum_espectrogramas)/proceso_1_grabaciones/"
output_path$ = "/home/mauricio/publications_1_(in_preparation)/book_Figueroa_Muñoz_(álbum_espectrogramas)/proceso_2_secuencias/"

wav_list_id = Create Strings as file list: "wavList", input_path$ + "*.wav"
tgd_list_id = Create Strings as file list: "tgdList", input_path$ + "*.TextGrid"
n_strings   = Get number of strings

for i from 1 to n_strings

  selectObject: wav_list_id
  wav_name$ = Get string: i
  wav_id    = Read from file: input_path$ + wav_name$

  selectObject: tgd_list_id
  tgd_name$ = Get string: i
  tgd_id    = Read from file: input_path$ + tgd_name$
  n_int_t2  = Get number of intervals: 2

  for j from 1 to n_int_t2
    
    selectObject: tgd_id
    label_t2$ = Get label of interval: 2, j

    if label_t2$ != ""

      selectObject: tgd_id
      start_int_t2 = Get start time of interval: 2, j
      new_start_t2 = start_int_t2 - 0.050
      end_int_t2   = Get end time of interval: 2, j
      new_end_t2   = end_int_t2 + 0.050
      int_t4       = Get interval at time: 4, start_int_t2
      label_t4$    = Get label of interval: 4, int_t4
      int_t5       = Get interval at time: 5, start_int_t2
      label_t5$    = Get label of interval: 5, int_t5
      out_name$    = label_t4$ + "_" + label_t5$

      # appendInfoLine: i, tab$, j, tab$, label_t2$, tab$, label_t4$, tab$, label_t5$, tab$, out_name$

      selectObject: tgd_id
      id_section_tgd = Extract part: new_start_t2, new_end_t2, "no"
      Save as text file: output_path$ + out_name$ + ".TextGrid"
      
      selectObject: wav_id
      id_section_wav = Extract part: new_start_t2, new_end_t2, "rectangular", 1.0, 0
      Save as WAV file: output_path$ + out_name$ + ".wav"

      removeObject: id_section_tgd, id_section_wav

    endif
  endfor

  removeObject: wav_id, tgd_id

endfor
