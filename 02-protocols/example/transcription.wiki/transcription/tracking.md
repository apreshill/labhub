We use a service called Airtable to keep track of transcription progress.  It's basically a spreadsheet with more detailed options than a traditional spreadsheet.  The [tracker is located here](https://airtable.com).

# The Simple Version

Find a file to transcribe.  Put your name and today's date under date started.  If there's anything to note about the file put it under "transcriber notes".  Transcribe!  When you're done and have uploaded it, mark the date you finish and select "complete" in the status column for that file.  

## Reasons Not to Transcribe a File (Yet)

* If the audio_location is not "ASD server", then we don't actually have an audio file associated with that ID/visit.  Entries without a file are for completeness' sake so we know what happened to that ID. These we always mark as "non-transcribable" in the status column, since they can never be transcribed.
* If it already says "complete" in the status column, someone's already done that one.  
* By default we only transcribe module 3.  ADHD and UWG are almost all module 3, so the module field is blank -- these are fine to transcribe.  However, _if_ there's an entry in "module" that is a number _other_ than 3 then don't transcribe it unless specifically asked.  (There's discussion about eventually including module 2s as well.  Module 4 would presumably be transcribable, but we never get them.) We don't mark these as non-transcribable in the status column, since they technically could be transcribed--instead we leave it blank.
* Most audio_flags are reasons that we shouldn't transcribe the tape yet.  The nonstandard administrations mean we can't use the data for most results reporting, so those files shouldn't be transcribed while we have standard administrations left.  Incomplete tapes might still have enough to transcribe, and "bad audio" can mean anything from untranscribably corrupted to just hard to hear.  (Those tapes often will give you a headache, though.) We don't automatically mark these as non-transcribable in the status column, since many of them could technically be transcribed when we run out of standard administrations. If you do try to transcribe one and there is reason to think it could never be transcribed--e.g., because the audio is so bad--then mark it as "non-transcribable" in the status column.

# Column Guide

## file_name
Self-explanatory -- formatted as the prefix plus ID, so it'll leave off the "ADOS.wav" parts.  This uniquely identifies files from UWG and ADHD; UWL also needs visit_number.

## corpus
Which corpus it came from: ADHD, UWL, UWG.

## visit_number
This is for UWL which was longitudinal.  It tracks the different visits (1, 2, 3, 4) for each kid, because each kid has up to 4 files.  Visit 1 didn't include any Module 3s so Visit 1 tapes are pretty much never going to be transcribed.  For UWL you need both the file_name and visit_number to identify the wav file/textgrid that corresponds to the row.  

## status
A drop-down representing which files have a complete transcription up on the asd server! This option can be blank (meaning it hasn't been transcribed yet), complete (meaning it's transcribed and on the asd server) or non-transcribable (meaning the audio location is not on the asd server, or the file is non-transcribable for another reason, as described above). This helps keep track of what's done and gives transcribers a sense of accomplishment after finishing each file.  Also, some of the old UW files for timepoint 4 don't have information for transcriber or transcription dates, so this is the most reliable way to see if files are done or not.

## audio_location
Either the audio is on the asd server where you can download it, or something happened to it such that we don't have it.  
This keeps track of that.  From a transcriber's point of view, if it's on "ASD Server" then it's available, otherwise it isn't.

## transcriber
This keeps track of which transcriber transcribed which file.  

## date_started
The date a transcriber started work on the file.

## date_finished
The date a transcriber finished work on the file.

## ados_module
If it's not filled out, assume 3.  For studies where we have multiple modules (mostly UWL) this tracks which module each file is.  A few ADHD files switch to module 2 halfway through and these are marked here too.   

## audio_flags
Flags for common issues with tape, reasons audio can't be transcribed, or reasons why we don't have a tape at all.  If a tape turns out to be untranscribable for the reasons listed flag it so other transcribers don't have to repeat your check.  

## transcriber_notes
A place for relevant notes about the file  -- whatever you think would be relevant to analysis.  The most common notes are if activities are out of order or if some activities are missing.  This is also the place to put more details about why a file is untranscribable if you feel it would be helpful.  

For a while it wasn't normal to see Conversation and Reporting, so some of the first tapes to have it are marked.  You don't have to mark if a tape has C&R (or not); it's now considered normal either way.  

If you have to concatenate two audio files when [bringing over audio from audio2](./audio2) that is often mentioned here.

Audio problems that affect much or all of a file should get some marking here.  If marking substantial background or line noise in a file, timestamps should be in seconds.  (This is for noise that persists through most of the file; short periods are marked only in the transcript itself.)  If the kid is regularly too quiet for the mic to pick up or so loud the mic is overloading, those are often noted here as well.

Low-verbal or less verbal are just tags transcriptionists include for kids who take module 3 but really don't talk much/display much language.  They don't reflect anything clinical and are just a transcriber intuition thing.  

If there are two examiners (definitely not a parent sitting in as described above) that's typically marked here, too.


## additional_notes
These are for notes that came from the lab that gave us the tapes; some of them are outdated e.g. "may be coming" for files we now have.  Kept for historical reasons.  


## Conversation and Reporting

There was a long issue where we should have been transcribing Conversation and Reporting but we weren't.  Every transcript that has a C&R section as of August 2017 that wasn't transcribed has been marked here as "Not yet transcribed".  One of the ongoing projects is to go through those transcripts, transcribe C&R, then upload the full transcript and change this marking to "Transcribed".  If nothing is marked here you can assume the file is fine.  For new transcripts going forward, transcribe C&R like any other activity and don't mark anything here.  Once they're all transcribed we can forget about this whole column.  

# Airtable Hints

* The dropdown list options have an autocomplete, so you can start typing e.g. your name in the transcriber column and then click to auto-complete it
* You can do a lot of sorting and filtering to find the transcripts you want.  For example, one of the views will show you the "To do" to easily choose a new transcription file.
* Sometimes one of the columns will hide itself; look for a slider that says "Drag to adjust the number of frozen columns" and drag it a bit to find the hidden column.  This is a mystery.