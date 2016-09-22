 //declare bacteria variables here
 Target food = new Target(200,200);   
 Bacteria [] colony;
 int n =100;
 void setup()   
 {     
 	//initialize bacteria variables here 
 	size(400,400);  
 	colony = new Bacteria[n];
 	for(int i=0; i<colony.length; i++){
 		colony[i]= new Bacteria((int)(Math.random()*400),(int)(Math.random()*400));
 	}
 	frameRate(60);
 }   
 void draw()   
 {    
 	background(0);
 	for(int i=0; i<colony.length; i++){
	    colony[i].move();
	    colony[i].show();
	}
 }  
 
 class Bacteria    
 {     
 	//lots of java!
 	int bx,by,r,g,b,c;
 	
 	Bacteria(int x,int y){
 		
 		r = (int)(Math.random()*255);
 		g =	(int)(Math.random()*255);
 		b = (int)(Math.random()*255);
 		
 		bx = x;
 		by = y;
 	}

 	void show(){
 		fill(r,g,b);
 		ellipse(bx,by,10,10);
 	}

 	void move(){
 		if(bx<food.x && by<food.y){	
 		 bx +=(int)((Math.random()*8));
	 	 by +=(int)((Math.random()*8));
	 	}else if(bx<food.x && by<food.y){}	
 	}
 }

 class Target
 {
 	int tx,ty;

 	Target(int x,int y){
 		tx = x;
 		ty = y;
 	}

 	void show(){
 		ellipse(tx,ty,50,50);
 	}
 }