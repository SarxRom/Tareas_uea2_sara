//Coordenadas X son verticales
//Coordenadas Y son horizontales
//El trazo se puede eliminar con las funcion noStroke()
//El relleno se puede eliminar con las funcion noFill() 

void setup(){ //Se ejecuta una única vez
  size(600, 600); //Tamaño del lienzo
 background(204, 153, 255); //Color de fondo en codigo RGB 
}

void draw(){ //Bucle que se repite constantemente
   fill(204, 255, 204); //Color del relleno de la figura
   stroke(255); //Color del trazo de la figura
   ellipse(500, 450, 100, 100); //coordenada x,coordenada y, ancho, altura.
  
   fill(153, 153, 255); //Color del relleno de la figura
   stroke(0,0,153); //Color del trazo de la figura
   quad(123,43, 256, 450, 352, 80, 60, 150); //(coordenada x,coordenada y [Primera esquina]) (coordenada x,coordenada y [Segunda esquina])
                                              //(coordenada x,coordenada y [Tercera esquina]) (coordenada x,coordenada y [Cuarta esquina])
   
   stroke(0);//Color del trazo de la linea
   line(0, 0, 600, 600);//(coordenada x,coordenada y [Primer punto]) (coordenada x,coordenada y [Segundo punto])
   
   fill(255, 204, 153); //Color del relleno del texto
    textSize(100); //Es el tamaño de las letras en unidades de píxeles
    textAlign(LEFT);//Su alineación es horizontal, y puede acomodarse de derecha (RIGHT), centro (CENTER) o izquierda (LEFT)
    text("UAM",350, 200); //Entre comillas se coloca el texto, coordenada x, coordenada y
}
