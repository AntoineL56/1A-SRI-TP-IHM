//Prototype haute-fidélité
float x;
float y;
float easing = 0.2;
Bracelet bracelet;
color nouvCouleur;
int tab[] = new int[40];

int i = 0;
int position;

Personne personne;


void setup() {
  size(800, 800); 
  noStroke(); 
  nouvCouleur=color (0,0,0);
  bracelet = new Bracelet (800-120,800-120,  nouvCouleur);//création du bracelet
  
  personne = new Personne(0,0);//création du personnage
  
  for(int j = 0; j < 40; j++){
    tab[j] = int(random(1,5));
  }
  
}

void draw() {  
  
  background(130,180,108);
  //effet sur le déplacement du perso
  float targetX = mouseX;
  float dx = targetX - x;
  x += dx * easing;
  
  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;
  
  /*
  print(mouseY);
  print(" , ");
  print(mouseX);
  print("\n");
  */
  
  personne.update(int(x), int(y));//on update la position
  
  bracelet.display();//
  
  position=souris();
  
  trajet();
  
  textSize(50);
  fill(0,0,0);
  text("Bracelet",580,520);

}

void trajet(){//definie le l'itinéraire à suivre
  int etatBracelet = tab[i];
  
  switch(etatBracelet){
    case 1:
    bracelet.led_g.on();//led allumé
    if(position == 1){
      bracelet.led_g.off();//led éteinte
      i++;
    }
    break;
    
    case 2:
    bracelet.led_d.on();
    if(position == 2){
      bracelet.led_d.off();
      i++;
    }
    break;
    
    case 3:
    bracelet.led_h.on();
    if(position == 3){
      bracelet.led_h.off();
      i++;
    }
    break;
    
    case 4:
    bracelet.led_b.on();
    if(position == 4){
      bracelet.led_b.off();
      i++;
    }
    break;
  }
 
  if(i == 40){
    i = 0;
  }
  
}

int souris(){//la souris simule le déplacement de la personne
   int a = 200;// point mort
   int b = 800-a;
   
   int etatSouris;
   
   if(mouseX < a){
     println("gauche");
     etatSouris = 1; //gauche
   }
   else if(mouseX > b){
     println("droite");
     etatSouris = 2; //droite
   }
   
   else if(mouseY > b){
     println("bas");
     etatSouris = 3; //haut
   }
   
   else if(mouseY < a){
     println("haut");
     etatSouris = 4; //bas
   }
   else{
     println("milieu");
     etatSouris = 0;
   }
   return etatSouris;
}
  
  
  
  
