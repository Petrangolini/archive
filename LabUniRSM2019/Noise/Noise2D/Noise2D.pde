// Programma per il noise che dipende da tre paramentri x,y e tempo
float offsety=0;
float offsetx=0;
float tempo=0;

void setup(){
    size(400,400);
}

void draw(){
  
  loadPixels();
  offsety=0;
  for (int y = 0; y < height; y++) {
  offsetx=0;
  for (int x = 0; x < width; x++) {
    
    // genero un rumore che dipende da tre parametri
      float c=noise(offsetx,offsety,tempo);
      c=map(c,0,1,0,255);
      
      pixels[x+y*width]=color(c);
      offsetx+=0.1;
    }
    offsety+=0.1;
  }
  updatePixels();
  
 
 tempo+=0.01;

}