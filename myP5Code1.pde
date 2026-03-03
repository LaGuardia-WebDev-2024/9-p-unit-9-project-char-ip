
setup = function() {
    size(800, 450);
};

//--------------------------------------------------------------------

//BACKGROUND IMAGES

//main ------------------------------------------------
var mainSceneImage = loadImage("images/main/main.png"); 
  var LWHover = loadImage("images/main/LWHover.png"); 
  var DoorHover = loadImage("images/main/DoorHover.png"); 
  var RWHover = loadImage("images/main/RWHover.png"); 
  var ChestHover = loadImage("images/main/ChestHover.png"); 
  var WardrobeHover = loadImage("images/main/WardrobeHover.png"); 

//left window -----------------------------------------
var LWindowImage = loadImage(" "); 
  var LWKeyHover = loadImage(" ");
  var LWempty = loadImage(" ");

//door ------------------------------------------------
var doorImage = loadImage(" "); 
  var exit = loadImage(" "); 

//right window ----------------------------------------
var RWindowImage = loadImage(" "); 
  var RWRockHover = loadImage(" ");
  var RWempty = loadImage(" ");

//chest -----------------------------------------------
var ChestImage = loadImage(" "); 
  var COpen = loadImage(" "); 
  var CShearHover = loadImage(" "); 
  var Cempty = loadImage(" "); 

//wardrobe --------------------------------------------
var WardrobeImage = loadImage(" "); 
  var WStaffHover = loadImage(" "); 
  var WFabric = loadImage(" "); 
  var WFabricHover = loadImage(" "); 
  var Wempty = loadImage(" "); 

//--------------------------------------------------------------------

//ITEMS + IN UI

var Key = false
var Rock = false
var Shear = false
var Staff = false
var Fabric = false

//--------------------------------------------------------------------

//Variable Declarations 

//startup things
var sceneImage = mainSceneImage;
var sceneText = "➢ Taken by a dragon as his loot, you refuse to rot in this tower【ғɪɴᴅ ᴀ ᴡᴀʏ ᴛᴏ ᴇsᴄᴀᴘᴇ.】";


//--------------------------------------------------------------------
//--------------------------------------------------------------------


draw = function(){
    
   drawScene();

  // LW mask ------------------------------------------------

    if (dist(mouseX, mouseY, 105, 180)< 40 && sceneImage == mainSceneImage){
      sceneImage = LWHover;  
    }

  // ----- the only else statement dont move this -------------
  else {
    sceneImage = mainSceneImage;
  }
  // ----- the only else statement dont move this -------------
    
    if (dist(mouseX, mouseY, 105, 200)< 40 && sceneImage == mainSceneImage){
      sceneImage = LWHover;  
    }


  // door mask ------------------------------------------------
    
    if (dist(mouseX, mouseY, 245, 170)< 70 && sceneImage == mainSceneImage){
      sceneImage = DoorHover;  
    }
  
  

    if (dist(mouseX, mouseY, 245, 220)< 70 && sceneImage == mainSceneImage){
      sceneImage = DoorHover;  
    }
  
    if (dist(mouseX, mouseY, 245, 260)< 70 && sceneImage == mainSceneImage){
      sceneImage = DoorHover;  
    }
    

  // RW mask ------------------------------------------------
    if (dist(mouseX, mouseY, 385, 180)< 40 && sceneImage == mainSceneImage){
      sceneImage = RWHover;  
    }
    if (dist(mouseX, mouseY, 385, 200)< 40 && sceneImage == mainSceneImage){
      sceneImage = RWHover;  
    }
};


//--------------------------------------------------------------------

var drawScene = function(){
    image(sceneImage, 0, 0, 800, 450);
    

    //text box -------------------------
    
    fill(255,255,255);
    textSize(20);
   
    text(sceneText, 10, 30);
};



