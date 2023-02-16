/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:Window1:990710:
  appc.background(230);
} //_CODE_:Window1:990710:

public void eqnInput(GTextField source, GEvent event) { //_CODE_:inputField:605466:

} //_CODE_:inputField:605466:

public void enter_Button(GButton source, GEvent event) { //_CODE_:enterButton:232715:

  // An array of polynomial objects
  polynomials = createPolynomials();
  
  // Storing the input from the text field
  input = inputField.getText();
  
  // Making an object p of Polynomial type
  Polynomial p = new Polynomial(input);
  
  // Adding p to the array
  polynomials = (Polynomial[]) append(polynomials, p);
  
  // Resetting values previously calculated
  p.resetValues();
  
  // Making enter = true so that the if statement in draw() is allowed to run 
  enter = true;
} //_CODE_:enterButton:232715:

public void axis_size_slider(GCustomSlider source, GEvent event) { //_CODE_:axisSizeSlider:386989:

  // Slider to adjust size of plane
  range = axisSizeSlider.getValueI();    // Set range as value on slider
} //_CODE_:axisSizeSlider:386989:

public void clear_button(GButton source, GEvent event) { //_CODE_:clearButton:397940:

  // Make booleans false to stop draw() from making the graph on the screen
  enter = false;
  demo1 = false;
  demo2 = false;
  demo3 = false;
  // Set all coefficient sliders to 0
  coeff_1.setValue(0);
  coeff_2.setValue(0);
  coeff_3.setValue(0);
  coeff_4.setValue(0);
  coeff_5.setValue(0);
  coeff_6.setValue(0);
  coeff_7.setValue(0);
  coeff_8.setValue(0);
  coeff_9.setValue(0);
} //_CODE_:clearButton:397940:

public void grid_lines_button(GButton source, GEvent event) { //_CODE_:grid_Lines:811496:

  // If button is clicked, set grid lines to the opposite t/f of what it was (on/off)
  gridLines = !gridLines;
} //_CODE_:grid_Lines:811496:

public void coeff_1_slider(GSlider source, GEvent event) { //_CODE_:coeff_1:669079:

  // Take the values shown on all sliders and update them all
  getAllCoefficientsFromSliders();
  // Set the text inside the textfield to the graph made by the coefficient sliders
  inputField.setText(getEquationFromCoeffs());
} //_CODE_:coeff_1:669079:

public void coeff_2_slider(GSlider source, GEvent event) { //_CODE_:coeff_2:452183:

  // Take the values shown on all sliders and update them all
  getAllCoefficientsFromSliders();
  // Set the text inside the textfield to the graph made by the coefficient sliders
  inputField.setText(getEquationFromCoeffs());
  // Stopping the drawing of any other graphs
  enter = false;
} //_CODE_:coeff_2:452183:

public void coeff_3_slider(GSlider source, GEvent event) { //_CODE_:coeff_3:701790:

  // Take the values shown on all sliders and update them all
  getAllCoefficientsFromSliders();
  // Set the text inside the textfield to the graph made by the coefficient sliders
  inputField.setText(getEquationFromCoeffs());
  // Stopping the drawing of any other graphs
  enter = false;
} //_CODE_:coeff_3:701790:

public void coeff_4_slider(GSlider source, GEvent event) { //_CODE_:coeff_4:919687:

  // Take the values shown on all sliders and update them all
  getAllCoefficientsFromSliders();
  // Set the text inside the textfield to the graph made by the coefficient sliders
  inputField.setText(getEquationFromCoeffs());
  // Stopping the drawing of any other graphs
  enter = false;
} //_CODE_:coeff_4:919687:

public void coeff_5_slider(GSlider source, GEvent event) { //_CODE_:coeff_5:209797:

  // Take the values shown on all sliders and update them all
  getAllCoefficientsFromSliders();
  // Set the text inside the textfield to the graph made by the coefficient sliders
  inputField.setText(getEquationFromCoeffs());
  // Stopping the drawing of any other graphs
  enter = false;
} //_CODE_:coeff_5:209797:

