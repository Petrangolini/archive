class Pennello{
  PVector pos,vel;
  float colore,offset,speed;
  
  Pennello(){
  pos=new PVector(random(width),random(height));
  vel=new PVector(0,random(0.5,3));
  colore=random(255);
  offset=0;
  speed=random(10,0.01);
  }
  
  
  void update(){
    
  //Update cambia il mobimento e segue il mouse
  PVector mouse=new PVector(mouseX,mouseY);
  PVector diff=PVector.sub(mouse,pos);
  diff.normalize();
  diff.mult(speed);
  pos.add(diff);
  
  }
  
  void display(){

     ellipseMode(CENTER);
     colorMode(HSB);
     fill(colore,255,255);
     stroke(colore,255,255);    
     ellipse(pos.x,pos.y,30,30);

  }
  
  
}