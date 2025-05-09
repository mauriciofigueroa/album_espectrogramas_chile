
form Parameters to create image
  comment Path and file parameters:
    sentence Input_files_path: /home/mauricio/publications_1_(in_preparation)/book_Figueroa_Muñoz_(álbum_espectrogramas)/proceso_2_secuencias/
    sentence Output_files_path: /home/mauricio/publications_1_(in_preparation)/book_Figueroa_Muñoz_(álbum_espectrogramas)/proceso_3_espectrogramas/
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
    boolean Draw_pitch 1
    real Minimum_pitch_frequency_(Hz): 0
    real Maximum_pitch_frequency_(Hz): 350
  comment Intensity parameters:
    boolean Draw_intensity 1
    real Proportion_extra_space: 20
  comment Formant parameters:
    boolean Draw_formant 1
    real Formant_ceiling_(Hz): 5500.0
    real How_many_formants: 5
    real Dynamic_range_speckle_(dB): 10
  comment General image parameters:
    real Horizontal_from_(inch): 0.7
    real Horizontal_to_(inch): 5.5
    real Outer_selection_from_(inch): 0.6
    real Outer_selection_to_(inch): 6.3
    real Suprasegmentals_from_(s): 1.8
    real Suprasegmentals_to_(s): 2.4
    choice Dots_per_inch_(DPI):
     option 300
     option 600
     option .pdf
endform

final_window_length    = if window_length == 1 then 0.005 else 0.03 fi
final_dpi_image        = if dots_per_inch == 1 then 300   else 600  fi
l_width_white          = 5
l_width_colour         = 2
real_line_width_white  = if dots_per_inch == 1 then l_width_white  else l_width_white  * 2 fi
real_line_width_colour = if dots_per_inch == 1 then l_width_colour else l_width_colour * 2 fi
speckle_size_white     = 0.7
speckle_size_colour    = 0.5

Erase all
Black
Times
Font size: 12
Line width: 1.0

wav_name$          = name_of_WAV_file$
clean_name$        = wav_name$ - ".wav"
wav_id             = Read from file: input_files_path$ + wav_name$
duration           = Get total duration
h_range_canvas     = horizontal_to - horizontal_from
start_ss_selection = ((h_range_canvas * suprasegmentals_from) / duration) + horizontal_from
end_ss_selection   = ((h_range_canvas * suprasegmentals_to)   / duration) + horizontal_from
spt_id             = To Spectrogram: final_window_length, maximum_frequency, 0.0001, 20.0, "Gaussian"

tgd_name$ = name_of_TextGrid_file$
tgd_id    = Read from file: input_files_path$ + tgd_name$
Remove tier: 5
Remove tier: 4
Remove tier: 3

selectObject: wav_id
Select inner viewport: horizontal_from, horizontal_to, 0.46, 0.73
Draw: 0, 0, 0, 0, "no", "Curve"
Draw inner box

selectObject: spt_id
Select inner viewport: horizontal_from, horizontal_to, 0.73, 1.69
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
  Line width: real_line_width_white
    if suprasegmentals_from != 0 | suprasegmentals_to != 0
        Select inner viewport: start_ss_selection, end_ss_selection, 0.73, 1.69
    endif
  Draw: suprasegmentals_from, suprasegmentals_to, minimum_pitch_frequency, maximum_pitch_frequency, 0
  # azulito, #26547c, 38 84 124
  Colour: "{0.14901960784, 0.3294117647, 0.4862745098}"
  Line width: real_line_width_colour
  Draw: suprasegmentals_from, suprasegmentals_to, minimum_pitch_frequency, maximum_pitch_frequency, 0
  Black
  Select inner viewport: horizontal_from, horizontal_to, 0.73, 1.69
  removeObject: pitch_id
  Line width: 1.0
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
  Line width: real_line_width_white
    if suprasegmentals_from != 0 | suprasegmentals_to != 0
      Select inner viewport: start_ss_selection, end_ss_selection, 0.73, 1.69
    endif
  Draw: suprasegmentals_from, suprasegmentals_to, minimum_int, maximum_dB, 0
  # amarillito, #ffd166, 255 209 102
  Colour: "{1, 0.81960784313, 0.4}"
  Line width: real_line_width_colour
  Draw: suprasegmentals_from, suprasegmentals_to, minimum_int, maximum_dB, 0
  Black
  Select inner viewport: horizontal_from, horizontal_to, 0.73, 1.69
  removeObject: intensity_id
  Line width: 1.0
endif

if draw_formant == 1
  selectObject: wav_id
  formant_id = To Formant (burg): 0.0, how_many_formants, formant_ceiling, 0.025, 50.0
  White
  Speckle size: speckle_size_white
    if suprasegmentals_from != 0 | suprasegmentals_to != 0
        Select inner viewport: start_ss_selection, end_ss_selection, 0.73, 1.69
    endif
  Speckle: suprasegmentals_from, suprasegmentals_to, maximum_frequency, dynamic_range_speckle, 0
  # rosadito, #ef476f, 239 71 111
  Colour: "{0.93725490196, 0.27843137254, 0.43529411764}"
  Speckle size: speckle_size_colour
  Speckle: suprasegmentals_from, suprasegmentals_to, maximum_frequency, dynamic_range_speckle, 0
  Black
  Select inner viewport: horizontal_from, horizontal_to, 0.73, 1.69
  removeObject: formant_id
endif

selectObject: tgd_id
Select inner viewport: horizontal_from, horizontal_to, 0.46, 2.305
Draw: 0, 0, "yes", "yes", "no"
One mark bottom: 0, "no", "yes", "no", "0"
formatted$ = fixed$(duration, 3)
One mark bottom: duration, "no", "yes", "no", formatted$ + " (s)"
Draw inner box

Select outer viewport: outer_selection_from, outer_selection_to, 0.45, 2.56
if    final_dpi_image == "300"
  Save as 300-dpi PNG file: output_files_path$ + clean_name$ + "_300.png"
elsif final_dpi_image == "600"
  Save as 600-dpi PNG file: output_files_path$ + clean_name$ + "_600.png"
elsif final_dpi_image == ".pdf"
  Save as PDF file: output_files_path$ + clean_name$ + "_pdf.pdf"
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
