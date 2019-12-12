int xPos, yPos; 
int size = 100; 
boolean circleClicked = false; 
float d; 

void setup(){
size(600, 600); 
xPos = width/2; 
yPos = height/2;
noStroke(); 
}

void draw(){

//calculate dist between the mouse and the center of the circle 
//d = dist(xPos,yPos,mouseX,mouseY);
if( dist(xPos,yPos,mouseX,mouseY)<size/2){
  fill(0);
}else{
  fill(255);
}

if(circleClicked){
background(0); 
}else{
background(255);
}


println(circleClicked); 
 ellipse(xPos, yPos, size, size); 


}



//}

void mousePressed(){
// toggle the boolean from true / false if the mouse is inside of the circle
if(dist(xPos,yPos,mouseX,mouseY)<size/2){
 circleClicked = true; 
}else{
 circleClicked = false;
}
}
