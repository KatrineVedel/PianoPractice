TimedEventGenerator noteTimer;
void timedPlaying(){
        println("timerCount: ",timerCount, "noteManager.currentChunk.length: ", noteManager.currentChunk2.size());
        if (timerCount < (noteManager.currentChunk2.size() - 1)) {
                // println("playing note in chunk, count is ", timerCount);
                noteManager.playTone(noteManager.currentChunk2.get(timerCount));
                noteManager.notes[noteManager.currentChunk2.get(timerCount) - noteManager.valueOffset].animateNote();
                timerCount++;
        }
        else {
                noteTimer.setEnabled(false);
                noteManager.step += 1;
                noteManager.nextStep();
                // println("chunk empty, timer stopped");
        }
}

void setupTimer(){
  noteTimer = new TimedEventGenerator(this,"timedPlaying", false);
  noteTimer.setIntervalMs(500);
}
