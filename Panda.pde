int armAngle = 0;
int angleChange = 3;
final int ANGLE_LIMIT = 12;


void setup()
{
  size(500, 450);
  smooth();
  frameRate(30);
  
  strokeWeight(20.0);
  stroke(255, 100);
}

void draw()
{
  background(255);
  pushMatrix();
  translate(50, 50); 
  drawPanda();
  armAngle += angleChange;
  if (armAngle > ANGLE_LIMIT || armAngle < 0)
  {
    angleChange = -angleChange;
    armAngle += angleChange;
  }
  popMatrix();
}
  

void drawPanda()
{
  noStroke();
  background(200,100,70);
  
  fill(0);
  ellipse(mouseX-35, mouseY-235, 40, 42); // left ear
  ellipse(mouseX+38, mouseY-235, 40, 42);  // right ear
  
  fill(0);
  drawLeftArm();
  drawRightArm();
  
  fill(7);
  ellipse (mouseX, mouseY-23, 230, 250); // body1
  fill(255);
  ellipse (mouseX, mouseY, 210, 204); // body
  
  fill(255);
  ellipse(mouseX, mouseY-183, 135, 125); // head
  
  fill(7);
  ellipse(mouseX-60, mouseY+60, 110, 85); // left leg
  ellipse(mouseX+63, mouseY+60, 110, 85); // right leg
  fill(0);
  ellipse(mouseX-30, mouseY+64, 60, 70); // left foot
  ellipse(mouseX+33, mouseY+64, 60, 70); // right foot

  fill(0);
  ellipse(mouseX-30, mouseY-198, 43, 37); // left black eye
  ellipse(mouseX+33, mouseY-198, 43, 37);  // right black eye
  
  fill(250);
  ellipse(mouseX-25, mouseY-195, 17, 17); // left white eye
  ellipse(mouseX+28, mouseY-195, 17, 17);  // right white eye
  
  fill(40,40,5);
  ellipse(mouseX-25, mouseY-195, 12, 12); // left brown eye
  ellipse(mouseX+28, mouseY-195, 12, 12);  // right brown eye
  
  fill(0);
  ellipse(mouseX-25, mouseY-195, 5, 5); // left pupil
  ellipse(mouseX+28, mouseY-195, 5, 5);  // right pupil
  
  fill(240);
  ellipse(mouseX-22, mouseY-198, 3, 3); // left light eye
  ellipse(mouseX+31, mouseY-198, 3, 3);  // right light eye
  
  fill(0);
  triangle(mouseX-5,mouseY-181,mouseX+10,mouseY-181,mouseX+3,mouseY-175); // nose
  
  fill(30);
  ellipse(mouseX+3,mouseY-158,10,20);
  
  textSize(30);
  
  text("WO!", mouseX+80, mouseY-230);
}

void drawLeftArm()
{
  pushMatrix();
  translate(100, 100 );
  rotate(radians(-armAngle));
  ellipse(mouseX-200, mouseY-243, 40, 120); // left arm
  ellipse(mouseX-185, mouseY-275,12,25);
  popMatrix();
}

void drawRightArm()
{
  pushMatrix();
  translate(300, 100 );
  rotate(radians(armAngle));
  ellipse(mouseX-200, mouseY-243, 40, 120); // right arm
  ellipse(mouseX-215, mouseY-275,12,25);
  popMatrix();
}
