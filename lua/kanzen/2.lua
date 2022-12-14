local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L0_1.finished = false
L0_1.loading = false
L0_1.inactive_game_invite_wait = false
L0_1.attract_timeout = 0
L0_1.boot_start_time = 1.3
L0_1.start_time = 0.15
L0_1.end_time = 0.3
L1_1 = {}
L1_1.SinglePlayer = 1
L1_1.Multiplayer = 2
L0_1.Mode = L1_1
L0_1.CurrentMode = 0
L1_1 = {}
L2_1 = UIGlobals
L2_1 = L2_1.CameraNames
L2_1 = L2_1.SpCarousel
L3_1 = UIGlobals
L3_1 = L3_1.CameraNames
L3_1 = L3_1.MpCarousel
L1_1[1] = L2_1
L1_1[2] = L3_1
L0_1.UiCameraName = L1_1
L1_1 = {}
L2_1 = "_BoxGlow"
L3_1 = "_Icon"
L1_1[1] = L2_1
L1_1[2] = L3_1
L0_1.panel_items = L1_1
L1_1 = {}
L2_1 = "_Text"
L1_1[1] = L2_1
L0_1.bright_panel_items = L1_1
L0_1.UiCameraTime = 0.5
L0_1.debugdev_mode = true
L0_1.entering_debug_menu = false
L0_1.STAGE_PRESS_START = 0
L0_1.STAGE_LOADING = 1
L0_1.STAGE_MODE_SELECT = 2
L0_1.NetConnectionTaskCount = 0
GUI = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = InfoLineFlush
  L0_2()
  L0_2 = UIGlobals
  L0_2.OptionsTable = nil
  L0_2 = AddSCUI_Elements
  L0_2()
  L0_2 = SetupInfoLine
  L0_2()
  L0_2 = EndTickerBar
  L0_2()
  L0_2 = UIGlobals
  L0_2 = L0_2.CurrentRegion
  L1_2 = UIEnums
  L1_2 = L1_2.Region
  L1_2 = L1_2.NorthAmerica
  if L0_2 == L1_2 then
    L0_2 = UIButtons
    L0_2 = L0_2.ChangeText
    L1_2 = SCUI
    L1_2 = L1_2.name_to_id
    L1_2 = L1_2.LegalText
    L2_2 = UIText
    L2_2 = L2_2.CMN_LEGAL_US
    L0_2(L1_2, L2_2)
  end
  L0_2 = UIGlobals
  L0_2.ProfileBootFinished = false
  L0_2 = Camera_UseFrontend
  L0_2()
  L0_2 = Amax
  L0_2 = L0_2.SetGameMode
  L1_2 = UIEnums
  L1_2 = L1_2.GameMode
  L1_2 = L1_2.Nothing
  L0_2(L1_2)
  L0_2 = GUI
  L1_2 = Amax
  L1_2 = L1_2.GetSetDebugDevMode
  L1_2 = L1_2()
  L0_2.debugdev_mode = L1_2
  L0_2 = UIButtons
  L0_2 = L0_2.ChangeText
  L1_2 = SCUI
  L1_2 = L1_2.name_to_id
  L1_2 = L1_2.DebugR
  L2_2 = Select
  L3_2 = GUI
  L3_2 = L3_2.debugdev_mode
  L4_2 = UIText
  L4_2 = L4_2.DBG_DEVMODE_DEBUG
  L5_2 = UIText
  L5_2 = L5_2.DBG_DEVMODE_MASTER
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2, L4_2, L5_2)
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L0_2 = UIGlobals
  L0_2 = L0_2.Multiplayer
  L1_2 = UIEnums
  L1_2 = L1_2.MpLaunchScreen
  L1_2 = L1_2.None
  L0_2.LaunchScreen = L1_2
  L0_2 = UIGlobals
  L1_2 = UIEnums
  L1_2 = L1_2.ConnectionType
  L1_2 = L1_2.None
  L0_2.ConnectionType = L1_2
  L0_2 = GUI
  L1_2 = UIGlobals
  L1_2 = L1_2.DevMode
  L1_2 = L1_2 == true
  L0_2.allow_debug_buttons = L1_2
  L0_2 = UIButtons
  L0_2 = L0_2.Activated
  L1_2 = SCUI
  L1_2 = L1_2.name_to_id
  L1_2 = L1_2.DebugY
  L2_2 = GUI
  L2_2 = L2_2.allow_debug_buttons
  L0_2(L1_2, L2_2)
  L0_2 = UIButtons
  L0_2 = L0_2.Activated
  L1_2 = SCUI
  L1_2 = L1_2.name_to_id
  L1_2 = L1_2.DebugL
  L2_2 = GUI
  L2_2 = L2_2.allow_debug_buttons
  L0_2(L1_2, L2_2)
  L0_2 = UIButtons
  L0_2 = L0_2.Activated
  L1_2 = SCUI
  L1_2 = L1_2.name_to_id
  L1_2 = L1_2.DebugR
  L2_2 = GUI
  L2_2 = L2_2.allow_debug_buttons
  L0_2(L1_2, L2_2)
  L0_2 = UIGlobals
  L0_2.ReturnToBlurb = nil
  L0_2 = UIGlobals
  L0_2.FinishedCreatingNetworkSession = false
  L0_2 = UIGlobals
  L0_2.SuccessfullyCreatedNetworkSession = false
  L0_2 = Amax
  L0_2 = L0_2.DeleteStatsOnlyMatchingSession
  L0_2()
  L0_2 = UIGlobals
  L0_2.MpModShopKeyboardCheck = -1
  L0_2 = Amax
  L0_2 = L0_2.GetShouldLoadDefaultCar
  L0_2, L1_2 = L0_2()
  if L0_2 ~= nil then
    if L1_2 ~= false then
      L2_2 = UIGlobals
      L2_2 = L2_2.UserKickBackMode
      L3_2 = UIEnums
      L3_2 = L3_2.UserKickBackMode
      L3_2 = L3_2.None
      if L2_2 == L3_2 then
        goto lbl_130
      end
    end
    L2_2 = Amax
    L2_2 = L2_2.LoadCar
    L3_2 = L0_2
    L4_2 = false
    L5_2 = nil
    L6_2 = nil
    L7_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  ::lbl_130::
