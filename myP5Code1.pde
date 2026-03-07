
setup = function() {
    size(800, 450);
};

//--------------------------------------------------------------------

//BACKGROUND IMAGES

var numDays = random()*100

var ending1 = false
var e1t
var e1route = false
var ending2 = false
var e12
var e2route = false

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
var doorFabricHover = loadImage("images/doorfabricoutline.png");
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


//===================================================================

draw = function(){
    
  drawScene();
  text ("# of Days:" + floor(numDays), 665, 430);
  text ( e1t + " True Ending |" + e2t + " Quick Fix Ending", 10, 430);

  if(dist(mouseX, mouseY, 400, 410)< 20 ){
    clearViews();
      inInitalView = true; 
      console.log ("GOING BACK!");
  }
  

  //MAIN

  // Background ------------------------------------------------------
  if (inInitalView){
    

    //LW mask ----------------------------------------------------
    if (dist(mouseX, mouseY, 105, 180)< 40 ){
      sceneImage = LWHover;  
    }
    else if (dist(mouseX, mouseY, 105, 220)< 40 ){
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
    if (hasKey == true){
      sceneImage = LWempty;
    }
    else if (usedKey == true){
      sceneImage =LWempty;
    }
    else if (dist(mouseX, mouseY, 430, 150)< 20 ){
      sceneImage = LWKeyHover;  
      sceneText = "A key! But it's just out of reach...";
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

    else if (hasFabric == true && usedRock == true){
      e1route = true;
      sceneImage = doorFabricHover;
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
      sceneText = "You found shears!";
    }
  else if (hasShear == true){
    sceneImage = Cempty;
  }
  else if (usedShear == true){
    sceneImage = Cempty;
  }
    else if (dist(mouseX, mouseY, 400, 165)< 40){
          sceneText = "Looks sharp, I could use this to cut some material for some makeshift rope.";
          sceneImage = CShearHover;
        }

    else if (usedKey == true){
      sceneImage = COpen;
    }

    
    else if (dist(mouseX, mouseY, 330, 210)< 20){
      sceneText = "A key is needed.";
    }
    else {
      sceneImage = ChestImage;
    }
  }

  //=================================================================

  if (inWardrobeView) {
    if (hasStaff == true){
      sceneImage = WFabric;
      sceneText = "hm, the fabric lining of this wardrobe isn't that bad."
    }


    else if (usedStaff == true && usedShear == false){
      sceneImage = WFabric;
    }
    else if (usedStaff == true && usedShear == true){
      sceneImage = Wempty;
      sceneText = "I can tie this into rope."
      hasFabric = true;
    }
    else if (hasShear == true){
      sceneText = "This lining will do.";
    }
    else if (dist(mouseX, mouseY, 270, 111)< 25 && sceneImage == WOpen){
      sceneImage = WStaffHover;
    }
    else if (dist(mouseX, mouseY, 233, 88)< 25 && sceneImage == WOpen){
      sceneImage = WStaffHover;
    }
    else if (dist(mouseX, mouseY, 199, 78)< 25 && sceneImage == WOpen){
      sceneImage = WStaffHover;
    }
    else if (dist(mouseX, mouseY, 170, 105)< 25 && sceneImage == WOpen){
      sceneImage = WStaffHover;
    }
    else if (dist(mouseX, mouseY, 163, 152)< 25 && sceneImage == WOpen){
      sceneImage = WStaffHover;
    }
    else if (dist(mouseX, mouseY, 168, 190)< 25 && sceneImage == WOpen){
      sceneImage = WStaffHover;
    }
    else if (dist(mouseX, mouseY, 195, 230)< 25 && sceneImage == WOpen){
      sceneImage = WStaffHover;
    }
    else if (dist(mouseX, mouseY, 210, 250)< 25 && sceneImage == WOpen){
      sceneImage = WStaffHover;
    }
    else if (dist(mouseX, mouseY, 240, 280)< 25 && sceneImage == WOpen){
      sceneImage = WStaffHover;
    }
    else if (dist(mouseX, mouseY, 260, 300)< 25 && sceneImage == WOpen){
      sceneImage = WStaffHover;
    }
    else if (dist(mouseX, mouseY, 280, 350)< 25 && sceneImage == WOpen){
      sceneImage = WStaffHover;
    }
    else if (dist(mouseX, mouseY, 290, 390)< 25 && sceneImage == WOpen){
      sceneImage = WStaffHover;
    }

    else if (sceneImage == WOpen){
      sceneText = "That staff is fairly untouched and rather long.";
    }

    else if (sceneImage == WStaffHover){
      sceneText = "Hope I don't get a splinter.";
    }

    else {
      sceneImage = WFabric;
    }

  if (e1route == true && inDoorView) {
    sceneImage = doorFabricHover;
  }

  }

  

  //||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
  // Mouse Click Handlers  
  if(mousePressed){
    // Left Window -------------------------------------------
    if (sceneImage == LWHover){
      clearViews();
      inLWView = true;
      sceneImage = LWindowImage;
    }
    else if (hasStaff == true && sceneImage == LWKeyHover){
      sceneImage = LWindowImage;
      hasStaff = false;
      hasKey = true;
      sceneText = "Got it!"
      usedStaff = true;
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

    else if (sceneImage == CShearHover){
          hasShear = true;
          sceneImage = Cempty;
        }
    else if (sceneImage == ChestImage && hasKey == true){
      hasKey = false;
      usedKey = true;
      sceneImage = COpen;
    }
    

    // wardrobe -------------------------------------------

    else if(sceneImage == WardrobeHover){
      clearViews();
      inWardrobeView = true;
      sceneImage = WOpen;
    }

    else if (sceneImage == WStaffHover){
      hasStaff = true;
      sceneImage = WFabric;
    }

    else if (dist (mouseX, mouseY, 200, 225) < 100 && hasShear == true){
      hasShear = false;
      usedShear = true;
      hasFabric = true;
      sceneImage = Wempty;
      }

    
  }
};

//=================================================================
//=================================================================

var drawScene = function(){
  image(sceneImage, 0, 0, 800, 450);
  
  if (ending1 == false){
    
  }



  // Show Items -----------------------------------------------------------
  if (hasKey == true){
    // draw the key in the item slot
    image(Key, 0, 30, 100, 130);
  }

  if (hasRock == true){
    // draw the rock in the item slot
    image(Rock, 0, 200, 100, 130);
  }

  if (hasShear == true){
    // draw the shear in the item slot
    image(Shear, 0, 70, 100, 130);
  }

  if (hasStaff == true){
    // draw the staff in the item slot
    image(Staff, 0, 330, 100, 130);
  }

  if (hasFabric == true){
    image(Fabric, 0, 270, 100, 130);
  }


  //text box -------------------------
  
  fill(255,255,255);
  textSize(20);
  text(sceneText, 10, 30);

  if (ending1 == false){
    e1t = "【 】";
  }
  if (ending1 == true){
    e1t = "【✓】";
  }
  if (ending2 == false){
    e2t = "【 】";
  }
  if (ending2 == true){
    e2t = "【✓】";
  }
};

function clearViews(){
  inInitalView = false;
  inLWView = false;
  inDoorView = false;
  inRWView = false;
  inChestView = false;
  inWardrobeView = false;
};
