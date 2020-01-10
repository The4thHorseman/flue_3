ArrayList<Flue> flueListe = new ArrayList<Flue>();//laver en liste til fluerne

void setup(){
  size(500,500);
}

void draw(){
  for(int i=0; i<flueListe.size(); i++){
    Flue f = flueListe.get(i);
    f.tegnFlue();
    f.flyt();
  }//placere de nye fluer i listen og henter classens funktioner
}

void keyPressed(){
  flueListe.add(new Flue()); //tegner en flue når man trykke på skærmen
}

void mousePressed(){
  flueListe.add(new Flue(mouseX, mouseY)); //sikre at fluen bliver tegnet hvor musen er placeret
}

/////////////////////////////////////////////////////////
class Flue{
  
  float positionX,positionY;
  float distanceFlyttet;
  float vinkel = 0; 
  //laver variabler til at flytte fluen
  
  Flue(){ //giver fluen en retning og en position så den kan ændres
    positionX  = random(0,height);
    positionY  = random(0,width);
    vinkel     = random(0,2*PI);
  }
  
  Flue(float a, float b){// laver posetionen til variabler
    positionX = a;
    positionY = b;
    vinkel    = random(0,2*PI);
  }
  
  void flyt(){ //flytter fluen
    distanceFlyttet = distanceFlyttet + 0.5;
  }

  void tegnFlue(){
    pushMatrix();
      translate(positionX,positionY);
      rotate(vinkel);
      translate(distanceFlyttet,0);
        ellipse(0,0,20,8);
        ellipse(0,0-8,15,10);
        ellipse(0,0+8,15,10);
        ellipse(0+6,0,8,8);
    popMatrix();
  } //placere orego tilbage til dens originale plads
}
//////////////////////////////////////////////////////
