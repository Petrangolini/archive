
// Lista di pennelli
ArrayList<Pennello> p1=new ArrayList<Pennello>();

void setup(){
  size(600,600);
  
  background(0);
  
  //creo 10 pennelli
  
  for(int i=0;i<10;i++){
    p1.add(new Pennello());
  }
}

void draw(){
  //background(0);
  
  //ogni pennello si muove e poi si disegna
  for(int i=0;i<10;i++){
    p1.get(i).update();
    p1.get(i).display();    
  }
  
}