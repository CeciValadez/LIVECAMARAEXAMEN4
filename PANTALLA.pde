class Pantalla{
  int rep;
  int paso;
  int contador;
  ArrayList <Particula> particulas;
  
  Pantalla(){
    paso = 12;
    rep = 0;
    particulas = new ArrayList <Particula>();
  }
  
  void display(){
    contador++;
    background(255);
    opencv.loadImage(video);
    opencv.calculateOpticalFlow();
    for (int i = 0; i<video.width; i+= paso){
      for(int j = 0; j<video.height; j+= paso){
        PVector valor = opencv.getFlowAt(i,j);
        color c = video.get(i,j);
        if(valor.mag()>20){
          Particula p = new Particula(i,j, valor, c,this.rep);
          particulas.add(p);
        }
      }
    }
    
    for (int i = 0; i<particulas.size()-1; i++){
      Particula p = particulas.get(i);
      if(p.enPantalla){
        p.display();
        p.mover();
      }
      else{
        particulas.remove(i);
      }
    }
    
    println (contador);
    if (contador%15 == 0){
     this.rep++;
     this.rep = rep%4;
   }
   }
   
   void captura(){
     saveFrame();
   }
  
  void keyP(){
    if (key =='a'){
    una.rep = 0;
  }
  if (key =='s'){
    una.rep = 1;
  }
  if (key =='d'){
    una.rep = 2;
  }
  if (key == 'f'){
    una.captura();
  }
  }
}
