# DenseAmygdalaRelease
Stimulus preparation and presentation scripts for the Caltech Dense Amygdala project

## Dependencies
The presentation script files were developed under PsychoPy v2021.2.3 and should be forward compatible with the latest Psychopy version. More details on using on using the backward compatibility functions of PsychoPy can be found at https://www.psychopy.org/documentation.html

Download the latest version of PsychoPy from https://www.psychopy.org/download.html

## Preparation of Movie Stimuli
Example scripts used to generate stimulus clips from entire movie sources can be found in `MovieWithEyetracking/movies/<movie name>/code/`. Original MP4 source files derived from purchased or licensed digitial versions of the movies should be placed in `MovieWithEyetracking/movies/<movie name>/Original/` for use by these scripts. Original and prepared video files are not included in this repository due to copyright restrictions.

## Stimulus Presentation
We recommend loading the builder file `MovieWithEyetracking/MovieWithEyetracking.psyexp` into PsychoPy then generating and running the script from that interface. The script expects a '5' keypress from an appropriate interface box such as a Current Designs FORP 932 Interface. The expected trigger key can be configured in the builder file.

## Eyetracking
Eyetracking via an SR Research Eyelink 1000+ system is supported if available. The Eyelink SDK should be installed and the Eyelink system connnected via an appropriate ethernet crossover cable.

