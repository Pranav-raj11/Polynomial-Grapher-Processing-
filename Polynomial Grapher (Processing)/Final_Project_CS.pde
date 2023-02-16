import g4p_controls.*;

float x, y, x2, y2, ratiox, ratioy, pixelx, pixely;
int carrotIndex, constant, increment;
int coeff1, coeff2, coeff3, coeff4, coeff5, coeff6, coeff7, coeff8, coeff9;
boolean gridLines, demo1, demo2, demo3, enter = false;
boolean isRemaining= true;
int range = 10;
float smoothFactor = 0.1;  // Change this for a smoothness of the curve in the graph
String input;
int graphCount = 0;
Polynomial[] polynomials;

// In setup, create the display and GUI
void setup() {
  size(600, 600);
  createGUI();
}

// In draw, draw what's needed for display
void draw() {

  background(0);

  // If the user clicks the enter button after putting in an equation:
  if (enter == true) {
    polynomials[graphCount].parseEquation();  // First, parse the equation
    polynomials[graphCount].graphFunction();  // Then, graph it
    polynomials[graphCount].printFunction();  // Print it on the screen
  }

  // Demos are for the user to compare functions with
  // The equations are taken from a text file (see demo buttons GUI)
  // They are the three basic equations: linear, quadratic and cubic
  // You can create another graph with the coefficients to see how it compares with the demo
  // If the user clicks one of the demo buttons:
  if (demo1 == true || demo2 == true || demo3 == true) {
    polynomials[graphCount].parseEquation();  // First, parse the equation
    polynomials[graphCount].graphFunction();  // Then, graph it
    polynomials[graphCount].printFunction();  // Print it on the screen
  }

  // Draw the x-axis and y-axis
  drawAxis();

  // Draw the numbers for the scale for each axis
  drawScale();


  changeableValues();
  
  // If the user enters the gridlines button, draw the grid lines
  if (gridLines == true)
    drawGridLines();
  
  
}






//Calculating the pixel value for the x-coordinate
float getPXx(float x) {
  
  ratiox = (x + range)/(range*2);
  pixelx = width*ratiox;
  
  return pixelx;
  
}

//Calculating the pixel value for the y-coordinate
float getPXy(float y) {
  
  ratioy = (y + range)/(range*2);
  pixely = height*ratioy;
  pixely = height - pixely;
  
  return pixely;
  
}


// Function creates an array to store polynomial objects
Polynomial[] createPolynomials() {
  
  Polynomial[] polynomials = {};
  
  return polynomials;
  
}
