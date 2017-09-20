/*

  Developer: Byron Farrell
  Date created: 19/09/2017
  Last updated: 19/09/2017
  
  Description:
  Creating a version of paint with processing
    
*/

// GLOBAL VARIABLES:

// COLOR VARIABLES
color currentStrokeColor = color( 0 );
color currentFillColor = color( 255 );
// CO-ORDINATE VARIABLES
float halfW = width / 2;
float halfH = height / 2;

// OBJECTS
toolBar newToolBar;

void setup() {
  size( 500, 500 );
}// END setup()

void draw() {
  newToolBar = new toolBar();
}// END draw()

// CLASSES

/* 
colorPicker will draw a box with a varity of colors to pick from
the user can pick between fill color or stroke color
if the user clicks on one of the colored squares the next object they draw will have a stroke/fill of that color
*/
class toolBar {
  // DATA
  color backgroundColor = color( 160 );
  float toolBarWidth = width;
  float toolBarHeight = height / 6;
  // color picker co-ordinates
  float colorPickerMargin = toolBarHeight / 9;
  float colorBoxSize = toolBarHeight / 3;
  
  float colorPickerWidth = ( colorPickerMargin * 5 ) + ( colorBoxSize * 5 );
  
  // CONSTRUCTOR
  toolBar() {
    // background for the toolbar
    noStroke();
    fill( backgroundColor );
    rect( 0, 0, toolBarWidth, toolBarHeight );
    // color picker section of the tool bar, this will be located to the right of the tool bar
    // first row
    fill( 255 ); // white
    rect( width - colorPickerWidth, colorPickerMargin, colorBoxSize, colorBoxSize );
    fill( 0 ); // black
    rect( width - colorPickerWidth + colorPickerMargin + colorBoxSize , colorPickerMargin, colorBoxSize, colorBoxSize );
    fill( 255, 0, 0 ); // red
    rect( width - colorPickerWidth + ( colorPickerMargin * 2 ) + ( colorBoxSize * 2 ), colorPickerMargin, colorBoxSize, colorBoxSize );
    fill( 0, 255, 0 );// green
    rect( width - colorPickerWidth + ( colorPickerMargin * 3 ) + ( colorBoxSize * 3 ), colorPickerMargin, colorBoxSize, colorBoxSize );
    fill( 0, 0, 255 );// blue
    rect( width - colorPickerWidth + ( colorPickerMargin * 4 ) + ( colorBoxSize * 4 ), colorPickerMargin, colorBoxSize, colorBoxSize );
    // second row
    fill( 255, 140, 0 ); // orange
    rect( width - colorPickerWidth, ( colorPickerMargin * 2 ) + colorBoxSize, colorBoxSize, colorBoxSize );
    fill( 128, 0, 128 ); // purple
    rect( width - colorPickerWidth + colorPickerMargin + colorBoxSize, ( colorPickerMargin * 2 ) + colorBoxSize, colorBoxSize, colorBoxSize );
    fill( 255, 105, 180 ); // pink
    rect( width - colorPickerWidth + ( colorPickerMargin * 2 ) + ( colorBoxSize * 2 ), ( colorPickerMargin * 2 ) + colorBoxSize, colorBoxSize, colorBoxSize );
    fill( 255, 255, 0 ); // yellow
    rect( width - colorPickerWidth + ( colorPickerMargin * 3 ) + ( colorBoxSize * 3 ), ( colorPickerMargin * 2 ) + colorBoxSize, colorBoxSize, colorBoxSize );
    fill( 102, 51, 0 ); // brown
    rect( width - colorPickerWidth + ( colorPickerMargin * 4 ) + ( colorBoxSize * 4 ), ( colorPickerMargin * 2 ) + colorBoxSize, colorBoxSize, colorBoxSize );
    
    // tool picker
    fill( 0 );
    rect( width - colorPickerMargin - colorPickerWidth - colorBoxSize * 4, colorPickerMargin, colorBoxSize * 4, colorBoxSize );
    rect( width - colorPickerMargin - colorPickerWidth - colorBoxSize * 4, ( colorPickerMargin * 2 ) + colorBoxSize, colorBoxSize * 4, colorBoxSize );
    textAlign( CENTER );
    textSize( 32 );
    fill( 255, 0, 0 );
    text( "FILL", 32, 32 );
  }// END toolBar()
  // FUNCTIONS
  
}// END toolBar