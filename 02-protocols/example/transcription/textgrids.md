**NB:**  this is more information than you will need if you are just transcribing. If you are manipulating or using TextGrids in other ways, it might be helpful.

TextGrids come in two flavors:  object-oriented and chronological. If you open a chronological TextGrid in a text editor, you will see that the annotations are ordered by their start time in the file. Object-oriented TextGrids order annotations by tier, so in our ADOSes it would be all the Child annotations first, then Examiner, etc. This difference is not visible when opening them in Praat, but some scripts might require one type or the other. As noted on the [Formatting and Uploading](transcription/formatting-uploading) page, all current projects ask that you save them as the default, object-oriented type. Elan doesn't even have an export option for chronological TextGrids, so you don't have to worry about messing this up.

There is an NLTK TextGrid module called `textgrid.py`. It can be found on the server at

```
asd:/home/language/ERPA/ADOS/transcripts/Scripts/textgrid.py
```

The contents are well-documented within. Two useful methods it contains are to_chron() and to_oo(). As you might guess, you can use these methods to convert easily between the two TextGrid types (another way would be to open the TextGrid in Praat and save it as the other type). `oo_to_chron.py` and `chron_to_oo.py` in that same directory take an input TextGrid and convert it to the other type.