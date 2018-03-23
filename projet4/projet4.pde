int X=0;
int Y=0;
int X1=20;
int Y1=30;
float valsin;
int i=0;
float rand;

void setup(){
  frameRate(3000);
  size(1400,750);
  background(255);
}
void draw(){
    X+=20;
    X1+=20;
    valsin = abs((cos((X*PI)/1400))*3.5)*5;
    if (valsin<=2)
    {
      valsin=2;
    }
    strokeWeight(valsin);
    rand=random(PI/4,PI/2);
    //line(X-30,Y+30,X,Y);
    triangle(X-cos(rand)*30,Y+sin(rand)*30,X,Y,X+30,Y+30);
    //line(X,Y,X1,Y1);
    if (X>1400)
    {
    X=0;
    X1=20;
    Y+=30;
    Y1+=30;
    }
  }