class Note {
color highlightColor;
PImage overlay;
float x;
float y;
float noteWidth;
float noteHeight;

Note(float temp_x,float temp_y, float temp_width, float temp_height){
  this.x = temp_x;
  this.y = temp_y;
  this.noteWidth = temp_width;
  this.noteHeight = temp_height;



}
void drawNote(){
  fill(255,0,0,100);
  rect(this.x,this.y,this.noteWidth,this.noteHeight);
}

}



class NoteManager {

}
