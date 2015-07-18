// A state is the position of an action
// A state set is the series of states for a musician
// An instruction set is the ordered series of state sets and corresponding
//     delays for the entire performance

#ifndef PIANOROLL_H
#define PIANOROLL_H

#include "Arduino.h"

class PianoRoll {
  public: 
    void initSD();
    void loadSong(String songName);
    int getDelay();
    int getMusicianType();
    unsigned char* getStateSet();
    void readLine();
    bool hasRows();
    void stop();
};

#endif