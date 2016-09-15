 //declare bacteria variables here   
 Bacteria bob = new Bacteria(200,200);
 void setup()   
 {     
 	//initialize bacteria variables here 
 	size(400,400);  
 }   
 void draw()   
 {    
 	//move and show the bacteria  

 }  
 class Bacteria    
 {     
 	//lots of java!
 	int bx,by,r,g,b;
 	
 	Bacteria(int x, int y){
 		bx = x;
 		by = y;
 		r = (int)(Math.random()*255);
 		g =	(int)(Math.random()*255);
 		b = (int)(Math.random()*255);
 	}

 	void show(){
 		ellipse(bx,by,10,10);
 	}

 }    