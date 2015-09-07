# Installing Anaconda

**Journal date:** `2015-09-06T23:10:00-07:00`

Downloaded the command line version: `Anaconda-2.3.0-MacOSX-x86_64.sh` for
64-bit Python 2.7. 

```bash
$ cd ~/Downloads/
$ sh Anaconda-2.3.0-MacOSX-x86_64.sh
```

Agree to user agreement. Then confirm default to install in `~/anaconda`.

Agree to installer to prepend the Anaconda install location to `PATH` in your
`~/.bash_profile`. This adds the following line to the end of that file.

```bash
# added by Anaconda 2.3.0 installer
export PATH="/Users/yourUserName/anaconda/bin:$PATH"
```

I like to update conda packages when I first install it. For that, make sure you
restart your terminal; then, run the following update. You can also verify the
installed version of python.

```bash
$ conda update conda
$ python --version
> Python 2.7.10 :: Anaconda 2.3.0 (x86_64)
```

Note that at the date of this journal, ipython version installed with this
Anaconda installer is:

```bash
$ ipython --version
> 3.2.0
```

This version preceded the separation of ipython notebook into a separate project
Jupyter. Running the following works initially.

```bash
$ ipython notebook
> # A bunch of log entries in the terminal. 
> # A notebook server starts up on port 8888.
> # Your browser launches in your directory.
```

Upgrade your ipython version.

```bash
$ conda update ipython
> # A bunch of stuff happens
$ ipython notebook
> # A bunch of errors happen
$ ipython --version
> 4.0.0
$ conda install jupyter
> # A bunch of stuff happens
$ jupyter notebook
> # A bunch of log entries in the terminal. 
> # A notebook server starts up on port 8888.
> # Your browser launches in your directory with a jupyter notebook working.
```
