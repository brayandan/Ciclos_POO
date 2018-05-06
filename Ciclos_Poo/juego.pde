void jugar(int a)
{
  if (a==0) {
    background(210, 249, 234);
    strokeWeight(1);
    stroke(0, 0, 0);
    fill(247, 255, 0);
    rect(width/2-155, height*2/4-85, 110, 60, 15);
    rect(width/2-155, height*2/3-90, 110, 60, 15);
    rect(width/2+45, height*2/4-85, 110, 60, 15);
    fill(35, 255, 0);
    rect(width/2+45, height*2/3-90, 110, 60, 15);
    rect(width/2-155, height*3/4-50, 110, 60, 15);
    rect(width/2+45, height*3/4-50, 110, 60, 15);
    fill(255, 182, 0);
    rect(width/2-155, height*3/4+40, 110, 60, 15);
    rect(width/2+45, height*3/4+40, 110, 60, 15);
    fill(0, 0, 0);
    textSize(50);
    textAlign(CENTER);   
    textSize(56);
    text("¡Bienvenido a Connect!", width*1/2, height*1/4 );
    textSize(28);
    //stroke(255, 0, 0);
    fill(0, 0, 0);
    stroke(0, 0, 0);
    fill(0, 0, 0);
    text("Nivel 1", width/2-100, height*2/4-50);
    text("Nivel 2", width/2+100, height*2/4-50);
    text("Nivel 3", width/2-100, height*2/3-50);
    fill(0, 0, 0);
    text("Nivel 5", width/2-100, height*3/4-10);
    text("Nivel 4", width/2+100, height*2/3-50);
    text("Nivel 6", width/2+100, height*3/4-10);
    fill(0, 0, 0);
    text("Nivel 7", width/2-100, height*3/4+80);
    text("Nivel 8", width/2+100, height*3/4+80);
    textAlign(CENTER);
    textSize(16);
    fill(0, 0, 0);
    text("Elija el tamaño", width*1/9, height*2/4+30);
    text("de los nodos:", width*1/9, height*2/4+45);
    //fill(131, 0, 211);
    fill(0, 0, 255);
    rect(width*1/35, height*1/2+80, 30, 30);
    rect(width*1/35+50, height*1/2+80, 30, 30);
    rect(width*1/35+100, height*1/2+80, 30, 30);
    rect(width*1/35, height*1/2+130, 30, 30);
    rect(width*1/35+50, height*1/2+130, 30, 30);
    rect(width*1/35+100, height*1/2+130, 30, 30); 
    stroke(255, 0, 0);
    strokeWeight(10);
    fill(0);
    ellipse(width*1/35+65, height*1/2+220, 10, 10);    
    fill(255, 255, 255);
    text("20", width*1/35+15, height*2/4+100);
    text("25", width*1/35+65, height*2/4+100);
    text("30", width*1/35+115, height*2/4+100);
    text("35", width*1/35+15, height*2/4+150);
    text("40", width*1/35+65, height*2/4+150);
    text("45", width*1/35+115, height*2/4+150);
    if (mousePressed) {
      if (width*1/35+100<=mouseX && mouseX<=width*1/35+130 && height*2/4+130<=mouseY && mouseY<=height*2/4+160) {
        nodot=45;
      }
      if (width/2-155<=mouseX && mouseX<=width/2-155+110 && height*2/4-85<=mouseY && mouseY<=height*2/4-85+60) {
        niveles=1;
      }
      if (width/2+45<=mouseX && mouseX<=width/2+45+110 && height*2/4-85<=mouseY && mouseY<=height*2/4-85+60) {
        niveles=2;
      }    
      if (width/2-155<=mouseX && mouseX<=width/2-155+110 && height*2/3-90<=mouseY && mouseY<=height*2/3-90+60) {
        niveles=3;
      }
      if (width/2+45<=mouseX && mouseX<=width/2+45+110 && height*2/3-90<=mouseY && mouseY<=height*2/3-90+60) {
        niveles=4;
      }
      if (width/2-155<=mouseX && mouseX<=width/2-45 && height*3/4-50<=mouseY && mouseY<=height*3/4-50+60) {
        niveles=5;
      }
      if (width/2+45<=mouseX && mouseX<=width/2+45+110 && height*3/4-50<=mouseY && mouseY<=height*3/4-50+60) {
        niveles=6;
      }
      if (width/2-155<=mouseX && mouseX<=width/2-45 && height*3/4+40<=mouseY && mouseY<=height*3/4+40+60) {
        niveles=7;
      }
      if (width/2+45<=mouseX && mouseX<=width/2+45+110 && height*3/4+40<=mouseY && mouseY<=height*3/4+40+60) {
        niveles=8;
      }
    }
  } else {
    background(255, 255, 255);
    for (int i=1; i<9; i++) {
      if (a==i) {
        nivel[i-1].display();
      }
    }
  }
}