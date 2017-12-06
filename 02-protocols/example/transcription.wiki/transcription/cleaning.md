[Audacity](http://www.audacityteam.org/home/) is an excellent free tool for audio manipulation which can be useful for cleaning and otherwise manipulating files to make them easier to transcribe.  There's plenty of tutorials online for Audacity, but here are a couple things you may want to do.

Note that Audacity works with its own file format, .aup, by default, so when you load in the wav file it will need to import it, and when you're done you will need to export rather than save the file.

# File too quiet

If the entire file is too quiet, you can amplify it in Audacity using `Effect>Amplify...`  Make sure `Allow clipping` is _not_ checked to avoid introducing distortion.

# File has static

This is helpful only for relatively constant, unchanging background noise such as static, a fan in the background, or a tone throughout the recording.  It will not help with dynamic background noise such as a kid frequently banging on the table or people talking in the hallway.  Results are mixed for line noise/corruption that gets a file marked "bad audio".  

*Disclaimer* Audacity has tools to remove/reduce background noise, _but_ they are not perfect.  ELAN can handle two audio files simultaneously associated with the same transcript.  If you clean a file this way it's recommended that you associate _both_ files with your transcript.  Use `Edit>Linked Files...` in ELAN to add the second sound file, then use the Controls tab in Annotation or Segmentation mode to control which file is being played by muting the other file.  (It may otherwise try to play both at once, which is odd and echoy and unhelpful.)  Check with both files to make sure that speech isn't lost or distorted by the noise removal process, especially when segmenting.  

To reduce a constant background noise throughout the entire file, go to `Effect>Noise Reduction`, then select a few seconds of just noise (where neither the examiner nor the child is speaking, and ideally there also aren't significant background noises from toys, feet, etc) and click `Get Noise Profile`.  Then select Noise Removal again, select the entire file and click `OK`.  If too much or too little was filtered you can revert the change and change the Step 2 settings for how much noise is filtered.