end
Init = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = GUI
  L1_2 = L1_2.CurrentMode
  L2_2 = GUI
  L2_2 = L2_2.Mode
  L2_2 = L2_2.SinglePlayer
  if L1_2 == L2_2 then
    return
  end
  L1_2 = GUI
  L2_2 = GUI
  L2_2 = L2_2.Mode
  L2_2 = L2_2.SinglePlayer
  L1_2.CurrentMode = L2_2
  if A0_2 ~= true then
    L1_2 = UISystem
    L1_2 = L1_2.PlaySound
    L2_2 = UIEnums
    L2_2 = L2_2.SoundEffect
    L2_2 = L2_2.CarouselLeft
    L1_2(L2_2)
  end
  L1_2 = Amax
  L1_2 = L1_2.ChangeUiCamera
  L2_2 = GUI
  L2_2 = L2_2.UiCameraName
  L3_2 = GUI
  L3_2 = L3_2.CurrentMode
  L2_2 = L2_2[L3_2]
  L3_2 = 0.5
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = UIGlobals
  L1_2 = L1_2.DevMode
  if L1_2 == true then
    L1_2 = UIButtons
    L1_2 = L1_2.Activated
    L2_2 = SCUI
    L2_2 = L2_2.name_to_id
    L2_2 = L2_2.DebugL
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L1_2 = ipairs
  L2_2 = GUI
  L2_2 = L2_2.panel_items
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = UIButtons
    L6_2 = L6_2.ColourStyle
    L7_2 = SCUI
    L7_2 = L7_2.name_to_id
    L8_2 = "MP"
    L9_2 = L5_2
    L8_2 = L8_2 .. L9_2
    L7_2 = L7_2[L8_2]
    L8_2 = "Main_2"
    L6_2(L7_2, L8_2)
    L6_2 = UIButtons
    L6_2 = L6_2.ColourStyle
    L7_2 = SCUI
    L7_2 = L7_2.name_to_id
    L8_2 = "SP"
    L9_2 = L5_2
    L8_2 = L8_2 .. L9_2
    L7_2 = L7_2[L8_2]
    L8_2 = "Main_1"
    L6_2(L7_2, L8_2)
  end
  L1_2 = ipairs
  L2_2 = GUI
  L2_2 = L2_2.bright_panel_items
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = UIButtons
    L6_2 = L6_2.ColourStyle
    L7_2 = SCUI
    L7_2 = L7_2.name_to_id
    L8_2 = "MP"
    L9_2 = L5_2
    L8_2 = L8_2 .. L9_2
    L7_2 = L7_2[L8_2]
    L8_2 = "Main_2"
    L6_2(L7_2, L8_2)
    L6_2 = UIButtons
    L6_2 = L6_2.ColourStyle
    L7_2 = SCUI
    L7_2 = L7_2.name_to_id
    L8_2 = "SP"
    L9_2 = L5_2
    L8_2 = L8_2 .. L9_2
    L7_2 = L7_2[L8_2]
    L8_2 = "Main_0"
    L6_2(L7_2, L8_2)
  end
  L1_2 = UIButtons
  L1_2 = L1_2.PrivateTimeLineActive
  L2_2 = SCUI
  L2_2 = L2_2.name_to_id
  L2_2 = L2_2.SP_Icon
  L3_2 = "Selected"
  L4_2 = true
  L5_2 = 4.7
  L6_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = UIButtons
  L1_2 = L1_2.PrivateTimeLineActive
  L2_2 = SCUI
  L2_2 = L2_2.name_to_id
  L2_2 = L2_2.MP_Icon
  L3_2 = "Selected"
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = SetupInfoLine
  L2_2 = UIText
  L2_2 = L2_2.INFO_A_SELECT
  L3_2 = UIText
  L3_2 = L3_2.INFO_B_BACK
  L1_2(L2_2, L3_2)
end
StartScreen_SelectSp = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = GUI
  L1_2 = L1_2.CurrentMode
  L2_2 = GUI
  L2_2 = L2_2.Mode
  L2_2 = L2_2.Multiplayer
  if L1_2 == L2_2 then
    return
  end
  L1_2 = GUI
  L2_2 = GUI
  L2_2 = L2_2.Mode
  L2_2 = L2_2.Multiplayer
  L1_2.CurrentMode = L2_2
  if A0_2 ~= true then
    L1_2 = UISystem
    L1_2 = L1_2.PlaySound
    L2_2 = UIEnums
    L2_2 = L2_2.SoundEffect
    L2_2 = L2_2.CarouselRight
    L1_2(L2_2)
  end
  L1_2 = Amax
  L1_2 = L1_2.ChangeUiCamera
  L2_2 = GUI
  L2_2 = L2_2.UiCameraName
  L3_2 = GUI
  L3_2 = L3_2.CurrentMode
  L2_2 = L2_2[L3_2]
  L3_2 = 0.5
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ipairs
  L2_2 = GUI
  L2_2 = L2_2.panel_items
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = UIButtons
    L6_2 = L6_2.ColourStyle
    L7_2 = SCUI
    L7_2 = L7_2.name_to_id
    L8_2 = "SP"
    L9_2 = L5_2
    L8_2 = L8_2 .. L9_2
    L7_2 = L7_2[L8_2]
    L8_2 = "Main_2"
    L6_2(L7_2, L8_2)
    L6_2 = UIButtons
    L6_2 = L6_2.ColourStyle
    L7_2 = SCUI
    L7_2 = L7_2.name_to_id
    L8_2 = "MP"
    L9_2 = L5_2
    L8_2 = L8_2 .. L9_2
    L7_2 = L7_2[L8_2]
    L8_2 = "Main_1"
    L6_2(L7_2, L8_2)
  end
  L1_2 = UIButtons
  L1_2 = L1_2.PrivateTimeLineActive
  L2_2 = SCUI
  L2_2 = L2_2.name_to_id
  L2_2 = L2_2.SP_Icon
  L3_2 = "Selected"
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = UIButtons
  L1_2 = L1_2.PrivateTimeLineActive
  L2_2 = SCUI
  L2_2 = L2_2.name_to_id
  L2_2 = L2_2.MP_Icon
  L3_2 = "Selected"
  L4_2 = true
  L5_2 = 4.7
  L6_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = ipairs
  L2_2 = GUI
  L2_2 = L2_2.bright_panel_items
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = UIButtons
    L6_2 = L6_2.ColourStyle
    L7_2 = SCUI
    L7_2 = L7_2.name_to_id
    L8_2 = "SP"
    L9_2 = L5_2
    L8_2 = L8_2 .. L9_2
    L7_2 = L7_2[L8_2]
    L8_2 = "Main_2"
    L6_2(L7_2, L8_2)
    L6_2 = UIButtons
    L6_2 = L6_2.ColourStyle
    L7_2 = SCUI
    L7_2 = L7_2.name_to_id
    L8_2 = "MP"
    L9_2 = L5_2
    L8_2 = L8_2 .. L9_2
    L7_2 = L7_2[L8_2]
    L8_2 = "Main_0"
    L6_2(L7_2, L8_2)
  end
  L1_2 = StartScreen_ChangeUiCamera
  L2_2 = GUI
  L2_2 = L2_2.Mode
  L2_2 = L2_2.Multiplayer
  L1_2(L2_2)
  L1_2 = UIGlobals
  L1_2 = L1_2.DevMode
  if L1_2 == true then
    L1_2 = UIButtons
    L1_2 = L1_2.Activated
    L2_2 = SCUI
    L2_2 = L2_2.name_to_id
    L2_2 = L2_2.DebugL
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = SetupInfoLine
  L2_2 = UIText
  L2_2 = L2_2.INFO_A_SELECT
  L3_2 = UIText
  L3_2 = L3_2.INFO_B_BACK
  L1_2(L2_2, L3_2)
