 //declare bacteria variables here
 Target food;   
 Bacteria [] colony;
 int n =400;
 
 void setup()   
 {     
 	//initialize bacteria variables here 

 	size(400,400);  
  food = new Target(200,200);
 	colony = new Bacteria[n];
 	for(int i=0; i<colony.length; i++){
 		colony[i]= new Bacteria();
 	}
 	frameRate(60);
 }   
 void draw()   
 {
  int i;
 	background(255);
 	for(i=0; i<colony.length; i++){ 
       colony[i].move();
	     colony[i].show();
       colony[i].die();
	}
  food.show();
  
 }
 
 class Bacteria    
 {     
 	//lots of java!
 	int bx,by,c,n;
 	
 	Bacteria(){
 		
    n = (int)((Math.random()*4)+1);
    switch(n){
      case 1:
        bx=(int)((Math.random()*600)-100);
        by=(int)((Math.random()*100)-100);
        break;
      case 2:
        bx=(int)((Math.random()*600)-100);
        by=(int)((Math.random()*100)+400);
        break;
      case 3:
        bx=(int)((Math.random()*100)-100);
        by=(int)((Math.random()*400));
        break;
      case 4:
        bx=(int)((Math.random()*100)+400);
        by=(int)((Math.random()*400));
      break;
    }
 		c = (int)(Math.random()*255);
 	}

 	void show(){
 		fill(c);
 		ellipse(bx,by,10,10);
 	}

 	void move(){
 		if(bx < food.tx && by < food.ty){	
 		   bx +=(int)((Math.random()*2));
	 	   by +=(int)((Math.random()*2));
	 	}else if(bx<food.tx && by>food.ty){
       bx +=(int)((Math.random()*2));
       by +=(int)((Math.random()*2)-1);
    }else if(bx>food.tx && by<food.ty){
       bx +=(int)((Math.random()*2)-1);
       by +=(int)((Math.random()*2));
    }else if(bx>food.tx && by>food.ty){
       bx +=(int)((Math.random()*2)-2);
       by +=(int)((Math.random()*2)-2);
    }else if(food.tx-10<bx&&food.tx+10>bx){
       bx +=(int)((Math.random()*800)-400);
       by +=(int)((Math.random()*800)-400);
    }else if(food.ty-10<by&&food.ty+10>by){
       by +=(int)((Math.random()*800)-400);
       bx +=(int)((Math.random()*800)-400);
    }
 	}
  void die(){
    if(bx<mouseX+9&&bx>mouseX-9&&by<mouseY+50&&by>mouseY-50){
      by +=(int)((Math.random()*800)-400);
      bx +=(int)((Math.random()*800)-400);
    }
    
    if(bx<210 && bx>190 && by<210 && by>190){
      fill(0);
      rect(0,0,400,400);
      fill(255);
      textSize(20);
      text("You Fail :(",150,300);
      noLoop();
    }
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
    fill(255,0,0);
 		ellipse(tx,ty,20,20);
    fill(0,0,255);
    ellipse(mouseX,mouseY,10,10);
 	}
  
  
}