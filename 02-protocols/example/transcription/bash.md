You will likely want to use bash at least for some retrieving/storing files on the server, if not for other work at CSLU.  It's a good idea to get used to bash in general ([here](http://wellformedness.com/courses/CS606-RP/PDFs/L1-2-UNIX-environment.pdf) is past CSLU prof Kyle Gorman's basic bash guide, and there are innumerable others out there) but here are a few specific tricks you may find useful.

# Connecting to the Server Easily

Many of these assume you're on MacOS as that's what most of the work machines are, but they can be easily adapted to Linux and even Windows (with newer versions or Cygwin).  This also assumes you're working from the command line.  

## ssh/config

Edit the file ~/.ssh/config to make aliases for servers, making logging in easy.  As an example, here's how to set up asd.  Open the file (it's ok if it didn't exist before) and 
add:

```
Host asd
    User yourusername
    HostName asd.ohsu.edu
```

Now, instead of typing `ssh yourusername@asd.ohsu.edu`, you can just type `ssh asd`!  You can make the alias (what you type after "host") whatever is easiest for you to remember and type, and you can add aliases for other servers to the end of the file.

This also works when specifying paths; for example, this is why our example `rsync` code begins with just `language...`

## Connecting via SSH key

You can add an SSH key to allow a given computer to connect to a server without requiring your password every time.  This works for servers like ASD as well as for Gitlab and other services.  There are lots of tutorials on how to do this on the web, but here's a quick one.  

If you think you may have done this before, type `cat ~/.ssh/id_rsa.pub`.  This will try to print to the Terminal screen whatever is in the file that would hold your public key.  If it prints a long string of characters starting with `ssh-rsa` onto the screen, you do have one.

If you don't have a key yet, type: `ssh-keygen`
.  Hit return when prompted for a path; this will put it in the default place, which will make later configuration easier.  You can optionally associate a passphrase with your key, but you don't have to.  

Once you have a key (new or not), you can use the nifty `ssh-copy-id` function to copy your key onto the remote server.  Type `ssh-copy-id yourusername@asd.cslu.ohsu.edu` (or just `asd` if you've got the alias set up already.)  It will prompt you for your password for asd one more time.  You're set up!  With this in place you don't need to enter your password to use utilities like `ssh`, `scp`, and `rsync` to the server.  You will need to repeat this process if you want to connect to the server on another machine, or to another server (like the BigBirds).  

# Text Editing

While you are on the command line, the text editor you should obviously use is *insert holy war here*.  

Now that that's out of the way, on Mac [TextMate](http://macromates.com) is a useful local editor that can be set up to launch from the server, allowing you to edit files in a handy GUI from your local machine.  It also provides syntax coloring and lots of other nifty features.  For Windows folks, it's similar to notepad++.  (While the site includes payment information for those who choose to purchase a license, version 2.0 is open source and the currently available prebuilt binaries work without a license key.  In other words: you can just use it.)  

Info about setting up ssh tunneling with TextMate can be found [here](http://blog.macromates.com/2011/mate-and-rmate/)