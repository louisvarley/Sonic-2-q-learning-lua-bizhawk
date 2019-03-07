_CONFIG = {}
_Q = {}
_SONIC = {}
_SPRITES = {}

--Array of Buttons
_CONFIG.buttons = {}
_CONFIG.buttons[#_CONFIG.buttons+1] = "P1 A"
_CONFIG.buttons[#_CONFIG.buttons+1] = "P1 Right"
_CONFIG.buttons[#_CONFIG.buttons+1] = "P1 Right"
_CONFIG.buttons[#_CONFIG.buttons+1] = "P1 Right"
_CONFIG.buttons[#_CONFIG.buttons+1] = "P1 Right"

--Saved State
_CONFIG.StateDir = "state/"
_CONFIG.State = "S2.State"
_CONFIG.StateFile = _CONFIG.StateDir .. _CONFIG.State

_CONFIG.badValue = 3 --How many commands should additionally be killed following a bad run
_CONFIG.badMaximum = 20 --Maximum number of commands we should be able to kill

_Q.running = false

--Sprite Table
_SPRITES.objectfields = {
	types = {		
		[0x01] = {type="" , name="Sonic"},
		[0x02] = {type="" , name="Tails"},
		[0x03] = {type="" , name="PlaneSwitcher"},
		[0x04] = {type="" , name="WaterSurface"},
		[0x05] = {type="" , name="TailsTails"},
		[0x06] = {type="" , name="Spiral"},
		[0x07] = {type="" , name="Oil"},
		[0x08] = {type="" , name="SpindashDust"},
		[0x08] = {type="" , name="Splash"},
		[0x09] = {type="" , name="SonicSS"},
		[0x0A] = {type="" , name="SmallBubbles"},
		[0x0B] = {type="" , name="TippingFloor"},
		[0x0D] = {type="" , name="Signpost"},
		[0x0E] = {type="" , name="IntroStars"},
		[0x0F] = {type="" , name="TitleMenu"},
		[0x10] = {type="" , name="TailsSS"},
		[0x11] = {type="" , name="Bridge"},
		[0x12] = {type="" , name="HPZEmerald"},
		[0x13] = {type="" , name="HPZWaterfall"},
		[0x14] = {type="" , name="Seesaw"},
		[0x15] = {type="" , name="SwingingPlatform"},
		[0x16] = {type="" , name="HTZLift"},
		[0x18] = {type="" , name="ARZPlatform"},
		[0x18] = {type="good" , name="EHZPlatform"},
		[0x19] = {type="" , name="CPZPlatform"},
		[0x19] = {type="" , name="OOZMovingPform"},
		[0x19] = {type="" , name="WFZPlatform"},
		[0x1A] = {type="" , name="HPZCollapsPform"},
		[0x1B] = {type="" , name="SpeedBooster"},
		[0x1C] = {type="" , name="Scenery"},
		[0x1C] = {type="" , name="BridgeStake"},
		[0x1C] = {type="" , name="FallingOil"},
		[0x1D] = {type="" , name="BlueBalls"},
		[0x1E] = {type="" , name="CPZSpinTube"},
		[0x1F] = {type="" , name="CollapsPform"},
		[0x20] = {type="" , name="LavaBubble"},
		[0x21] = {type="" , name="HUD"},
		[0x22] = {type="" , name="ArrowShooter"},
		[0x23] = {type="" , name="FallingPillar"},
		[0x24] = {type="" , name="ARZBubbles"},
		[0x25] = {type="good" , name="Ring"},
		[0x26] = {type="good" , name="Monitor"},
		[0x27] = {type="" , name="Explosion"},
		[0x28] = {type="" , name="Animal"},
		[0x29] = {type="" , name="Points"},
		[0x2A] = {type="" , name="Stomper"},
		[0x2B] = {type="" , name="RisingPillar"},
		[0x2C] = {type="" , name="LeavesGenerator"},
		[0x2D] = {type="" , name="Barrier"},
		[0x2E] = {type="" , name="MonitorContents"},
		[0x2F] = {type="" , name="SmashableGround"},
		[0x30] = {type="" , name="RisingLava"},
		[0x31] = {type="" , name="LavaMarker"},
		[0x32] = {type="" , name="BreakableBlock"},
		[0x32] = {type="" , name="BreakableRock"},
		[0x33] = {type="" , name="OOZPoppingPform"},
		[0x34] = {type="" , name="TitleCard"},
		[0x35] = {type="" , name="InvStars"},
		[0x36] = {type="bad" , name="Spikes"},
		[0x37] = {type="good" , name="LostRings"},
		[0x38] = {type="" , name="Shield"},
		[0x39] = {type="" , name="GameOver"},
		[0x39] = {type="" , name="TimeOver"},
		[0x3A] = {type="" , name="Results"},
		[0x3D] = {type="" , name="OOZLauncher"},
		[0x3E] = {type="" , name="EggPrison"},
		[0x3F] = {type="" , name="Fan"},
		[0x40] = {type="neutral" , name="Springboard"},
		[0x41] = {type="neutral" , name="Spring"},
		[0x42] = {type="" , name="SteamSpring"},
		[0x43] = {type="" , name="SlidingSpike"},
		[0x44] = {type="" , name="RoundBumper"},
		[0x45] = {type="" , name="OOZSpring"},
		[0x46] = {type="" , name="OOZBall"},
		[0x47] = {type="" , name="Button"},
		[0x48] = {type="" , name="LauncherBall"},
		[0x49] = {type="" , name="EHZWaterfall"},
		[0x4A] = {type="" , name="Octus"},
		[0x4B] = {type="bad" , name="Buzzer"},
		[0x50] = {type="" , name="Aquis"},
		[0x51] = {type="boss" , name="CNZBoss"},
		[0x52] = {type="boss" , name="HTZBoss"},
		[0x53] = {type="boss" , name="MTZBossOrb"},
		[0x54] = {type="" , name="MTZBoss"},
		[0x55] = {type="" , name="OOZBoss"},
		[0x56] = {type="boss" , name="EHZBoss"},
		[0x57] = {type="" , name="MCZBoss"},
		[0x58] = {type="" , name="BossExplosion"},
		[0x59] = {type="" , name="SSEmerald"},
		[0x5A] = {type="" , name="SSMessage"},
		[0x5B] = {type="" , name="SSRingSpill"},
		[0x5C] = {type="bad" , name="Masher"},
		[0x5D] = {type="boss" , name="CPZBoss"},
		[0x5E] = {type="" , name="SSHUD"},
		[0x5F] = {type="" , name="StartBanner"},
		[0x5F] = {type="" , name="EndingController"},
		[0x60] = {type="" , name="SSRing"},
		[0x61] = {type="" , name="SSBomb"},
		[0x63] = {type="" , name="SSShadow"},
		[0x64] = {type="" , name="MTZTwinStompers"},
		[0x65] = {type="" , name="MTZLongPlatform"},
		[0x66] = {type="" , name="MTZSpringWall"},
		[0x67] = {type="" , name="MTZSpinTube"},
		[0x68] = {type="" , name="SpikyBlock"},
		[0x69] = {type="" , name="Nut"},
		[0x6A] = {type="" , name="MCZRotPforms"},
		[0x6A] = {type="" , name="MTZMovingPforms"},
		[0x6B] = {type="" , name="MTZPlatform"},
		[0x6B] = {type="" , name="CPZSquarePform"},
		[0x6C] = {type="" , name="Conveyor"},
		[0x6D] = {type="bad" , name="FloorSpike"},
		[0x6E] = {type="" , name="LargeRotPform"},
		[0x6F] = {type="" , name="SSResults"},
		[0x70] = {type="" , name="Cog"},
		[0x71] = {type="" , name="MTZLavaBubble"},
		[0x71] = {type="" , name="HPZBridgeStake"},
		[0x71] = {type="" , name="PulsingOrb"},
		[0x72] = {type="" , name="CNZConveyorBelt"},
		[0x73] = {type="" , name="RotatingRings"},
		[0x74] = {type="" , name="InvisibleBlock"},
		[0x75] = {type="" , name="MCZBrick"},
		[0x76] = {type="bad" , name="SlidingSpikes"},
		[0x77] = {type="" , name="MCZBridge"},
		[0x78] = {type="" , name="CPZStaircase"},
		[0x79] = {type="" , name="Starpost"},
		[0x7A] = {type="" , name="SidewaysPform"},
		[0x7B] = {type="" , name="PipeExitSpring"},
		[0x7C] = {type="" , name="CPZPylon"},
		[0x7E] = {type="" , name="SuperSonicStars"},
		[0x7F] = {type="" , name="VineSwitch"},
		[0x80] = {type="" , name="MovingVine"},
		[0x81] = {type="" , name="MCZDrawbridge"},
		[0x82] = {type="" , name="SwingingPform"},
		[0x83] = {type="" , name="ARZRotPforms"},
		[0x84] = {type="" , name="ForcedSpin"},
		[0x84] = {type="" , name="PinballMode"},
		[0x85] = {type="" , name="LauncherSpring"},
		[0x86] = {type="" , name="Flipper"},
		[0x87] = {type="" , name="SSNumberOfRings"},
		[0x88] = {type="" , name="SSTailsTails"},
		[0x89] = {type="" , name="ARZBoss"},
		[0x8B] = {type="" , name="WFZPalSwitcher"},
		[0x8C] = {type="" , name="Whisp"},
		[0x8D] = {type="" , name="GrounderInWall"},
		[0x8E] = {type="" , name="GrounderInWall2"},
		[0x8F] = {type="" , name="GrounderWall"},
		[0x90] = {type="" , name="GrounderRocks"},
		[0x91] = {type="" , name="ChopChop"},
		[0x92] = {type="" , name="Spiker"},
		[0x93] = {type="" , name="SpikerDrill"},
		[0x94] = {type="" , name="Rexon"},
		[0x95] = {type="" , name="Sol"},
		[0x96] = {type="" , name="Rexon2"},
		[0x97] = {type="" , name="RexonHead"},
		[0x98] = {type="" , name="Projectile"},
		[0x99] = {type="" , name="Nebula"},
		[0x9A] = {type="" , name="Turtloid"},
		[0x9B] = {type="" , name="TurtloidRider"},
		[0x9C] = {type="" , name="BalkiryJet"},
		[0x9D] = {type="bad" , name="Coconuts"},
		[0x9E] = {type="" , name="Crawlton"},
		[0x9F] = {type="" , name="Shellcracker"},
		[0xA0] = {type="" , name="ShellcrackerClaw"},
		[0xA1] = {type="" , name="Slicer"},
		[0xA2] = {type="" , name="SlicerPincers"},
		[0xA3] = {type="" , name="Flasher"},
		[0xA4] = {type="" , name="Asteron"},
		[0xA5] = {type="" , name="Spiny"},
		[0xA6] = {type="" , name="SpinyOnWall"},
		[0xA7] = {type="" , name="Grabber"},
		[0xA8] = {type="" , name="GrabberLegs"},
		[0xA9] = {type="" , name="GrabberBox"},
		[0xAA] = {type="" , name="GrabberString"},
		[0xAC] = {type="" , name="Balkiry"},
		[0xAD] = {type="" , name="CluckerBase"},
		[0xAE] = {type="" , name="Clucker"},
		[0xAF] = {type="" , name="MechaSonic"},
		[0xB0] = {type="" , name="SonicOnSegaScr"},
		[0xB1] = {type="" , name="SegaHideTM"},
		[0xB2] = {type="" , name="Tornado"},
		[0xB3] = {type="" , name="Cloud"},
		[0xB4] = {type="" , name="VPropeller"},
		[0xB5] = {type="" , name="HPropeller"},
		[0xB6] = {type="" , name="TiltingPlatform"},
		[0xB7] = {type="" , name="VerticalLaser"},
		[0xB8] = {type="" , name="WallTurret"},
		[0xB9] = {type="" , name="Laser"},
		[0xBA] = {type="" , name="WFZWheel"},
		[0xBC] = {type="" , name="WFZShipFire"},
		[0xBD] = {type="" , name="SmallMetalPform"},
		[0xBE] = {type="" , name="LateralCannon"},
		[0xBF] = {type="" , name="WFZStick"},
		[0xC0] = {type="" , name="SpeedLauncher"},
		[0xC1] = {type="" , name="BreakablePlating"},
		[0xC2] = {type="" , name="Rivet"},
		[0xC3] = {type="" , name="TornadoSmoke"},
		[0xC4] = {type="" , name="TornadoSmoke2"},
		[0xC5] = {type="" , name="WFZBoss"},
		[0xC6] = {type="" , name="Eggman"},
		[0xC7] = {type="" , name="Eggrobo"},
		[0xC8] = {type="" , name="Crawl"},
		[0xC9] = {type="" , name="TtlScrPalChanger"},
		[0xCA] = {type="" , name="CutScene"},
		[0xCB] = {type="" , name="EndingSeqClouds"},
		[0xCC] = {type="" , name="EndingSeqTrigger"},
		[0xCD] = {type="" , name="EndingSeqBird"},
		[0xCE] = {type="" , name="EndingSeqSonic"},
		[0xCE] = {type="" , name="EndingSeqTails"},
		[0xCF] = {type="" , name="TornadoHelixes"},
		[0xD2] = {type="" , name="CNZRectBlocks"},
		[0xD3] = {type="" , name="BombPrize"},
		[0xD4] = {type="" , name="CNZBigBlock"},
		[0xD5] = {type="" , name="Elevator"},
		[0xD6] = {type="" , name="PointPokey"},
		[0xD7] = {type="" , name="Bumper"},
		[0xD8] = {type="" , name="BonusBlock"},
		[0xD9] = {type="" , name="Grab"},
		[0xDA] = {type="" , name="ContinueText"},
		[0xDA] = {type="" , name="ContinueIcons"},
		[0xDB] = {type="" , name="ContinueChars"},
		[0xDC] = {type="" , name="RingPrize"},
			
	},
};

--Get Sonics X and Y Positions from RAM plus screen positions using layer
function _SONIC.getPositions()

	_SONIC.sonicX = mainmemory.read_u16_be(0xB008) 
	_SONIC.sonicY = mainmemory.read_u16_be(0xB00C)
	_SONIC.layer1x = mainmemory.read_u16_be(0xEE00)
	_SONIC.layer1y = mainmemory.read_u16_be(0xEE04)
	_SONIC.screenX = _SONIC.sonicX-_SONIC.layer1x
    _SONIC.screenY = _SONIC.sonicY-_SONIC.layer1y

end

--Checks if sonic has been hit, seems to work better than using the timer by check for LostRings sprites
function _SONIC.hitCheck()	

	for i = 1,#_SONIC.sprites do
		if _SONIC.sprites[i]["name"] == "LostRings" then
                _Q.running = false
			return true
		end
	end

	_Q.running = true

end

--Gets all current sprites that to be used as inputs
function _SONIC.getSprites()

    _SONIC.sprites = {}
    
	local objectTable
	local objectfields

	objectTable = 0xB000
	objectfields = _SPRITES.objectfields
	
	for i = 1, 160 do
		objectBase = objectTable + (0x40 * (i - 1));

		local slot = {
			--Type Code
			type = mainmemory.readbyte(objectBase + 0x00),
			--X / Y
			x = mainmemory.read_u16_be(objectBase + 0x08),
			y = mainmemory.read_u16_be(objectBase + 0x0C),

			--Custom, holds boss hit count		
			custom = mainmemory.read_u16_be(objectBase + 0x021),		

			--Height and Width
			h = mainmemory.readbyte(objectBase + 0x16) * 2,
			w = mainmemory.readbyte(objectBase + 0x19) * 2,

		};

		if slot.h > 100 or slot.h < 1 then
			slot.h = 20
		end

		if objectfields.types[slot.type] ~= nil then
			
			slot.name = objectfields.types[slot.type].name;
			slot.type = objectfields.types[slot.type].type;
			slot.screenX = slot.x - _SONIC.layer1x
			slot.screenY = slot.y - _SONIC.layer1y
            _SONIC.sprites[#_SONIC.sprites+1] = slot
           
		end	
	end
end

function _Q.initialise() 

	savestate.load(_CONFIG.StateFile);

    _Q.stopRun = false
    _Q.running = true
    _Q.timeout = 500
    _Q.reward = 0
    _Q.table = {}
    _Q.table['x'] = 0
    _Q.frame = 0

end

function _Q.getReward()

    if _Q.table['x'] < _SONIC.sonicX then
        _Q.giveReward(1)
        _Q.resetTime()
        _Q.table['x'] = _SONIC.sonicX 
    end

    if _Q.table['x'] -1 > _SONIC.sonicX then
        --_Q.running = false
    end

end

function _Q.resetTime()
    _Q.timeout = 500
end

function _Q.giveReward(rewardAmount)
    _Q.reward = _Q.reward + rewardAmount
end

function _Q.getCommand()

    local newButton = math.random(4)
    if _Q.command[_Q.frame] == nil then
        _Q.command[#_Q.command+1] = _CONFIG.buttons[newButton]
    end
    
end

function _Q.runCommand()

    local controller = {}

    for i = 1,#_CONFIG.buttons do
        if _Q.command[_Q.frame] == _CONFIG.buttons[i] then
            controller[_CONFIG.buttons[i]] = true
        end
    end

    joypad.set(controller)
    
end

function _Q.killLast()

    local cnt = 0


    --cnt total commands

    for i = 1,#_Q.command do
        if i > _Q.badCount then
         _Q.command[i] = nill
        end
    end   
    
end

_Q.command = {}
_Q.maxReward = 0
_Q.badCount = 0
_Q.reward = 0

while true do

    if _Q.running == false or _Q.timeout <= 0 then
      
        if(_Q.reward <= _Q.maxReward and _Q.badCount <= _CONFIG.badMaximum) then
            _Q.badCount = _Q.badCount + _CONFIG.badValue
        end

        if(_Q.reward > _Q.maxReward) then
            _Q.maxReward = _Q.reward
            _Q.badCount = 0
        end

        console.log("bad count: " .. _Q.badCount)
        console.log("Reward this run: " .. _Q.reward)
        console.log("Max Reward: " .. _Q.maxReward)


        _Q.killLast()
        _Q.initialise()
      
    end

    _Q.frame = _Q.frame + 1

    _Q.getCommand()
    _Q.runCommand()


    _SONIC.getPositions()
    _SONIC.getSprites()
    _SONIC.hitCheck()

    _Q.getReward()

    _Q.timeout = _Q.timeout - 1

    emu.frameadvance();

end