end
StartScreen_SelectMp = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = CheckRenderBuffer
  L0_2()
  L0_2 = UIGlobals
  L0_2 = L0_2.ReturnMode
  L1_2 = UIEnums
  L1_2 = L1_2.ReturnMode
  L1_2 = L1_2.QuitSpGame
  if L0_2 == L1_2 then
    L0_2 = GUI
    L1_2 = GUI
    L1_2 = L1_2.STAGE_MODE_SELECT
    L0_2.current_stage = L1_2
    L0_2 = UIScreen
    L0_2 = L0_2.SetScreenTimers
    L1_2 = GUI
    L1_2 = L1_2.start_time
    L2_2 = GUI
    L2_2 = L2_2.end_time
    L0_2(L1_2, L2_2)
    L0_2 = StartScreen_SelectSp
    L1_2 = true
    L0_2(L1_2)
    L0_2 = net_SetRichPresence
    L1_2 = UIEnums
    L1_2 = L1_2.RichPresence
    L1_2 = L1_2.SignedIn
    L0_2(L1_2)
    L0_2 = StartTickerBar
    L0_2()
    L0_2 = StartStorySharing
    L1_2 = {}
    L2_2 = {}
    L3_2 = UIEnums
    L3_2 = L3_2.SocialNetworkingItemType
    L3_2 = L3_2.PlayingBlur
    L4_2 = UIText
    L4_2 = L4_2.SOC_PLAYING_BLUR
    L5_2 = UIText
    L5_2 = L5_2.SOC_PLAYING_BLUR2_BODY
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    L2_2[3] = L5_2
    L1_2[1] = L2_2
    L0_2(L1_2)
  else
    L0_2 = UIGlobals
    L0_2 = L0_2.ReturnMode
    L1_2 = UIEnums
    L1_2 = L1_2.ReturnMode
    L1_2 = L1_2.QuitMpGame
    if L0_2 == L1_2 then
      L0_2 = GUI
      L1_2 = GUI
      L1_2 = L1_2.STAGE_MODE_SELECT
      L0_2.current_stage = L1_2
      L0_2 = UIScreen
      L0_2 = L0_2.SetScreenTimers
      L1_2 = GUI
      L1_2 = L1_2.start_time
      L2_2 = GUI
      L2_2 = L2_2.end_time
      L0_2(L1_2, L2_2)
      L0_2 = StartScreen_SelectMp
      L1_2 = true
      L0_2(L1_2)
      L0_2 = net_SetRichPresence
      L1_2 = UIEnums
      L1_2 = L1_2.RichPresence
      L1_2 = L1_2.SignedIn
      L0_2(L1_2)
      L0_2 = StartTickerBar
      L0_2()
      L0_2 = StartStorySharing
      L1_2 = {}
      L2_2 = {}
      L3_2 = UIEnums
      L3_2 = L3_2.SocialNetworkingItemType
      L3_2 = L3_2.PlayingBlur
      L4_2 = UIText
      L4_2 = L4_2.SOC_PLAYING_BLUR
      L5_2 = UIText
      L5_2 = L5_2.SOC_PLAYING_BLUR2_BODY
      L2_2[1] = L3_2
      L2_2[2] = L4_2
      L2_2[3] = L5_2
      L1_2[1] = L2_2
      L0_2(L1_2)
    else
      L0_2 = GUI
      L1_2 = UIButtons
      L1_2 = L1_2.CloneXtGadgetByName
      L2_2 = "SCUIBank"
      L3_2 = "Gfx_FadeUp"
      L1_2 = L1_2(L2_2, L3_2)
      L0_2.fade_id = L1_2
      L0_2 = Amax
      L0_2 = L0_2.ChangeUiCamera
      L1_2 = "CameraInit"
      L2_2 = 0
      L3_2 = 0
      L0_2(L1_2, L2_2, L3_2)
      L0_2 = Amax
      L0_2 = L0_2.ChangeUiCamera
      L1_2 = "Start1a"
      L2_2 = 1
      L3_2 = 0
      L4_2 = 2
      L0_2(L1_2, L2_2, L3_2, L4_2)
      L0_2 = GUI
      L1_2 = GUI
      L1_2 = L1_2.STAGE_PRESS_START
      L0_2.current_stage = L1_2
      L0_2 = Profile
      L0_2 = L0_2.SetPrimaryPad
      L1_2 = -1
      L0_2(L1_2)
      L0_2 = Profile
      L0_2 = L0_2.Flush
      L0_2()
      L0_2 = StartScreen_ClearProfiles
      L0_2()
      L0_2 = StartScreen_DefaultProfileVars
      L0_2()
      L0_2 = Multiplayer
      L0_2 = L0_2.SplitscreenResetScores
      L0_2()
      L0_2 = UIGlobals
      L0_2.splitscreen_primary_pad_original = -1
      L0_2 = UISystem
      L0_2 = L0_2.PlaySound
      L1_2 = UIEnums
      L1_2 = L1_2.SoundEffect
      L1_2 = L1_2.PressStartButtonScreen
      L0_2(L1_2)
      L0_2 = net_SetRichPresence
      L1_2 = UIEnums
      L1_2 = L1_2.RichPresence
      L1_2 = L1_2.Idle
      L0_2(L1_2)
      L0_2 = GUI
      L1_2 = GUI
      L1_2 = L1_2.Mode
      L1_2 = L1_2.SinglePlayer
      L0_2.CurrentMode = L1_2
      L0_2 = UIScreen
      L0_2 = L0_2.SetScreenTimers
      L1_2 = GUI
      L1_2 = L1_2.boot_start_time
      L2_2 = GUI
      L2_2 = L2_2.end_time
      L0_2(L1_2, L2_2)
    end
  end
  L0_2 = UIGlobals
  L0_2 = L0_2.UserKickBackMode
  L1_2 = UIEnums
  L1_2 = L1_2.UserKickBackMode
  L1_2 = L1_2.UserChanged
  if L0_2 == L1_2 then
    L0_2 = SetupCustomPopup
    L1_2 = UIEnums
    L1_2 = L1_2.CustomPopups
    L1_2 = L1_2.ProfileKickedYou
    L0_2(L1_2)
  else
    L0_2 = UIGlobals
    L0_2 = L0_2.UserKickBackMode
    L1_2 = UIEnums
    L1_2 = L1_2.UserKickBackMode
    L1_2 = L1_2.MpBetaExpired
    if L0_2 == L1_2 then
      L0_2 = SetupCustomPopup
      L1_2 = UIEnums
      L1_2 = L1_2.CustomPopups
      L1_2 = L1_2.MpBetaExpired
      L0_2(L1_2)
    else
      L0_2 = UIGlobals
      L0_2 = L0_2.UserKickBackMode
      L1_2 = UIEnums
      L1_2 = L1_2.UserKickBackMode
      L1_2 = L1_2.InactiveGameInvite
      if L0_2 == L1_2 then
        L0_2 = SetupCustomPopup
        L1_2 = UIEnums
        L1_2 = L1_2.CustomPopups
        L1_2 = L1_2.ActiveProfileChanged
        L0_2(L1_2)
        L0_2 = GUI
        L0_2.inactive_game_invite_wait = true
      else
        L0_2 = UIGlobals
        L0_2 = L0_2.UserKickBackMode
        L1_2 = UIEnums
        L1_2 = L1_2.UserKickBackMode
        L1_2 = L1_2.ProfileUploadFailed
        if L0_2 == L1_2 then
          L0_2 = SetupCustomPopup
          L1_2 = UIEnums
          L1_2 = L1_2.CustomPopups
          L1_2 = L1_2.ProfileUploadFailed
          L0_2(L1_2)
        else
          L0_2 = UIGlobals
          L0_2 = L0_2.UserKickBackMode
          L1_2 = UIEnums
          L1_2 = L1_2.UserKickBackMode
          L1_2 = L1_2.XLSPConnectionLost
          if L0_2 == L1_2 then
            L0_2 = SetupCustomPopup
            L1_2 = UIEnums
            L1_2 = L1_2.CustomPopups
            L1_2 = L1_2.NetConnectionError
            L0_2(L1_2)
          else
            L0_2 = UIGlobals
            L0_2 = L0_2.UserKickBackMode
            L1_2 = UIEnums
            L1_2 = L1_2.UserKickBackMode
            L1_2 = L1_2.ServiceConnectionLost
            if L0_2 == L1_2 then
              L0_2 = SetupCustomPopup
              L1_2 = UIEnums
              L1_2 = L1_2.CustomPopups
              L1_2 = L1_2.ServiceConnectionLost
              L0_2(L1_2)
            else
              L0_2 = UIGlobals
              L0_2 = L0_2.UserKickBackMode
              L1_2 = UIEnums
              L1_2 = L1_2.UserKickBackMode
              L1_2 = L1_2.NetworkCableRemoved
              if L0_2 == L1_2 then
                L0_2 = SetupCustomPopup
                L1_2 = UIEnums
                L1_2 = L1_2.CustomPopups
                L1_2 = L1_2.NetworkCableRemoved
                L0_2(L1_2)
              end
            end
          end
        end
      end
    end
  end
  L0_2 = UIGlobals
  L1_2 = UIEnums
  L1_2 = L1_2.ReturnMode
  L1_2 = L1_2.None
  L0_2.ReturnMode = L1_2
  L0_2 = UIGlobals
  L1_2 = UIEnums
  L1_2 = L1_2.UserKickBackMode
  L1_2 = L1_2.None
  L0_2.UserKickBackMode = L1_2
  L0_2 = UIGlobals
  L0_2.UserKickBackActive = false
  L0_2 = CheckPumpkin
  L0_2()
