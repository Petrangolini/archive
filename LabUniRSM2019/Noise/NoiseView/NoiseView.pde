/*
  Programma per visualizzare il noise monodimensinale
*/

float offset=0;
int conta=0;

void setup(){

  size(600,600);
  background(0);
}

void draw(){
  //Restart
  if(conta>width){
  background(0);
  conta=0;
  }
  
  //genero il noise (che è compreso tra 0 e 1) e poi 
  //lo rimappo da height a 0
  
  float y=noise(offset);
  y=map(y,0,1,height,0);
  // Cambia l'offset per verificare i cambi nel rumore
  offset+=0.01;
  conta++;
  
  stroke(255);
  strokeWeight(3);
  
  fill(255);
    
  point(conta,y);
 
}

void mousePressed(){
    loop();
}