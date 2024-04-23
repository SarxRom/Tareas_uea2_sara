//INSTRUCCIONES//
//1.- PRENDE LA PANTALLA EN DONDE SE VA A PROYECTAR LA PIEZA
//2.- CONECTA LA COMPUTADORA A LA PANTALLA
//3.- YA QUE SE TIENE TODO CONECTADO Y LISTO SE PUEDE EJECUTAR CON LAS TECLAS "CTRL R"
//4.- O EN LA PANTALLA APRETANDO EL BOTON DE EJECUTAR EL CUAL ESTA DEL LADO SUPERIOR IZQUIERDO
//5.- PARA QUITAR LA PIEZA SE DA UN CLICK IZQUIERDO Y SE APRIETA LA TECLA "ESC"

PImage img;
float w;
float z;
int speed = 1;

void setup() {
  fullScreen();
  noCursor();
  img = loadImage("../assets/foto_quiosco.jpg");
  img.resize(1078, 730);
  w=0;
  z = height / 2;
}

void draw() {
  color c1 = color(255, 77, 77);
  color c2 = color(119, 51, 255);
  for (int y = 0; y < height; y++) {
    float inter = map(y, 0, height, 0, 1);
    color c = lerpColor(c1, c2, inter);
    stroke(c);
    line(0, y, width, y);
  }
  float posX = width/2 - img.width/2;
  float posY = height/2 - img.height/2;
  image(img, posX, posY);
  fill(153, 204, 255);
  noStroke();
  ellipse(w, z, 300, 300);

  w = w + speed;
  if (w > width || w < 0) {
    speed = speed * -1;
  }
  String s = "Sala 5 - 20 siglos";
  String a ="de Animación en";
  String r ="México";

  fill(255, 102, 0);
  textSize(40);
  textAlign(CENTER, CENTER);
  text(s, w, 490);
  text(a, w, 550);
  text(r, w, 610);
  fill(255);
  textAlign(RIGHT, BOTTOM);
  textSize(30);
  String e = "La animación en México, Jenny Flores";
  String f = "Del 10 al 29 de septiembre del 2024";

  text(e + "\n" + f, width - 10, height - 10);
}
