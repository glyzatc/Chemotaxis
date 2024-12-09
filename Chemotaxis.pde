class Walker {
  int myX, myY;
  int myColor;
  
  Walker () {
   myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
   myX = width/2;
   myY = height/2;
  }
  
  void move() {
    if (mouseX>myX){
     myX = myX+(int)(Math.random()*5)-1;
    } else{
     myX = myX+(int)(Math.random()*5)-3;
    }
    if (mouseY>myY){
     myY = myY+(int)(Math.random()*5)-1;
    } else{
    myY = myY+(int)(Math.random()*5)-3;
    }
  }
  //myX = myX + (int)(Math.random()*3)-1;
  //myY = myY + (int)(Math.random()*3)-1;
  //}
  
  void show() {
    fill(myColor);
    ellipse (myX, myY,10,10);
}
}

Walker [] bobs;

void setup() {
  size (500, 500);
  bobs = new Walker [100];
  for (int i = 0; i < bobs.length; i++) {
    bobs [i] = new Walker();
  }
}

void draw() {
  background (#FFFFFF);
  for (int i = 0; i < bobs.length; i++) {
   bobs [i].move();
   bobs[i].show();
  }
}
