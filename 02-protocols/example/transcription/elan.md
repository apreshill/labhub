The suggested tool for transcription is [ELAN] (https://tla.mpi.nl/tools/tla-tools/elan/), a free professional grade tool for transcription and annotation made by the Max Planck Institute.  Versions for MacOS, Windows, and Linux can be downloaded from the link above.  

One of the great advantages to ELAN is that it is very customizable; each transcriber will likely find their own specific set of shortcuts that are most comfortable to them.  There are many guides to ELAN online.  For example, the official handbook is [here](http://www.mpi.nl/corpus/manuals/manual-elan.pdf) (pdf) while a guide from UPenn with some useful suggested shortcuts is [here](http://fave.ling.upenn.edu/downloads/ELAN_Introduction.pdf) (pdf).  Most non-official guides will include some stuff specific to their lab's workflow, so here's ours.

ELAN can be kind of buggy.  We recommend that you configure the autosave (as described below).  If you have trouble with the beta, feel free to use the last stable version instead.   

# Autosave

This gets its own section!  ELAN has an autosave, but _it is not on by default_ (R.I. discovered this exactly the way you'd think).  Go to `File>Automatic Backup` and select the frequency with which you want it to autosave.  The autosave will be in another file with 001 appended to the end of the filename.  

# Overview of Modes

This is an overview of the three modes relevant to our transcriptions here.  The other two, Media Synchronization and Interlinearization, are used for other types of annotation (multiple media types in the first case and multiple tiers per speaker in the second).  

## Segmentation Mode

This mode is typically where you want to start.  It allows you to mark off segments of speech in different tiers, as well as to change the segment times and merge segments, but not to enter text in the annotations.  

## Transcription Mode 

This mode presents you with a list of all the segments you've made in other modes.  It is meant for entering transcription text quickly and easily.

Hint: the colors assigned to the different tiers seem to be random.  Sometimes it'll assign very similar colors to two tiers; the right-click menu gives you the option to change them (per transcription).

## Annotation Mode

You can segment and transcribe in this mode.  It is possible to do your entire workflow in this mode, however this is not recommended because it involves using a lot of typing chords and can be very rough on your hands.  This mode can be useful for correcting/tweaking annotations, for example adding a note in the Comments tier about a sound overlapping the child's speech, or extending an annotation that accidentally ended before the utterance did.

# Setting Up

When you have your audio file, select `File>New...` and pick the audio file, then click OK to create your transcription.    

For your first transcription, you'll see a Default tier.  Go to `Tier>Add New Tier...` and use the options there to remove or rename Default and add other tiers until your tiers are the four required in the transcription guidelines (Child, Examiner, Activity, Comments).  You don't need to fill out any other information in the tiers.  

Once you have your tier information, you can select `File>Save As Template...` to create a template to store your tier information.  For subsequent transcriptions you can add this in the new file dialogue under `Add Template File`, and the tiers will automatically be in the right order.  

If you move the audio file before you are done with your transcription, you will have to tell ELAN where to find it again.

# Suggested Workflow

There are probably as many workflows as transcribers.  However, we all follow the same basic segmentation > transcription order.  This section lists some options; find what works for you.  Definitely pay attention to ergonomics, as transcription can be hard on the hands if you're doing it for long stretches.  

Note that ELAN allows you to change the rate at which it plays back audio.  Slowing down can be helpful for hearing fast speech or finding difficult speech boundaries; speeding up can help with broad activity segmentation.  Play around with it and find what works for you.

## Activity Segmentation

You may want to segment activities across the file first.  This is most easily done in segmentation mode.  One way is to use the `One keystroke per annotation (adjacent annotations)` option, which automatically makes the long annotations connected to each other (though it can be a little annoying if you get off by a bit.)  Another method is to make short annotations at the beginning of each section, make another short annotation next to it at the end of the last section, then click on the ending annotation and select `Merge with Annotation Before`. A third option is to segment the file with one long activity annotation then as you listen to the audio, split the annotation at the appropriate points between activities.

## Segmentation

You might want to segment the whole file before transcribing, or you might want to go section by section.  It's up to you.  

Segmentation mode is typically the easiest here.  You can configure shortcuts to switch tiers (configured by default in the beta).  You can segment audio while the audio is playing, or you can pause and mark off segments.  You can also click and drag parts of the annotation to fix the timestamps, though only when the annotation's tier is highlighted.  Make sure that overlapping speech gets overlapping annotations.  

## Transcription

At some point you will have segmented enough audio that you want to transcribe it.  Switch to Transcription Mode. (The first time, you will have to select a "type"; the only choice will probably be "default-lt", which is the right one.)  You can go down the list of segments and each will play the associated audio.  Tab will play the audio again, or start/stop it, to help with transcribing tricky parts.  

You may find that some of the segmentation wasn't quite right, or that you missed an annotation.  It's easiest to fix these in either Segmentation or Annotation Mode, your choice.  Also, if one end of the audio sounds cut off or odd, it's highly recommended that you go back to one of the other modes and listen around the start/end of the annotation -- it's very easy to mess up on one side, and Transcription Mode won't play that audio for you.  If you want to split an utterance in Annotation Mode, note that the right click option `Split Annotation` makes the split at the cursor location.

## Checking

Once you've transcribed the whole file, you will probably want to check your work.  There are many ways to do this and you can find the one that works for you.  

You can click on the activity segment and let the whole section play while you scroll down the line, following along with your transcription.  This will help you find any audio you missed.  Alternatively, you can go down the file in transcription mode listening to each annotation; this may miss un-segmented audio but will help you see if any of your annotations are misaligned.  

When you're done with your work, you're ready to [export and upload](transcription/formatting-uploading).

# Importing TextGrids

Since all work is saved in [TextGrid](transcription/textgrids) format you may need to import TextGrid files into ELAN, for example if you need to transcribe an un-transcribed section of a pre-existing transcription.  Select `Import>Praat TextGrid File...` and browse for the TextGrid.  Make sure `Skip empty intervals/annotations` is _checked_ or else you will have a bunch of empty annotations between the meaningful ones.  Leave everything else as default and click through the dialogue.  

If you're checking against the audio file, you will have to re-link the audio file manually after you've imported the TextGrid.  Once you've imported the TextGrid go to `Edit>Linked Files...`, select `Add...` then select your sound file and click Apply.  Then the two should be lined up properly.