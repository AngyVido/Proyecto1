personaje ju1;
personaje ju2;
personaje menu;

int pantallas = 0;
boolean z1, z2;
int id, ID;
int t = 1;

void setup(){
  size(800,600);
  ju1 = new personaje(40,400);
  ju2 = new personaje(40,400);
  menu = new personaje();
}

void draw(){
  switch(pantallas){
    
    case 0:
    
    PFont fuente;
     fuente = loadFont("ElectromagneticLungs-110.vlw");
     textFont (fuente);

    
    pushMatrix();
    background(#04335f);
    textSize(110);
    fill(#ddd501);
    text("Game of Zodiac",24,320);
    
      fuente = loadFont("ZektonRg-Regular-35.vlw");
     textFont (fuente);
    textSize(35);
    fill(#04e4ff);
    text("Press M to star",290,520);
    
    if(key == 'm' || key == 'M'){
      pantallas = 1;
    }
    popMatrix();
    break;
    
    case 1:
    
    
      fuente = loadFont("ZektonRg-Regular-25.vlw");
     textFont (fuente);
    
    pushMatrix();
    background(#04335f);
    textSize(25);
    fill(#ddd501);
    text("Choose Your Guardian Constellation", 180, 40);
    textSize(20);
    fill(255);
    text("Player 1",50,75);
    fill(#04e4ff);
    text("Player 2",650,75);
    textSize(30);
    scale(0.6);
    
    menu.draw_Aries(100,100);
    fill(255);
    text("Press q", 250,425);
    fill(#04e4ff);
    text("Press p", 250,475);
    
    menu.draw_Cisne(150,100);
    fill(255);
    text("Press w", 600,425);
    fill(#04e4ff);
    text("Press o", 600,475);
    
    menu.draw_Leo(200,100);
    fill(255);
    text("Press e", 950,425);
    fill(#04e4ff);
    text("Press i", 950,475);
    
    menu.draw_Cancer(100,200);
    fill(255);
    text("Press r", 250,900);
    fill(#04e4ff);
    text("Press u", 250,950);
    
    menu.draw_Piscis(150,200);
    fill(255);
    text("Press t", 600,900);
    fill(#04e4ff);
    text("Press y", 600,950);
    
    menu.draw_Wyvern(200,200);
    fill(255);
    text("Press g", 950,900);
    fill(#04e4ff);
    text("Press h", 950,950);
    scale(1);
    
    if(keyPressed){
    switch(key){
      case 'q':
      z1 = true;
      id = 0;
      break;
      
      case 'w':
      z1 = true;
      id = 1;
      break;
      
      case 'e':
      z1 = true;
      id = 2;
      break;
      
      case 'r':
      z1 = true;
      id = 3;
      break;
      
      case 't':
      z1 = true;
      id = 4;
      break;
      
      case 'g':
      z1 = true;
      id = 5;
      break;
    }
    }
    
    if(keyPressed){
    switch(key){
      case 'p':
      z2 = true;
      ID = 0;
      break;
      
      case 'o':
      z2 = true;
      ID = 1;
      break;
      
      case 'i':
      z2 = true;
      ID = 2;
      break;
      
      case 'u':
      z2 = true;
      ID = 3;
      break;
      
      case 'y':
      z2 = true;
      ID = 4;
      break;
      
      case 'h':
      z2 = true;
      ID  = 5;
      break;
    }
    }
    
    if (z1 && z2){
      pantallas = 2;
    }
    popMatrix();
    break;
    
    case 2:
    
    fuente = loadFont("ZektonRg-Regular-35.vlw");
     textFont (fuente);
     
    pushMatrix();
    background(#04335f);
    fill(#ddd501);
    textSize(20);
    text("Life: ",100,50);
    text(ju1.v,150,50);
    fill(#04e4ff);
    text("Press Z to atack",90,550);
    fill(#ddd501);
    textSize(20);
    text("Life: ",550,50);
    text(ju2.v,600,50);
    fill(#04e4ff);
    text("Press N to atack",550,550);
    textSize(50);
     fill(255);
     text("VS",350,100);
     popMatrix();
     pushMatrix();
    switch(id){
      case 0:
      translate(0,130);
      ju1.draw_Aries(0,0);
      break;
      
      case 1:
      translate(-350,130);
      ju1.draw_Cisne(0,0);
      break;
      
      case 2:
      translate(-650,130);
      ju1.draw_Leo(0,0);
      break;
      
      case 3:
      translate(-40,-200);
      ju1.draw_Cancer(0,0);
      break;
      
      case 4:
      translate(-350,-200);
      ju1.draw_Piscis(0,0);
      break;
      
      case 5:
      translate(-650,-200);
      ju1.draw_Wyvern(0,0);
      break;
    }
    popMatrix();
    pushMatrix();
    switch(ID){
      case 0:
      translate(400,130);
      ju2.draw_Aries(0,0);
      break;
      
      case 1:
      translate(50,130);
      ju2.draw_Cisne(0,0);
      break;
      
      case 2:
      translate(-250,130);
      ju2.draw_Leo(0,0);
      break;
      
      case 3:
      translate(380,-200);
      ju2.draw_Cancer(0,0);
      break;
      
      case 4:
      translate(90,-200);
      ju2.draw_Piscis(0,0);
      break;
      
      case 5:
      translate(-220,-200);
      ju2.draw_Wyvern(0,0);
      break;
    }
    popMatrix();
    if (t == 1){
    if(keyPressed){
      if(key == 'z' || key == 'Z'){
        ju2.v = ju2.v - ju1.a;
        t = 2;
      }
    }
    }
    if (t == 2){
    if(keyPressed){
      if(key == 'n' || key == 'N'){
        ju1.v = ju1.v - ju2.a;
        t = 1;
      }
    }
    }
    if(ju1.v==0 || ju2.v==0){
      pantallas = 3;
    }
    break;
    
    case 3:
    
    fuente = loadFont("ModernaDiscoSt-160.vlw");
     textFont (fuente);
    
    background(#04335f);
    textSize(160);
    fill(#ddd501);
    if(ju1.v > 0){
      text("¡Win!",40,350);
    }
    if(ju2.v > 0){
      text("¡Win!",40,350);
    }
    
    fuente = loadFont("ZektonRg-Regular-35.vlw");
     textFont (fuente);
    
    textSize(35);
    fill(#04e4ff);
    text("Press B to reset",250,550);
    
    if(key == 'b' || key == 'B'){
      pantallas = 0;
      z1 = false;
      z2 = false;
      ju1.v = 200;
      ju2.v = 200;
      t = 1;
    }
  }
}


class personaje{
  int a;
  int v;
  
  personaje(int a_, int v_){
  a = a_;
  v = v_;
  }
  
  personaje(){
  }
  
void draw_Aries(int x, int y) {

 pushMatrix();
  noStroke();
 fill(#b3ad04);
 rect(x+165,y+215, 25,50);
 rect(x+210,y+215, 25,50);
 
  noStroke();
 fill(#b3ad04);
 rect(x+130,y+180,40,20);
 
  noStroke();
 fill(#b3ad04);
 rect(x+230,y+180,40,20);
 
  
  noStroke();
  fill(#8d8802);
  rect(x+160,y+120,80,100);
  
  noStroke();
  fill(#f3e5b2);
 ellipse(x+200,y+120,100,100);
 
 noStroke();
 fill(255);
 ellipse(x+180,y+115,25,25);
 
 noStroke();
 fill(#27766e);
 ellipse(x+180,y+115,15,20);
 
 noStroke();
 fill(0);
 ellipse(x+180,y+115,7,7);
 
 noStroke();
 fill(255);
 ellipse(x+218,y+115,25,25);
 
 noStroke();
 fill(#27766e);
 ellipse(x+218,y+115,15,20);
 
 noStroke();
 fill(0);
 ellipse(x+218,y+115,7,7);
 
 noStroke();
 fill(#b4a264);
 ellipse(x+199,y+130,10,10);
 
 noStroke();
 fill(#55045c);
 rect(x+145,y+70,100,26);
 
 noStroke();
 fill(#55045c);
 rect(x+145,y+70,16,100);
 
 noStroke();
 fill(#55045c);
 rect(x+240,y+70,16,100);
 
 noStroke();
 fill(0);
 rect(x+131,y+158,7,35);
 
 noStroke();
 fill(0);
 triangle(x+134,y+115,x+124,y+145,x+143,y+145);
 
 noStroke();
 fill(0);
 triangle(x+134,y+165,x+124,y+145,x+143,y+145);
 
 noStroke();
 fill(#f44739);
 arc(x+199,y+145,20,20,radians(360),radians(360+180));
 popMatrix();
}

void draw_Cisne(int x, int y) {
  pushMatrix();
   noStroke();
 fill(#b3ad04);
 rect(x+475,y+215, 25,50);
 rect(x+520,y+215, 25,50);
 
  noStroke();
 fill(#b3ad04);
 rect(x+440,y+180,40,20);
 
  noStroke();
 fill(#b3ad04);
 rect(x+540,y+180,40,20);
 
  
  noStroke();
  fill(#8d8802);
  rect(x+470,y+120,80,100);
  
  noStroke();
  fill(#f3e5b2);
 ellipse(x+510,y+120,100,100);
 
 noStroke();
 fill(255);
 ellipse(x+490,y+115,25,25);
 
 noStroke();
 fill(#27766e);
 ellipse(x+490,y+115,15,20);
 
 noStroke();
 fill(0);
 ellipse(x+490,y+115,7,7);
 
 noStroke();
 fill(255);
 ellipse(x+528,y+115,25,25);
 
 noStroke();
 fill(#27766e);
 ellipse(x+528,y+115,15,20);
 
 noStroke();
 fill(0);
 ellipse(x+528,y+115,7,7);
 
 noStroke();
 fill(#b4a264);
 ellipse(x+509,y+130,10,10);
 
 noStroke();
 fill(#0591ea);
 rect(x+455,y+70,100,26);
 
 noStroke();
 fill(#0591ea);
 rect(x+455,y+70,16,100);
 
 noStroke();
 fill(#0591ea);
 rect(x+550,y+70,16,100);
 
 noStroke();
 fill(0);
 rect(x+441,y+158,7,35);
 
 noStroke();
 fill(0);
 triangle(x+444,y+115,x+434,y+145,x+453,y+145);
 
 noStroke();
 fill(0);
 triangle(x+444,y+165,x+434,y+145,x+453,y+145);
 
 noStroke();
 fill(#f44739);
 arc(x+509,y+145,20,20,radians(360),radians(360+180));
 popMatrix();
}

void draw_Leo(int x, int y) {
  pushMatrix();
 
 noStroke();
 fill(#b3ad04);
 rect(x+775,y+215, 25,50);
 rect(x+820,y+215, 25,50);
 
  noStroke();
 fill(#b3ad04);
 rect(x+740,y+180,40,20);
 
  noStroke();
 fill(#b3ad04);
 rect(x+840,y+180,40,20);
 
  
  noStroke();
  fill(#8d8802);
  rect(x+770,y+120,80,100);
  
  noStroke();
  fill(#f3e5b2);
 ellipse(x+810,y+120,100,100);
 
 noStroke();
 fill(255);
 ellipse(x+790,y+115,25,25);
 
 noStroke();
 fill(#27766e);
 ellipse(x+790,y+115,15,20);
 
 noStroke();
 fill(0);
 ellipse(x+790,y+115,7,7);
 
 noStroke();
 fill(255);
 ellipse(x+828,y+115,25,25);
 
 noStroke();
 fill(#27766e);
 ellipse(x+828,y+115,15,20);
 
 noStroke();
 fill(0);
 ellipse(x+828,y+115,7,7);
 
 noStroke();
 fill(#b4a264);
 ellipse(x+809,y+130,10,10);
 
 noStroke();
 fill(#91ea05);
 rect(x+755,y+70,100,26);
 
 noStroke();
 fill(#91ea05);
 rect(x+755,y+70,16,100);
 
 noStroke();
 fill(#91ea05);
 rect(x+850,y+70,16,100);
 
 noStroke();
 fill(0);
 rect(x+741,y+158,7,35);
 
 noStroke();
 fill(0);
 triangle(x+744,y+115,x+734,y+145,x+753,y+145);
 
 noStroke();
 fill(0);
 triangle(x+744,y+165,x+734,y+145,x+753,y+145);
 
 noStroke();
 fill(#f44739);
 arc(x+809,y+145,20,20,radians(360),radians(360+180));
  
  popMatrix();
}

void draw_Cancer(int x, int y){
  pushMatrix();
  noStroke();
 fill(#b3ad04);
 rect(x+165,y+565, 25,50);
 rect(x+210,y+565, 25,50);
 
  noStroke();
 fill(#b3ad04);
 rect(x+130,y+530,40,20);
 
  noStroke();
 fill(#b3ad04);
 rect(x+230,y+530,40,20);
 
  
  noStroke();
  fill(#8d8802);
  rect(x+160,y+470,80,100);
  
  noStroke();
  fill(#f3e5b2);
 ellipse(x+200,y+470,100,100);
 
 noStroke();
 fill(255);
 ellipse(x+180,y+465,25,25);
 
 noStroke();
 fill(#27766e);
 ellipse(x+180,y+465,15,20);
 
 noStroke();
 fill(0);
 ellipse(x+180,y+465,7,7);
 
 noStroke();
 fill(255);
 ellipse(x+218,y+465,25,25);
 
 noStroke();
 fill(#27766e);
 ellipse(x+218,y+465,15,20);
 
 noStroke();
 fill(0);
 ellipse(x+218,y+465,7,7);
 
 noStroke();
 fill(#b4a264);
 ellipse(x+199,y+480,10,10);
 
 noStroke();
 fill(#ea1505);
 rect(x+145,y+420,100,26);
 
 noStroke();
 fill(#ea1505);
 rect(x+145,y+420,16,100);
 
 noStroke();
 fill(#ea1505);
 rect(x+240,y+420,16,100);
 
 noStroke();
 fill(0);
 rect(x+131,y+508,7,35);
 
 noStroke();
 fill(0);
 triangle(x+134,y+465,x+124,y+495,x+143,y+495);
 
 noStroke();
 fill(0);
 triangle(x+134,y+515,x+124,y+495,x+143,y+495);
 
 noStroke();
 fill(#f44739);
 arc(x+199,y+495,20,20,radians(360),radians(360+180));
  
  popMatrix();
}

void draw_Piscis(int x, int y){
  pushMatrix();
  
  noStroke();
 fill(#b3ad04);
 rect(x+475,y+565, 25,50);
 rect(x+520,y+565, 25,50);
 
  noStroke();
 fill(#b3ad04);
 rect(x+440,y+530,40,20);
 
  noStroke();
 fill(#b3ad04);
 rect(x+540,y+530,40,20);
 
  
  noStroke();
  fill(#8d8802);
  rect(x+470,y+470,80,100);
  
  noStroke();
  fill(#f3e5b2);
 ellipse(x+510,y+470,100,100);
 
 noStroke();
 fill(255);
 ellipse(x+490,y+465,25,25);
 
 noStroke();
 fill(#27766e);
 ellipse(x+490,y+465,15,20);
 
 noStroke();
 fill(0);
 ellipse(x+490,y+465,7,7);
 
 noStroke();
 fill(255);
 ellipse(x+528,y+465,25,25);
 
 noStroke();
 fill(#27766e);
 ellipse(x+528,y+465,15,20);
 
 noStroke();
 fill(0);
 ellipse(x+528,y+465,7,7);
 
 noStroke();
 fill(#b4a264);
 ellipse(x+509,y+480,10,10);
 
 noStroke();
 fill(#ed83f6);
 rect(x+455,y+420,100,26);
 
 noStroke();
 fill(#ed83f6);
 rect(x+455,y+420,16,100);
 
 noStroke();
 fill(#ed83f6);
 rect(x+550,y+420,16,100);
 
 noStroke();
 fill(0);
 rect(x+441,y+508,7,35);
 
 noStroke();
 fill(0);
 triangle(x+444,y+465,x+434,y+495,x+453,y+495);
 
 noStroke();
 fill(0);
 triangle(x+444,y+515,x+434,y+495,x+453,y+495);
 
 noStroke();
 fill(#f44739);
 arc(x+509,y+495,20,20,radians(360),radians(360+180));
 popMatrix();
}



void draw_Wyvern(int x, int y){
  pushMatrix();
    noStroke();
 fill(#b3ad04);
 rect(x+775,y+565, 25,50);
 rect(x+820,y+565, 25,50);
 
  noStroke();
 fill(#b3ad04);
 rect(x+740,y+530,40,20);
 
  noStroke();
 fill(#b3ad04);
 rect(x+840,y+530,40,20);
 
  
  noStroke();
  fill(#8d8802);
  rect(x+770,y+470,80,100);
  
  noStroke();
  fill(#f3e5b2);
 ellipse(x+810,y+470,100,100);
 
 noStroke();
 fill(255);
 ellipse(x+790,y+465,25,25);
 
 noStroke();
 fill(#27766e);
 ellipse(x+790,y+465,15,20);
 
 noStroke();
 fill(0);
 ellipse(x+790,y+465,7,7);
 
 noStroke();
 fill(255);
 ellipse(x+828,y+465,25,25);
 
 noStroke();
 fill(#27766e);
 ellipse(x+828,y+465,15,20);
 
 noStroke();
 fill(0);
 ellipse(x+828,y+465,7,7);
 
 noStroke();
 fill(#b4a264);
 ellipse(x+809,y+480,10,10);
 
 noStroke();
 fill(#ffe507);
 rect(x+755,y+420,100,26);
 
 noStroke();
 fill(#ffe507);
 rect(x+755,y+420,16,100);
 
 noStroke();
 fill(#ffe507);
 rect(x+850,y+420,16,100);
 
 noStroke();
 fill(0);
 rect(x+741,y+508,7,35);
 
 noStroke();
 fill(0);
 triangle(x+744,y+465,x+734,y+495,x+753,y+495);
 
 noStroke();
 fill(0);
 triangle(x+744,y+515,x+734,y+495,x+753,y+495);
 
 noStroke();
 fill(#f44739);
 arc(x+809,y+495,20,20,radians(360),radians(360+180));
   
  popMatrix();
 }
}
