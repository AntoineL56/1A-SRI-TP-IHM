/*****
 * Création d'un nouvelle classe objet : Objet
 *
 * 
 */
 
class Personne {
  // Attributes
  int x;
  int y;
  
  Personne(int x, int y) { // Constructor
    this.x = x;
    this.y = y;  
  }
  
  void update() { // update object on the screen
    smooth();
    stroke(255);
    fill(255,255,255);
    //Tête
    ellipse(this.x,this.y,65,65);

    //Corps
    strokeWeight(15);
    line(this.x,this.y,this.x,this.y+100);
    line(this.x-50,this.y+60,this.x+50,this.y+60);
    line(this.x-40,this.y+150,this.x,this.y+100);
    line(this.x+40,this.y+150,this.x,this.y+100);
    
    //Vissage
    textSize(25);
    fill(0,0,0);
    text("U w U",this.x-26,this.y+7);
    
    for(int i = 255; i < 0; i--){
      fill(i);
      ellipse(this.x,this.y,50,50);
    }    
  }
  
  void update(int x, int y) { // useful to move object on the screen
    this.x=x;
    this.y=y;
    this.update();
  }
   
}
