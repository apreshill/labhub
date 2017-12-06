# Saving

All transcriptions are saved as Praat [TextGrids](transcription/textgrids). UW and FNL are non-chronological, ERPA is chronological.  To export a non-chronological TextGrid from ELAN:

* `File>Export As>Praat TextGrid...`

Naming conventions are the same as the .wav file you transcribed, with the .TextGrid suffix instead of .wav.  FNL files just have an ID number; UW Estes files have an ID number and a visit number because it's a longitudinal study!

# Checking

Use the scripts from Kyle Gorman's ados-scripts, which are hosted here in the folder /ados-scripts/.  In Terminal, put the TextGrid in the ados-scripts folder (or change addresses accordingly) and do:

```
./serialize.py your-file-here.TextGrid
./validate.rb your-file-here.txt
```

This will check your file for common typos and syntax errors (omitted punctuation, mismatched brackets, and the like) and give you feedback in Terminal.  When you've fixed any errors (remember to re-export the TextGrid!) `validate.rb` will give no output.  Then you're good to upload!  Upload the TextGrid, not the .txt file -- the latter is just to make it easier on the validation script.

In the rare case where you had to do something very weird with a transcription file, such as adding an extra tier for another speaker, the script will likely throw errors at you about it.

Tip: If you need to make changes in ELAN, after your last change in Transcription Mode click over to another annotation before you export.  Sometimes if you change an annotation but don't click another annotation, the exported file won't have the change you made.

# Uploading

Transcriptions go on the `asd` server.  The locations are as follows:

* FNL: `asd:language/FNL/ADOS/transcripts/TextGrid`
* UW Estes: `asd:language/UW/ADOS/transcripts/TextGrid`
* UW GENDAAR: `asd:language/UW_GENDAAR/transcripts/`

You can connect to server and drag the files in, or use your preferred Terminal file upload utility.

Sample code using rsync: 

```
rsync -avP ./your-file-here.TextGrid asd:language/FNL/ADOS/transcripts/TextGrid
```

or using scp:
```
scp your-file-here.TextGrid yourusername@asd:/home/language/FNL/ADOS/transcripts/TextGrid/
```

for an FNL file.