public void coeff_6_slider(GSlider source, GEvent event) { //_CODE_:coeff_6:552925:

  // Take the values shown on all sliders and update them all
  getAllCoefficientsFromSliders();
  // Set the text inside the textfield to the graph made by the coefficient sliders
  inputField.setText(getEquationFromCoeffs());
  // Stopping the drawing of any other graphs
  enter = false;
} //_CODE_:coeff_6:552925:

public void demo_1_button(GButton source, GEvent event) { //_CODE_:demo_1:994830:

  // An array of polynomial objects
  polynomials = createPolynomials();
  
  //Loading the text file
  String[] lines = loadStrings("equationDemos.txt");
  
  // Making an object textFileTest of Polynomial type
  Polynomial textFileTest = new Polynomial(lines[0]);

  // Adding p to the array
  polynomials = (Polynomial[]) append(polynomials, textFileTest);
  
  // Resetting Values
  textFileTest.resetValues();
  
  // Making demo2 = true so that the if statement in draw() is allowed to run 
  demo1 = true;
} //_CODE_:demo_1:994830:

public void demo_2_button(GButton source, GEvent event) { //_CODE_:demo_2:402292:

  // An array of polynomial objects
  polynomials = createPolynomials();
  
  //Loading the text file
  String[] lines = loadStrings("equationDemos.txt");
  
  // Making an object textFileTest of Polynomial type
  Polynomial textFileTest = new Polynomial(lines[1]);

  // Adding p to the array 
  polynomials = (Polynomial[]) append(polynomials, textFileTest);
  
  // Resetting Values
  textFileTest.resetValues();
  
  // Making demo2 = true so that the if statement in draw() is allowed to run 
  demo2 = true;
} //_CODE_:demo_2:402292:

public void demo_3_button(GButton source, GEvent event) { //_CODE_:demo_3:465196:

  // An array of polynomial objects
  polynomials = createPolynomials();
  
  //Loading the text file
  String[] lines = loadStrings("equationDemos.txt");
  
  // Making an object textFileTest of Polynomial type
  Polynomial textFileTest = new Polynomial(lines[2]);
  
  // Adding p to the array
  polynomials = (Polynomial[]) append(polynomials, textFileTest);
  
  // Resetting Values
  textFileTest.resetValues();
  
  // Making demo3 = true so that the if statement in draw() is allowed to run 
  demo3 = true;
} //_CODE_:demo_3:465196:

public void coeff_7_slider(GSlider source, GEvent event) { //_CODE_:coeff_7:242156:
  // Take the values shown on all sliders and update them all
  getAllCoefficientsFromSliders();
  // Set the text inside the textfield to the graph made by the coefficient sliders
  inputField.setText(getEquationFromCoeffs());
  // Stopping the drawing of any other graphs
  enter = false;
} //_CODE_:coeff_7:242156:

public void coeff_8_slider(GSlider source, GEvent event) { //_CODE_:coeff_8:785231:
  // Take the values shown on all sliders and update them all
  getAllCoefficientsFromSliders();
  // Set the text inside the textfield to the graph made by the coefficient sliders
  inputField.setText(getEquationFromCoeffs());
  // Stopping the drawing of any other graphs
  enter = false;
} //_CODE_:coeff_8:785231:

