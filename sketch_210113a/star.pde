class Star {
  float x;
  float y;
  float z;
  float pz;
  public Star (){
     x = random(-width,width);
     y = random(-height,height);
     z = random(width);
     pz = z;
  }
  void update(){
    z= z-speed;
    if(z<1){
      z = width;
      pz =z;
       x = random(-width,width);
     y = random(-height,height);
    }
  }
  void show(){
    float sx = map(x/z,0,1,0,width);
    float sy = map(y/z,0,1,0,height);
    float px = map(x/pz,0,1,0,width);
    float py = map(y/pz,0,1,0,height);
    stroke(255);
    line(px,py,sx,sy);
    pz =z;
  }
}
