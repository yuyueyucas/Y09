/*
*  A Super Simple 'Y' drawn by dots.
*  Yucas 27/08/2012
*  yuyueyvette@live.com
*/

size(400,400);

background(150,114,73);
stroke(67,52,27);
fill(67,52,27);

int [] x = {100,140,180,220,260,300};
int [] y = {80,180,220,340};

int Y; //index variable for Y
int X; //index variable for X 
float grain_size = 12; // <- try to change this
float dot_size = grain_size * .9; 
smooth();

int i;
for(i = 0; i < 5; i++ ){
  for(Y = y[0]; Y < y[3]; Y = Y + int(grain_size)){
    for(X = x[0]; X < x[i+1]; X = X + int(grain_size)){
    //rect(X,  Y , grain_size, grain_size);
    float d = map(Y,y[0],y[3],dot_size,dot_size * 0.3);
    //rect( X , Y , d, d);
    ellipse( X  , Y  , d, d);
    }
  }
}

fill (150,114,73);
stroke (150,114,73);
rect (140,70,110,100);
rect (80,220,90,120);
rect (220,220,90,120);

save("Y_v9");

