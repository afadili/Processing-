int X=0;
int Y=0;
int X1=20;
int Y1=30;
float valsin;
int i=0;
float rand;
// pour ajouter de la couleur on déclare trois variables R V et B pour donner des couleurs aléatoires à nos traits.
// si on vous tout afficher en niveaux de gris on garde une seule variable.
//float R=0; 
//float V=0;
//float B=0;

void setup(){
  frameRate(3000);
  size(1400,750);
  background(255);
}
void draw(){
    X+=20;
    X1+=20;
    valsin = pow((sin((X*PI)/1400)),3.5)*23; // on remplace par valsin = abs((cos((X*PI)/1400))*3.5)*5; pour inverser la variation d'épaisseur (plus épais sur les bords que le centre)
    if (valsin<=2)
    {
      valsin=2;
    }
    strokeWeight(valsin);
    // pour les couleurs on ajoute ces lignes : 
    /*   stroke(R,V,B);
      R=random(255);
      V=random(255);
      B=random(255);*/
    // pour les niveaux de gris on ajoute ces lignes :
    /*stroke(R);
    R=random(255);*/
    rand=random(PI/4,PI/2);
    line(X-cos(rand)*30,Y+sin(rand)*30,X,Y); // on remplace par triangle(X-cos(rand)*30,Y+sin(rand)*30,X,Y,X+30,Y+30); pour avoir des triangles au lieu des traits.
    // ensuite on remplace avec rect(X-cos(rand),Y+sin(rand),X,Y); pour afficher des rectangles au lieu des traits
    if (X>1400)
    {
    X=0;
    X1=20;
    Y+=30;
    Y1+=30;
    }
  }