ArrayList<Pennello> p1=new ArrayList<Pennello>();

void setup(){
  size(600,600);
  
  background(0);
  for(int i=0;i<10;i++){
    p1.add(new Pennello());
  }
}

void draw(){
  background(0);
  for(int i=0;i<10;i++){
    p1.get(i).update();
    p1.get(i).display();    
  }
  
}