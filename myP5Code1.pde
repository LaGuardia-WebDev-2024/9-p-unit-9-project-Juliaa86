setup = function() {
    size(600, 400);
    frameRate(25)
};

//Background Images
var fairylandImage = loadImage("https://t4.ftcdn.net/jpg/08/95/54/15/360_F_895541536_Cnjhkibw1pUVLrC4pewN7uFrXhPw8QPT.jpg");

var waterfallImage = loadImage("https://i.ytimg.com/vi/UWmUq2Wqs1E/maxresdefault.jpg");

var houseImage = loadImage("https://thumbs.dreamstime.com/b/magical-fantasy-fairy-tale-scenery-night-forest-generative-ai-370011353.jpg")

var inhouseImage = loadImage("https://i.ytimg.com/vi/menMLX0ZTJA/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLAk2uN0XrXehLq2RGOStblkYFKPZQ")

var pathImage = loadImage("https://png.pngtree.com/thumb_back/fh260/background/20250523/pngtree-magical-enchanted-forest-path-with-glowing-fairy-lights-and-lush-greenery-image_17332145.jpg")

var caveImage = loadImage("https://i.ytimg.com/vi/uB0U7RgEMUk/sddefault.jpg?v=69009291")

var goingtowaterfallImage = loadImage("https://i.ytimg.com/vi/Nb-Bt4k0ncc/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLBbw3KUNUFqMfvzCxVrglTlTB14dQ");

var keepgoingImage = loadImage("https://i.ytimg.com/vi/4fEPqSjtL40/sddefault.jpg?v=663b4b45")

var forsaleImage = loadImage("https://i.ytimg.com/vi/NN5jJfbvtWU/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLAbqwdghudaVhGCRNCtwyX-EKVI1g")

//Variable Declarations
var sceneImage = fairylandImage;
var sceneText =  "Explore the land. Where to? [Press w for waterfall and u for stairs]";

draw = function(){
    
   drawScene();

 if(mousePressed){

  text("✨",random(0,600),random(0,400));
  text("✨",random(0,600),random(0,400));
  text("✨",random(0,600),random(0,400));
  text("✨",random(0,600),random(0,400));
  text("✨",random(0,600),random(0,400));
 }

   if(keyPressed){ //short story
     if(key == 'w'){
       sceneImage = waterfallImage;   
       sceneText = "  Where to? [Press c for cave or s to restart]";
     } 
     if(key == 's'){ //restart
      sceneImage = fairylandImage;
      sceneText = "Explore the land. Where to? [Press w for waterfall and u for stairs]";
    } 

    if(key == 'u'){ //longer story
      sceneImage = houseImage
      sceneText = "Where to? [Press h for house or p for path or s to restart]";
  }
  if(key == 'h'){
    sceneImage = inhouseImage
    sceneText = "Ahh, Nice and cozy [Press p for back to path or s to restart]";
  }
  if(key == 'p'){
     sceneImage = pathImage
     sceneText = "So Pretty! Where to? [Press l to keep going or s to restart]";
  }
   if(key == 'c'){
    sceneImage = caveImage
    sceneText = "WOW! Where to? [Press n to keep going or s to restart]";
   }
   if(key == 'l'){
    sceneImage = goingtowaterfallImage
    sceneText = "Omg! Continue On.[Press w to go to waterfall or ss to restart]";
   }
   if(key == 'n'){
    sceneImage = keepgoingImage
    sceneText = "Wow its amazing ( Press v to see further or s to restart)";
   }
   if(kee == 'v'){
    sceneImage = forsaleImage
    sceneText = "Look its for sale! After seeing the land would you live here? [Press y for yes or d for no]";
   }
}
}

var drawScene = function(){
    image(sceneImage, 0, 0, 600, 400);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(20);
   
    text(sceneText, 10, 375);
};



