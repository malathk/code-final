
int size = 50; 
float xPos = size/2, yPos; 
int xDirection = 1; 
float theta; 
float ampl; 

void setup(){
size(800, 600); 

}
void draw(){
background(0); 

theta += .05; 

//create boundaries for your xPos 
if (xPos>width-size/2 || xPos<size/2){
  xDirection=-xDirection;
}

xPos += xDirection; 

//use the map function for ampl 
ampl=map(0,0,xPos,xPos,height);

//amp grows larger as xpos increases


//fix yPos 
yPos = height/2 +sin(theta)*ampl; 

fill(255); 
ellipse(xPos, yPos, size, size); 
}