public void coeff_9_slider(GSlider source, GEvent event) { //_CODE_:coeff_9:404033:
  // Take the values shown on all sliders and update them all
  getAllCoefficientsFromSliders();
  // Set the text inside the textfield to the graph made by the coefficient sliders
  inputField.setText(getEquationFromCoeffs());
  // Stopping the drawing of any other graphs
  enter = false;
} //_CODE_:coeff_9:404033:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  Window1 = GWindow.getWindow(this, "Window title", 0, 0, 350, 400, JAVA2D);
  Window1.noLoop();
  Window1.setActionOnClose(G4P.KEEP_OPEN);
  Window1.addDrawHandler(this, "win_draw1");
  label1 = new GLabel(Window1, 15, 8, 201, 25);
  label1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1.setText("Polynomial Grapher");
  label1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label1.setOpaque(false);
  inputField = new GTextField(Window1, 15, 47, 201, 40, G4P.SCROLLBARS_NONE);
  inputField.setPromptText("Enter Equation");
  inputField.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  inputField.setOpaque(true);
  inputField.addEventHandler(this, "eqnInput");
  enterButton = new GButton(Window1, 244, 47, 80, 30);
  enterButton.setText("Enter");
  enterButton.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  enterButton.addEventHandler(this, "enter_Button");
  axisSizeSlider = new GCustomSlider(Window1, 15, 92, 201, 40, "grey_blue");
  axisSizeSlider.setShowValue(true);
  axisSizeSlider.setLimits(10, 1, 100);
  axisSizeSlider.setNumberFormat(G4P.INTEGER, 0);
  axisSizeSlider.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  axisSizeSlider.setOpaque(false);
  axisSizeSlider.addEventHandler(this, "axis_size_slider");
  clearButton = new GButton(Window1, 245, 5, 80, 30);
  clearButton.setText("Clear");
  clearButton.setLocalColorScheme(GCScheme.RED_SCHEME);
  clearButton.addEventHandler(this, "clear_button");
  grid_Lines = new GButton(Window1, 243, 97, 80, 30);
  grid_Lines.setText("Grid Lines");
  grid_Lines.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  grid_Lines.addEventHandler(this, "grid_lines_button");
  coeff_1 = new GSlider(Window1, 15, 150, 90, 40, 10.0);
  coeff_1.setShowValue(true);
  coeff_1.setShowLimits(true);
  coeff_1.setLimits(0, -10, 10);
  coeff_1.setShowTicks(true);
  coeff_1.setNumberFormat(G4P.INTEGER, 0);
  coeff_1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  coeff_1.setOpaque(false);
  coeff_1.addEventHandler(this, "coeff_1_slider");
  coeff_2 = new GSlider(Window1, 127, 150, 90, 40, 10.0);
  coeff_2.setShowValue(true);
  coeff_2.setShowLimits(true);
  coeff_2.setLimits(0, -10, 10);
  coeff_2.setShowTicks(true);
  coeff_2.setNumberFormat(G4P.INTEGER, 0);
  coeff_2.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  coeff_2.setOpaque(false);
  coeff_2.addEventHandler(this, "coeff_2_slider");
  coeff_3 = new GSlider(Window1, 238, 150, 90, 40, 10.0);
  coeff_3.setShowValue(true);
  coeff_3.setShowLimits(true);
  coeff_3.setLimits(0, -10, 10);
  coeff_3.setShowTicks(true);
  coeff_3.setNumberFormat(G4P.INTEGER, 0);
  coeff_3.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  coeff_3.setOpaque(false);
  coeff_3.addEventHandler(this, "coeff_3_slider");
  coeff_4 = new GSlider(Window1, 15, 215, 90, 40, 10.0);
  coeff_4.setShowValue(true);
  coeff_4.setShowLimits(true);
  coeff_4.setLimits(0, -10, 10);
  coeff_4.setNumberFormat(G4P.INTEGER, 0);
  coeff_4.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  coeff_4.setOpaque(false);
  coeff_4.addEventHandler(this, "coeff_4_slider");
  coeff_5 = new GSlider(Window1, 126, 215, 90, 40, 10.0);
  coeff_5.setShowValue(true);
  coeff_5.setShowLimits(true);
  coeff_5.setLimits(0, -10, 10);
  coeff_5.setShowTicks(true);
  coeff_5.setNumberFormat(G4P.INTEGER, 0);
  coeff_5.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  coeff_5.setOpaque(false);
  coeff_5.addEventHandler(this, "coeff_5_slider");
  coeff_6 = new GSlider(Window1, 238, 215, 90, 40, 10.0);
  coeff_6.setShowValue(true);
  coeff_6.setShowLimits(true);
  coeff_6.setLimits(0, -10, 10);
  coeff_6.setShowTicks(true);
  coeff_6.setNumberFormat(G4P.INTEGER, 0);
  coeff_6.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  coeff_6.setOpaque(false);
  coeff_6.addEventHandler(this, "coeff_6_slider");
  demo_1 = new GButton(Window1, 19, 344, 80, 30);
  demo_1.setText("Demo: y=x");
  demo_1.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  demo_1.addEventHandler(this, "demo_1_button");
  demo_2 = new GButton(Window1, 132, 344, 80, 30);
  demo_2.setText("Demo y=x^2");
  demo_2.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  demo_2.addEventHandler(this, "demo_2_button");
  demo_3 = new GButton(Window1, 243, 344, 80, 30);
  demo_3.setText("Demo y=x^3");
  demo_3.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  demo_3.addEventHandler(this, "demo_3_button");
  coeff_7 = new GSlider(Window1, 15, 278, 90, 40, 10.0);
  coeff_7.setShowValue(true);
  coeff_7.setShowLimits(true);
  coeff_7.setLimits(0, -10, 10);
  coeff_7.setNumberFormat(G4P.INTEGER, 0);
  coeff_7.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  coeff_7.setOpaque(false);
  coeff_7.addEventHandler(this, "coeff_7_slider");
  coeff_8 = new GSlider(Window1, 127, 278, 90, 40, 10.0);
  coeff_8.setShowValue(true);
  coeff_8.setShowLimits(true);
  coeff_8.setLimits(0, -10, 10);
  coeff_8.setNumberFormat(G4P.INTEGER, 0);
  coeff_8.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  coeff_8.setOpaque(false);
  coeff_8.addEventHandler(this, "coeff_8_slider");
  coeff_9 = new GSlider(Window1, 238, 278, 90, 40, 10.0);
  coeff_9.setShowValue(true);
  coeff_9.setShowLimits(true);
  coeff_9.setLimits(0, -10, 10);
  coeff_9.setNumberFormat(G4P.INTEGER, 0);
  coeff_9.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  coeff_9.setOpaque(false);
  coeff_9.addEventHandler(this, "coeff_9_slider");
  label2 = new GLabel(Window1, 15, 135, 90, 12);
  label2.setText("Coeff: x^9 term: ");
  label2.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label2.setOpaque(false);
  label3 = new GLabel(Window1, 126, 135, 90, 12);
  label3.setText("Coeff: x^8 term: ");
  label3.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label3.setOpaque(false);
  label4 = new GLabel(Window1, 239, 135, 89, 12);
  label4.setText("Coeff: x^7 term: ");
  label4.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label4.setOpaque(false);
  label5 = new GLabel(Window1, 15, 199, 90, 12);
  label5.setText("Coeff: x^6 term: ");
  label5.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label5.setOpaque(false);
  label6 = new GLabel(Window1, 126, 199, 90, 12);
  label6.setText("Coeff: x^5 term: ");
  label6.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label6.setOpaque(false);
  label7 = new GLabel(Window1, 238, 199, 90, 12);
  label7.setText("Coeff: x^4 term: ");
  label7.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label7.setOpaque(false);
  label8 = new GLabel(Window1, 15, 262, 90, 12);
  label8.setText("Coeff: x^3 term: ");
  label8.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label8.setOpaque(false);
  label9 = new GLabel(Window1, 127, 262, 90, 12);
  label9.setText("Coeff: x^2 term: ");
  label9.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label9.setOpaque(false);
  label10 = new GLabel(Window1, 238, 262, 90, 12);
  label10.setText("Coeff: x term: ");
  label10.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label10.setOpaque(false);
  Window1.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow Window1;
GLabel label1; 
GTextField inputField; 
GButton enterButton; 
GCustomSlider axisSizeSlider; 
GButton clearButton; 
GButton grid_Lines; 
GSlider coeff_1; 
GSlider coeff_2; 
GSlider coeff_3; 
GSlider coeff_4; 
GSlider coeff_5; 
GSlider coeff_6; 
GButton demo_1; 
GButton demo_2; 
GButton demo_3; 
GSlider coeff_7; 
GSlider coeff_8; 
GSlider coeff_9; 
GLabel label2; 
GLabel label3; 
GLabel label4; 
GLabel label5; 
GLabel label6; 
GLabel label7; 
GLabel label8; 
GLabel label9; 
GLabel label10; 
