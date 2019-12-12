float xPos, yPos; 
float r, g, b; 

void setup() {
size(600, 600); 
smooth();  
noStroke();
}

void draw() {

//draws background
for (int i = 0; i < width; i++) {
for (int j = 0; j < height; j++) {
float r = map(i, width, 91, 0, 255);
float g = map(j, height, 33, 0,170);
stroke(r, g, 175);
point(i, j);
}
}
xPos= 0;

yPos = sin(radians(second()))*height; 
xPos = sin(radians(second()))*width;


ellipse(xPos, yPos, 100, 100);
}
