
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
var doorImage = loadImage("images/doorImage.png"); 
var exit = loadImage("images/exit.png"); 

//right window ----------------------------------------
var RWindowImage = loadImage("images/Rwindow.png"); 
var RWRockHover = loadImage("images/RWRockHover.png");
var RWempty = loadImage("images/RWempty.png");

//chest -----------------------------------------------
var ChestImage = loadImage("images/ChestImage.png"); 
var COpen = loadImage("images/COpen.png"); 
var CShearHover = loadImage("images/CShearHover.png"); 
var Cempty = loadImage("images/Cempty.png"); 

//wardrobe --------------------------------------------
var WardrobeImage = loadImage("images/WardrobeImage.png"); 
var WOpen = loadImage("images/WOpen.png");
var WStaffHover = loadImage("images/WStaffHover.png"); 
var WFabric = loadImage("images/WFabric.png"); 
var Wempty = loadImage("images/Wempty.png"); 

//--------------------------------------------------------------------

//ITEMS + IN UI

var Key = loadImage("images/key.png"); 
var Rock = loadImage("images/rock.png"); 
var Shear = loadImage("images/shears.png"); 
var Staff = loadImage("images/staff.png"); 
var Fabric = loadImage("images/fabric.png"); 

var hasKey = false
var hasRock = false
var hasShear = false
var hasStaff = false
var hasFabric = false

//--------------------------------------------------------------------

//Variable Declarations 

//startup things
var sceneImage = mainSceneImage;
var sceneText = "➢ Taken by a dragon as his loot, you refuse to rot in this tower【ғɪɴᴅ ᴀ ᴡᴀʏ ᴛᴏ ᴇsᴄᴀᴘᴇ.】";


// Game Vars
var inInitalView = true;
var inLWView = false;
var inDoorView = false;
var inRWView = false;
var inChestView = false;
var inWardrobeView = false;


//--------------------------------------------------------------------
//--------------------------------------------------------------------


draw = function(){
    
  drawScene();

  

  //MAIN

  // Background ------------------------------------------------------
  if (inInitalView){
    

    //LW mask ----------------------------------------------------
    if (dist(mouseX, mouseY, 105, 180)< 40 ){
      sceneImage = LWHover;  
    }
    if (dist(mouseX, mouseY, 105, 220)< 40 ){
      sceneImage = LWHover;  
    }
     
    // door mask ------------------------------------------------
    else if (dist(mouseX, mouseY, 245, 170)< 70){
      sceneImage = DoorHover;  
    }
    else if (dist(mouseX, mouseY, 245, 220)< 70){
      sceneImage = DoorHover;  
    }
    else if (dist(mouseX, mouseY, 245, 260)< 70){
      sceneImage = DoorHover;  
    }

    // RW mask --------------------------------------------------
    else if (dist(mouseX, mouseY, 385, 180)< 40){
      sceneImage = RWHover;  
    }
    else if (dist(mouseX, mouseY, 385, 200)< 40){
      sceneImage = RWHover;  
    }

    // chest mask ------------------------------------------------
    else if (dist(mouseX, mouseY, 380, 300)< 40){
      sceneImage = ChestHover;  
    }

    // wardrobe mask ---------------------------------------------      
    else if (dist(mouseX, mouseY, 650, 230)< 110){
      sceneImage = WardrobeHover;  
    }
    else if (dist(mouseX, mouseY, 650, 280)< 110){
      sceneImage = WardrobeHover;  
    }
    else if (dist(mouseX, mouseY, 650, 300)< 110){
      sceneImage = WardrobeHover;  
    }

    // Default image ---------------------------------------------
    else {
      sceneImage = mainSceneImage;
    }
  }


  //=================================================================
  // Mouse Click Handlers
  if(mousePressed){
    if (sceneImage == LWHover){
      clearViews();
      inLWView = true;
      sceneImage = LWindowImage;
    }
    else if(sceneImage == DoorHover){
      clearViews();
      inDoorView = true;
      sceneImage = doorImage;
    }

  }
};

//=================================================================
//=================================================================

var drawScene = function(){
  image(sceneImage, 0, 0, 800, 450);
  
  // Show Items -----------------------------------------------------------
  if (Key == true){
    // draw the key in the item slot
    image(keyVariableName, 0, 0, 800, 450);
  }

  if (Rock == true){
    // draw the rock in the item slot
    image(keyVariableName, 0, 0, 800, 450);
  }

  if (Shear == true){
    // draw the shear in the item slot
    image(keyVariableName, 0, 0, 800, 450);
  }

  if (Staff == true){
    // draw the staff in the item slot
    image(keyVariableName, 0, 0, 800, 450);
  }


  //text box -------------------------
  
  fill(255,255,255);
  textSize(20);
  
  text(sceneText, 10, 30);
};

function clearViews(){
  inInitalView = false;
  inLWView = false;
  inDoorView = false;
  inRWView = false;
  inChestView = false;
  inWardrobeView = false;
}


