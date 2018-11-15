class Particula {
  float x,y;
  float dx, dy;
  color c;
  char ch;
  int t;
  int rep;
  boolean enPantalla = true;
  Particula(float x_, float y_, PVector d_, color c_, int r_){
    this.x = x_;
    this.y = y_;
    this.dx = d_.x*0.2;
    this.dy = d_.y*0.2;
    this.c = c_;
    this.t = floor(random(12,8));
    this.rep = r_;
    this.ch = char(int(random(95,167)));
    
  }
  
  void mover(){
    this.x += this.dx;
    this.y += this.dy;
    
    if(this.x<0 || this.x>width){
      enPantalla = false;
    }
    
    if(this.y<0 || this.y>height){
      enPantalla = false;
    }
  }
  
  void display(){
    noStroke();
    fill(this.c);
    
   switch(this.rep){
      case 0:
        rect(this.x,this.y,t,t);
       break;
     case 1:
       ellipse(this.x,this.y,11,11);
     break;
     
     //case 2:
     //  rect(this.x,this.y,t,t);
     //break;
     
     case 2:
     triangle(this.x,this.y,280,280,155,155);
     break;
   }
    
  }
}