end
PostInit = L0_1
function L0_1(A0_2)
  local L1_2
end
StartLoop = L0_1
function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = SCUI_MessageUpdate
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = A4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  if L5_2 == true then
    return
  end
  L5_2 = GUI
  L5_2 = L5_2.finished
  if L5_2 == true then
    return
  end
  L5_2 = GUI
  L5_2 = L5_2.entering_debug_menu
  if L5_2 == true then
    L5_2 = UIEnums
    L5_2 = L5_2.GameFlowMessage
    L5_2 = L5_2.LevelDumped
    if A0_2 == L5_2 then
      L5_2 = GUI
      L5_2.entering_debug_menu = false
      L5_2 = Amax
      L5_2 = L5_2.SendMessage
      L6_2 = UIEnums
      L6_2 = L6_2.GameFlowMessage
      L6_2 = L6_2.EnteredDebugMenu
      L5_2(L6_2)
      L5_2 = Amax
      L5_2 = L5_2.SetGameMode
      L6_2 = UIEnums
      L6_2 = L6_2.GameMode
      L6_2 = L6_2.Debug
      L5_2(L6_2)
      L5_2 = GoScreen
      L6_2 = "Debug\\DebugScreen.lua"
      L5_2(L6_2)
    else
      return
    end
  end
  L5_2 = UIEnums
  L5_2 = L5_2.Message
  L5_2 = L5_2.MenuNext
  if A0_2 ~= L5_2 then
    L5_2 = UIEnums
    L5_2 = L5_2.Message
    L5_2 = L5_2.MenuBack
    if A0_2 ~= L5_2 then
      L5_2 = UIEnums
      L5_2 = L5_2.Message
      L5_2 = L5_2.ButtonX
      if A0_2 ~= L5_2 then
        L5_2 = UIEnums
        L5_2 = L5_2.Message
        L5_2 = L5_2.ButtonY
        if A0_2 ~= L5_2 then
          L5_2 = UIEnums
          L5_2 = L5_2.Message
          L5_2 = L5_2.ButtonStart
          if A0_2 ~= L5_2 then
            L5_2 = UIEnums
            L5_2 = L5_2.Message
            L5_2 = L5_2.StickLeftX
            if A0_2 ~= L5_2 then
              L5_2 = UIEnums
              L5_2 = L5_2.Message
              L5_2 = L5_2.StickLeftY
              if A0_2 ~= L5_2 then
                L5_2 = UIEnums
                L5_2 = L5_2.Message
                L5_2 = L5_2.StickRightX
                if A0_2 ~= L5_2 then
                  L5_2 = UIEnums
                  L5_2 = L5_2.Message
                  L5_2 = L5_2.StickRightY
                  if A0_2 ~= L5_2 then
                    goto lbl_91
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L5_2 = GUI
  L5_2.attract_timeout = 0
  ::lbl_91::
  L5_2 = UIEnums
  L5_2 = L5_2.Message
  L5_2 = L5_2.ButtonRightShoulder
  if A0_2 == L5_2 and A2_2 == true then
    L5_2 = GUI
    L5_2 = L5_2.allow_debug_buttons
    if L5_2 == true then
      L5_2 = GUI
      L5_2 = L5_2.debugdev_mode
      if L5_2 == true then
        L5_2 = UIButtons
        L5_2 = L5_2.ChangeText
        L6_2 = SCUI
        L6_2 = L6_2.name_to_id
        L6_2 = L6_2.DebugR
        L7_2 = UIText
        L7_2 = L7_2.DBG_DEVMODE_MASTER
        L5_2(L6_2, L7_2)
        L5_2 = GUI
        L6_2 = Amax
        L6_2 = L6_2.GetSetDebugDevMode
        L7_2 = false
        L6_2 = L6_2(L7_2)
        L5_2.debugdev_mode = L6_2
      else
        L5_2 = UIButtons
        L5_2 = L5_2.ChangeText
        L6_2 = SCUI
        L6_2 = L6_2.name_to_id
        L6_2 = L6_2.DebugR
        L7_2 = UIText
        L7_2 = L7_2.DBG_DEVMODE_DEBUG
        L5_2(L6_2, L7_2)
        L5_2 = GUI
        L6_2 = Amax
        L6_2 = L6_2.GetSetDebugDevMode
        L7_2 = true
        L6_2 = L6_2(L7_2)
        L5_2.debugdev_mode = L6_2
      end
  end
  else
    L5_2 = UIEnums
    L5_2 = L5_2.Message
    L5_2 = L5_2.ButtonY
    if A0_2 == L5_2 and A2_2 == true then
      L5_2 = GUI
      L5_2 = L5_2.allow_debug_buttons
      if L5_2 == true then
        L5_2 = Profile
        L5_2 = L5_2.Setup
        L6_2 = A1_2
        L7_2 = true
        L5_2(L6_2, L7_2)
        L5_2 = UIGlobals
        L5_2 = L5_2.ProfileState
        L6_2 = UIEnums
        L6_2 = L6_2.Profile
        L6_2 = L6_2.Blagged
        L5_2[A1_2] = L6_2
        L5_2 = Profile
        L5_2 = L5_2.LockToPad
        L6_2 = A1_2
        L5_2(L6_2)
        L5_2 = Profile
        L5_2 = L5_2.SetPrimaryPad
        L6_2 = A1_2
        L5_2(L6_2)
        L5_2 = GameProfile
        L5_2 = L5_2.InitPrimary
        L5_2()
        L5_2 = Profile
        L5_2 = L5_2.AllowProfileChanges
        L6_2 = false
        L5_2(L6_2)
        L5_2 = Profile
        L5_2 = L5_2.ActOnProfileChanges
        L6_2 = false
        L5_2(L6_2)
        L5_2 = Profile
        L5_2 = L5_2.AllowAllPadInput
        L6_2 = false
        L5_2(L6_2)
        L5_2 = GUI
        L5_2.entering_debug_menu = true
        L5_2 = EndTickerBar
        L5_2()
        L5_2 = Amax
        L5_2 = L5_2.SendMessage
        L6_2 = UIEnums
        L6_2 = L6_2.GameFlowMessage
        L6_2 = L6_2.DumpUI
        L5_2(L6_2)
      end
    end
  end
  L5_2 = GUI
  L5_2 = L5_2.current_stage
  L6_2 = GUI
  L6_2 = L6_2.STAGE_PRESS_START
  if L5_2 == L6_2 then
    L5_2 = UIEnums
    L5_2 = L5_2.Message
    L5_2 = L5_2.MenuNext
    if A0_2 ~= L5_2 then
      L5_2 = UIEnums
      L5_2 = L5_2.Message
      L5_2 = L5_2.ButtonStart
    end
    if A0_2 == L5_2 and A2_2 == true then
      L5_2 = UIScreen
      L5_2 = L5_2.IsContextActive
      L6_2 = UIEnums
      L6_2 = L6_2.Context
      L6_2 = L6_2.LoadSave
      L5_2 = L5_2(L6_2)
      if L5_2 == false then
        L5_2 = UISystem
        L5_2 = L5_2.PlaySound
        L6_2 = UIEnums
        L6_2 = L6_2.SoundEffect
        L6_2 = L6_2.Start
        L5_2(L6_2)
        L5_2 = UISystem
        L5_2 = L5_2.PlaySound
        L6_2 = UIEnums
        L6_2 = L6_2.SoundEffect
        L6_2 = L6_2.GraphicStartFlyForward
        L5_2(L6_2)
        L5_2 = UIButtons
        L5_2 = L5_2.Selected
        L6_2 = SCUI
        L6_2 = L6_2.name_to_id
        L6_2 = L6_2.OnShape
        L7_2 = false
        L5_2(L6_2, L7_2)
        L5_2 = StartScreen_SelectSp
        L6_2 = true
        L5_2(L6_2)
        L5_2 = UIButtons
        L5_2 = L5_2.TimeLineActive
        L6_2 = "Open"
        L7_2 = true
        L5_2(L6_2, L7_2)
        L5_2 = Sp_NewGame
        L5_2()
        L5_2 = Profile
        L5_2 = L5_2.Flush
        L5_2()
        L5_2 = Amax
        L5_2 = L5_2.GameDataLogDisplaySettings
        L5_2()
        L5_2 = Amax
        L5_2 = L5_2.ChangeUiCamera
        L6_2 = "Start1b"
        L7_2 = 8
        L8_2 = 0
        L5_2(L6_2, L7_2, L8_2)
        L5_2 = StartProfileLoad
        L6_2 = A1_2
        L5_2(L6_2)
        L5_2 = GUI
        L6_2 = GUI
        L6_2 = L6_2.STAGE_LOADING
        L5_2.current_stage = L6_2
        L5_2 = UIGlobals
        L5_2.ProfileBootFinished = false
        L5_2 = Profile
        L5_2 = L5_2.AllowProfileChanges
        L6_2 = true
        L5_2(L6_2)
        L5_2 = Profile
        L5_2 = L5_2.ActOnProfileChanges
        L6_2 = false
        L5_2(L6_2)
        L5_2 = Profile
        L5_2 = L5_2.AllowAllPadInput
        L6_2 = false
        L5_2(L6_2)
        L5_2 = net_SetRichPresence
        L6_2 = UIEnums
        L6_2 = L6_2.RichPresence
        L6_2 = L6_2.SignedIn
        L5_2(L6_2)
        L5_2 = Amax
        L5_2 = L5_2.InitTwitter
        L5_2()
        L5_2 = Amax
        L5_2 = L5_2.InitFacebook
        L5_2()
      end
    end
  else
    L5_2 = GUI
    L5_2 = L5_2.current_stage
    L6_2 = GUI
    L6_2 = L6_2.STAGE_MODE_SELECT
    if L5_2 == L6_2 then
      L5_2 = UIEnums
      L5_2 = L5_2.Message
      L5_2 = L5_2.ButtonX
      if A0_2 == L5_2 then
        L5_2 = UIGlobals
        L5_2 = L5_2.DevMode
        if L5_2 == true then
          L5_2 = selection
          if L5_2 == 0 then
            L5_2 = StartProfileNew
            L6_2 = A1_2
            L5_2(L6_2)
            L5_2 = EnterSpRaceBook
            L6_2 = true
            L5_2(L6_2)
            L5_2 = StartAsyncSave
            L5_2()
          end
      end
      else
        L5_2 = UIEnums
        L5_2 = L5_2.Message
        L5_2 = L5_2.MenuNext
        if A0_2 ~= L5_2 then
          L5_2 = UIEnums
          L5_2 = L5_2.Message
          L5_2 = L5_2.ButtonStart
        end
        if A0_2 == L5_2 and A2_2 == true then
          L5_2 = UIGlobals
          L5_2 = L5_2.ProfileState
          L5_2 = L5_2[A1_2]
          L6_2 = UIEnums
          L6_2 = L6_2.Profile
          L6_2 = L6_2.PreLoad
          if L5_2 == L6_2 then
            L5_2 = SetupCustomPopup
            L6_2 = UIEnums
            L6_2 = L6_2.CustomPopups
            L6_2 = L6_2.ProfilePreLoad
            L5_2(L6_2)
            return
          end
          L5_2 = UISystem
          L5_2 = L5_2.PlaySound
          L6_2 = UIEnums
          L6_2 = L6_2.SoundEffect
          L6_2 = L6_2.Start
          L5_2(L6_2)
          L5_2 = GUI
          L5_2 = L5_2.CurrentMode
          L6_2 = GUI
          L6_2 = L6_2.Mode
          L6_2 = L6_2.SinglePlayer
          if L5_2 == L6_2 then
            L5_2 = Amax
            L5_2 = L5_2.SetGameMode
            L6_2 = UIEnums
            L6_2 = L6_2.GameMode
            L6_2 = L6_2.SinglePlayer
            L5_2(L6_2)
            L5_2 = PlaySfxNext
            L5_2()
            L5_2 = UIButtons
            L5_2 = L5_2.TimeLineActive
            L6_2 = "Open_Sp"
            L7_2 = false
            L5_2(L6_2, L7_2)
            L5_2 = UIButtons
            L5_2 = L5_2.TimeLineActive
            L6_2 = "Close_Mp"
            L7_2 = true
            L5_2(L6_2, L7_2)
            L5_2 = Amax
            L5_2 = L5_2.SetPlayingSpGameLatest
            L6_2 = true
            L5_2(L6_2)
            L5_2 = EnterSpRaceBook
            L6_2 = true
            L5_2(L6_2)
          else
            L5_2 = GUI
            L5_2 = L5_2.CurrentMode
            L6_2 = GUI
            L6_2 = L6_2.Mode
            L6_2 = L6_2.Multiplayer
            if L5_2 == L6_2 then
              L5_2 = Amax
              L5_2 = L5_2.SetGameMode
              L6_2 = UIEnums
              L6_2 = L6_2.GameMode
              L6_2 = L6_2.MultiPlayer
              L5_2(L6_2)
              L5_2 = PlaySfxNext
              L5_2()
              L5_2 = UIButtons
              L5_2 = L5_2.TimeLineActive
              L6_2 = "Open_Mp"
              L7_2 = false
              L5_2(L6_2, L7_2)
              L5_2 = UIButtons
              L5_2 = L5_2.TimeLineActive
              L6_2 = "Close_Sp"
              L7_2 = true
              L5_2(L6_2, L7_2)
              L5_2 = Amax
              L5_2 = L5_2.SetPlayingSpGameLatest
              L6_2 = false
              L5_2(L6_2)
              L5_2 = EnterMpRaceBook
              L5_2()
            end
          end
          L5_2 = net_EnableGlobalUpdate
          L6_2 = true
          L7_2 = true
          L5_2(L6_2, L7_2)
        else
          L5_2 = UIEnums
          L5_2 = L5_2.Message
          L5_2 = L5_2.MenuBack
          if A0_2 == L5_2 then
            L5_2 = IsTable
            L6_2 = GUI
            L6_2 = L6_2.camera
            L5_2 = L5_2(L6_2)
            if L5_2 == true then
              return
            end
            L5_2 = UIButtons
            L5_2 = L5_2.TimeLineActive
            L6_2 = "Open"
            L7_2 = false
            L8_2 = 0
            L5_2(L6_2, L7_2, L8_2)
            L5_2 = UIButtons
            L5_2 = L5_2.TimeLineActive
            L6_2 = "Selected"
            L7_2 = false
            L5_2(L6_2, L7_2)
            L5_2 = Amax
            L5_2 = L5_2.ChangeUiCamera
            L6_2 = "Start1a"
            L7_2 = 1
            L8_2 = 0
            L5_2(L6_2, L7_2, L8_2)
            L5_2 = GUI
            L6_2 = GUI
            L6_2 = L6_2.STAGE_PRESS_START
            L5_2.current_stage = L6_2
            L5_2 = SetupInfoLine
            L5_2()
            L5_2 = PlaySfxBack
            L5_2()
            L5_2 = UISystem
            L5_2 = L5_2.PlaySound
            L6_2 = UIEnums
            L6_2 = L6_2.SoundEffect
            L6_2 = L6_2.GraphicStartFlyBackward
            L5_2(L6_2)
            L5_2 = UIButtons
            L5_2 = L5_2.Selected
            L6_2 = SCUI
            L6_2 = L6_2.name_to_id
            L6_2 = L6_2.OnShape
            L7_2 = true
            L5_2(L6_2, L7_2)
            L5_2 = StartScreen_DefaultProfileVars
            L5_2()
            L5_2 = net_SetRichPresence
            L6_2 = UIEnums
            L6_2 = L6_2.RichPresence
            L6_2 = L6_2.Idle
            L5_2(L6_2)
            L5_2 = Multiplayer
            L5_2 = L5_2.SplitscreenResetScores
            L5_2()
            L5_2 = UIGlobals
            L5_2.splitscreen_primary_pad_original = -1
            L5_2 = EndTickerBar
            L5_2()
          else
            L5_2 = UIEnums
            L5_2 = L5_2.Message
            L5_2 = L5_2.ButtonLeft
            if A0_2 == L5_2 and A2_2 == true then
              L5_2 = UIGlobals
              L5_2 = L5_2.LaunchMode
              L6_2 = UIEnums
              L6_2 = L6_2.LaunchMode
              L6_2 = L6_2.Press
              if L5_2 ~= L6_2 then
                L5_2 = UIGlobals
                L5_2 = L5_2.LaunchMode
                L6_2 = UIEnums
                L6_2 = L6_2.LaunchMode
                L6_2 = L6_2.E3Mp
                if L5_2 ~= L6_2 then
                  L5_2 = StartScreen_SelectSp
                  L5_2()
              end
            end
            else
              L5_2 = UIEnums
              L5_2 = L5_2.Message
              L5_2 = L5_2.ButtonRight
              if A0_2 == L5_2 and A2_2 == true then
                L5_2 = UIGlobals
                L5_2 = L5_2.LaunchMode
                L6_2 = UIEnums
                L6_2 = L6_2.LaunchMode
                L6_2 = L6_2.Press
                if L5_2 ~= L6_2 then
                  L5_2 = UIGlobals
                  L5_2 = L5_2.LaunchMode
                  L6_2 = UIEnums
                  L6_2 = L6_2.LaunchMode
                  L6_2 = L6_2.E3Mp
                  if L5_2 ~= L6_2 then
                    L5_2 = StartScreen_SelectMp
                    L5_2()
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
MessageUpdate = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = DeferCam_Update
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = GUI
  L1_2 = L1_2.finished
  if L1_2 == false then
    L1_2 = GUI
    L1_2 = L1_2.current_stage
    L2_2 = GUI
    L2_2 = L2_2.STAGE_PRESS_START
    if L1_2 == L2_2 then
      L1_2 = UIScreen
      L1_2 = L1_2.IsPopupActive
      L1_2 = L1_2()
      if L1_2 == false then
        L1_2 = GUI
        L2_2 = GUI
        L2_2 = L2_2.attract_timeout
        L2_2 = L2_2 + A0_2
        L1_2.attract_timeout = L2_2
        L1_2 = GUI
        L1_2 = L1_2.attract_timeout
        if 30 < L1_2 then
          L1_2 = StoreScreen
          L2_2 = UIEnums
          L2_2 = L2_2.ScreenStorage
          L2_2 = L2_2.LOAD_NEXT
          L1_2(L2_2)
          L1_2 = GoScreen
          L2_2 = "Intro\\AttractSplash.lua"
          L1_2(L2_2)
        end
    end
  end
  else
    L1_2 = GUI
    L1_2.attract_timeout = 0
  end
  L1_2 = GUI
  L1_2 = L1_2.entering_debug_menu
  if L1_2 == true then
    return
  end
  L1_2 = GUI
  L1_2 = L1_2.inactive_game_invite_wait
  if L1_2 == true then
    L1_2 = GUI
    L2_2 = UIScreen
    L2_2 = L2_2.IsPopupActive
    L2_2 = L2_2()
    L1_2.inactive_game_invite_wait = L2_2
  end
  L1_2 = GUI
  L1_2 = L1_2.current_stage
  L2_2 = GUI
  L2_2 = L2_2.STAGE_PRESS_START
  if L1_2 == L2_2 then
    L1_2 = GUI
    L1_2 = L1_2.inactive_game_invite_wait
    if L1_2 == false then
      L1_2 = NetServices
      L1_2 = L1_2.GameInvitePending
      L1_2 = L1_2()
      if L1_2 == true then
        L1_2 = NetServices
        L1_2 = L1_2.FindGameInvitePadIndex
        L1_2 = L1_2()
        if L1_2 ~= -1 then
          L2_2 = UIScreen
          L2_2 = L2_2.CancelPopup
          L2_2()
          L2_2 = ContextTable
          L3_2 = UIEnums
          L3_2 = L3_2.Context
          L3_2 = L3_2.Main
          L2_2 = L2_2[L3_2]
          L2_2 = L2_2.MessageUpdate
          L3_2 = UIEnums
          L3_2 = L3_2.Message
          L3_2 = L3_2.ButtonStart
          L4_2 = L1_2
          L5_2 = true
          L2_2(L3_2, L4_2, L5_2)
        end
      else
        L1_2 = UIGlobals
        L1_2 = L1_2.ActUponFriendChallenges
        if L1_2 == true then
          L1_2 = UIGlobals
          L1_2 = L1_2.PendingFriendChallengeInfo
          L1_2 = L1_2.Pending
          if L1_2 == true then
            L1_2 = UIGlobals
            L1_2 = L1_2.PendingFriendChallengeInfo
            L1_2 = L1_2.Pad
            if L1_2 ~= -1 then
              L1_2 = UIScreen
              L1_2 = L1_2.CancelPopup
              L1_2()
              L1_2 = ContextTable
              L2_2 = UIEnums
              L2_2 = L2_2.Context
              L2_2 = L2_2.Main
              L1_2 = L1_2[L2_2]
              L1_2 = L1_2.MessageUpdate
              L2_2 = UIEnums
              L2_2 = L2_2.Message
              L2_2 = L2_2.ButtonStart
              L3_2 = UIGlobals
              L3_2 = L3_2.PendingFriendChallengeInfo
              L3_2 = L3_2.Pad
              L4_2 = true
              L1_2(L2_2, L3_2, L4_2)
            end
          end
        end
      end
    end
  end
  L1_2 = GUI
  L1_2 = L1_2.current_stage
  L2_2 = GUI
  L2_2 = L2_2.STAGE_LOADING
  if L1_2 == L2_2 then
    L1_2 = UIGlobals
    L1_2 = L1_2.ProfileBootFinished
    if L1_2 == true then
      L1_2 = GUI
      L2_2 = GUI
      L2_2 = L2_2.STAGE_MODE_SELECT
      L1_2.current_stage = L2_2
      L1_2 = Amax
      L1_2 = L1_2.HasBeenPlayingSpGameLatest
      L1_2 = L1_2()
      if L1_2 == true then
        L1_2 = StartScreen_SelectSp
        L2_2 = true
        L1_2(L2_2)
      else
        L1_2 = StartScreen_SelectMp
        L2_2 = true
        L1_2(L2_2)
      end
      L1_2 = Profile
      L1_2 = L1_2.AllowProfileChanges
      L2_2 = true
      L1_2(L2_2)
      L1_2 = Profile
      L1_2 = L1_2.ActOnProfileChanges
      L2_2 = true
      L1_2(L2_2)
      L1_2 = Profile
      L1_2 = L1_2.AllowAllPadInput
      L2_2 = false
      L1_2(L2_2)
      L1_2 = Profile
      L1_2 = L1_2.GetPrimaryProfilePicture
      L1_2()
      L1_2 = Amax
      L1_2 = L1_2.GetAchievementDetails
      L1_2()
      L1_2 = CheckPumpkin
      L1_2()
      L1_2 = StartTickerBar
      L1_2()
      L1_2 = StartStorySharing
      L2_2 = {}
      L3_2 = {}
      L4_2 = UIEnums
      L4_2 = L4_2.SocialNetworkingItemType
      L4_2 = L4_2.PlayingBlur
      L5_2 = UIText
      L5_2 = L5_2.SOC_PLAYING_BLUR
      L6_2 = UIText
      L6_2 = L6_2.SOC_PLAYING_BLUR2_BODY
      L3_2[1] = L4_2
      L3_2[2] = L5_2
      L3_2[3] = L6_2
      L2_2[1] = L3_2
      L1_2(L2_2)
      L1_2 = SetupInfoLine
      L2_2 = UIText
      L2_2 = L2_2.INFO_A_SELECT
      L3_2 = UIText
      L3_2 = L3_2.INFO_B_BACK
      L1_2(L2_2, L3_2)
      L1_2 = NetServices
      L1_2 = L1_2.GameInvitePending
      L1_2 = L1_2()
      if L1_2 == true then
        L1_2 = UIGlobals
        L1_2 = L1_2.Network
        L1_2 = L1_2.GlobalUpdateEnabled
        if L1_2 == false then
          L1_2 = net_EnableGlobalUpdate
          L2_2 = true
          L3_2 = true
          L1_2(L2_2, L3_2)
        end
      end
      L1_2 = UIEnums
      L1_2 = L1_2.SPVideoConfig
      L1_2 = L1_2.VIDEO_GLOSSY_INTRO
      L2_2 = Amax
      L2_2 = L2_2.CanPlayGameModeVideo
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if L2_2 == true then
        L2_2 = Amax
        L2_2 = L2_2.SetVideoPlayedBitInProfile
        L3_2 = L1_2
        L2_2(L3_2)
        L2_2 = UIGlobals
        L2_2 = L2_2.ActiveSPMovie
        L2_2 = L2_2[1]
        L3_2 = UIGlobals
        L3_2 = L3_2.ActiveSPMovie
        L3_2 = L3_2[1]
        L4_2 = UIGlobals
        L4_2 = L4_2.ActiveSPMovie
        L4_2 = L4_2[1]
        L5_2 = Amax
        L5_2 = L5_2.GetGameModeVideoFile
        L6_2 = L1_2
        L5_2, L6_2, L7_2 = L5_2(L6_2)
        L4_2.FullScreen = L7_2
        L3_2.Skipable = L6_2
        L2_2.Filename = L5_2
        L2_2 = UIGlobals
        L2_2.SpMovieScreenShouldSave = false
        L2_2 = PushScreen
        L3_2 = "SinglePlayer\\SpMovieScreen.lua"
        L2_2(L3_2)
        L2_2 = DeferCam_Init
        L3_2 = GUI
        L3_2 = L3_2.UiCameraName
        L4_2 = GUI
        L4_2 = L4_2.Mode
        L4_2 = L4_2.SinglePlayer
        L3_2 = L3_2[L4_2]
        L4_2 = 0.5
        L2_2(L3_2, L4_2)
        return
      end
      L2_2 = Amax
      L2_2 = L2_2.ChangeUiCamera
      L3_2 = GUI
      L3_2 = L3_2.UiCameraName
      L4_2 = GUI
      L4_2 = L4_2.CurrentMode
      L3_2 = L3_2[L4_2]
      L4_2 = 2
      L5_2 = 0
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
FrameUpdate = L0_1
function L0_1()
  local L0_2, L1_2
