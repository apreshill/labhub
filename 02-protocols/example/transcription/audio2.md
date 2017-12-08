If you're just transcribing, you should be getting your audio from `language/ADOS/audio`.  You should probably only pull from audio2 if someone has told you to.  

The full address of audio2 is `language/autism/audio2`.  It contains folders for [OGI](./Erpa) and [FNL](./Fnl) audio (and some other things).  Note that there are other assessments than the ADOS that are conducted for these kids, and not all folders will even have an ADOS -- many will have VerbalFluency or some other test.  

**An odd but important note: the "date modified" of a file is actually meaningful because it is set by the upload software.  Do not touch -- i.e. literally use the `touch` command or similar -- the files.**

Recordings in audio2 are often not as neat and clean as the recordings that have already been vetted and moved into language.  It may be easier to use the Mac "Connect to Server" interface than to browse via Terminal, so that you can easily preview each file to find the ones you want.  

There will often be multiple recordings of the ADOS.  There are typically two mics used to record each session, so there will often be two recordings of the same size that differ in the second to last digit, e.g.:

```
OHSU-12345-1-ADOS-0-0-0-1-0.wav
OHSU-12345-1-ADOS-0-0-0-2-0.wav
```

The one from mic number 2 is often clearer (it is intended to be the mic positioned nearer to the child), but you should double check this.

Also, there may be multiple files of different sizes that differ in the digit between the ID and the ADOS, e.g.

```
OHSU-12345-0-ADOS-0-0-0-1-0.wav
OHSU-12345-1-ADOS-0-0-0-1-0.wav
````

(Actually twice this because there'll be one per mic as well).  

These are different sound files.  Sometimes the ADOS went long and was split into two recordings, which should be concatenated before they're put into language (`sox` is good for this).  Sometimes, however, the short recording is a test recording, which shouldn't be combined with the real ADOS.  The only way to be sure is to check both files.  

When copying files into language, make sure to set permissions so that others have read access to the files you upload, or else other transcribers won't be allowed to download them.  