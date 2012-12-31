#!/bin/bash
source edit_these.sh



if [ -f $NEWZPATH/www/lib/postprocess.php.orig ]; thne
  cp $NEWZPATH/www/lib/postprocess.php.orig $NEWZPATH/www/lib/postprocess.php
else
  $SED -i -e 's/\/\/$this->processAdditional();/$this->>processAdditional();/' $NEWZPATH/www/lib/postprocess.php
  $SED -i -e 's/\/\/$this->processNfos();/$this->processNfos();/' $NEWZPATH/www/lib/postprocess.php
  $SED -i -e 's/\/\/$this->processUnwanted();/$this->processUnwanted();/' $NEWZPATH/www/lib/postprocess.php
  $SED -i -e 's/\/\/$this->processMovies();/$this->processMovies();/' $NEWZPATH/www/lib/postprocess.php
  $SED -i -e 's/\/\/$this->processMusic();/$this->processMusic();/' $NEWZPATH/www/lib/postprocess.php
  $SED -i -e 's/\/\/$this->processBooks();/$this->processBooks();/' $NEWZPATH/www/lib/postprocess.php
  $SED -i -e 's/\/\/$this->processGames();/$this->processGames();/' $NEWZPATH/www/lib/postprocess.php 
  $SED -i -e 's/\/\/$this->processTv();/$this->processTv();/' $NEWZPATH/www/lib/postprocess.php
  $SED -i -e 's/\/\/$this->processMusicFromMediaInfo();/$this->processMusicFromMediaInfo();/' $NEWZPATH/www/lib/postprocess.php
  $SED -i -e 's/\/\/$this->processOtherMiscCategory();/$this->processOtherMiscCategory();/' $NEWZPATH/www/lib/postprocess.php
  $SED -i -e 's/\/\/$this->processUnknownCategory();/$this->processUnknownCategory();/' $NEWZPATH/www/lib/postprocess.php
fi

echo "my edits have been removed"