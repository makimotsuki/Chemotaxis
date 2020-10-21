//declare bacteria variables here 
Bacteria[] bob = new Bacteria[3000];
 void setup()   
 {     
   //initialize bacteria variables here   
   size (400,400);
   background(0);
   for(int i=0;i<bob.length;i++)
  {
    bob[i]=new Bacteria();
  }

 }   
 void draw()   
 {    
   //move and show the bacteria
   background(0);
   
   for (int i=0; i<bob.length;i++)
   {
     bob[i].show();
     bob[i].move();
     
   }   
 }  
 
 
 class Bacteria    
 {     
   //lots of java!
   int myX;
   int myY;
   int myColor;
   int mySize;
   int num;
   
   boolean eaten;
     
   Bacteria()
   {
     myColor=color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
     myX=(int)(Math.random()*401);
     myY=(int)(Math.random()*401);
     mySize = 15;
     num = (int)(Math.random()*2);
     eaten = false;

   }
   void move()
   {
     myX=myX+(int)(Math.random()*3)-1;
     myY=myY+(int)(Math.random()*3)-1;
     if (myX>=385)
     {
       myX=384;
     }
     if (myX<=0)
     {
       myX=1;
     }
     if (myY>=385)
     {
       myY=384;
     }
     if (myY<=0)
     {
       myX=1;
     }

     
   }
   

   void show()
   {
     
     fill(myColor);
     stroke(myColor);
     
     if(dist(mouseX,mouseY,myX,myY)<mySize*1.5)
     {
       eaten = true;

     }
     if (eaten == false)
     {
       if (num==0)
     {
     rect(myX,myY,mySize,mySize);
     }else{
       ellipse(myX,myY,mySize,mySize);
     }
     }
   }
 }    
