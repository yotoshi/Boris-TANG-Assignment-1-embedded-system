Boris TANG -- Assignment 1
1st assignment Application Development for Raspberry Pi
 
 GET STARTED

 This project was created as the first assignment for the embedded system module.
 It uses  the Opencv facial and object recognition, Haar cascade face preload model and "hog" method encoding to recognise face.
 The dataset included is this github link is some sample pictures of me and my sister which was useful to train the camera to recognize our face.
 
 PREREQUISITES

 In order to achieve the recognition, you will need :

- Take a look at the script.sh file to see what is missing
- A camera for Raspberry Pi
- A headset/speaker in 3.5 milimiter jack or bluetooth

 Read the script.sh to get more information

  - FIRST STEP -
 The first step is to encode your dataset. To do so, you have to take pictures of yourself (around 6 or 7 at least) and launch the encode.py code.
 This program takes 3 arguments : 
- The path to the dataset folder 
- The path and name of the encoding file (a .pickle file)
- The detection method which should be 'hog' by default to run on raspberry pi

 As an example, it can be run as such :
	workon *yourvirtualenvironment* (optional)
		cd ~/*yourvirtualenvironment*
	python encoding.py --dataset *yourpath*/dataset --encodings *yourpath*/encodings.pickle --detection-method hog
	
	
  - SECOND STEP - 
 The second and final step is to run the main program that will do the face recognition and the speech for the instruction
 It will take 2 arguments :
- the cascade .xml file (given in the github link). I used the preworked model of Haar cascade model (I guess it can work with other cascade model file for this purpose)
- the encodings .pickle file encoded by the first step.

 We can use the program as such : 
	workon *yourvirtualenvironment* (optional)
		cd ~/*yourvirtualenvironment*
	python detection_raspi.py --cascade *yourpath*/haarcascade_face.xml --encodings *yourpath*/encodings.pickle 
	
