int X=0;
int X1=0;
int X2=0;
int X3=0;
boolean perdu=false;

void setup(){
  size(400,400);
  background(255,0,0);
}
void draw(){
  if (perdu==false)
  {
    background(0,0,0);
    rect(X,0,50,50);
    rect(X1,100,50,50);
    rect(X2,200,50,50);
    rect(X3,300,50,50);
    X++;
    X1+=2;
    X2+=7;
    X3+=10;
    if (X>400)
    {
      X=-50;
    }
    if (X1>400)
    {
      X1=-50;
    }
    if (X2>400)
    {
      X2=-50;
    }
    if (X3>400)
    {
      X3=-50;
    }
    if (mouseX<X+50 && mouseX>X && mouseY<50 && mouseY>0)
    {
    background(255,0,0);
    perdu=true;
    fill(0,255,0);
    rect(100,100,200,200);
    fill(0);
    textSize(25);
    text("vous avez perdu",100,200);
    }
     if (mouseX<X1+50 && mouseX>X1 && mouseY<150 && mouseY>100)
    {
    background(255,0,0);
    perdu=true;
    fill(0,255,0);
    rect(100,100,200,200);
    fill(0);
    textSize(25);
    text("vous avez perdu",100,200);
    }
     if (mouseX<X2+50 && mouseX>X2 && mouseY<250 && mouseY>200)
    {
    background(255,0,0);
    perdu=true;
    fill(0,255,0);
    rect(100,100,200,200);
    fill(0);
    textSize(25);
    text("vous avez perdu",100,200);
    }
     if (mouseX<X3+50 && mouseX>X3 && mouseY<350 && mouseY>300)
    {
    background(255,0,0);
    perdu=true;
    fill(0,255,0);
    rect(100,100,200,200);
    fill(0);
    textSize(25);
    text("vous avez perdu",100,200);
    }
  }
}