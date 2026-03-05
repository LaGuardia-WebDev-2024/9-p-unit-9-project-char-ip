
setup = function() {
    size(800, 450);
};

//--------------------------------------------------------------------

//BACKGROUND IMAGES

var numDays = random()*100

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
var ExitHover = loadImage("images/exitHover.png");
var exitArrow = loadImage("images/exitwitharrow.png");
var exit = loadImage("images/exit.png"); 

//right window ----------------------------------------
var RWindowImage = loadImage("images/RWindow.png"); 
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

var usedKey = false
var usedRock = false
var usedShear = false
var usedStaff = false
var usedFabric = false

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
var inWardrobeFabricView = false;


//===================================================================

draw = function(){
    
  drawScene();
  text ("# of Days:" + floor(numDays), 665, 430);
  if(dist(mouseX, mouseY, 400, 410)< 20 ){
    clearViews();
      inInitalView = true; 
      console.log ("GOING BACK!");
  }
  if(keyPressed){
    if(key == 'b'){
      inInitalView = true;
    } 
  }

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

  if (inLWView){
    if (dist(mouseX, mouseY, 430, 150)< 20 ){
      sceneImage = LWKeyHover;  
      sceneText = "A key! But it's just out of reach...";
    }

    else if (dist(mouseX, mouseY, 430, 150)< 20 && staff == true){
      sceneImage = LWempty;
      sceneText = "Got it!";
    }

    else {
      sceneImage = LWindowImage;
    }
  }
  //=================================================================

  if (inDoorView){
    if (dist(mouseX, mouseY, 400, 225)< 130 && hasRock == true){
      sceneImage = ExitHover;
      sceneText = "One good hit andd...!";
    }
    else if (usedRock == true){
      sceneImage = exitArrow;
    }

    else if (dist(mouseX, mouseY, 400, 225)< 130){
      sceneText = "These bars are rusted. A good bash from a stone could break it open.";
    }

    else {
      sceneImage = doorImage;
    }
  }

  //=================================================================

  if (inRWView){
    if (hasRock == true){
      sceneImage = RWempty;
    }

    else if (usedRock == true){
      sceneImage = RWempty;
    }
    else if (dist(mouseX, mouseY, 460, 350)< 20 && usedRock == true){
      sceneImage = RWempty;
    }

    else if (dist(mouseX, mouseY, 460, 350)< 20){
      sceneImage = RWRockHover;
      sceneText = "That rock looks durable.";
    }
    else {
      sceneImage = RWindowImage;
    }
  }

  //=================================================================

  if (inChestView) {
    if (hasKey == true){
      sceneImage = COpen
    }
    else if (dist(mouseX, mouseY, 330, 210)< 60){
      sceneText = "A key is needed.";
    }
    else {
      sceneImage = ChestImage;
    }
  }

  //=================================================================


  //=================================================================

  if (inWardrobeView) {
    if (hasStaff == true){
      sceneImage = WFabric;
    }
    else if (sceneImage == WOpen){
      sceneText = "A fairly untouched staff. It's quite long as well.";
    }
    else if (dist(mouseX, mouseY, 635, 130)< 45 && sceneImage == WOpen){
      sceneImage = WStaffHover;
    }
    else if (dist(mouseX, mouseY, 634, 161)< 45 && sceneImage == WOpen){
      sceneImage = WStaffHover;
    }
    else if (dist(mouseX, mouseY, 612, 216)< 45 && sceneImage == WOpen){
      sceneImage = WStaffHover;
    }
    else if (dist(mouseX, mouseY, 600, 238)< 45 && sceneImage == WOpen){
      sceneImage = WStaffHover;
    }
    else if (dist(mouseX, mouseY, 580, 260)< 45 && sceneImage == WOpen){
      sceneImage = WStaffHover;
    }


    else {
      sceneImage = Wempty;
    }
  }

  if (inWardrobeFabricView) {
    if (hasShear == true){
      sceneImage = Wempty;
    }
    else {
      sceneImage = WFabric;
    }
  }

  //||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

  // Mouse Click Handlers  
  if(mousePressed){
    // Left Window -------------------------------------------
    if (sceneImage == LWHover){
      clearViews();
      inLWView = true;
      sceneImage = LWindowImage;
    }

    // Door -------------------------------------------

    else if(sceneImage == DoorHover){
      clearViews();
      inDoorView = true;
      sceneImage = doorImage;
    }

    else if(sceneImage == ExitHover){
      clearViews();
      sceneImage = exitArrow;
      sceneText = "Nice! Now, got to find something to descend this tower.";
      hasRock = false;
      usedRock = true;
    }

    // Right window -------------------------------------------

    else if(sceneImage == RWHover){
      clearViews();
      inRWView = true;
      sceneImage = RWindowImage;
    }
    else if (sceneImage == RWRockHover){
      hasRock = true;
      sceneImage = RWempty;
    }

    // chest -------------------------------------------

    else if(sceneImage == ChestHover){
      clearViews();
      inChestView = true;
      sceneImage = ChestImage;
    }

    // wardrobe -------------------------------------------

    else if(sceneImage == WardrobeHover){
      clearViews();
      inWardrobeView = true;
      sceneImage = WOpen;
    }

  }
};

//=================================================================
//=================================================================

var drawScene = function(){
  image(sceneImage, 0, 0, 800, 450);
  
  // Show Items -----------------------------------------------------------
  if (hasKey == true){
    // draw the key in the item slot
    image(Key, 0, 0, 390, 450);
    sceneImage = RWempty;
  }

  if (hasRock == true){
    // draw the rock in the item slot
    image(Rock, 0, 200, 100, 130);
  }

  if (hasShear == true){
    // draw the shear in the item slot
    image(Shear, 0, 0, 800, 450);
  }

  if (hasStaff == true){
    // draw the staff in the item slot
    image(Staff, 0, 0, 800, 450);
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
  inWardrobeFabricView = false;
}


