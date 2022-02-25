class Led {
  //Déclaration des paramètres de base de la balle
  int x;
  int y;
  
  color etat;

  //Constructeur de la balle
  Led (int nouvX, int nouvY) {
    x          = nouvX;
    y          = nouvY;
  }
   //Dessin de la balle
  void display() {
    strokeWeight(9);

    stroke(200);
    fill(etat);
    ellipse(x, y, 40, 40);
    
 
  }
  
  void on(){
   this.etat = color(255,0,0);
   
   }
   void off(){
     this.etat = color(20,20,20);
   }
}
