# SMS

Installing SMS is tricky, because it has a few files depending on each
other.

The master script is ```sms.sh```, which, in turn, calls the other
scripts. This script finds out where it is run from, and sets that as
```$binDir```.

From ```$binDir```, it sources a configuration file and the other
scripts. This means that 

Futhermore, it needs some auxiliary files which are found in
```$binDir/matrix```. This is defined in ```sms.cfg```. Because 
it is better to put these files elsewhere, it can be overridden in
```sms.cfg```.
 
executable -> $binDir -> PHYMLBIN, MATRIXDIRPATH

```$outDir``` is specified with the ```sms.sh -o outDir``` flag.

Obviously, ```$PHYMLBIN``` is set wrong here, and cannot run unless
changed. In our installation, it will be placed in ```/usr/local/bin```.

outDir -> smsDir = $outDir/sms

The ```$smsDir``` is always created new, and ```sms.sh``` will throw an
error if it cannot be created.

Conclusion: the two problematic variables are PHYMLBIN and MATRIXDIRPATH.
These are fixed by overriding these at the end of sms.cfg.

PHYMLBIN -> /usr/local/bin/phyml
MATRIXDIRPATH -> /usr/local/share/phyml/matrix

