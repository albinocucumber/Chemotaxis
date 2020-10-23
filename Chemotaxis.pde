class Bacteria{
  float myX;
  float myY;
  float mySpeed;
  int myColor;
  int mySize;
  Bacteria(){
    myX = (int)(Math.random() * 400);
    myY = (int)(Math.random() * 400);
    mySize = (int)(Math.random() * 21 + 5);
    mySpeed  = 20.0/mySize;
    myColor = color((int)(Math.random()* 255),(int)(Math.random()* 255), (int)(Math.random()* 255));
  }
  void wiggle(){
    myX = myX + (int)(Math.random() * 5 - 2);
    myY = myY + (int)(Math.random() * 5 - 2);
  }
  void move(){
    if(myX > mouseX){
      myX = myX - mySpeed;
    }
    if(myX < mouseX){
      myX = myX + mySpeed;
    } else if(myX == mouseX){
      //myX = myX + (int)(Math.random() * 5 - 2);
      wiggle();
    } 
    if(myY > mouseY){
      myY = myY - mySpeed;
    }
    if(myY < mouseY){
      myY = myY + mySpeed;
    } else if(myY == mouseY){
      //myY = myY + (int)(Math.random() * 5 - 2);
      wiggle();
    }
  }
  void show(){
    stroke(myColor);
    fill(myColor);
    ellipse(myX, myY, mySize, mySize);
  }
}

Bacteria [] steve = new Bacteria[50];
void setup(){     
   size(400, 400);
   background(255);
   for(int i = 0; i < steve.length; i++){
     steve[i] = new Bacteria();
   }
}
void draw(){    
   for(int i = 0; i < steve.length; i++){
     steve[i].move();
     steve[i].show();
   }
   if(mousePressed && mouseButton == LEFT){
     noLoop();
   }
   if(keyPressed == true){
    if(key == 'r'){
      clear();
    }
  }
}
void mousePressed(){
  loop();
}
