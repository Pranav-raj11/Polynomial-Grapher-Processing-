class Polynomial {
  
  //Fields
  
  String equation;
  int degree;
  ArrayList<Integer>coeffs;

  //Constructor
  
  Polynomial(String e) {
    this.equation = e;
    coeffs = new ArrayList<Integer>();
  }

  //Methods

  // Parsing the String equation that the user has typed in
  void parseEquation() {
    
    // Splitting up the equation so that only the right side is remaining
    String eqn = this.equation;
    String rhs = eqn.substring(2);
    
    // Locating the index of the carrot symbol (^)
    carrotIndex = rhs.indexOf("^");

    // If there is a carrot in the equation, the degree of the equation is the number after the carrot
    if (carrotIndex != -1) {
      this.degree = int(rhs.substring(carrotIndex + 1, carrotIndex+2));
    } 
    
    // If there's not a carrot in the equation, check for x
    else {
      // Locating index of x
      int indexOfx = rhs.indexOf("x");
      // If there's an x, the degree is 1
      if (indexOfx != -1) {
        this.degree = 1;
      } 
      // If there isn't, the degree is 0
      else {
        this.degree = 0;
      }
    }

    // While loop to parse the string completely
    while (isRemaining == true) {
      
      // Relocating the index of the carrot symbol (^)
      carrotIndex = rhs.indexOf("^");

      // If there is a carrot symbol in the equation remaining
      if (carrotIndex != -1) {

        int indexOfx = rhs.indexOf("x");
        
        //If there is a coefficient with the x term, add it to the arrayList
        if (int(rhs.substring(0, indexOfx)) != 0) {
          this.coeffs.add(int(rhs.substring(0, indexOfx)));
        } 
        //If there isn't a coefficient with the x term, add 1 to the arrayList
        else {
          this.coeffs.add(1);
        }
        // Cut the part that has just been parsed out of the equation
        rhs = rhs.substring(carrotIndex+2);
      } 
      
      // If there isn't a carrot symbol in the equation remaining
      else {
        int indexOfx = rhs.indexOf("x");
        
        // If there isn't any more x terms
        if (indexOfx == -1) {
          
          // If the number of coefficients match the degree + constant, leave the while loop
          if (this.coeffs.size() == this.degree+1) {
            
            isRemaining = false;
          }
          // If the number of coefficients does not include the constant, add it to the array
          else if (this.coeffs.size() == this.degree){
            
            this.coeffs.add(int(rhs));
          }
          // If there's a missing x term (x^3 + x - 1 -> x^2 term missing)
          else{
            
            this.coeffs.add(int(0));
          }
          
        } else {
          
          //If there isn't a coefficient with the x term, add 1 to the arrayList
          if (int(rhs.substring(0, indexOfx)) == 0) {
            
            this.coeffs.add(1);
          } 
          // If there is a coefficient with the x term, add it to the arrayList
          else {
            
            this.coeffs.add(int(rhs.substring(0, indexOfx)));
          }
          // Further cut the equation
          rhs = rhs.substring(indexOfx+1);
        }
      }
    }
  }

  // Method to graph the function
  void graphFunction() {
    
    // Double for loop to graph the full function onto the screen
    for (float i = -range; i <= range; i += smoothFactor) {
      for (int j = this.degree; j >= 0; j--) {
        
        x = i;                                                        // X-coordinate
        y += this.coeffs.get(this.degree-j)*pow(i, j);                // Y-coordinate
        x2 = i+smoothFactor;                                          // Getting the x-coordinate one point higher
        y2 += this.coeffs.get(this.degree-j)*pow(i+smoothFactor, j);  // Getting the y-coordinate one point higher
      }
      
      stroke(255);
      strokeWeight(5);
      line(getPXx(x), getPXy(y), getPXx(x2), getPXy(y2));             // Making the line from one point to the higher one
      
      // Resetting y and y2
      y = 0;
      y2 = 0;
    }
  }

  // Printing the function onto the screen
  void printFunction() {
    
    textSize(20);
    text(this.equation, width-100, 0.1*height);
    
  }

  // Method to reset the values (called when clear is clicked)
  void resetValues() {
    
    this.degree = 0;                                    // Resetting  degree to 0
    this.coeffs.clear();                                // Clearing the array of coefficients
    isRemaining = true;                                 // Set isRemaining to true again so that parsing can start
    
  }
  
}
