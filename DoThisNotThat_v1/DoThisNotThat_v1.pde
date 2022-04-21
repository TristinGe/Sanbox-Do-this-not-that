//Global Variables
float buttonX1, buttonY1, buttonWith1, buttonHeight1;
float buttonX2, buttonY2, buttonWith2, buttonHeight2;
float rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight;
float ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter;
float x, y, xDiameter, yDiameter;
color black=#000000, white=#FFFFE1;//Night Mode, blur is 00 on the black, but not white
Boolean rectOn=false, ellipse=false;
//
void setup()
{
  //Display Geometry
  size(600, 400);//fullScreen(); //displayWidth, displayHeight
  println(width, height, displayWidth, displayHeight);
  //Swap display key variab;es for tseting
  int appWidth = width;//displayWidth
  int appHeight = height;//displayHeight
  //With Strings, easier to print the console or CANVAS
  //Display Orientation: Landscape, not portrait nor square
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Turn your phone";
  String orientation = ( appWidth>=appHeight ) ? ls : p ; //Ternary Operator, repeats IF-ELSE to populate variables
  println(DO, orientation);
  //if (orientation==p) println(instruct);
  if (orientation==ls) {
    println("Good to Go");
  } else {
    println(instruct);
    appWidth = appWidth*0;
    appHeight= appHeight*0;
  }
  println("App Width", appWidth, "\tApp Height:", appHeight);
  //
  //Population
   buttonX1= appWidth/4;
   buttonY1= appHeight*3/4;
   buttonWith1= appWidth/5;
   buttonHeight1= appHeight/5;
   buttonX2= appWidth*3/4;
   buttonY2= buttonY1;
   buttonWith2= buttonWith1;
   buttonHeight2= buttonHeight1;
   rectDisplayX = appWidth/8;
   rectDisplayY = appHeight/8;
   rectDisplayWidth = appWidth/6;
   rectDisplayHeight = appHeight/6;
   ellipseX = appWidth*3/4;
   ellipseY = rectDisplayY;
   ellipseXDiameter = appWidth/8;
   ellipseYDiameter = appHeight/8;
   float ellipseRectXCenter = ellipseX+ellipseXDiameter/2;
   float ellipseRectYCenter = ellipseY+ellipseYDiameter/2;
   x = ellipseRectXCenter;
   y = ellipseRectYCenter;
   xDiameter = ellipseXDiameter;
   yDiameter = ellipseYDiameter;
}//End setup
//
void draw()
{
  background(black);
  rect( buttonX1, buttonY1, buttonWith1, buttonHeight1); //DIV: "Click Me"
  rect( buttonX2, buttonY2, buttonWith2, buttonHeight2); //DIV: "Or Me"
  if (rectOn==true && ellipse==false) rect( rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight); //DIV: "Display Rectangle"
  //rect( ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter); //DIV: "Display Ellipse"
  if ( rectOn==false && ellipse==true)ellipse( x, y, xDiameter, yDiameter);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() 
{
  rectOn=false;
  ellipse=false;
  if ( mouseX>=buttonX1 && mouseX<=buttonX1+buttonWith1 && mouseY>=buttonY1 && mouseY<=buttonY1+buttonHeight1) rectOn=true;
  if ( mouseX>=buttonX2 && mouseX<=buttonX2+buttonWith2 && mouseY>=buttonY2 && mouseY<=buttonY2+buttonHeight2) ellipse=true;
}//End mousePressed
//
//End Main
