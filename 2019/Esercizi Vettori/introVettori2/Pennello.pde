class Pennello{
  PVector pos,vel;
  float colore,offset,jump;
  
  Pennello(){
  pos=new PVector(random(width),random(height));
  vel=new PVector(0,random(0.5,3));
  colore=random(255);
  offset=0;
  jump=random(0.001,0.01);
  }
  
  
  void update(){
  //si muove
  pos.add(vel);
  
  //sposta lungo x con un rumore noise
  float rumore=noise(offset);
  rumore=map(rumore,0,1,-3,3);
  pos.x+=rumore;
  
  offset+=jump;
  
  if (pos.y>height){
   pos.y=0;
  
  }
  
  if (pos.y<0){
   pos.y=height;
  
  }
  
  if (pos.x>width+50){
   pos.x=0;
  
  }
  
  if (pos.x<-50){
   pos.x=width;
  
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