end
EnterEnd = L0_1
function L0_1(A0_2)
  local L1_2
end
EndLoop = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = GUI
  L0_2 = L0_2.current_stage
  L1_2 = GUI
  L1_2 = L1_2.STAGE_LOADING
  if L0_2 == L1_2 then
    L0_2 = print
    L1_2 = "Warning cancelled load unsafely"
    L0_2(L1_2)
    L0_2 = EndScreen
    L1_2 = UIEnums
    L1_2 = L1_2.Context
    L1_2 = L1_2.LoadSave
    L0_2(L1_2)
  end
  L0_2 = nil
  StartScreen_DefaultProfileVars = L0_2
  L0_2 = nil
  StartScreen_ChangeUiCamera = L0_2
end
End = L0_1
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = UIGlobals
  L1_2.ProfilePressedStart = A0_2
  L1_2 = Profile
  L1_2 = L1_2.SetPrimaryPad
  L2_2 = UIGlobals
  L2_2 = L2_2.ProfilePressedStart
  L1_2(L2_2)
  L1_2 = Profile
  L1_2 = L1_2.LockToPad
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = GameProfile
  L1_2 = L1_2.InitPrimary
  L1_2()
  L1_2 = Amax
  L1_2 = L1_2.SetGameMode
  L2_2 = UIEnums
  L2_2 = L2_2.GameMode
  L2_2 = L2_2.SinglePlayer
  L1_2(L2_2)
  L1_2 = StartScreen_ClearProfiles
  L1_2()
  L1_2 = UIGlobals
  L1_2.ProfilePrimaryPad = -1
  L1_2 = UIGlobals
  L1_2.ProfilesFound = 0
  L1_2 = UIGlobals
  L1_2.ProfileLookingFor = -1
  L1_2 = PushScreen
  L2_2 = "Profile\\Boot.lua"
  L1_2(L2_2)
