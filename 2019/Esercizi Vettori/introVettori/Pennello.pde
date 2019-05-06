/* 
   La calasse Pennello permette di creare 
   pennelli che si muovono nello spoazio
*/
class Pennello{
  /*
    Esempio di uso dei vettori:
    vettore posizione e velocità
  */
  PVector pos,vel;
  float colore;
  
  Pennello(){
  pos=new PVector(random(width),random(height));
  vel=new PVector(random(-5,5),random(-5,5));
  colore=random(255);
  }
  
  void update(){
  //per far muovere il pennello occoorre sommare in maniera vettoriale
  // la velocità alla posizione
  pos.add(vel);
  // if controlla che non esca dai bordi
  if (pos.x>width){
    pos.x=0;
  
  }
  if (pos.y>height){
   pos.y=0;
  
  }
  
  if (pos.x<0){
    pos.x=width;
 
  }
  if (pos.y<0){
   pos.y=height;
  
  }
  
  
  }
  
  void display(){

     ellipseMode(CENTER);
     colorMode(HSB);
     fill(colore,255,255);
     stroke(colore,255,255);    
     ellipse(pos.x,pos.y,30,30);

  }
  
  
}