#!/usr/bin bash 

#upload.sh: smart upload transcription files to the right folder
#requires username be stored and asd be aliased to asd
#todo: currently doesn't handle being run from another dir
#because it looks at the front of the address it's given
#so seeing /otherdir/ in front of the address confuses its tiny brain

#fnl
case  $1 in 
	FNL-*)
		echo "FNL file detected."
		rsync -avP ./$1 asd:/home/asd-lang/FNL/ADOS/transcripts/TextGrid 
		;;
#uw-gendaar - tricky because they just start with numbers
	[0-9][0-9][0-9].03*)
		echo "UW GENDAAR file detected."
		rsync -avP ./$1 asd:/home/asd-lang/UW_GENDAAR/transcripts
		;;
#uw-estes - done being transcribed, unlikely to come up
	UW-*)
		echo "UW Estes file detected."
		rsync -avP ./$1 asd:/home/asd-lang/UW/ADOS/transcripts/TextGrid
		;;
	*)
		echo "Friend, I'm not sure what this is."
		;;
esac