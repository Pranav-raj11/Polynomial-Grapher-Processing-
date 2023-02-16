// Function for graphing the function using the coefficient sliders
void changeableValues() {

  // For loop going from the lowest to highest range limit (length/height of plane)
  for (float i = -range; i <= range; i += smoothFactor) {

    float equation1 = solveEquation(i);                // Getting the main equation for i
    float equation2 = solveEquation(i+smoothFactor);   // Getting a second equation one step higher
    float x1 = getPXx(i);                              // Getting the x-coordinate for main eqn
    float y1 = getPXy(equation1);                      // Getting the y-coordinate for main eqn
    float x2 = getPXx(i+smoothFactor);                 // Getting the x-coordinate for second eqn
    float y2 = getPXy(equation2);                      // Getting the y-coordinate for second eqn
    
    stroke(255);
    strokeWeight(5);
    line(x1, y1, x2, y2);                            // Making a line from the main eqn point to second eqn point
  }
}


// Function to solve the full equation for a point with the sliders
float solveEquation (float i) {
  
  float equationSolved = ((coeff1)*pow(i, 9) + (coeff2)*pow(i, 8) + (coeff3)*pow(i, 7) + (coeff4)*pow(i, 6)
    + (coeff5)*pow(i, 5) + (coeff6)*pow(i, 4) + (coeff7)*pow(i, 3) + (coeff8)*pow(i, 2) + (coeff9)*pow(i, 1));
  
  return equationSolved;    // Return the value received form the equation when called
}

// Function to set all coefficient variables as the value received from their respective sliders
// Runs when any slider is used
void getAllCoefficientsFromSliders() {
  
  coeff1 = coeff_1.getValueI();
  coeff2 = coeff_2.getValueI();
  coeff3 = coeff_3.getValueI();
  coeff4 = coeff_4.getValueI();
  coeff5 = coeff_5.getValueI();
  coeff6 = coeff_6.getValueI();
  coeff7 = coeff_7.getValueI();
  coeff8 = coeff_8.getValueI();
  coeff9 = coeff_9.getValueI();
  
}

// Making the equation using the coefficient values from the slider
String getEquationFromCoeffs(){
  
  String equation = "y="+str(coeff1)+"x^9\n+"+str(coeff2)+"x^8+"+str(coeff3)+"x^7+"+str(coeff4)+
  "x^6+" +str(coeff5)+"x^5+"+str(coeff6)+"x^4+"+str(coeff7)+"x^3+"+str(coeff8)+"x^2+"+str(coeff9)+"x^1";
  
  return equation;         // Return to put this string in the text field in the GUI
  
}