end
StartProfileLoad = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = GoScreen
  L1_2 = "Multiplayer\\MpMain.lua"
  L0_2(L1_2)
end
EnterMpRaceBook = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L1_2 = {}
  L0_2.FileParams = L1_2
  L0_2 = UIGlobals
  L1_2 = {}
  L0_2.ScreenOptions = L1_2
  L0_2 = UIGlobals
  L0_2.DebugEvent = nil
  L0_2 = UIGlobals
  L0_2.LoadFromDebug = false
  L0_2 = UIGlobals
  L0_2.FadeUpLoading = nil
  L0_2 = UIGlobals
  L0_2.FriendDemandFilterFriend = 0
  L0_2 = UIGlobals
  L0_2.FriendDemandAttemptFromMessage = false
  L0_2 = Profile
  L0_2 = L0_2.AllowProfileChanges
  L1_2 = true
  L0_2(L1_2)
  L0_2 = Profile
  L0_2 = L0_2.ActOnProfileChanges
  L1_2 = false
  L0_2(L1_2)
  L0_2 = Profile
  L0_2 = L0_2.AllowAllPadInput
  L1_2 = true
  L0_2(L1_2)
  L0_2 = net_EnableGlobalUpdate
  L1_2 = false
  L0_2(L1_2)
  L0_2 = net_CloseServiceConnection
  L0_2()
