int[] button = new int[5];
int col=0;
void setup(){
size(800,800,P2D);
button[0]=400;
button[1]=400;
button[2]=200;
button[3]=50;
button[4]=0;
}

void draw(){
  background(155);
  fill(col);
  rect(button[0],button[1],button[2],button[3]);
  if(button[4]==1){
    ellipse(56, 46, 55, 55);
  }
  
}


void mousePressed(){
  if((mouseX<(button[0]+button[2]))&&(mouseX>(button[0]))){//seeing if inline on x
  if((mouseY<(button[1]+button[3]))&&(mouseY>(button[1]))){
  button[4]=1;
  }
  }else{ button[4]=0;
  
}
}