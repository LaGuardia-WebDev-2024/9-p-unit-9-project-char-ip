
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
var LWindowImage = loadImage("images/LWindow.png"); 
  var LWKeyHover = loadImage("images/LWKeyHover.png");
  var LWempty = loadImage("images/LWempty.png");

//door ------------------------------------------------
var doorImage = loadImage("images/"); 
  var exit = loadImage("images/"); 

//right window ----------------------------------------
var RWindowImage = loadImage("images/Rwindow.png"); 
  var RWRockHover = loadImage("images/RWRockHover.png");
  var RWempty = loadImage("images/RWempty.png");

//chest -----------------------------------------------
var ChestImage = loadImage("images/"); 
  var COpen = loadImage("images/"); 
  var CShearHover = loadImage("images/"); 
  var Cempty = loadImage("images/"); 

//wardrobe --------------------------------------------
var WardrobeImage = loadImage("images/"); 
  var WStaffHover = loadImage("images/"); 
  var WFabric = loadImage("images/"); 
  var WFabricHover = loadImage("images/"); 
  var Wempty = loadImage("images/"); 

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

  //MAIN

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

  // chest mask ------------------------------------------------
    if (dist(mouseX, mouseY, 380, 300)< 40 && sceneImage == mainSceneImage){
      sceneImage = ChestHover;  
    }

  // wardrobe mask ------------------------------------------------
    
    if (dist(mouseX, mouseY, 650, 230)< 110 && sceneImage == mainSceneImage){
      sceneImage = WardrobeHover;  
    }

    if (dist(mouseX, mouseY, 650, 280)< 110 && sceneImage == mainSceneImage){
      sceneImage = WardrobeHover;  
    }
  
    if (dist(mouseX, mouseY, 650, 300)< 110 && sceneImage == mainSceneImage){
      sceneImage = WardrobeHover;  
    }

//=================================================================
  // LEFT WINDOW



};

//=================================================================
//=================================================================
//=================================================================

function mouseClicked(){
  if(sceneImage == LWHover){
  sceneImage = LWindowImage;
  }
};





//==================================================================

var drawScene = function(){
    image(sceneImage, 0, 0, 800, 450);
    

    //text box -------------------------
    
    fill(255,255,255);
    textSize(20);
   
    text(sceneText, 10, 30);
};