end
StartScreen_DefaultProfileVars = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = 0
  L1_2 = 3
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = Profile
    L4_2 = L4_2.ClearProfile
    L5_2 = L3_2
    L4_2(L5_2)
    L4_2 = Profile
    L4_2 = L4_2.ReadPadProfile
    L5_2 = L3_2
    L4_2(L5_2)
    L4_2 = GameProfile
    L4_2 = L4_2.ClearGameProfile
    L5_2 = L3_2
    L4_2(L5_2)
    L4_2 = UIGlobals
    L4_2 = L4_2.ProfileState
    L5_2 = UIEnums
    L5_2 = L5_2.Profile
    L5_2 = L5_2.None
    L4_2[L3_2] = L5_2
    L4_2 = UIGlobals
    L4_2 = L4_2.LoadProfile
    L4_2[L3_2] = false
  end
end
StartScreen_ClearProfiles = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Amax
  L1_2 = L1_2.ChangeUiCamera
  L2_2 = GUI
  L2_2 = L2_2.UiCameraName
  L2_2 = L2_2[A0_2]
  L3_2 = GUI
  L3_2 = L3_2.UiCameraTime
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = GUI
  L1_2 = L1_2.UiCameraTime
  if L1_2 ~= 0.5 then
    L1_2 = GUI
    L1_2.UiCameraTime = 0.5
  end
