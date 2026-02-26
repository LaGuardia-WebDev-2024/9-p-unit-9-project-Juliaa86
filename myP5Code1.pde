setup = function() {
    size(600, 400);
};

//Background Images
var fairylandImage = loadImage("https://t4.ftcdn.net/jpg/08/95/54/15/360_F_895541536_Cnjhkibw1pUVLrC4pewN7uFrXhPw8QPT.jpg");

var waterfallImage = loadImage("https://i.ytimg.com/vi/UWmUq2Wqs1E/maxresdefault.jpg");

var houseImage = loadImage("https://thumbs.dreamstime.com/b/magical-fantasy-fairy-tale-scenery-night-forest-generative-ai-370011353.jpg")



//Variable Declarations
var sceneImage = fairylandImage;
var sceneText = "Where do you want to go?  [Press w for waterfall and u for stairs]";

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'w'){
       sceneImage = waterfallImage;   
       sceneText = "No fox here.  [Press s to restart]";
     } 
     if(key == 's'){
      sceneImage = fairylandImage;
      sceneText = "Where do you want to go?   [Press w for waterfall and u for wstairs]";
    } 

    if(key == 'u'){
      sceneImage = houseImage
      sceneText = "where to? [Press h for house or s to restart]";
  }
   }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0, 600, 400);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(20);
   
    text(sceneText, 10, 375);
};



