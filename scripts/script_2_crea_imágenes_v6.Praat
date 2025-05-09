
form Parameters to create image
  comment Path and file parameters:
    sentence Path_to_files: /home/mauricio/publications_1_(in_preparation)/book_Muñoz_Figueroa_(álbum_de_espectrogramas)/repositorio_de_secuencias_e_imágenes_01/
    sentence Name_of_WAV_file: _test.wav
    sentence Name_of_TextGrid_file: _test.TextGrid
  comment Spectrogram parameters:
    # (wideband spectrogram: 0.005 s)
    # (narrowband spectrogram: 0.03 s)
    choice Window_length: 1
      option wideband
      option narrowband
    real Maximum_frequency: 5000.0
    real Dynamic_range_(dB): 55.0
  comment Pitch parameters:
    boolean Draw_pitch 0
    real Minimum_pitch_frequency_(Hz): 0
    real Maximum_pitch_frequency_(Hz): 350
  comment Intensity parameters:
    boolean Draw_intensity 1
    real Proportion_extra_space: 20
  comment Formant parameters:
    boolean Draw_formant 0
    real Formant_ceiling_(Hz): 5500.0
    real Dynamic_range_speckle_(dB): 10
  comment General image parameters:
    real Horizontal_from_(inch): 0.7
    real Horizontal_to_(inch): 5.5
    real Suprasegmentals_from_(s): 1.8
    real Suprasegmentals_to_(s): 2.4
    choice Dots_per_inch_(DPI):
     option 300
     option 600
endform

final_window_length = if window_length == 1 then 0.005 else 0.03 fi
final_dpi_image     = if dots_per_inch == 1 then 300   else 600  fi

Erase all
Black
Times
Font size: 12
Line width: 1.0

wav_name$          = name_of_WAV_file$
clean_name$        = wav_name$ - ".wav"
wav_id             = Read from file: path_to_files$ + wav_name$
duration           = Get total duration
h_range_canvas     = horizontal_to - horizontal_from
start_ss_selection = ((h_range_canvas * suprasegmentals_from) / duration) + horizontal_from
end_ss_selection   = ((h_range_canvas * suprasegmentals_to)   / duration) + horizontal_from
spt_id             = To Spectrogram: final_window_length, maximum_frequency, 0.002, 20.0, "Gaussian"

tgd_name$ = name_of_TextGrid_file$
tgd_id    = Read from file: path_to_files$ + tgd_name$
Remove tier: 2

selectObject: wav_id
Select inner viewport: horizontal_from, horizontal_to, 0.46, 1.03
Draw: 0, 0, 0, 0, "no", "Curve"
Draw inner box

selectObject: spt_id
Select inner viewport: horizontal_from, horizontal_to, 1.03, 2.7
Paint: 0, 0, 0, 0, 100, "yes", dynamic_range, 6.0, 0, "no"
One mark right: 0, "no", "yes", "no", "0"
max_frequency_to_text$ = string$(maximum_frequency / 1000) + " (kHz)"
One mark right: maximum_frequency, "no", "yes", "no", max_frequency_to_text$
Draw inner box

if draw_pitch == 1
  selectObject: wav_id
  @pitchTwoPass: 0.75, 1.5
  pitch_id = selected("Pitch")
  White
  Line width: 5
    if suprasegmentals_from != 0 | suprasegmentals_to != 0
        Select inner viewport: start_ss_selection, end_ss_selection, 1.03, 2.7
    endif
  Draw: suprasegmentals_from, suprasegmentals_to, minimum_pitch_frequency, maximum_pitch_frequency, 0
  Blue
  Line width: 2
  Draw: suprasegmentals_from, suprasegmentals_to, minimum_pitch_frequency, maximum_pitch_frequency, 0
  Black
  Select inner viewport: horizontal_from, horizontal_to, 1.03, 2.7
  removeObject: pitch_id
endif

if draw_intensity == 1
  selectObject: wav_id
  intensity_id = To Intensity: 100.0, 0.0, "yes"
  minimum_int  = Get minimum: 0.0, 0.0, "parabolic"
  maximum_int  = Get maximum: 0.0, 0.0, "parabolic"
  range_int    = maximum_int - minimum_int
  step_extra   = range_int / (100 / proportion_extra_space)
  maximum_dB   = maximum_int + step_extra
  White
  Line width: 5
    if suprasegmentals_from != 0 | suprasegmentals_to != 0
      Select inner viewport: start_ss_selection, end_ss_selection, 1.03, 2.7
    endif
  Draw: suprasegmentals_from, suprasegmentals_to, minimum_int, maximum_dB, 0
  Red
  Line width: 2
  Draw: suprasegmentals_from, suprasegmentals_to, minimum_int, maximum_dB, 0
  Black
  Select inner viewport: horizontal_from, horizontal_to, 1.03, 2.7
  removeObject: intensity_id
endif

if draw_formant == 1
  selectObject: wav_id
  formant_id = To Formant (burg): 0.0, 5, formant_ceiling, 0.025, 50.0
  White
  Speckle size: 0.9
    if suprasegmentals_from != 0 | suprasegmentals_to != 0
        Select inner viewport: start_ss_selection, end_ss_selection, 1.03, 2.7
    endif
  Speckle: suprasegmentals_from, suprasegmentals_to, maximum_frequency, dynamic_range_speckle, 0
  Magenta
  Speckle size: 0.7
  Speckle: suprasegmentals_from, suprasegmentals_to, maximum_frequency, dynamic_range_speckle, 0
  Black
  Select inner viewport: horizontal_from, horizontal_to, 1.03, 2.7
  removeObject: formant_id
endif

selectObject: tgd_id
Select inner viewport: horizontal_from, horizontal_to, 0.46, 3.82
Draw: 0, 0, "yes", "yes", "no"
One mark bottom: 0, "no", "yes", "no", "0"
formatted$ = fixed$(duration, 3)
One mark bottom: duration, "no", "yes", "no", formatted$ + " (s)"
Draw inner box

Select outer viewport: 0.6, 6.3, 0.4, 4.1

if final_dpi_image == 300
  Save as 300-dpi PNG file: path_to_files$ + clean_name$ + "_300.png"
else
  Save as 600-dpi PNG file: path_to_files$ + clean_name$ + "_600.png"
endif

Erase all
removeObject: wav_id, spt_id, tgd_id

procedure pitchTwoPass (.floor_factor, .ceiling_factor)
  .sound = selected("Sound")
  .floor = 60
  .ceiling = 700
  .first_pass = To Pitch: 0.01, .floor, .ceiling
  .q1 = Get quantile: 0, 0, 0.25, "Hertz"
  .q3 = Get quantile: 0, 0, 0.75, "Hertz"
  removeObject: .first_pass
  .floor   = if .q1 != undefined then .q1 * .floor_factor   else .floor   fi
  .ceiling = if .q3 != undefined then .q3 * .ceiling_factor else .ceiling fi
  .error = if .floor >= .ceiling then 1 else 0 fi
  selectObject: .sound
  .id = To Pitch: 0.01, .floor, .ceiling
endproc
