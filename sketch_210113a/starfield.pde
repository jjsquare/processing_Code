Star[] stars = new Star[5000];
float speed;
public void settings() {
  size(800, 600);
}

void setup() {

  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}

void draw(){  
  speed = map(mouseX,0,width,10,25) +map(mouseY,0,height,10,25) ;
  background(0);
  translate(mouseX,mouseY);
   for(int i =0;i<stars.length ; i++){
    stars[i].update();
    stars[i].show();
  }
  
}