end
StartScreen_ChangeUiCamera = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Amax
  L0_2 = L0_2.ShouldDisplayPumpkin
  L0_2 = L0_2()
  L1_2 = SCUI
  L1_2 = L1_2.name_to_id
  L1_2 = L1_2.SP_Icon
  if L0_2 == true then
    L2_2 = UIShape
    L2_2 = L2_2.ChangeSceneName
    L3_2 = L1_2
    L4_2 = "fe_icons"
    L2_2(L3_2, L4_2)
    L2_2 = UIShape
    L2_2 = L2_2.ChangeObjectName
    L3_2 = L1_2
    L4_2 = "bizarre"
    L2_2(L3_2, L4_2)
  else
    L2_2 = UIShape
    L2_2 = L2_2.ChangeSceneName
    L3_2 = L1_2
    L4_2 = "common_icons"
    L2_2(L3_2, L4_2)
    L2_2 = UIShape
    L2_2 = L2_2.ChangeObjectName
    L3_2 = L1_2
    L4_2 = "bio"
    L2_2(L3_2, L4_2)
  end
end
CheckPumpkin = L0_1
function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = GUI
  L0_2 = L0_2.current_stage
  L1_2 = GUI
  L1_2 = L1_2.STAGE_PRESS_START
  if L0_2 == L1_2 then
    L0_2 = UIButtons
    L0_2 = L0_2.Selected
    L1_2 = SCUI
    L1_2 = L1_2.name_to_id
    L1_2 = L1_2.OnShape
    L2_2 = true
    L0_2(L1_2, L2_2)
  end
end
StartScreen_StartLogo = L0_1
