class Mover {

  PVector lokasi;
  PVector percepatan;
  PVector akselerasi;
  
  float kecepatan;
  PShape  mobil;
  PShape coin;
  //float xoff, yoff;
  
  float r = 16;
   
  Mover() {
    lokasi = new PVector(width/2, height/2);
    percepatan = new PVector(0, 0);
    kecepatan = 4;  
    //xoff = 1000;
    //yoff = 0;
  }

  void pembaharuan() {

    PVector mouse = new PVector(mouseX, mouseY);
    PVector dir = PVector.sub(mouse, lokasi);
    dir.normalize();
    dir.mult(0.5);
    akselerasi = dir;

    percepatan.add(akselerasi);
    percepatan.limit(kecepatan);
    lokasi.add(percepatan);
  }

  void tampilan() {
   mobil = loadShape("mobil.svg");
   coin = loadShape("coin.svg");
   float theta = percepatan.heading2D();
   
    pushMatrix();
    shapeMode(CENTER);
    translate(lokasi.x, lokasi.y);
    rotate(theta);
    shape(mobil,0,0,90,50);
    popMatrix();
  }

  void pengecekan() {

    
    if (lokasi.x > width){
    lokasi.x = width;
    }
    else if
    (lokasi.x < 0){
    lokasi.x = 0;
    } 
    if (lokasi.y > height){
    lokasi.y=height;
    }
    else if
    (lokasi.y < 0){
    lokasi.y=0;
    }
  
  }   
}