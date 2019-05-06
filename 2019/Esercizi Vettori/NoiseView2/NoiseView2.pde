// esempio di rumore non noise


void setup(){
    size(400,400);
    background(0);
}

void draw(){
  loadPixels();
  for(int r=0;r<height;r++){
    for(int c=0;c<width;c++){
      int index=r*width+c;
      int grigio=(int)random(255);
      pixels[index]=color(grigio,grigio,grigio);
    }
  }
  updatePixels();
  
}