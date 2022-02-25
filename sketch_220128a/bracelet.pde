class Bracelet {
  //Déclaration des paramètres de base de la balle
  int x;
  int y;
  color couleur;
  Led led_g , led_d, led_h, led_b;

  //Constructeur du bracelet 
  Bracelet (int posX, int posY, color nouvCouleur) {
    x = posX;
    y = posY;
    couleur    = nouvCouleur;
    led_g = new Led(posX - (250/4), posY  );
    led_d = new Led(posX + (250/4), posY  );
    led_h = new Led(posX , posY + (250/4) );
    led_b = new Led(posX , posY - (250/4)  );
  }
   //Dessin de le bracelet
  void display() {
    
    stroke(255,255,255);
    fill(255,255,255);
    rect(800-250,800-250,250,250);
    
    strokeWeight(10);
    stroke(couleur);
    noFill();
    ellipse(x, y, 180, 180);
    
   led_g.display();
   led_d.display();
   led_h.display();  
   led_b.display();
}
}
