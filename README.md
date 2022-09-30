# gait-in-parkinsons-disease
When a person is comfortably standing with both legs parallel to each 
other, sensor locations inside the insole can be described (according 
to the Infotronic website;  http://www.infotronic.nl/) as lying 
approximately at the following (X,Y) coordinates, assuming that the 
origin (0,0) is just between the legs and the person is facing towards 
the positive side of the Y axis: 
 
Sensor       X      Y 
---------------------------- 
L1         -500   -800 
L2         -700   -400 
L3         -300   -400 
L4         -700      0 
L5         -300      0 
L6         -700    400 
L7         -300    400 
L8         -500    800 
 
R1          500   -800 
R2          700   -400 
R3          300   -400 
R4          700      0 
R5          300      0 
R6          700    400 
R7          300    400 
R8          500    800 

The X and Y numbers are in an arbitrary coordinate system reflecting 
the relative (arbitrarily scaled) positions of the sensors within each 
insole.  During walking, the sensors inside each insole remain at the 
same relative position, but the two feet are no longer parallel to 
each other.  Thus, this coordinate system enables a calculation of a 
proxy for the location of the center of pressure (COP) under each 
foot. 

In the diagnosis of Parkinson's disease, researchers have collected a lot of gait data, 
and developed many feature extraction and machine learning methods, such as space-time, 
human contour, kinematics and dynamics. However, the existing methods have some limitations, 
such as narrow application scope, simple extraction method and poor feature interpretability. 
In order to understand the whole process of gait movement and obtain deeper motion features, 
we used the concept of optical flow method to conduct in-depth research on gait signals.Optical flow 
method is an important method in the field of computer vision. 
Based on the pixel intensity data of the image sequence, it uses the change and correlation of the 
data in the time domain to judge the motion transfer of the image pixel position. From the perspective 
of biomechanics, the walk is a rhythmic alternating motion of the lower limb, the reaction force between 
the sole and the ground pushes the entire body forward, and the transfer mode of the force-bearing part 
of the sole directly affects the quality of the gait. Inspired by these kinematic studies, we extract 
"optical flow" information based on pressure sensor data.


This paper proposes to treat the plane composed of two-foot surfaces as "image" data, and a gait cycle as a "video" data. 
The parameters of this video signal are shown below.
    parameter	                    Value
  Time length	             cycle length-1
      Size	                       6*5
Size of the right foot	           3*5
Size of the left foot	             3*5
   frame rate(HZ)	                 100

According to the pressure value of each pressure sensor, the force state of the sole at this moment can be found, 
that is, the pressure value of each point is arranged from small to large, and the force state and force level of different 
positions of the sole at this moment can be found, and the next moment of level 1 points and 16 points may be transferred 
to another location, The flow of force points at all levels in the soles of the two frames forms optical flow. We added the optical 
flow motion vector from the 1st force point to the 16th force point to the data set.



data format:
---------------
Each row contains 35 columns:
Column      1:   Time (in seconds)
Columns   2-9:   Vertical ground reaction force (VGRF, in Newton) on each of 8 
sensors located under the left foot 
Columns 10-17:   VGRF on each of the 8 sensors located under the right foot 
Column     18:   Total force under the left foot 
Column     19:   Total force under the right foot.
Columns 20-35:Optical flow vector from the 1st force point to the 16th force point。

 

 
 
Data file names: 
---------------- 
These follow a common convention, e.g., GaCo01_02.txt  or  JuPt03_06.txt, 
where 
 
Ga, Ju or Si – indicate the study from which the data originated: 
Ga - Galit Yogev et al (dual tasking in PD;  Eur J Neuro, 2005) 
Ju – Hausdorff et al (RAS in PD;  Eur J Neuro, 2007) 
Si - Silvi Frenkel-Toledo et al (Treadmill walking in PD;  Mov Disorders, 
2005) 
 
Co or Pt: Control subject or a PD Patient 
 
01: Subject number in the group 
 
A walk number of 10  (for the "Ga" study) indicates a dual-task walking, 
where the subject was engaged in serial-7 subtraction while walking. 
 
A walk number of 01 refers to a usual, normal walk. 
 
.txt: file name extension 
 
The sampling rate was 100 Hz.
