boolean[] keys;
int[] player = new int[4];
void settings(){
  size(400,400,P2D);
  keys=new boolean[25];
  player[1]=200;
  player[2]=200;
  player[3]=10;
  keys[0]=false;
  keys[1]=false;
}


void draw(){
  background(255);
  rect(player[1],player[2],50,50);
  //printArray(kp);
  if(keys[0]){
    player[1]-=player[3];
  }
  if(keys[22]){
    player[2]-=player[3];
  }
  if( keys[18]){
    player[2]+=player[3];
  }
  if(keys[2]){
    player[1]+=player[3];
  }
  printArray(keys);
}


void keyPressed()
{
  if(key=='a')
    keys[0]=true;
  if(key=='w')
    keys[22]=true;
  if(key=='s')
    keys[18]=true;
  if(key=='d')
    keys[2]=true;
}

void keyReleased()
{
  if(key=='a')
    keys[0]=false;
  if(key=='w')
    keys[22]=false;
  if(key=='s')
    keys[18]=false;
  if(key=='d')
    keys[2]=false;
} 