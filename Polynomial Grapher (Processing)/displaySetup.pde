// Function to draw x-axis and y-axis
void drawAxis() {
  
  stroke(255);
  strokeWeight(5);
  line(width/2, 0, width/2, height);      // Y-axis
  line(0, height/2, width, height/2);     // X-axis
  
}

// Function to draw grid lines
void drawGridLines() {
  
  // For loop that creates the vertical lines
  for (float i = 0.0; i <= width; i += width/(range*2.0)) {
    stroke(255);
    strokeWeight(1);
    line(i, 0, i, height);
  }
  
  // For loop that creates the horizontal lines
  for (float j = 0.0; j <= height; j += height/(range*2.0)) {
    stroke(255);
    strokeWeight(1);
    line(0, j, width, j);
  }
  
}

// Fuction to draw the scale for each axis
void drawScale() {
  
  // Positive y-axis
  for (float s = 0.0, i = height/2; i >= 0; s += 1, i -= (300.0/(range))) {
    fill(255);
    textSize(10);    
    
    // If the values of the axis get bigger that 50 
    if (range > 50) {
      // Count by 10's
      if (s % 10 == 0)
        text(int(s), (width/2)-15, i+4);
    } 
    // If the values of the axis get bigger that 15 
    else if (range > 15) {
      // Count by 2's
      if (s % 2 == 0)
        text(int(s), (width/2)-15, i+4);
    } 
    // If the numbers are small enough, count by 1's
    else
      text(int(s), (width/2)-15, i+4);
  }
  
  // Negative y-axis
  for (float s = 0.0, i = height/2; i <= 600; s -= 1, i += (300.0/(range))) {
    fill(255);
    textSize(10);
    
    // If the values of the axis get bigger that 50 
    if (range > 50) {
      // Count by 10's
      if (s % 10 == 0)
        text(int(s), (width/2)-15, i+4);
    } 
    // If the values of the axis get bigger that 15 
    else if (range > 15) {
      // Count by 2's
      if (s % 2 == 0)
        text(int(s), (width/2)-15, i+4);
    } 

    // If the numbers are small enough, count by 1's
    else
      text(int(s), (width/2)-15, i+4);
  }
  
  // Positive x-axis
  for (float s = 0, i = width/2; i >= 0; s -= 1, i -= (300/(range))) {
    fill(255);
    textSize(10);
    
    // If the values of the axis get bigger that 50 
    if (range > 50) {
      // Count by 10's
      if (s % 10 == 0)
        text(int(s), i-2, (width/2)+15);
    } 
    // If the values of the axis get bigger that 15 
    else if (range > 15) {
      // Count by 2's
      if (s % 2 == 0)
        text(int(s), i-2, (width/2)+15);
    } 
    // If the numbers are small enough, count by 1's
    else
      text(int(s), i-2, (width/2)+15);
  }
  
  // Negative y-axis
  for (float s = 0, i = width/2; i <= 600; s += 1, i += (300/(range))) {
    fill(255);
    textSize(10);
    
    // If the values of the axis get bigger that 50 
    if (range > 50) {
      // Count by 10's
      if (s % 10 == 0)
        text(int(s), i-2, (width/2)+15);
    } 
    // If the values of the axis get bigger that 15 
    else if (range > 15) {
      // Count by 2's
      if (s % 2 == 0)
        text(int(s), i-2, (width/2)+15);
    } 
    // If the numbers are small enough, count by 1's
    else
      text(int(s), i-2, (width/2)+15);
  }
  
}
