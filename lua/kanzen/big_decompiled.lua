local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = {}
PopupGUI = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "PopupInit - Blank"
  L0_2(L1_2)
end
PopupInit = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "PopupPostInit - Blank"
  L0_2(L1_2)
end
PopupPostInit = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "PopupStartLoop - Blank"
  L0_2(L1_2)
end
PopupStartLoop = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "PopupMessageUpdate - Blank"
  L0_2(L1_2)
end
PopupMessageUpdate = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "PopupFrameUpdate - Blank"
  L0_2(L1_2)
end
PopupFrameUpdate = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "PopupRender - Blank"
  L0_2(L1_2)
end
PopupRender = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "PopupEnterEnd - Blank"
  L0_2(L1_2)
end
PopupEnterEnd = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "PopupEndLoop - Blank"
  L0_2(L1_2)
end
PopupEndLoop = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "PopupEnd - Blank"
  L0_2(L1_2)
end
PopupEnd = L0_1
L0_1 = {}
L0_1.CurrentData = nil
L0_1.CurrentType = -1
L0_1.Callback = nil
L1_1 = {}
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.Default
L3_1 = {}
L3_1.darken = nil
L3_1.colour_style = nil
L3_1.icon_name = nil
L3_1.pos = nil
L3_1.size = nil
L3_1.no_back = nil
L3_1.no_next = nil
L3_1.show_progress = nil
L3_1.title_text_ID = nil
L3_1.message_text_ID = nil
L3_1.message_text_y = nil
L3_1.next_text_ID = nil
L3_1.back_text_ID = nil
L3_1.x_text_ID = nil
L3_1.y_text_ID = nil
L3_1.timeout = nil
L3_1.next_screen = nil
L3_1.prev_screen = nil
L3_1.go_subscreen = nil
L3_1.go_launch_screen = nil
L3_1.init_CB = nil
L3_1.update_CB = nil
L3_1.message_CB = nil
L3_1.next_CB = nil
L3_1.back_CB = nil
L3_1.timeout_CB = nil
L3_1.end_CB = nil
L3_1.do_end = nil
L3_1.busy = nil
L3_1.no_effects = nil
L3_1.options = nil
L3_1.default_option = nil
L3_1.save_icon = nil
L3_1.silent = nil
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.ExitApplication
L3_1 = {}
L3_1.darken = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_WARNING
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_QUIT_MSG
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_SELECT
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_BACK
L3_1.back_text_ID = L4_1
L4_1 = {}
L5_1 = {}
L6_1 = UIEnums
L6_1 = L6_1.PopupOptions
L6_1 = L6_1.Yes
L5_1.value = L6_1
L6_1 = UIText
L6_1 = L6_1.POP_OPTION_YES
L5_1.name = L6_1
L6_1 = {}
L7_1 = UIEnums
L7_1 = L7_1.PopupOptions
L7_1 = L7_1.No
L6_1.value = L7_1
L7_1 = UIText
L7_1 = L7_1.POP_OPTION_NO
L6_1.name = L7_1
L4_1[1] = L5_1
L4_1[2] = L6_1
L3_1.options = L4_1
L4_1 = UIEnums
L4_1 = L4_1.PopupOptions
L4_1 = L4_1.Yes
L3_1.default_option = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = UIButtons
  L0_2 = L0_2.GetSelection
  L1_2 = SCUI_Popup
  L1_2 = L1_2.name_to_id
  L1_2 = L1_2.options
  L0_2 = L0_2(L1_2)
  L1_2 = UIEnums
  L1_2 = L1_2.PopupOptions
  L1_2 = L1_2.Yes
  if L0_2 == L1_2 then
    L1_2 = UIScreen
    L1_2 = L1_2.SetScreenTimers
    L2_2 = 0
    L3_2 = 0.6
    L4_2 = 0
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = UIButtons
    L1_2 = L1_2.SetSelection
    L2_2 = ContextTable
    L3_2 = UIEnums
    L3_2 = L3_2.Context
    L3_2 = L3_2.Main
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.GUI
    L2_2 = L2_2.carousel_id
    L3_2 = UIEnums
    L3_2 = L3_2.RwBranch
    L3_2 = L3_2.Quit
    L1_2(L2_2, L3_2)
    L1_2 = UIButtons
    L1_2 = L1_2.TimeLineActive
    L2_2 = "start"
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = PopupCancel
    L2_2 = "Intro\\StartScreen.lua"
    L1_2(L2_2)
    L1_2 = UIGlobals
    L1_2 = L1_2.ReturnMode
    L2_2 = UIEnums
    L2_2 = L2_2.ReturnMode
    L2_2 = L2_2.None
    if L1_2 == L2_2 then
      L1_2 = UIGlobals
      L2_2 = UIEnums
      L2_2 = L2_2.ReturnMode
      L2_2 = L2_2.QuitSpGame
      L1_2.ReturnMode = L2_2
    end
  end
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.ExitMultiplayer
L3_1 = {}
L3_1.darken = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_WARNING
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_QUIT_MSG
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_SELECT
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_BACK
L3_1.back_text_ID = L4_1
L4_1 = UIEnums
L4_1 = L4_1.PopupOptions
L4_1 = L4_1.Yes
L3_1.default_option = L4_1
L4_1 = {}
L5_1 = {}
L6_1 = UIEnums
L6_1 = L6_1.PopupOptions
L6_1 = L6_1.Yes
L5_1.value = L6_1
L6_1 = UIText
L6_1 = L6_1.POP_OPTION_YES
L5_1.name = L6_1
L6_1 = {}
L7_1 = UIEnums
L7_1 = L7_1.PopupOptions
L7_1 = L7_1.No
L6_1.value = L7_1
L7_1 = UIText
L7_1 = L7_1.POP_OPTION_NO
L6_1.name = L7_1
L4_1[1] = L5_1
L4_1[2] = L6_1
L3_1.options = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = UIButtons
  L0_2 = L0_2.GetSelection
  L1_2 = SCUI_Popup
  L1_2 = L1_2.name_to_id
  L1_2 = L1_2.options
  L0_2 = L0_2(L1_2)
  L1_2 = UIEnums
  L1_2 = L1_2.PopupOptions
  L1_2 = L1_2.Yes
  if L0_2 == L1_2 then
    L1_2 = UIScreen
    L1_2 = L1_2.SetScreenTimers
    L2_2 = 0
    L3_2 = 0.6
    L4_2 = 0
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = net_MpLeave
    L1_2()
    L1_2 = net_FlushEverything
    L1_2()
    L1_2 = PopupCancel
    L2_2 = "Intro\\StartScreen.lua"
    L1_2(L2_2)
    L1_2 = UIButtons
    L1_2 = L1_2.SetSelection
    L2_2 = ContextTable
    L3_2 = UIEnums
    L3_2 = L3_2.Context
    L3_2 = L3_2.Main
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.GUI
    L2_2 = L2_2.carousel_id
    L3_2 = UIEnums
    L3_2 = L3_2.RwMpBranch
    L3_2 = L3_2.Quit
    L1_2(L2_2, L3_2)
    L1_2 = UIGlobals
    L1_2 = L1_2.ReturnMode
    L2_2 = UIEnums
    L2_2 = L2_2.ReturnMode
    L2_2 = L2_2.None
    if L1_2 == L2_2 then
      L1_2 = UIGlobals
      L2_2 = UIEnums
      L2_2 = L2_2.ReturnMode
      L2_2 = L2_2.QuitMpGame
      L1_2.ReturnMode = L2_2
    end
  end
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.NoLanGames
L3_1 = {}
L3_1.darken = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L3_1.no_back = true
L4_1 = UIText
L4_1 = L4_1.MP_SEARCH_FINISHED
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.MP_NO_LAN_GAMES_FOUND
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = NetRace
  L0_2 = L0_2.EnumerateLanGames
  L1_2 = false
  L0_2(L1_2)
end
L3_1.init_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.ExitRaceLobby
L3_1 = {}
L3_1.darken = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_WARNING
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_LEAVE_LOBBY
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_SELECT
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_BACK
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = NetParty
  L0_2 = L0_2.IsRunning
  L0_2 = L0_2()
  if L0_2 == true then
    L0_2 = NetParty
    L0_2 = L0_2.IsHost
    L0_2 = L0_2()
    if L0_2 == true then
      L0_2 = CustomPopup
      L0_2 = L0_2.CurrentData
      L1_2 = {}
      L2_2 = {}
      L3_2 = UIEnums
      L3_2 = L3_2.PopupOptions
      L3_2 = L3_2.Yes
      L2_2.value = L3_2
      L3_2 = UIText
      L3_2 = L3_2.POP_OPTION_YES
      L2_2.name = L3_2
      L3_2 = {}
      L4_2 = UIEnums
      L4_2 = L4_2.PopupOptions
      L4_2 = L4_2.QuitWithParty
      L3_2.value = L4_2
      L4_2 = UIText
      L4_2 = L4_2.POP_OPTION_QUIT_WITH_PARTY
      L3_2.name = L4_2
      L4_2 = {}
      L5_2 = UIEnums
      L5_2 = L5_2.PopupOptions
      L5_2 = L5_2.No
      L4_2.value = L5_2
      L5_2 = UIText
      L5_2 = L5_2.POP_OPTION_NO
      L4_2.name = L5_2
      L1_2[1] = L2_2
      L1_2[2] = L3_2
      L1_2[3] = L4_2
      L0_2.options = L1_2
  end
  else
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L1_2 = {}
    L2_2 = {}
    L3_2 = UIEnums
    L3_2 = L3_2.PopupOptions
    L3_2 = L3_2.Yes
    L2_2.value = L3_2
    L3_2 = UIText
    L3_2 = L3_2.POP_OPTION_YES
    L2_2.name = L3_2
    L3_2 = {}
    L4_2 = UIEnums
    L4_2 = L4_2.PopupOptions
    L4_2 = L4_2.No
    L3_2.value = L4_2
    L4_2 = UIText
    L4_2 = L4_2.POP_OPTION_NO
    L3_2.name = L4_2
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L0_2.options = L1_2
  end
end
L3_1.init_CB = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIButtons
  L0_2 = L0_2.GetSelection
  L1_2 = SCUI_Popup
  L1_2 = L1_2.name_to_id
  L1_2 = L1_2.options
  L0_2 = L0_2(L1_2)
  L1_2 = UIEnums
  L1_2 = L1_2.PopupOptions
  L1_2 = L1_2.QuitWithParty
  if L0_2 == L1_2 then
    L1_2 = UIGlobals
    L1_2 = L1_2.Multiplayer
    L1_2.DisconnectRaceAsPartyHost = true
    L1_2 = net_DisconnectFromRace
    L1_2()
  else
    L1_2 = UIEnums
    L1_2 = L1_2.PopupOptions
    L1_2 = L1_2.Yes
    if L0_2 == L1_2 then
      L1_2 = UIGlobals
      L1_2 = L1_2.Multiplayer
      L1_2.DisconnectRaceAsPartyHost = false
      L1_2 = net_DisconnectFromRace
      L1_2()
    end
  end
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.ExitRace
L3_1 = {}
L3_1.darken = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_WARNING
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_LEAVE_RACE
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_SELECT
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_BACK
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Amax
  L0_2 = L0_2.IsGameModeNetworked
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L0_2.colour_style = "Main_Black"
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L0_2.intensity = 0.6
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L0_2.icon_name = "groups"
  else
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L0_2.colour_style = "Main_2"
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L0_2.icon_name = "bio"
  end
  L0_2 = NetParty
  L0_2 = L0_2.IsRunning
  L0_2 = L0_2()
  if L0_2 == true then
    L0_2 = NetParty
    L0_2 = L0_2.IsHost
    L0_2 = L0_2()
    if L0_2 == true then
      L0_2 = CustomPopup
      L0_2 = L0_2.CurrentData
      L1_2 = {}
      L2_2 = {}
      L3_2 = UIEnums
      L3_2 = L3_2.PopupOptions
      L3_2 = L3_2.Yes
      L2_2.value = L3_2
      L3_2 = UIText
      L3_2 = L3_2.POP_OPTION_YES
      L2_2.name = L3_2
      L3_2 = {}
      L4_2 = UIEnums
      L4_2 = L4_2.PopupOptions
      L4_2 = L4_2.QuitWithParty
      L3_2.value = L4_2
      L4_2 = UIText
      L4_2 = L4_2.POP_OPTION_QUIT_WITH_PARTY
      L3_2.name = L4_2
      L4_2 = {}
      L5_2 = UIEnums
      L5_2 = L5_2.PopupOptions
      L5_2 = L5_2.No
      L4_2.value = L5_2
      L5_2 = UIText
      L5_2 = L5_2.POP_OPTION_NO
      L4_2.name = L5_2
      L1_2[1] = L2_2
      L1_2[2] = L3_2
      L1_2[3] = L4_2
      L0_2.options = L1_2
  end
  else
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L1_2 = {}
    L2_2 = {}
    L3_2 = UIEnums
    L3_2 = L3_2.PopupOptions
    L3_2 = L3_2.Yes
    L2_2.value = L3_2
    L3_2 = UIText
    L3_2 = L3_2.POP_OPTION_YES
    L2_2.name = L3_2
    L3_2 = {}
    L4_2 = UIEnums
    L4_2 = L4_2.PopupOptions
    L4_2 = L4_2.No
    L3_2.value = L4_2
    L4_2 = UIText
    L4_2 = L4_2.POP_OPTION_NO
    L3_2.name = L4_2
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L0_2.options = L1_2
  end
end
L3_1.init_CB = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = UIButtons
  L0_2 = L0_2.GetSelection
  L1_2 = SCUI_Popup
  L1_2 = L1_2.name_to_id
  L1_2 = L1_2.options
  L0_2 = L0_2(L1_2)
  L1_2 = UIEnums
  L1_2 = L1_2.PopupOptions
  L1_2 = L1_2.No
  if L0_2 == L1_2 then
    return
  end
  L1_2 = UIEnums
  L1_2 = L1_2.PopupOptions
  L1_2 = L1_2.QuitWithParty
  if L0_2 == L1_2 then
    L1_2 = UIGlobals
    L1_2 = L1_2.Multiplayer
    L1_2.DisconnectRaceAsPartyHost = true
  else
    L1_2 = UIEnums
    L1_2 = L1_2.PopupOptions
    L1_2 = L1_2.Yes
    if L0_2 == L1_2 then
      L1_2 = UIGlobals
      L1_2 = L1_2.Multiplayer
      L1_2.DisconnectRaceAsPartyHost = false
    end
  end
  L1_2 = Amax
  L1_2 = L1_2.IsGameModeNetworked
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = Multiplayer
    L1_2 = L1_2.PostFlaggedDataEvents
    L1_2()
    L1_2 = StoreScreen
    L2_2 = UIEnums
    L2_2 = L2_2.ScreenStorage
    L2_2 = L2_2.FE_RETURN
    L3_2 = "Multiplayer\\MpMain.lua"
    L1_2(L2_2, L3_2)
    L1_2 = net_DisconnectFromRace
    L1_2()
  else
    L1_2 = IsSplitScreen
    L1_2 = L1_2()
    if L1_2 == true then
      L1_2 = Profile
      L1_2 = L1_2.SetPrimaryPad
      L2_2 = UIGlobals
      L2_2 = L2_2.Splitscreen
      L2_2 = L2_2.primary_pad
      L1_2(L2_2)
      L1_2 = Profile
      L1_2 = L1_2.LockToPad
      L2_2 = UIGlobals
      L2_2 = L2_2.Splitscreen
      L2_2 = L2_2.primary_pad
      L1_2(L2_2)
      L1_2 = UIGlobals
      L1_2 = L1_2.Splitscreen
      L1_2.can_vote = false
    else
      L1_2 = StartAsyncSave
      L1_2()
    end
    L1_2 = Amax
    L1_2 = L1_2.SP_IsStreetRaceFD
    L1_2 = L1_2()
    L1_2 = L1_2 == true
    if L1_2 == true then
      L2_2 = FriendDemand
      L2_2 = L2_2.QuitAttempt
      L2_2()
    end
    L2_2 = Amax
    L2_2 = L2_2.SendMessage
    L3_2 = UIEnums
    L3_2 = L3_2.GameFlowMessage
    L3_2 = L3_2.QuitRace
    L2_2(L3_2)
    L2_2 = PopupCancel
    L3_2 = "Loading\\LoadingUi.lua"
    L2_2(L3_2)
  end
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.ReturnToLobby
L3_1 = {}
L3_1.darken = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_WARNING
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_LEAVE_TO_LOBBY
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_SELECT
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_BACK
L3_1.back_text_ID = L4_1
L4_1 = {}
L5_1 = {}
L6_1 = UIEnums
L6_1 = L6_1.PopupOptions
L6_1 = L6_1.Yes
L5_1.value = L6_1
L6_1 = UIText
L6_1 = L6_1.POP_OPTION_YES
L5_1.name = L6_1
L6_1 = {}
L7_1 = UIEnums
L7_1 = L7_1.PopupOptions
L7_1 = L7_1.No
L6_1.value = L7_1
L7_1 = UIText
L7_1 = L7_1.POP_OPTION_NO
L6_1.name = L7_1
L4_1[1] = L5_1
L4_1[2] = L6_1
L3_1.options = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIButtons
  L0_2 = L0_2.GetSelection
  L1_2 = SCUI_Popup
  L1_2 = L1_2.name_to_id
  L1_2 = L1_2.options
  L0_2 = L0_2(L1_2)
  L1_2 = UIEnums
  L1_2 = L1_2.PopupOptions
  L1_2 = L1_2.No
  if L0_2 == L1_2 then
    return
  else
    L1_2 = UIEnums
    L1_2 = L1_2.PopupOptions
    L1_2 = L1_2.Yes
    if L0_2 == L1_2 then
      L1_2 = NetRace
      L1_2 = L1_2.ForceEventTimeout
      L1_2()
    end
  end
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.ExitPartyLobby
L3_1 = {}
L3_1.darken = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_WARNING
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_EXIT_PARTY_LOBBY
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_SELECT
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_BACK
L3_1.back_text_ID = L4_1
L4_1 = {}
L5_1 = {}
L6_1 = UIEnums
L6_1 = L6_1.PopupOptions
L6_1 = L6_1.Yes
L5_1.value = L6_1
L6_1 = UIText
L6_1 = L6_1.POP_OPTION_YES
L5_1.name = L6_1
L6_1 = {}
L7_1 = UIEnums
L7_1 = L7_1.PopupOptions
L7_1 = L7_1.No
L6_1.value = L7_1
L7_1 = UIText
L7_1 = L7_1.POP_OPTION_NO
L6_1.name = L7_1
L4_1[1] = L5_1
L4_1[2] = L6_1
L3_1.options = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = UIButtons
  L0_2 = L0_2.GetSelection
  L1_2 = SCUI_Popup
  L1_2 = L1_2.name_to_id
  L1_2 = L1_2.options
  L0_2 = L0_2(L1_2)
  L1_2 = UIEnums
  L1_2 = L1_2.PopupOptions
  L1_2 = L1_2.Yes
  if L0_2 == L1_2 then
    L1_2 = PopupSpawn
    L2_2 = UIEnums
    L2_2 = L2_2.CustomPopups
    L2_2 = L2_2.MultiplayerDisconnectFromParty
    L1_2(L2_2)
  end
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerDisconnectFromRace
L3_1 = {}
L3_1.darken = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L3_1.no_back = true
L3_1.no_next = true
L3_1.show_progress = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.MP_DISCONNECTING
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = PopupGUI
  L0_2.timer = 0
  L0_2 = PopupGUI
  L0_2.state = 0
  L0_2 = NetParty
  L0_2 = L0_2.IsHost
  L0_2 = L0_2()
  if L0_2 == true then
    L0_2 = NetParty
    L0_2 = L0_2.IsActive
    L0_2 = L0_2()
    if L0_2 == true then
      L0_2 = UIGlobals
      L0_2 = L0_2.Multiplayer
      L0_2 = L0_2.DisconnectRaceAsPartyHost
      if L0_2 == true then
        L0_2 = NetParty
        L0_2 = L0_2.SendReturnToPartyLobby
        L0_2()
      end
    end
  end
  L0_2 = UIGlobals
  L0_2 = L0_2.Multiplayer
  L1_2 = UIEnums
  L1_2 = L1_2.MpLaunchScreen
  L1_2 = L1_2.None
  L0_2.LaunchScreen = L1_2
  L0_2 = NetRace
  L0_2 = L0_2.EnterDisconnecting
  L0_2()
  L0_2 = Amax
  L0_2 = L0_2.IsGameModeRanked
  L0_2 = L0_2()
  if L0_2 == true then
    L0_2 = net_SetGroupPresence
    L0_2()
  end
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PopupGUI
  L2_2 = PopupGUI
  L2_2 = L2_2.timer
  L2_2 = L2_2 + A0_2
  L1_2.timer = L2_2
  L1_2 = false
  L2_2 = PopupGUI
  L2_2 = L2_2.state
  if L2_2 == 0 then
    L2_2 = NetRace
    L2_2 = L2_2.IsPlayerMigrating
    L2_2 = L2_2()
    if L2_2 ~= false then
      L2_2 = PopupGUI
      L2_2 = L2_2.timer
    end
    if 5 <= L2_2 then
      L2_2 = UIGlobals
      L2_2 = L2_2.Multiplayer
      L2_2 = L2_2.DisconnectRaceAsPartyHost
      if L2_2 == false then
        L2_2 = PopupGUI
        L2_2 = L2_2.timer
        if 1.5 <= L2_2 then
          L2_2 = PopupGUI
          L2_2.state = 1
          L2_2 = PopupGUI
          L2_2.timer = 0
        end
      else
        L2_2 = PopupGUI
        L2_2 = L2_2.timer
        if 5 <= L2_2 then
          L2_2 = NetParty
          L2_2 = L2_2.AllPeersIdle
          L2_2 = L2_2()
          if L2_2 ~= true then
            L2_2 = PopupGUI
            L2_2 = L2_2.timer
          end
          if 10 <= L2_2 then
            L2_2 = PopupGUI
            L2_2.state = 1
            L2_2 = PopupGUI
            L2_2.timer = 0
          end
        end
      end
    end
  else
    L1_2 = true
  end
  if L1_2 == true then
    L2_2 = UIGlobals
    L2_2 = L2_2.IsIngame
    if L2_2 == true then
      L2_2 = UIGlobals
      L2_2 = L2_2.Multiplayer
      L2_2 = L2_2.DisconnectRaceAsPartyHost
      if L2_2 == true then
        L2_2 = UIGlobals
        L2_2 = L2_2.Multiplayer
        L3_2 = UIEnums
        L3_2 = L3_2.MpLaunchScreen
        L3_2 = L3_2.PartyLobby
        L2_2.LaunchScreen = L3_2
      else
        L2_2 = net_FlushSessionEnumerator
        L2_2()
        L2_2 = net_CloseAllSessions
        L2_2()
        L2_2 = Amax
        L2_2 = L2_2.GetGameMode
        L2_2 = L2_2()
        L3_2 = UIEnums
        L3_2 = L3_2.GameMode
        L3_2 = L3_2.Online
        if L2_2 == L3_2 then
          L2_2 = UIGlobals
          L2_2 = L2_2.Multiplayer
          L3_2 = UIEnums
          L3_2 = L3_2.MpLaunchScreen
          L3_2 = L3_2.MultiplayerRoot
          L2_2.LaunchScreen = L3_2
        else
          L2_2 = Amax
          L2_2 = L2_2.GetGameMode
          L2_2 = L2_2()
          L3_2 = UIEnums
          L3_2 = L3_2.GameMode
          L3_2 = L3_2.SystemLink
          if L2_2 == L3_2 then
            L2_2 = UIGlobals
            L2_2 = L2_2.Multiplayer
            L3_2 = UIEnums
            L3_2 = L3_2.MpLaunchScreen
            L3_2 = L3_2.LanBrowser
            L2_2.LaunchScreen = L3_2
          end
        end
      end
      L2_2 = Amax
      L2_2 = L2_2.SendMessage
      L3_2 = UIEnums
      L3_2 = L3_2.GameFlowMessage
      L3_2 = L3_2.QuitRace
      L2_2(L3_2)
      L2_2 = PopupCancel
      L3_2 = "Loading\\LoadingUi.lua"
      L2_2(L3_2)
      L2_2 = Amax
      L2_2 = L2_2.IsGameModeRanked
      L2_2 = L2_2()
      if L2_2 == true then
        L2_2 = print
        L3_2 = "LoadingUI Init() > Saving..."
        L2_2(L3_2)
        L2_2 = StartAsyncSave
        L2_2()
      end
    else
      L2_2 = UIGlobals
      L2_2 = L2_2.IsIngame
      if L2_2 == false then
        L2_2 = UIGlobals
        L2_2 = L2_2.Multiplayer
        L2_2 = L2_2.DisconnectRaceAsPartyHost
        if L2_2 == false then
          L2_2 = net_FlushSessionEnumerator
          L2_2()
          L2_2 = net_CloseAllSessions
          L2_2()
        end
        L2_2 = Amax
        L2_2 = L2_2.GetGameMode
        L2_2 = L2_2()
        L3_2 = UIEnums
        L3_2 = L3_2.GameMode
        L3_2 = L3_2.SystemLink
        if L2_2 == L3_2 then
          L2_2 = PopupCancel
          L3_2 = "Multiplayer\\MpLan.lua"
          L4_2 = true
          L2_2(L3_2, L4_2)
        else
          L2_2 = PopupCancel
          L3_2 = "Multiplayer\\MpOnline.lua"
          L4_2 = true
          L2_2(L3_2, L4_2)
        end
      end
    end
  end
end
L3_1.update_CB = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2 = L0_2.Multiplayer
  L0_2.Disconnecting = false
end
L3_1.end_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerDisconnectFromParty
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.no_next = true
L3_1.show_progress = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.MP_DISCONNECTING
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = PopupGUI
  L0_2.timer = 0
  L0_2 = NetParty
  L0_2 = L0_2.EnterDisconnecting
  L0_2()
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = PopupGUI
  L2_2 = PopupGUI
  L2_2 = L2_2.timer
  L2_2 = L2_2 + A0_2
  L1_2.timer = L2_2
  L1_2 = PopupGUI
  L1_2 = L1_2.timer
  if 3.5 < L1_2 then
    L1_2 = ContextTable
    L2_2 = UIEnums
    L2_2 = L2_2.Context
    L2_2 = L2_2.Main
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.GUI
    L2_2 = IsTable
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 == true then
      L2_2 = PopupCancel
      L2_2()
      L2_2 = net_ExitPartyLobby
      L2_2()
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerJoinLanGame
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.no_next = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L3_1.show_progress = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_ATTEMPTING_TO_JOIN_GAME
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = PopupGUI
  L0_2.state = 0
  L0_2 = PopupGUI
  L0_2.timer = 0
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = PopupGUI
  L1_2 = L1_2.state
  if L1_2 == 0 then
    L1_2 = PopupGUI
    L2_2 = PopupGUI
    L2_2 = L2_2.timer
    L2_2 = L2_2 + A0_2
    L1_2.timer = L2_2
    L1_2 = PopupGUI
    L1_2 = L1_2.timer
    if 1.5 <= L1_2 then
      L1_2 = PopupGUI
      L1_2.state = 1
      L1_2 = UIGlobals
      L1_2 = L1_2.Network
      L2_2 = UIEnums
      L2_2 = L2_2.Network
      L2_2 = L2_2.JoinErrors
      L2_2 = L2_2.eJoinErrorInvalid
      L1_2.JoinErrorCode = L2_2
      L1_2 = NetRace
      L1_2 = L1_2.JoinLanServer
      L2_2 = UIGlobals
      L2_2 = L2_2.Network
      L2_2 = L2_2.LanEnumeratedGameIndexToJoin
      L1_2, L2_2, L3_2 = L1_2(L2_2)
      if L1_2 == true then
        if L2_2 == true then
          L4_2 = net_MpEnterPlayMode
          L5_2 = UIEnums
          L5_2 = L5_2.PlayMode
          L5_2 = L5_2.CustomRace
          L4_2(L5_2)
        else
          L4_2 = Multiplayer
          L4_2 = L4_2.FindPlaylistFromID
          L5_2 = L3_2
          L4_2 = L4_2(L5_2)
          if L4_2 == true then
            L4_2 = net_MpEnterPlayMode
            L5_2 = UIEnums
            L5_2 = L5_2.PlayMode
            L5_2 = L5_2.Playlist
            L4_2(L5_2)
          else
            L4_2 = print
            L5_2 = "LAN : Couldnt find playlist"
            L4_2(L5_2)
            L4_2 = PopupSpawn
            L5_2 = UIEnums
            L5_2 = L5_2.CustomPopups
            L5_2 = L5_2.MultiplayerJoinLanGameFailed
            L4_2(L5_2)
          end
        end
      else
        L4_2 = PopupSpawn
        L5_2 = UIEnums
        L5_2 = L5_2.CustomPopups
        L5_2 = L5_2.MultiplayerJoinLanGameFailed
        L4_2(L5_2)
      end
    end
  else
    L1_2 = false
    L2_2 = UIEnums
    L2_2 = L2_2.Network
    L2_2 = L2_2.JoinErrors
    L2_2 = L2_2.eJoinErrorInvalid
    L3_2 = NetRace
    L3_2 = L3_2.MonitorJoinLanServer
    L3_2, L4_2 = L3_2()
    L2_2 = L4_2
    L1_2 = L3_2
    if L1_2 == true then
      L3_2 = UIGlobals
      L3_2 = L3_2.Network
      L3_2.JoinErrorCode = L2_2
      L3_2 = UIEnums
      L3_2 = L3_2.Network
      L3_2 = L3_2.JoinErrors
      L3_2 = L3_2.eJoinErrorNone
      if L2_2 == L3_2 then
        L3_2 = PopupCancel
        L4_2 = "Multiplayer\\MpLobby.lua"
        L5_2 = true
        L3_2(L4_2, L5_2)
      else
        L3_2 = PopupSpawn
        L4_2 = UIEnums
        L4_2 = L4_2.CustomPopups
        L4_2 = L4_2.MultiplayerJoinLanGameFailed
        L3_2(L4_2)
      end
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerVersionError
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ERROR
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.CMN_NOWT
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2 = L0_2.Network
  L0_2 = L0_2.JoinVersionErrorCode
  L1_2 = UIEnums
  L1_2 = L1_2.Network
  L1_2 = L1_2.Version
  L1_2 = L1_2.eNetVersionOlder
  if L0_2 == L1_2 then
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L1_2 = UIText
    L1_2 = L1_2.MP_VERSION_OLDER
    L0_2.message_text_ID = L1_2
  else
    L0_2 = UIGlobals
    L0_2 = L0_2.Network
    L0_2 = L0_2.JoinVersionErrorCode
    L1_2 = UIEnums
    L1_2 = L1_2.Network
    L1_2 = L1_2.Version
    L1_2 = L1_2.eNetVersionNewer
    if L0_2 == L1_2 then
      L0_2 = CustomPopup
      L0_2 = L0_2.CurrentData
      L1_2 = UIText
      L1_2 = L1_2.MP_VERSION_NEWER
      L0_2.message_text_ID = L1_2
    end
  end
end
L3_1.init_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerJoinLanGameFailed
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ERROR
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.MP_JOIN_ERROR_DEFAULT
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = UIText
  L0_2 = L0_2.MP_JOIN_ERROR_DEFAULT
  L1_2 = UIGlobals
  L1_2 = L1_2.Network
  L1_2 = L1_2.JoinErrorCode
  L2_2 = UIEnums
  L2_2 = L2_2.Network
  L2_2 = L2_2.JoinErrors
  L2_2 = L2_2.eJoinErrorNotEnoughOpenSlots
  if L1_2 == L2_2 then
    L1_2 = UIText
    L0_2 = L1_2.MP_JOIN_ERROR_NO_SLOTS
  else
    L1_2 = UIGlobals
    L1_2 = L1_2.Network
    L1_2 = L1_2.JoinErrorCode
    L2_2 = UIEnums
    L2_2 = L2_2.Network
    L2_2 = L2_2.JoinErrors
    L2_2 = L2_2.eJoinErrorBannedFromSession
    if L1_2 == L2_2 then
      L1_2 = UIText
      L0_2 = L1_2.MP_JOIN_ERROR_BANNED
    else
      L1_2 = UIGlobals
      L1_2 = L1_2.Network
      L1_2 = L1_2.JoinErrorCode
      L2_2 = UIEnums
      L2_2 = L2_2.Network
      L2_2 = L2_2.JoinErrors
      L2_2 = L2_2.eJoinErrorNoConnectionToHost
      if L1_2 == L2_2 then
        L1_2 = UIText
        L0_2 = L1_2.MP_JOIN_ERROR_HOST
      else
        L1_2 = UIGlobals
        L1_2 = L1_2.Network
        L1_2 = L1_2.JoinErrorCode
        L2_2 = UIEnums
        L2_2 = L2_2.Network
        L2_2 = L2_2.JoinErrors
        L2_2 = L2_2.eJoinErrorNoCommunications
        if L1_2 == L2_2 then
          L1_2 = UIText
          L0_2 = L1_2.MP_JOIN_ERROR_PEERS
        else
          L1_2 = UIGlobals
          L1_2 = L1_2.Network
          L1_2 = L1_2.JoinErrorCode
          L2_2 = UIEnums
          L2_2 = L2_2.Network
          L2_2 = L2_2.JoinErrors
          L2_2 = L2_2.eJoinErrorToManyTeams
          if L1_2 == L2_2 then
            L1_2 = UIText
            L0_2 = L1_2.MP_JOIN_ERROR_TEAM
          else
            L1_2 = UIGlobals
            L1_2 = L1_2.Network
            L1_2 = L1_2.JoinErrorCode
            L2_2 = UIEnums
            L2_2 = L2_2.Network
            L2_2 = L2_2.JoinErrors
            L2_2 = L2_2.eJoinErrorToManyTeamMembers
            if L1_2 == L2_2 then
              L1_2 = UIText
              L0_2 = L1_2.MP_JOIN_ERROR_TEAM_MEMBERS
            else
              L1_2 = UIGlobals
              L1_2 = L1_2.Network
              L1_2 = L1_2.JoinErrorCode
              L2_2 = UIEnums
              L2_2 = L2_2.Network
              L2_2 = L2_2.JoinErrors
              L2_2 = L2_2.eJoinErrorContentMismatch
              if L1_2 == L2_2 then
                L1_2 = UIText
                L0_2 = L1_2.MP_JOIN_ERROR_CONTENT
              else
                L1_2 = UIGlobals
                L1_2 = L1_2.Network
                L1_2 = L1_2.JoinErrorCode
                L2_2 = UIEnums
                L2_2 = L2_2.Network
                L2_2 = L2_2.JoinErrors
                L2_2 = L2_2.eJoinErrorChampionshipStarted
                if L1_2 == L2_2 then
                  L1_2 = UIText
                  L0_2 = L1_2.MP_JOIN_ERROR_CHAMPIONSHIP_STARTED
                else
                  L1_2 = UIGlobals
                  L1_2 = L1_2.Network
                  L1_2 = L1_2.JoinErrorCode
                  L2_2 = UIEnums
                  L2_2 = L2_2.Network
                  L2_2 = L2_2.JoinErrors
                  L2_2 = L2_2.eJoinErrorRankedMatchStarted
                  if L1_2 == L2_2 then
                    L1_2 = UIText
                    L0_2 = L1_2.MP_JOIN_ERROR_RANKED_STARTED
                  else
                    L1_2 = UIGlobals
                    L1_2 = L1_2.Network
                    L1_2 = L1_2.JoinErrorCode
                    L2_2 = UIEnums
                    L2_2 = L2_2.Network
                    L2_2 = L2_2.JoinErrors
                    L2_2 = L2_2.eJoinErrorPartyClosed
                    if L1_2 == L2_2 then
                      L1_2 = UIText
                      L0_2 = L1_2.MP_JOIN_ERROR_PARTY_CLOSED
                    else
                      L1_2 = UIGlobals
                      L1_2 = L1_2.Network
                      L1_2 = L1_2.JoinErrorCode
                      L2_2 = UIEnums
                      L2_2 = L2_2.Network
                      L2_2 = L2_2.JoinErrors
                      L2_2 = L2_2.eJoinErrorPlaylistVerClient
                      if L1_2 == L2_2 then
                        L1_2 = UIText
                        L0_2 = L1_2.MP_JOIN_ERROR_PLAYLIST_VERSION_CLIENT
                      else
                        L1_2 = UIGlobals
                        L1_2 = L1_2.Network
                        L1_2 = L1_2.JoinErrorCode
                        L2_2 = UIEnums
                        L2_2 = L2_2.Network
                        L2_2 = L2_2.JoinErrors
                        L2_2 = L2_2.eJoinErrorPlaylistVerHost
                        if L1_2 == L2_2 then
                          L1_2 = UIText
                          L0_2 = L1_2.MP_JOIN_ERROR_PLAYLIST_VERSION_HOST
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
    end
  end
  L1_2 = CustomPopup
  L1_2 = L1_2.CurrentData
  L1_2.message_text_ID = L0_2
  L1_2 = NetRace
  L1_2 = L1_2.Delete
  L1_2()
end
L3_1.init_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerTooManyProfiles
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ALERT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.MP_TOO_MANY_PLAYERS
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2 = L0_2.Network
  L0_2 = L0_2.GameInviteState
  L1_2 = UIEnums
  L1_2 = L1_2.MpGameInviteState
  L1_2 = L1_2.Processing
  if L0_2 == L1_2 then
    L0_2 = net_GameInviteFailed
    L0_2()
    L0_2 = PopupCancel
    L0_2()
    L0_2 = EnableCarousel
    L1_2 = true
    L0_2(L1_2)
  end
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerInvalidPrivileges
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ALERT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.MP_INVALID_PRIVILEGES
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2 = L0_2.Network
  L0_2 = L0_2.GameInviteState
  L1_2 = UIEnums
  L1_2 = L1_2.MpGameInviteState
  L1_2 = L1_2.Processing
  if L0_2 == L1_2 then
    L0_2 = net_GameInviteFailed
    L0_2()
    L0_2 = PopupCancel
    L0_2()
    L0_2 = EnableCarousel
    L1_2 = true
    L0_2(L1_2)
  end
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerOnlineAccountRequired
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ALERT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.MP_ONLINE_ACCOUNT_REQUIRED
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2 = L0_2.Network
  L0_2 = L0_2.GameInviteState
  L1_2 = UIEnums
  L1_2 = L1_2.MpGameInviteState
  L1_2 = L1_2.Processing
  if L0_2 == L1_2 then
    L0_2 = net_GameInviteFailed
    L0_2()
    L0_2 = PopupCancel
    L0_2()
    L0_2 = EnableCarousel
    L1_2 = true
    L0_2(L1_2)
  end
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerCreateFailed
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.MP_MULTIPLAYER
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.MP_MULTIPLAYER_CREATE_FAILED
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = net_MpLeave
  L0_2()
  L0_2 = net_FlushEverything
  L0_2()
  L0_2 = ForceCloseApp
  L0_2()
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerCreateFromPartyFailed
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.MP_MULTIPLAYER
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.MP_MULTIPLAYER_CREATE_FAILED
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = NetRace
  L0_2 = L0_2.Delete
  L0_2()
end
L3_1.init_CB = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = Mp_ReturnToPartyLobby
  L0_2()
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerCreateOnlineGame
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.no_next = true
L3_1.show_progress = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_CREATING_GAME
L3_1.message_text_ID = L4_1
L3_1.timeout = 35
function L4_1()
  local L0_2, L1_2
  L0_2 = net_FlushSessionEnumerator
  L0_2()
  L0_2 = net_CloseAllSessions
  L0_2()
  L0_2 = PopupSpawn
  L1_2 = UIEnums
  L1_2 = L1_2.CustomPopups
  L1_2 = L1_2.MultiplayerCreateFailed
  L0_2(L1_2)
end
L3_1.timeout_CB = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "ONLINE - Creating game..."
  L0_2(L1_2)
  L0_2 = NetRace
  L0_2 = L0_2.Delete
  L0_2()
  L0_2 = net_FlushSessionEnumerator
  L0_2()
  L0_2 = PopupGUI
  L1_2 = UIEnums
  L1_2 = L1_2.MpOnlineGameCreation
  L1_2 = L1_2.InitialDelay
  L0_2.state = L1_2
  L0_2 = PopupGUI
  L0_2.timer = 0
  L0_2 = NetParty
  L0_2 = L0_2.IsRunning
  L0_2 = L0_2()
  if L0_2 == true then
    L0_2 = PopupGUI
    L1_2 = UIEnums
    L1_2 = L1_2.MpOnlineGameCreation
    L1_2 = L1_2.SyncPartyStart
    L0_2.state = L1_2
  end
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PopupGUI
  L2_2 = PopupGUI
  L2_2 = L2_2.timer
  L2_2 = L2_2 + A0_2
  L1_2.timer = L2_2
  L1_2 = PopupGUI
  L1_2 = L1_2.state
  L2_2 = UIEnums
  L2_2 = L2_2.MpOnlineGameCreation
  L2_2 = L2_2.SyncPartyStart
  if L1_2 == L2_2 then
    L1_2 = PopupGUI
    L1_2.timeout_timer = 0
    L1_2 = NetParty
    L1_2 = L1_2.MatchmakingSessionIdle
    L1_2 = L1_2()
    if L1_2 == true then
      L1_2 = NetParty
      L1_2 = L1_2.AllPeersIdle
      L1_2 = L1_2()
      if L1_2 == true then
        L1_2 = PopupGUI
        L2_2 = UIEnums
        L2_2 = L2_2.MpOnlineGameCreation
        L2_2 = L2_2.InitialDelay
        L1_2.state = L2_2
    end
    else
      L1_2 = PopupGUI
      L1_2 = L1_2.timer
      if 10 < L1_2 then
        L1_2 = PopupGUI
        L1_2.timer = 0
        L1_2 = PopupGUI
        L2_2 = UIEnums
        L2_2 = L2_2.MpOnlineGameCreation
        L2_2 = L2_2.Failed
        L1_2.state = L2_2
        L1_2 = NetParty
        L1_2 = L1_2.SendReturnToPartyLobby
        L1_2()
      end
    end
  else
    L1_2 = PopupGUI
    L1_2 = L1_2.state
    L2_2 = UIEnums
    L2_2 = L2_2.MpOnlineGameCreation
    L2_2 = L2_2.InitialDelay
    if L1_2 == L2_2 then
      L1_2 = PopupGUI
      L1_2 = L1_2.timer
      if 1 < L1_2 then
        L1_2 = NetRace
        L1_2 = L1_2.CreateOnlineServer
        L1_2 = L1_2()
        if L1_2 == true then
          L1_2 = print
          L2_2 = "ONLINE - Game Created"
          L1_2(L2_2)
          L1_2 = PopupGUI
          L2_2 = UIEnums
          L2_2 = L2_2.MpOnlineGameCreation
          L2_2 = L2_2.Creating
          L1_2.state = L2_2
        else
          L1_2 = PopupSpawn
          L2_2 = UIEnums
          L2_2 = L2_2.CustomPopups
          L2_2 = L2_2.MultiplayerCreateFailed
          L1_2(L2_2)
        end
      end
    else
      L1_2 = PopupGUI
      L1_2 = L1_2.state
      L2_2 = UIEnums
      L2_2 = L2_2.MpOnlineGameCreation
      L2_2 = L2_2.Creating
      if L1_2 == L2_2 then
        L1_2 = false
        L2_2 = false
        L3_2 = NetRace
        L3_2 = L3_2.ContinueCreateOnlineServer
        L3_2, L4_2 = L3_2()
        L2_2 = L4_2
        L1_2 = L3_2
        if L1_2 == true then
          if L2_2 == true then
            L3_2 = PopupGUI
            L3_2.timer = 0
            L3_2 = NetParty
            L3_2 = L3_2.IsRunning
            L3_2 = L3_2()
            if L3_2 == true then
              L3_2 = PopupGUI
              L4_2 = UIEnums
              L4_2 = L4_2.MpOnlineGameCreation
              L4_2 = L4_2.SyncPartyEnd
              L3_2.state = L4_2
              L3_2 = NetParty
              L3_2 = L3_2.ChangeLocalPlayersState
              L4_2 = UIEnums
              L4_2 = L4_2.Network
              L4_2 = L4_2.PlayerStates
              L4_2 = L4_2.eNetPlayerStatePartyJoinRaceSuccessful
              L3_2(L4_2)
              L3_2 = NetParty
              L3_2 = L3_2.SendJoinRaceSession
              L3_2()
              L3_2 = print
              L4_2 = "ONLINE - Waiting for party peers"
              L3_2(L4_2)
            else
              L3_2 = PopupGUI
              L4_2 = UIEnums
              L4_2 = L4_2.MpOnlineGameCreation
              L4_2 = L4_2.Complete
              L3_2.state = L4_2
            end
          else
            L3_2 = NetParty
            L3_2 = L3_2.IsRunning
            L3_2 = L3_2()
            if L3_2 == true then
              L3_2 = PopupGUI
              L3_2.timer = 0
              L3_2 = NetParty
              L3_2 = L3_2.SendReturnToPartyLobby
              L3_2()
              L3_2 = PopupGUI
              L4_2 = UIEnums
              L4_2 = L4_2.MpOnlineGameCreation
              L4_2 = L4_2.Failed
              L3_2.state = L4_2
            else
              L3_2 = NetRace
              L3_2 = L3_2.Delete
              L3_2()
              L3_2 = PopupSpawn
              L4_2 = UIEnums
              L4_2 = L4_2.CustomPopups
              L4_2 = L4_2.MultiplayerCreateFailed
              L3_2(L4_2)
            end
          end
        end
      else
        L1_2 = PopupGUI
        L1_2 = L1_2.state
        L2_2 = UIEnums
        L2_2 = L2_2.MpOnlineGameCreation
        L2_2 = L2_2.SyncPartyEnd
        if L1_2 == L2_2 then
          L1_2 = PopupGUI
          L1_2.timeout_timer = 0
          L1_2 = PopupGUI
          L1_2 = L1_2.timer
          if not (30 < L1_2) then
            L1_2 = NetParty
            L1_2 = L1_2.AnyPlayersFailedToJoinRace
            L1_2 = L1_2()
            if L1_2 ~= true then
              goto lbl_181
            end
          end
          L1_2 = PopupGUI
          L1_2.timer = 0
          L1_2 = PopupGUI
          L2_2 = UIEnums
          L2_2 = L2_2.MpOnlineGameCreation
          L2_2 = L2_2.Failed
          L1_2.state = L2_2
          L1_2 = NetParty
          L1_2 = L1_2.SendReturnToPartyLobby
          L1_2()
          goto lbl_231
          ::lbl_181::
          L1_2 = NetParty
          L1_2 = L1_2.AllPlayersJoinedRace
          L1_2 = L1_2()
          if L1_2 == true then
            L1_2 = PopupGUI
            L2_2 = UIEnums
            L2_2 = L2_2.MpOnlineGameCreation
            L2_2 = L2_2.Complete
            L1_2.state = L2_2
          end
        else
          L1_2 = PopupGUI
          L1_2 = L1_2.state
          L2_2 = UIEnums
          L2_2 = L2_2.MpOnlineGameCreation
          L2_2 = L2_2.Complete
          if L1_2 == L2_2 then
            L1_2 = PopupCancel
            L2_2 = "Multiplayer\\MpLobby.lua"
            L3_2 = true
            L1_2(L2_2, L3_2)
          else
            L1_2 = PopupGUI
            L1_2 = L1_2.state
            L2_2 = UIEnums
            L2_2 = L2_2.MpOnlineGameCreation
            L2_2 = L2_2.Failed
            if L1_2 == L2_2 then
              L1_2 = NetParty
              L1_2 = L1_2.IsRunning
              L1_2 = L1_2()
              if L1_2 == true then
                L1_2 = PopupGUI
                L1_2 = L1_2.timer
                if 5 < L1_2 then
                  L1_2 = PopupSpawn
                  L2_2 = UIEnums
                  L2_2 = L2_2.CustomPopups
                  L2_2 = L2_2.MultiplayerCreateFromPartyFailed
                  L1_2(L2_2)
                end
              end
            else
              L1_2 = print
              L2_2 = "UIEnums.CustomPopups.MultiplayerCreateOnlineGame - unknown state"
              L1_2(L2_2)
              L1_2 = PopupCancel
              L1_2()
            end
          end
        end
      end
    end
  end
  ::lbl_231::
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerJoinOnlineGame
L3_1 = {}
L3_1.darken = true
L3_1.no_next = true
L3_1.no_back = true
L3_1.show_progress = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_ATTEMPTING_TO_JOIN_GAME
L3_1.message_text_ID = L4_1
L3_1.timeout = 35
function L4_1()
  local L0_2, L1_2
  L0_2 = NetRace
  L0_2 = L0_2.Delete
  L0_2()
  L0_2 = net_FlushSessionEnumerator
  L0_2()
  L0_2 = PopupSpawn
  L1_2 = UIEnums
  L1_2 = L1_2.CustomPopups
  L1_2 = L1_2.MultiplayerCreateOnlineGame
  L0_2(L1_2)
end
L3_1.timeout_CB = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = UIGlobals
  L0_2 = L0_2.Network
  L1_2 = UIEnums
  L1_2 = L1_2.Network
  L1_2 = L1_2.JoinErrors
  L1_2 = L1_2.eJoinErrorInvalid
  L0_2.JoinErrorCode = L1_2
  L0_2 = PopupGUI
  L1_2 = UIEnums
  L1_2 = L1_2.MpOnlineGameJoining
  L1_2 = L1_2.BandwidthScan
  L0_2.state = L1_2
  L0_2 = PopupGUI
  L0_2.timer = 0
  L0_2 = print
  L1_2 = "ONLINE - Joining game "
  L2_2 = UIGlobals
  L2_2 = L2_2.Network
  L2_2 = L2_2.MatchingEnumeratedGameIndexToJoin
  L0_2(L1_2, L2_2)
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = PopupGUI
  L2_2 = PopupGUI
  L2_2 = L2_2.timer
  L2_2 = L2_2 + A0_2
  L1_2.timer = L2_2
  L1_2 = PopupGUI
  L1_2 = L1_2.state
  L2_2 = UIEnums
  L2_2 = L2_2.MpOnlineGameJoining
  L2_2 = L2_2.BandwidthScan
  if L1_2 == L2_2 then
    L1_2 = NetServices
    L1_2 = L1_2.BandwidthEvaluationRunning
    L1_2 = L1_2()
    if L1_2 == false then
      L1_2 = PopupGUI
      L1_2.timeout_timer = 0
      L1_2 = PopupGUI
      L2_2 = UIEnums
      L2_2 = L2_2.MpOnlineGameJoining
      L2_2 = L2_2.JoinStart
      L1_2.state = L2_2
      L1_2 = NetParty
      L1_2 = L1_2.IsRunning
      L1_2 = L1_2()
      if L1_2 == true then
        L1_2 = PopupGUI
        L2_2 = UIEnums
        L2_2 = L2_2.MpOnlineGameJoining
        L2_2 = L2_2.SyncPartyStart
        L1_2.state = L2_2
      end
    end
  else
    L1_2 = PopupGUI
    L1_2 = L1_2.state
    L2_2 = UIEnums
    L2_2 = L2_2.MpOnlineGameJoining
    L2_2 = L2_2.SyncPartyStart
    if L1_2 == L2_2 then
      L1_2 = PopupGUI
      L1_2.timeout_timer = 0
      L1_2 = NetParty
      L1_2 = L1_2.MatchmakingSessionIdle
      L1_2 = L1_2()
      if L1_2 == true then
        L1_2 = NetParty
        L1_2 = L1_2.AllPeersIdle
        L1_2 = L1_2()
        if L1_2 == true then
          L1_2 = NetParty
          L1_2 = L1_2.ChangeLocalPlayersState
          L2_2 = UIEnums
          L2_2 = L2_2.Network
          L2_2 = L2_2.PlayerStates
          L2_2 = L2_2.eNetPlayerStatePartyJoinRace
          L1_2(L2_2)
          L1_2 = PopupGUI
          L2_2 = UIEnums
          L2_2 = L2_2.MpOnlineGameJoining
          L2_2 = L2_2.JoinStart
          L1_2.state = L2_2
          L1_2 = print
          L2_2 = "ONLINE - Waiting for party peers"
          L1_2(L2_2)
      end
      else
        L1_2 = PopupGUI
        L1_2 = L1_2.timer
        if 10 < L1_2 then
          L1_2 = PopupGUI
          L1_2.timer = 0
          L1_2 = PopupGUI
          L2_2 = UIEnums
          L2_2 = L2_2.MpOnlineGameJoining
          L2_2 = L2_2.Failed
          L1_2.state = L2_2
          L1_2 = NetParty
          L1_2 = L1_2.SendReturnToPartyLobby
          L1_2()
          L1_2 = PopupSpawn
          L2_2 = UIEnums
          L2_2 = L2_2.CustomPopups
          L2_2 = L2_2.MultiplayerCreateOnlineGame
          L1_2(L2_2)
        end
      end
    else
      L1_2 = PopupGUI
      L1_2 = L1_2.state
      L2_2 = UIEnums
      L2_2 = L2_2.MpOnlineGameJoining
      L2_2 = L2_2.JoinStart
      if L1_2 == L2_2 then
        L1_2 = PopupGUI
        L1_2 = L1_2.timer
        if 1.5 <= L1_2 then
          L1_2 = PopupGUI
          L2_2 = UIEnums
          L2_2 = L2_2.MpOnlineGameJoining
          L2_2 = L2_2.JoinContinue
          L1_2.state = L2_2
          L1_2 = NetRace
          L1_2 = L1_2.JoinOnlineServer
          L2_2 = UIGlobals
          L2_2 = L2_2.Network
          L2_2 = L2_2.MatchingEnumeratedGameIndexToJoin
          L1_2 = L1_2(L2_2)
          if L1_2 == false then
            L1_2 = PopupGUI
            L2_2 = UIEnums
            L2_2 = L2_2.MpOnlineGameJoining
            L2_2 = L2_2.JoinStart
            L1_2.state = L2_2
            L1_2 = UIGlobals
            L1_2 = L1_2.Network
            L2_2 = UIGlobals
            L2_2 = L2_2.Network
            L2_2 = L2_2.MatchingEnumeratedGameIndexToJoin
            L2_2 = L2_2 + 1
            L1_2.MatchingEnumeratedGameIndexToJoin = L2_2
            L1_2 = UIGlobals
            L1_2 = L1_2.Network
            L1_2 = L1_2.MatchingEnumeratedGameIndexToJoin
            L2_2 = UIGlobals
            L2_2 = L2_2.Network
            L2_2 = L2_2.MatchingNumSesionsEnumerated
            if L1_2 >= L2_2 then
              L1_2 = UIGlobals
              L1_2 = L1_2.Network
              L1_2.MatchingEnumeratedGameIndexToJoin = 0
              L1_2 = PopupGUI
              L2_2 = UIEnums
              L2_2 = L2_2.MpOnlineGameJoining
              L2_2 = L2_2.Failed
              L1_2.state = L2_2
              L1_2 = PopupSpawn
              L2_2 = UIEnums
              L2_2 = L2_2.CustomPopups
              L2_2 = L2_2.MultiplayerCreateOnlineGame
              L1_2(L2_2)
            else
              L1_2 = print
              L2_2 = "ONLINE - Joining game "
              L3_2 = UIGlobals
              L3_2 = L3_2.Network
              L3_2 = L3_2.MatchingEnumeratedGameIndexToJoin
              L1_2(L2_2, L3_2)
            end
          end
        end
      else
        L1_2 = PopupGUI
        L1_2 = L1_2.state
        L2_2 = UIEnums
        L2_2 = L2_2.MpOnlineGameJoining
        L2_2 = L2_2.JoinContinue
        if L1_2 == L2_2 then
          L1_2 = NetRace
          L1_2 = L1_2.MonitorJoinOnlineServer
          L2_2 = UIGlobals
          L2_2 = L2_2.Network
          L2_2 = L2_2.MatchingEnumeratedGameIndexToJoin
          L1_2, L2_2 = L1_2(L2_2)
          if L1_2 == true then
            L3_2 = UIGlobals
            L3_2 = L3_2.Network
            L3_2.JoinErrorCode = L2_2
            L3_2 = UIEnums
            L3_2 = L3_2.Network
            L3_2 = L3_2.JoinErrors
            L3_2 = L3_2.eJoinErrorNone
            if L2_2 == L3_2 then
              L3_2 = PopupGUI
              L3_2.timer = 0
              L3_2 = NetParty
              L3_2 = L3_2.IsRunning
              L3_2 = L3_2()
              if L3_2 == true then
                L3_2 = NetParty
                L3_2 = L3_2.ChangeLocalPlayersState
                L4_2 = UIEnums
                L4_2 = L4_2.Network
                L4_2 = L4_2.PlayerStates
                L4_2 = L4_2.eNetPlayerStatePartyJoinRaceSuccessful
                L3_2(L4_2)
                L3_2 = NetParty
                L3_2 = L3_2.SendJoinRaceSession
                L3_2()
                L3_2 = PopupGUI
                L4_2 = UIEnums
                L4_2 = L4_2.MpOnlineGameJoining
                L4_2 = L4_2.SyncPartyEnd
                L3_2.state = L4_2
              else
                L3_2 = PopupGUI
                L4_2 = UIEnums
                L4_2 = L4_2.MpOnlineGameJoining
                L4_2 = L4_2.Complete
                L3_2.state = L4_2
              end
              L3_2 = print
              L4_2 = "ONLINE - Join successfull "
              L3_2(L4_2)
            else
              L3_2 = PopupGUI
              L3_2.timeout_timer = 0
              L3_2 = UIGlobals
              L3_2 = L3_2.Network
              L4_2 = UIGlobals
              L4_2 = L4_2.Network
              L4_2 = L4_2.MatchingEnumeratedGameIndexToJoin
              L4_2 = L4_2 + 1
              L3_2.MatchingEnumeratedGameIndexToJoin = L4_2
              L3_2 = UIGlobals
              L3_2 = L3_2.Network
              L3_2 = L3_2.MatchingEnumeratedGameIndexToJoin
              L4_2 = UIGlobals
              L4_2 = L4_2.Network
              L4_2 = L4_2.MatchingNumSesionsEnumerated
              if L3_2 >= L4_2 then
                L3_2 = UIGlobals
                L3_2 = L3_2.Network
                L3_2.MatchingEnumeratedGameIndexToJoin = 0
                L3_2 = PopupGUI
                L4_2 = UIEnums
                L4_2 = L4_2.MpOnlineGameJoining
                L4_2 = L4_2.Failed
                L3_2.state = L4_2
                L3_2 = PopupSpawn
                L4_2 = UIEnums
                L4_2 = L4_2.CustomPopups
                L4_2 = L4_2.MultiplayerCreateOnlineGame
                L3_2(L4_2)
              else
                L3_2 = print
                L4_2 = "ONLINE - Joining game "
                L5_2 = UIGlobals
                L5_2 = L5_2.Network
                L5_2 = L5_2.MatchingEnumeratedGameIndexToJoin
                L3_2(L4_2, L5_2)
                L3_2 = PopupGUI
                L3_2.timer = 0
                L3_2 = PopupGUI
                L4_2 = UIEnums
                L4_2 = L4_2.MpOnlineGameJoining
                L4_2 = L4_2.JoinStart
                L3_2.state = L4_2
              end
            end
          end
        else
          L1_2 = PopupGUI
          L1_2 = L1_2.state
          L2_2 = UIEnums
          L2_2 = L2_2.MpOnlineGameJoining
          L2_2 = L2_2.SyncPartyJoinNext
          if L1_2 == L2_2 then
            L1_2 = PopupGUI
            L1_2.timeout_timer = 0
            L1_2 = PopupGUI
            L1_2 = L1_2.timer
            if 3 < L1_2 then
              L1_2 = NetRace
              L1_2 = L1_2.Delete
              L1_2()
              L1_2 = PopupGUI
              L2_2 = UIEnums
              L2_2 = L2_2.MpOnlineGameJoining
              L2_2 = L2_2.SyncPartyStart
              L1_2.state = L2_2
              L1_2 = PopupGUI
              L1_2.timer = 0
            end
          else
            L1_2 = PopupGUI
            L1_2 = L1_2.state
            L2_2 = UIEnums
            L2_2 = L2_2.MpOnlineGameJoining
            L2_2 = L2_2.SyncPartyEnd
            if L1_2 == L2_2 then
              L1_2 = PopupGUI
              L1_2.timeout_timer = 0
              L1_2 = PopupGUI
              L1_2 = L1_2.timer
              if not (30 < L1_2) then
                L1_2 = NetParty
                L1_2 = L1_2.AnyPlayersFailedToJoinRace
                L1_2 = L1_2()
                if L1_2 ~= true then
                  goto lbl_341
                end
              end
              L1_2 = PopupGUI
              L1_2.timer = 0
              L1_2 = NetParty
              L1_2 = L1_2.SendReturnToPartyLobby
              L1_2()
              L1_2 = NetParty
              L1_2 = L1_2.ChangeLocalPlayersState
              L2_2 = UIEnums
              L2_2 = L2_2.Network
              L2_2 = L2_2.PlayerStates
              L2_2 = L2_2.eNetPlayerStatePartyBusy
              L1_2(L2_2)
              L1_2 = UIGlobals
              L1_2 = L1_2.Network
              L2_2 = UIGlobals
              L2_2 = L2_2.Network
              L2_2 = L2_2.MatchingEnumeratedGameIndexToJoin
              L2_2 = L2_2 + 1
              L1_2.MatchingEnumeratedGameIndexToJoin = L2_2
              L1_2 = UIGlobals
              L1_2 = L1_2.Network
              L1_2 = L1_2.MatchingEnumeratedGameIndexToJoin
              L2_2 = UIGlobals
              L2_2 = L2_2.Network
              L2_2 = L2_2.MatchingNumSesionsEnumerated
              if L1_2 >= L2_2 then
                L1_2 = UIGlobals
                L1_2 = L1_2.Network
                L1_2.MatchingEnumeratedGameIndexToJoin = 0
                L1_2 = PopupGUI
                L2_2 = UIEnums
                L2_2 = L2_2.MpOnlineGameJoining
                L2_2 = L2_2.SyncPartyCreate
                L1_2.state = L2_2
              else
                L1_2 = PopupGUI
                L2_2 = UIEnums
                L2_2 = L2_2.MpOnlineGameJoining
                L2_2 = L2_2.SyncPartyJoinNext
                L1_2.state = L2_2
                goto lbl_385
                ::lbl_341::
                L1_2 = NetParty
                L1_2 = L1_2.AllPlayersJoinedRace
                L1_2 = L1_2()
                if L1_2 == true then
                  L1_2 = PopupGUI
                  L2_2 = UIEnums
                  L2_2 = L2_2.MpOnlineGameJoining
                  L2_2 = L2_2.Complete
                  L1_2.state = L2_2
                end
              end
            else
              L1_2 = PopupGUI
              L1_2 = L1_2.state
              L2_2 = UIEnums
              L2_2 = L2_2.MpOnlineGameJoining
              L2_2 = L2_2.SyncPartyCreate
              if L1_2 == L2_2 then
                L1_2 = PopupGUI
                L1_2.timeout_timer = 0
                L1_2 = PopupGUI
                L1_2 = L1_2.timer
                if 3 < L1_2 then
                  L1_2 = NetRace
                  L1_2 = L1_2.Delete
                  L1_2()
                  L1_2 = PopupSpawn
                  L2_2 = UIEnums
                  L2_2 = L2_2.CustomPopups
                  L2_2 = L2_2.MultiplayerCreateOnlineGame
                  L1_2(L2_2)
                end
              else
                L1_2 = PopupGUI
                L1_2 = L1_2.state
                L2_2 = UIEnums
                L2_2 = L2_2.MpOnlineGameJoining
                L2_2 = L2_2.Complete
                if L1_2 == L2_2 then
                  L1_2 = PopupCancel
                  L2_2 = "Multiplayer\\MpLobby.lua"
                  L3_2 = true
                  L1_2(L2_2, L3_2)
                end
              end
            end
          end
        end
      end
    end
  end
  ::lbl_385::
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerSearchOnlineGame
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.no_next = true
L3_1.show_progress = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_SEARCHING_FOR_GAMES
L3_1.message_text_ID = L4_1
L3_1.timeout = 25
function L4_1()
  local L0_2, L1_2
  L0_2 = PopupGUI
  L0_2 = L0_2.state
  L1_2 = UIEnums
  L1_2 = L1_2.MpOnlineGameEnumeration
  L1_2 = L1_2.Enumerating
  if L0_2 == L1_2 then
    L0_2 = net_StopSessionEnumerator
    L0_2()
  else
    L0_2 = NetRace
    L0_2 = L0_2.Delete
    L0_2()
    L0_2 = net_FlushSessionEnumerator
    L0_2()
    L0_2 = PopupSpawn
    L1_2 = UIEnums
    L1_2 = L1_2.CustomPopups
    L1_2 = L1_2.MultiplayerCreateOnlineGame
    L0_2(L1_2)
  end
end
L3_1.timeout_CB = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = PopupGUI
  L0_2.timer = 0
  L0_2 = PopupGUI
  L1_2 = UIEnums
  L1_2 = L1_2.MpOnlineGameEnumeration
  L1_2 = L1_2.BandwidthScan
  L0_2.state = L1_2
  L0_2 = print
  L1_2 = "ONLINE - BandwidthScan"
  L0_2(L1_2)
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = PopupGUI
  L2_2 = PopupGUI
  L2_2 = L2_2.timer
  L2_2 = L2_2 + A0_2
  L1_2.timer = L2_2
  L1_2 = PopupGUI
  L1_2 = L1_2.state
  L2_2 = UIEnums
  L2_2 = L2_2.MpOnlineGameEnumeration
  L2_2 = L2_2.BandwidthScan
  if L1_2 == L2_2 then
    L1_2 = NetServices
    L1_2 = L1_2.BandwidthEvaluationRunning
    L1_2 = L1_2()
    if L1_2 == false then
      L1_2 = PopupGUI
      L1_2 = L1_2.timer
      if 1 < L1_2 then
        L1_2 = print
        L2_2 = "ONLINE - Enumerating..."
        L1_2(L2_2)
        L1_2 = PopupGUI
        L2_2 = UIEnums
        L2_2 = L2_2.MpOnlineGameEnumeration
        L2_2 = L2_2.Enumerating
        L1_2.state = L2_2
        L1_2 = PopupGUI
        L1_2.timeout_timer = 0
        L1_2 = NetRace
        L1_2 = L1_2.StartOnlineSessionEnumeration
        L1_2 = L1_2()
        if L1_2 == false then
          L1_2 = PopupSpawn
          L2_2 = UIEnums
          L2_2 = L2_2.CustomPopups
          L2_2 = L2_2.MultiplayerNoMatchingGames
          L1_2(L2_2)
        end
      end
    end
  else
    L1_2 = PopupGUI
    L1_2 = L1_2.state
    L2_2 = UIEnums
    L2_2 = L2_2.MpOnlineGameEnumeration
    L2_2 = L2_2.Enumerating
    if L1_2 == L2_2 then
      L1_2 = false
      L2_2 = 0
      L3_2 = NetRace
      L3_2 = L3_2.ContinueOnlineSessionEnumeration
      L3_2, L4_2 = L3_2()
      L2_2 = L4_2
      L1_2 = L3_2
      if L1_2 == true then
        L3_2 = print
        L4_2 = "ONLINE - Enumeration finished "
        L5_2 = L2_2
        L3_2(L4_2, L5_2)
        if L2_2 == 0 then
          L3_2 = PopupSpawn
          L4_2 = UIEnums
          L4_2 = L4_2.CustomPopups
          L4_2 = L4_2.MultiplayerCreateOnlineGame
          L3_2(L4_2)
        else
          L3_2 = UIGlobals
          L3_2 = L3_2.Network
          L3_2.MatchingEnumeratedGameIndexToJoin = 0
          L3_2 = UIGlobals
          L3_2 = L3_2.Network
          L3_2.MatchingNumSesionsEnumerated = L2_2
          L3_2 = UIGlobals
          L4_2 = UIEnums
          L4_2 = L4_2.ConnectionType
          L4_2 = L4_2.CustomSearch
          L3_2.ConnectionType = L4_2
          L3_2 = PopupGUI
          L4_2 = UIEnums
          L4_2 = L4_2.MpOnlineGameEnumeration
          L4_2 = L4_2.Complete
          L3_2.state = L4_2
        end
      end
    else
      L1_2 = PopupGUI
      L1_2 = L1_2.state
      L2_2 = UIEnums
      L2_2 = L2_2.MpOnlineGameEnumeration
      L2_2 = L2_2.Complete
      if L1_2 == L2_2 then
        L1_2 = PopupSpawn
        L2_2 = UIEnums
        L2_2 = L2_2.CustomPopups
        L2_2 = L2_2.MultiplayerJoinOnlineGame
        L1_2(L2_2)
      end
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerMatching
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.no_next = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L3_1.show_progress = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_SEARCHING_FOR_GAMES
L3_1.message_text_ID = L4_1
L3_1.timeout = 25
function L4_1()
  local L0_2, L1_2
  L0_2 = net_FlushSessionEnumerator
  L0_2()
  L0_2 = PopupSpawn
  L1_2 = UIEnums
  L1_2 = L1_2.CustomPopups
  L1_2 = L1_2.MultiplayerNoMatchingGames
  L0_2(L1_2)
end
L3_1.timeout_CB = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = PopupGUI
  L1_2 = UIEnums
  L1_2 = L1_2.MpOnlineGameEnumeration
  L1_2 = L1_2.BandwidthScan
  L0_2.state = L1_2
  L0_2 = PopupGUI
  L0_2.timer = 0
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = PopupGUI
  L2_2 = PopupGUI
  L2_2 = L2_2.timer
  L2_2 = L2_2 + A0_2
  L1_2.timer = L2_2
  L1_2 = PopupGUI
  L1_2 = L1_2.state
  L2_2 = UIEnums
  L2_2 = L2_2.MpOnlineGameEnumeration
  L2_2 = L2_2.BandwidthScan
  if L1_2 == L2_2 then
    L1_2 = NetServices
    L1_2 = L1_2.BandwidthEvaluationRunning
    L1_2 = L1_2()
    if L1_2 == false then
      L1_2 = PopupGUI
      L1_2 = L1_2.timer
      if 1 < L1_2 then
        L1_2 = PopupGUI
        L1_2.timeout_timer = 0
        L1_2 = PopupGUI
        L2_2 = UIEnums
        L2_2 = L2_2.MpOnlineGameEnumeration
        L2_2 = L2_2.Enumerating
        L1_2.state = L2_2
        L1_2 = NetRace
        L1_2 = L1_2.StartOnlineSessionEnumeration
        L1_2 = L1_2()
        if L1_2 == false then
          L1_2 = PopupSpawn
          L2_2 = UIEnums
          L2_2 = L2_2.CustomPopups
          L2_2 = L2_2.MultiplayerNoMatchingGames
          L1_2(L2_2)
        end
      end
    end
  else
    L1_2 = PopupGUI
    L1_2 = L1_2.state
    L2_2 = UIEnums
    L2_2 = L2_2.MpOnlineGameEnumeration
    L2_2 = L2_2.Enumerating
    if L1_2 == L2_2 then
      L1_2 = false
      L2_2 = 0
      L3_2 = NetRace
      L3_2 = L3_2.ContinueOnlineSessionEnumeration
      L3_2, L4_2 = L3_2()
      L2_2 = L4_2
      L1_2 = L3_2
      if L1_2 == true then
        L3_2 = PopupGUI
        L4_2 = UIEnums
        L4_2 = L4_2.MpOnlineGameEnumeration
        L4_2 = L4_2.Complete
        L3_2.state = L4_2
        if L2_2 == 0 then
          L3_2 = PopupSpawn
          L4_2 = UIEnums
          L4_2 = L4_2.CustomPopups
          L4_2 = L4_2.MultiplayerNoMatchingGames
          L3_2(L4_2)
        else
          L3_2 = UIGlobals
          L3_2 = L3_2.Network
          L3_2.MatchingNumSesionsEnumerated = L2_2
          L3_2 = PopupCancel
          L4_2 = "Multiplayer\\Events\\MpLobbyList.lua"
          L5_2 = true
          L3_2(L4_2, L5_2)
        end
      end
    else
      L1_2 = PopupGUI
      L1_2 = L1_2.state
      L2_2 = UIEnums
      L2_2 = L2_2.MpOnlineGameEnumeration
      L2_2 = L2_2.Complete
      if L1_2 == L2_2 then
      end
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerQuickMatching
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.no_next = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L3_1.show_progress = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_SEARCHING_FOR_GAMES
L3_1.message_text_ID = L4_1
L3_1.timeout = 25
function L4_1()
  local L0_2, L1_2
  L0_2 = net_FlushSessionEnumerator
  L0_2()
  L0_2 = net_CloseAllSessions
  L0_2()
  L0_2 = PopupSpawn
  L1_2 = UIEnums
  L1_2 = L1_2.CustomPopups
  L1_2 = L1_2.MultiplayerNoMatchingGames
  L0_2(L1_2)
end
L3_1.timeout_CB = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = PopupGUI
  L1_2 = UIEnums
  L1_2 = L1_2.MpOnlineQuickMatching
  L1_2 = L1_2.BandwidthScan
  L0_2.state = L1_2
  L0_2 = PopupGUI
  L0_2.timer = 0
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = PopupGUI
  L2_2 = PopupGUI
  L2_2 = L2_2.timer
  L2_2 = L2_2 + A0_2
  L1_2.timer = L2_2
  L1_2 = PopupGUI
  L1_2 = L1_2.state
  L2_2 = UIEnums
  L2_2 = L2_2.MpOnlineQuickMatching
  L2_2 = L2_2.BandwidthScan
  if L1_2 == L2_2 then
    L1_2 = NetServices
    L1_2 = L1_2.BandwidthEvaluationRunning
    L1_2 = L1_2()
    if L1_2 == false then
      L1_2 = PopupGUI
      L1_2 = L1_2.timer
      if 1 < L1_2 then
        L1_2 = PopupGUI
        L1_2.timeout_timer = 0
        L1_2 = PopupGUI
        L2_2 = UIEnums
        L2_2 = L2_2.MpOnlineQuickMatching
        L2_2 = L2_2.Enumerating
        L1_2.state = L2_2
        L1_2 = NetRace
        L1_2 = L1_2.StartOnlineSessionEnumeration
        L1_2 = L1_2()
        if L1_2 == false then
          L1_2 = PopupSpawn
          L2_2 = UIEnums
          L2_2 = L2_2.CustomPopups
          L2_2 = L2_2.MultiplayerNoMatchingGames
          L1_2(L2_2)
        end
      end
    end
  else
    L1_2 = PopupGUI
    L1_2 = L1_2.state
    L2_2 = UIEnums
    L2_2 = L2_2.MpOnlineQuickMatching
    L2_2 = L2_2.Enumerating
    if L1_2 == L2_2 then
      L1_2 = false
      L2_2 = 0
      L3_2 = NetRace
      L3_2 = L3_2.ContinueOnlineSessionEnumeration
      L3_2, L4_2 = L3_2()
      L2_2 = L4_2
      L1_2 = L3_2
      if L1_2 == true then
        if L2_2 == 0 then
          L3_2 = PopupSpawn
          L4_2 = UIEnums
          L4_2 = L4_2.CustomPopups
          L4_2 = L4_2.MultiplayerNoMatchingGames
          L3_2(L4_2)
        else
          L3_2 = PopupGUI
          L3_2.timeout_timer = 0
          L3_2 = UIGlobals
          L3_2 = L3_2.Network
          L3_2.MatchingNumSesionsEnumerated = L2_2
          L3_2 = PopupGUI
          L4_2 = UIEnums
          L4_2 = L4_2.MpOnlineQuickMatching
          L4_2 = L4_2.JoinStart
          L3_2.state = L4_2
        end
      end
    else
      L1_2 = PopupGUI
      L1_2 = L1_2.state
      L2_2 = UIEnums
      L2_2 = L2_2.MpOnlineQuickMatching
      L2_2 = L2_2.JoinStart
      if L1_2 == L2_2 then
        L1_2 = UIGlobals
        L1_2 = L1_2.Network
        L1_2 = L1_2.MatchingEnumeratedGameIndexToJoin
        L2_2 = UIGlobals
        L2_2 = L2_2.Network
        L2_2 = L2_2.MatchingNumSesionsEnumerated
        if L1_2 >= L2_2 then
          L1_2 = PopupSpawn
          L2_2 = UIEnums
          L2_2 = L2_2.CustomPopups
          L2_2 = L2_2.MultiplayerJoinMatchingGameFailed
          L1_2(L2_2)
        else
          L1_2 = true
          if L1_2 == true then
            L2_2 = NetRace
            L2_2 = L2_2.JoinOnlineServer
            L3_2 = UIGlobals
            L3_2 = L3_2.Network
            L3_2 = L3_2.MatchingEnumeratedGameIndexToJoin
            L2_2 = L2_2(L3_2)
            if L2_2 == false then
              L2_2 = UIGlobals
              L2_2 = L2_2.Network
              L3_2 = UIEnums
              L3_2 = L3_2.Network
              L3_2 = L3_2.JoinErrors
              L3_2 = L3_2.eJoinErrorInvalid
              L2_2.JoinErrorCode = L3_2
              L2_2 = UIGlobals
              L2_2 = L2_2.Network
              L3_2 = UIGlobals
              L3_2 = L3_2.Network
              L3_2 = L3_2.MatchingEnumeratedGameIndexToJoin
              L3_2 = L3_2 + 1
              L2_2.MatchingEnumeratedGameIndexToJoin = L3_2
            else
              L2_2 = PopupGUI
              L3_2 = UIEnums
              L3_2 = L3_2.MpOnlineQuickMatching
              L3_2 = L3_2.JoinContinue
              L2_2.state = L3_2
            end
          else
            L2_2 = UIGlobals
            L2_2 = L2_2.Network
            L3_2 = UIEnums
            L3_2 = L3_2.Network
            L3_2 = L3_2.JoinErrors
            L3_2 = L3_2.eJoinErrorInvalid
            L2_2.JoinErrorCode = L3_2
            L2_2 = UIGlobals
            L2_2 = L2_2.Network
            L3_2 = UIGlobals
            L3_2 = L3_2.Network
            L3_2 = L3_2.MatchingEnumeratedGameIndexToJoin
            L3_2 = L3_2 + 1
            L2_2.MatchingEnumeratedGameIndexToJoin = L3_2
            L2_2 = UIGlobals
            L2_2 = L2_2.Network
            L2_2 = L2_2.MatchingEnumeratedGameIndexToJoin
            L3_2 = UIGlobals
            L3_2 = L3_2.Network
            L3_2 = L3_2.MatchingNumSesionsEnumerated
            if L2_2 >= L3_2 then
              L2_2 = PopupSpawn
              L3_2 = UIEnums
              L3_2 = L3_2.CustomPopups
              L3_2 = L3_2.MultiplayerNoMatchingGames
              L2_2(L3_2)
            end
          end
        end
      else
        L1_2 = PopupGUI
        L1_2 = L1_2.state
        L2_2 = UIEnums
        L2_2 = L2_2.MpOnlineQuickMatching
        L2_2 = L2_2.JoinContinue
        if L1_2 == L2_2 then
          L1_2 = false
          L2_2 = UIEnums
          L2_2 = L2_2.Network
          L2_2 = L2_2.JoinErrors
          L2_2 = L2_2.eJoinErrorInvalid
          L3_2 = NetRace
          L3_2 = L3_2.MonitorJoinOnlineServer
          L4_2 = UIGlobals
          L4_2 = L4_2.Network
          L4_2 = L4_2.MatchingEnumeratedGameIndexToJoin
          L3_2, L4_2 = L3_2(L4_2)
          L2_2 = L4_2
          L1_2 = L3_2
          if L1_2 == true then
            L3_2 = UIGlobals
            L3_2 = L3_2.Network
            L3_2.JoinErrorCode = L2_2
            L3_2 = UIEnums
            L3_2 = L3_2.Network
            L3_2 = L3_2.JoinErrors
            L3_2 = L3_2.eJoinErrorNone
            if L2_2 == L3_2 then
              L3_2 = PopupGUI
              L4_2 = UIEnums
              L4_2 = L4_2.MpOnlineQuickMatching
              L4_2 = L4_2.Complete
              L3_2.state = L4_2
              L3_2 = PopupCancel
              L4_2 = "Multiplayer\\MpLobby.lua"
              L5_2 = true
              L3_2(L4_2, L5_2)
            else
              L3_2 = NetRace
              L3_2 = L3_2.Delete
              L3_2()
              L3_2 = PopupGUI
              L4_2 = UIEnums
              L4_2 = L4_2.MpOnlineQuickMatching
              L4_2 = L4_2.JoinStart
              L3_2.state = L4_2
              L3_2 = UIGlobals
              L3_2 = L3_2.Network
              L4_2 = UIGlobals
              L4_2 = L4_2.Network
              L4_2 = L4_2.MatchingEnumeratedGameIndexToJoin
              L4_2 = L4_2 + 1
              L3_2.MatchingEnumeratedGameIndexToJoin = L4_2
              L3_2 = PopupGUI
              L3_2.timeout_timer = 0
            end
          end
        else
          L1_2 = PopupGUI
          L1_2 = L1_2.state
          L2_2 = UIEnums
          L2_2 = L2_2.MpOnlineQuickMatching
          L2_2 = L2_2.Complete
          if L1_2 == L2_2 then
            L1_2 = PopupGUI
            L1_2.timeout_timer = 0
          end
        end
      end
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerNoMatchingGames
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.MP_SEARCH_FINISHED
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.MP_NO_MATCHING_GAMES_FOUND
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = NetServices
  L0_2 = L0_2.FlushEnumertedSessions
  L0_2()
end
L3_1.init_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerJoinMatchingGame
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.no_next = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_ATTEMPTING_TO_JOIN_GAME
L3_1.message_text_ID = L4_1
L3_1.timeout = 25
function L4_1()
  local L0_2, L1_2
  L0_2 = net_FlushSessionEnumerator
  L0_2()
  L0_2 = net_CloseAllSessions
  L0_2()
  L0_2 = UIGlobals
  L0_2 = L0_2.Network
  L1_2 = UIEnums
  L1_2 = L1_2.Network
  L1_2 = L1_2.JoinErrors
  L1_2 = L1_2.eJoinErrorInvalid
  L0_2.JoinErrorCode = L1_2
  L0_2 = PopupSpawn
  L1_2 = UIEnums
  L1_2 = L1_2.CustomPopups
  L1_2 = L1_2.MultiplayerJoinMatchingGameFailed
  L0_2(L1_2)
end
L3_1.timeout_CB = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2 = L0_2.Network
  L1_2 = UIEnums
  L1_2 = L1_2.Network
  L1_2 = L1_2.JoinErrors
  L1_2 = L1_2.eJoinErrorInvalid
  L0_2.JoinErrorCode = L1_2
  L0_2 = PopupGUI
  L1_2 = UIEnums
  L1_2 = L1_2.MpOnlineMatching
  L1_2 = L1_2.BandwidthScan
  L0_2.state = L1_2
  L0_2 = PopupGUI
  L0_2.timer = 0
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = PopupGUI
  L2_2 = PopupGUI
  L2_2 = L2_2.timer
  L2_2 = L2_2 + A0_2
  L1_2.timer = L2_2
  L1_2 = PopupGUI
  L1_2 = L1_2.state
  L2_2 = UIEnums
  L2_2 = L2_2.MpOnlineMatching
  L2_2 = L2_2.BandwidthScan
  if L1_2 == L2_2 then
    L1_2 = NetServices
    L1_2 = L1_2.BandwidthEvaluationRunning
    L1_2 = L1_2()
    if L1_2 == false then
      L1_2 = PopupGUI
      L1_2.timeout_timer = 0
      L1_2 = NetParty
      L1_2 = L1_2.IsRunning
      L1_2 = L1_2()
      if L1_2 == false then
        L1_2 = PopupGUI
        L2_2 = UIEnums
        L2_2 = L2_2.MpOnlineMatching
        L2_2 = L2_2.JoinStart
        L1_2.state = L2_2
      else
        L1_2 = NetParty
        L1_2 = L1_2.AllPeersIdle
        L1_2 = L1_2()
        if L1_2 == true then
          L1_2 = NetParty
          L1_2 = L1_2.MatchmakingSessionIdle
          L1_2 = L1_2()
          if L1_2 == true then
            L1_2 = PopupGUI
            L2_2 = UIEnums
            L2_2 = L2_2.MpOnlineMatching
            L2_2 = L2_2.JoinStart
            L1_2.state = L2_2
        end
        else
          L1_2 = PopupGUI
          L1_2 = L1_2.timer
          if 20 < L1_2 then
            L1_2 = PopupGUI
            L1_2.timer = 0
            L1_2 = NetRace
            L1_2 = L1_2.Delete
            L1_2()
            L1_2 = PopupSpawn
            L2_2 = UIEnums
            L2_2 = L2_2.CustomPopups
            L2_2 = L2_2.MultiplayerJoinMatchingGameFailed
            L1_2(L2_2)
          end
        end
      end
    end
  else
    L1_2 = PopupGUI
    L1_2 = L1_2.state
    L2_2 = UIEnums
    L2_2 = L2_2.MpOnlineMatching
    L2_2 = L2_2.JoinStart
    if L1_2 == L2_2 then
      L1_2 = PopupGUI
      L1_2.timeout_timer = 0
      L1_2 = PopupGUI
      L1_2 = L1_2.timer
      if 1.5 <= L1_2 then
        L1_2 = PopupGUI
        L2_2 = UIEnums
        L2_2 = L2_2.MpOnlineMatching
        L2_2 = L2_2.JoinContinue
        L1_2.state = L2_2
        L1_2 = NetRace
        L1_2 = L1_2.JoinOnlineServer
        L2_2 = UIGlobals
        L2_2 = L2_2.Network
        L2_2 = L2_2.MatchingEnumeratedGameIndexToJoin
        L1_2 = L1_2(L2_2)
        if L1_2 == false then
          L1_2 = PopupSpawn
          L2_2 = UIEnums
          L2_2 = L2_2.CustomPopups
          L2_2 = L2_2.MultiplayerJoinMatchingGameFailed
          L1_2(L2_2)
        end
      end
    else
      L1_2 = PopupGUI
      L1_2 = L1_2.state
      L2_2 = UIEnums
      L2_2 = L2_2.MpOnlineMatching
      L2_2 = L2_2.JoinContinue
      if L1_2 == L2_2 then
        L1_2 = false
        L2_2 = UIEnums
        L2_2 = L2_2.Network
        L2_2 = L2_2.JoinErrors
        L2_2 = L2_2.eJoinErrorInvalid
        L3_2 = NetRace
        L3_2 = L3_2.MonitorJoinOnlineServer
        L4_2 = UIGlobals
        L4_2 = L4_2.Network
        L4_2 = L4_2.MatchingEnumeratedGameIndexToJoin
        L3_2, L4_2 = L3_2(L4_2)
        L2_2 = L4_2
        L1_2 = L3_2
        if L1_2 == true then
          L3_2 = UIGlobals
          L3_2 = L3_2.Network
          L3_2.JoinErrorCode = L2_2
          L3_2 = UIEnums
          L3_2 = L3_2.Network
          L3_2 = L3_2.JoinErrors
          L3_2 = L3_2.eJoinErrorNone
          if L2_2 == L3_2 then
            L3_2 = ContextTable
            L4_2 = UIEnums
            L4_2 = L4_2.Context
            L4_2 = L4_2.Main
            L3_2 = L3_2[L4_2]
            L3_2 = L3_2.GUI
            L4_2 = IsTable
            L5_2 = L3_2
            L4_2 = L4_2(L5_2)
            if L4_2 == true then
              L4_2 = NetParty
              L4_2 = L4_2.IsRunning
              L4_2 = L4_2()
              if L4_2 == true then
                L4_2 = PopupGUI
                L4_2.timeout_timer = 0
                L4_2 = PopupGUI
                L5_2 = UIEnums
                L5_2 = L5_2.MpOnlineMatching
                L5_2 = L5_2.WaitingForParty
                L4_2.state = L5_2
                L4_2 = NetParty
                L4_2 = L4_2.ChangeLocalPlayersState
                L5_2 = UIEnums
                L5_2 = L5_2.Network
                L5_2 = L5_2.PlayerStates
                L5_2 = L5_2.eNetPlayerStatePartyJoinRaceSuccessful
                L4_2(L5_2)
                L4_2 = NetParty
                L4_2 = L4_2.SendJoinRaceSession
                L4_2()
                L4_2 = PopupGUI
                L4_2.timer = 0
              else
                L4_2 = PopupGUI
                L5_2 = UIEnums
                L5_2 = L5_2.MpOnlineMatching
                L5_2 = L5_2.Complete
                L4_2.state = L5_2
              end
            end
          else
            L3_2 = PopupSpawn
            L4_2 = UIEnums
            L4_2 = L4_2.CustomPopups
            L4_2 = L4_2.MultiplayerJoinMatchingGameFailed
            L3_2(L4_2)
          end
        end
      else
        L1_2 = PopupGUI
        L1_2 = L1_2.state
        L2_2 = UIEnums
        L2_2 = L2_2.MpOnlineMatching
        L2_2 = L2_2.WaitingForParty
        if L1_2 == L2_2 then
          L1_2 = PopupGUI
          L1_2.timeout_timer = 0
          L1_2 = PopupGUI
          L1_2 = L1_2.timer
          if not (20 < L1_2) then
            L1_2 = NetParty
            L1_2 = L1_2.AnyPlayersFailedToJoinRace
            L1_2 = L1_2()
            if L1_2 ~= true then
              goto lbl_202
            end
          end
          L1_2 = PopupGUI
          L1_2.timer = 0
          L1_2 = NetParty
          L1_2 = L1_2.SendReturnToPartyLobby
          L1_2()
          L1_2 = PopupGUI
          L2_2 = UIEnums
          L2_2 = L2_2.MpOnlineMatching
          L2_2 = L2_2.PartyJoinFailure
          L1_2.state = L2_2
          goto lbl_253
          ::lbl_202::
          L1_2 = NetParty
          L1_2 = L1_2.AllPlayersJoinedRace
          L1_2 = L1_2()
          if L1_2 == true then
            L1_2 = PopupGUI
            L2_2 = UIEnums
            L2_2 = L2_2.MpOnlineMatching
            L2_2 = L2_2.Complete
            L1_2.state = L2_2
          end
        else
          L1_2 = PopupGUI
          L1_2 = L1_2.state
          L2_2 = UIEnums
          L2_2 = L2_2.MpOnlineMatching
          L2_2 = L2_2.PartyJoinFailure
          if L1_2 == L2_2 then
            L1_2 = PopupGUI
            L1_2.timeout_timer = 0
            L1_2 = PopupGUI
            L1_2 = L1_2.timer
            if 5 < L1_2 then
              L1_2 = NetRace
              L1_2 = L1_2.Delete
              L1_2()
              L1_2 = UIGlobals
              L1_2 = L1_2.Network
              L2_2 = UIEnums
              L2_2 = L2_2.Network
              L2_2 = L2_2.JoinErrors
              L2_2 = L2_2.eJoinErrorNoCommunications
              L1_2.JoinErrorCode = L2_2
              L1_2 = PopupSpawn
              L2_2 = UIEnums
              L2_2 = L2_2.CustomPopups
              L2_2 = L2_2.MultiplayerJoinMatchingGameFailed
              L1_2(L2_2)
            end
          else
            L1_2 = PopupGUI
            L1_2 = L1_2.state
            L2_2 = UIEnums
            L2_2 = L2_2.MpOnlineMatching
            L2_2 = L2_2.Complete
            if L1_2 == L2_2 then
              L1_2 = PopupCancel
              L2_2 = "Multiplayer\\MpLobby.lua"
              L3_2 = true
              L1_2(L2_2, L3_2)
            end
          end
        end
      end
    end
  end
  ::lbl_253::
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerJoinMatchingGameFailed
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ERROR
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.MP_JOIN_ERROR_DEFAULT
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = UIText
  L0_2 = L0_2.MP_JOIN_ERROR_DEFAULT
  L1_2 = UIGlobals
  L1_2 = L1_2.Network
  L1_2 = L1_2.JoinErrorCode
  L2_2 = UIEnums
  L2_2 = L2_2.Network
  L2_2 = L2_2.JoinErrors
  L2_2 = L2_2.eJoinErrorNotEnoughOpenSlots
  if L1_2 == L2_2 then
    L1_2 = UIText
    L0_2 = L1_2.MP_JOIN_ERROR_NO_SLOTS
  else
    L1_2 = UIGlobals
    L1_2 = L1_2.Network
    L1_2 = L1_2.JoinErrorCode
    L2_2 = UIEnums
    L2_2 = L2_2.Network
    L2_2 = L2_2.JoinErrors
    L2_2 = L2_2.eJoinErrorBannedFromSession
    if L1_2 == L2_2 then
      L1_2 = UIText
      L0_2 = L1_2.MP_JOIN_ERROR_BANNED
    else
      L1_2 = UIGlobals
      L1_2 = L1_2.Network
      L1_2 = L1_2.JoinErrorCode
      L2_2 = UIEnums
      L2_2 = L2_2.Network
      L2_2 = L2_2.JoinErrors
      L2_2 = L2_2.eJoinErrorNoConnectionToHost
      if L1_2 == L2_2 then
        L1_2 = UIText
        L0_2 = L1_2.MP_JOIN_ERROR_HOST
      else
        L1_2 = UIGlobals
        L1_2 = L1_2.Network
        L1_2 = L1_2.JoinErrorCode
        L2_2 = UIEnums
        L2_2 = L2_2.Network
        L2_2 = L2_2.JoinErrors
        L2_2 = L2_2.eJoinErrorNoCommunications
        if L1_2 == L2_2 then
          L1_2 = UIText
          L0_2 = L1_2.MP_JOIN_ERROR_PEERS
        else
          L1_2 = UIGlobals
          L1_2 = L1_2.Network
          L1_2 = L1_2.JoinErrorCode
          L2_2 = UIEnums
          L2_2 = L2_2.Network
          L2_2 = L2_2.JoinErrors
          L2_2 = L2_2.eJoinErrorToManyTeams
          if L1_2 == L2_2 then
            L1_2 = UIText
            L0_2 = L1_2.MP_JOIN_ERROR_TEAM
          else
            L1_2 = UIGlobals
            L1_2 = L1_2.Network
            L1_2 = L1_2.JoinErrorCode
            L2_2 = UIEnums
            L2_2 = L2_2.Network
            L2_2 = L2_2.JoinErrors
            L2_2 = L2_2.eJoinErrorToManyTeamMembers
            if L1_2 == L2_2 then
              L1_2 = UIText
              L0_2 = L1_2.MP_JOIN_ERROR_TEAM_MEMBERS
            else
              L1_2 = UIGlobals
              L1_2 = L1_2.Network
              L1_2 = L1_2.JoinErrorCode
              L2_2 = UIEnums
              L2_2 = L2_2.Network
              L2_2 = L2_2.JoinErrors
              L2_2 = L2_2.eJoinErrorContentMismatch
              if L1_2 == L2_2 then
                L1_2 = UIText
                L0_2 = L1_2.MP_JOIN_ERROR_CONTENT
              else
                L1_2 = UIGlobals
                L1_2 = L1_2.Network
                L1_2 = L1_2.JoinErrorCode
                L2_2 = UIEnums
                L2_2 = L2_2.Network
                L2_2 = L2_2.JoinErrors
                L2_2 = L2_2.eJoinErrorChampionshipStarted
                if L1_2 == L2_2 then
                  L1_2 = UIText
                  L0_2 = L1_2.MP_JOIN_ERROR_CHAMPIONSHIP_STARTED
                else
                  L1_2 = UIGlobals
                  L1_2 = L1_2.Network
                  L1_2 = L1_2.JoinErrorCode
                  L2_2 = UIEnums
                  L2_2 = L2_2.Network
                  L2_2 = L2_2.JoinErrors
                  L2_2 = L2_2.eJoinErrorRankedMatchStarted
                  if L1_2 == L2_2 then
                    L1_2 = UIText
                    L0_2 = L1_2.MP_JOIN_ERROR_RANKED_STARTED
                  else
                    L1_2 = UIGlobals
                    L1_2 = L1_2.Network
                    L1_2 = L1_2.JoinErrorCode
                    L2_2 = UIEnums
                    L2_2 = L2_2.Network
                    L2_2 = L2_2.JoinErrors
                    L2_2 = L2_2.eJoinErrorPartyClosed
                    if L1_2 == L2_2 then
                      L1_2 = UIText
                      L0_2 = L1_2.MP_JOIN_ERROR_PARTY_CLOSED
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
  L1_2 = CustomPopup
  L1_2 = L1_2.CurrentData
  L1_2.message_text_ID = L0_2
  L1_2 = NetRace
  L1_2 = L1_2.OnlineJoinFailedNameAvailable
  L1_2 = L1_2()
  if L1_2 == true then
    L1_2 = CustomPopup
    L1_2 = L1_2.CurrentData
    L1_2.message_text_ID = "MATCHING_JOIN_ERROR_RACE"
  end
  L1_2 = NetRace
  L1_2 = L1_2.Delete
  L1_2()
  L1_2 = NetParty
  L1_2 = L1_2.IsRunning
  L1_2 = L1_2()
  if L1_2 == true then
    L1_2 = NetParty
    L1_2 = L1_2.ChangeLocalPlayersState
    L2_2 = UIEnums
    L2_2 = L2_2.Network
    L2_2 = L2_2.PlayerStates
    L2_2 = L2_2.eNetPlayerStatePartyBusy
    L1_2(L2_2)
  end
end
L3_1.init_CB = L4_1
function L4_1()
  local L0_2, L1_2
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerAcceptGameInvitation
L3_1 = {}
L3_1.darken = true
L3_1.no_next = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L3_1.show_progress = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_ATTEMPTING_TO_JOIN_GAME
L3_1.message_text_ID = L4_1
L3_1.timeout = 25
function L4_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "GAME INVITE - Timed out"
  L0_2(L1_2)
  L0_2 = net_FlushSessionEnumerator
  L0_2()
  L0_2 = net_CloseAllSessions
  L0_2()
  L0_2 = PopupSpawn
  L1_2 = UIEnums
  L1_2 = L1_2.CustomPopups
  L1_2 = L1_2.MultiplayerAcceptGameInvitationFailed
  L0_2(L1_2)
end
L3_1.timeout_CB = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2 = L0_2.Network
  L1_2 = UIEnums
  L1_2 = L1_2.Network
  L1_2 = L1_2.JoinErrors
  L1_2 = L1_2.eJoinErrorInvalid
  L0_2.JoinErrorCode = L1_2
  L0_2 = UIGlobals
  L0_2 = L0_2.Network
  L1_2 = UIEnums
  L1_2 = L1_2.MpGameInviteType
  L1_2 = L1_2.Unknown
  L0_2.GameInviteType = L1_2
  L0_2 = PopupGUI
  L1_2 = UIEnums
  L1_2 = L1_2.MpOnlineQuickMatching
  L1_2 = L1_2.BandwidthScan
  L0_2.state = L1_2
  L0_2 = PopupGUI
  L0_2.timer = 0
  L0_2 = NetServices
  L0_2 = L0_2.StartBandwidthEvaluation
  L0_2()
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = PopupGUI
  L2_2 = PopupGUI
  L2_2 = L2_2.timer
  L2_2 = L2_2 + A0_2
  L1_2.timer = L2_2
  L1_2 = PopupGUI
  L1_2 = L1_2.state
  L2_2 = UIEnums
  L2_2 = L2_2.MpOnlineQuickMatching
  L2_2 = L2_2.BandwidthScan
  if L1_2 == L2_2 then
    L1_2 = NetServices
    L1_2 = L1_2.BandwidthEvaluationRunning
    L1_2 = L1_2()
    if L1_2 == false then
      L1_2 = PopupGUI
      L1_2 = L1_2.timer
      if 1 < L1_2 then
        L1_2 = PopupGUI
        L1_2.timeout_timer = 0
        L1_2 = PopupGUI
        L2_2 = UIEnums
        L2_2 = L2_2.MpOnlineQuickMatching
        L2_2 = L2_2.Enumerating
        L1_2.state = L2_2
        L1_2 = NetServices
        L1_2 = L1_2.StartOnlineSessionEnumerationFromInvitation
        L1_2 = L1_2()
        if L1_2 == false then
          L1_2 = print
          L2_2 = "GAME INVITE - Failed to start online session enumeration"
          L1_2(L2_2)
          L1_2 = PopupSpawn
          L2_2 = UIEnums
          L2_2 = L2_2.CustomPopups
          L2_2 = L2_2.MultiplayerAcceptGameInvitationFailed
          L1_2(L2_2)
        end
      end
    end
  else
    L1_2 = PopupGUI
    L1_2 = L1_2.state
    L2_2 = UIEnums
    L2_2 = L2_2.MpOnlineQuickMatching
    L2_2 = L2_2.Enumerating
    if L1_2 == L2_2 then
      L1_2 = false
      L2_2 = false
      L3_2 = false
      L4_2 = false
      L5_2 = false
      L6_2 = 0
      L7_2 = 0
      L8_2 = NetServices
      L8_2 = L8_2.ContinueOnlineSessionEnumerationFromInvitation
      L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2()
      L7_2 = L14_2
      L6_2 = L13_2
      L5_2 = L12_2
      L4_2 = L11_2
      L3_2 = L10_2
      L2_2 = L9_2
      L1_2 = L8_2
      if L1_2 == true then
        if L2_2 == true then
          if L7_2 == 1 then
            L8_2 = UIGlobals
            L8_2 = L8_2.Network
            L9_2 = UIEnums
            L9_2 = L9_2.Network
            L9_2 = L9_2.JoinErrors
            L9_2 = L9_2.eJoinErrorPlaylistVerHost
            L8_2.JoinErrorCode = L9_2
          elseif L7_2 == 2 then
            L8_2 = UIGlobals
            L8_2 = L8_2.Network
            L9_2 = UIEnums
            L9_2 = L9_2.Network
            L9_2 = L9_2.JoinErrors
            L9_2 = L9_2.eJoinErrorPlaylistVerClient
            L8_2.JoinErrorCode = L9_2
          end
          L8_2 = PopupSpawn
          L9_2 = UIEnums
          L9_2 = L9_2.CustomPopups
          L9_2 = L9_2.MultiplayerAcceptGameInvitationFailed
          L8_2(L9_2)
        else
          L8_2 = PopupGUI
          L8_2.timeout_timer = 0
          L8_2 = PopupGUI
          L9_2 = UIEnums
          L9_2 = L9_2.MpOnlineQuickMatching
          L9_2 = L9_2.JoinStart
          L8_2.state = L9_2
          L8_2 = UIGlobals
          L8_2 = L8_2.Network
          L8_2.MatchingEnumeratedGameIndexToJoin = 0
          if L3_2 == true then
            L8_2 = UIGlobals
            L8_2 = L8_2.Network
            L9_2 = UIEnums
            L9_2 = L9_2.MpGameInviteType
            L9_2 = L9_2.Race
            L8_2.GameInviteType = L9_2
            if L5_2 == true then
              L8_2 = net_MpEnterPlayMode
              L9_2 = UIEnums
              L9_2 = L9_2.PlayMode
              L9_2 = L9_2.CustomRace
              L8_2(L9_2)
            else
              L8_2 = Multiplayer
              L8_2 = L8_2.CachePlaylists
              L9_2 = UIEnums
              L9_2 = L9_2.GameMode
              L9_2 = L9_2.Online
              L8_2(L9_2)
              L8_2 = Multiplayer
              L8_2 = L8_2.FindPlaylistFromID
              L9_2 = L6_2
              L8_2 = L8_2(L9_2)
              if L8_2 == true then
                L8_2 = net_MpEnterPlayMode
                L9_2 = UIEnums
                L9_2 = L9_2.PlayMode
                L9_2 = L9_2.Playlist
                L10_2 = L4_2
                L8_2(L9_2, L10_2)
              else
                L8_2 = print
                L9_2 = "Invite failed because you cant play the event"
                L8_2(L9_2)
                L8_2 = PopupSpawn
                L9_2 = UIEnums
                L9_2 = L9_2.CustomPopups
                L9_2 = L9_2.MultiplayerAcceptGameInvitationFailed
                L8_2(L9_2)
                L8_2 = PopupGUI
                L9_2 = UIEnums
                L9_2 = L9_2.MpOnlineQuickMatching
                L9_2 = L9_2.Failed
                L8_2.state = L9_2
              end
            end
          else
            L8_2 = UIGlobals
            L8_2 = L8_2.Network
            L9_2 = UIEnums
            L9_2 = L9_2.MpGameInviteType
            L9_2 = L9_2.Party
            L8_2.GameInviteType = L9_2
          end
          L8_2 = net_MpEnter
          L9_2 = UIEnums
          L9_2 = L9_2.GameMode
          L9_2 = L9_2.Online
          L8_2(L9_2)
        end
      end
    else
      L1_2 = PopupGUI
      L1_2 = L1_2.state
      L2_2 = UIEnums
      L2_2 = L2_2.MpOnlineQuickMatching
      L2_2 = L2_2.JoinStart
      if L1_2 == L2_2 then
        L1_2 = UIGlobals
        L1_2 = L1_2.Network
        L1_2 = L1_2.GameInviteType
        L2_2 = UIEnums
        L2_2 = L2_2.MpGameInviteType
        L2_2 = L2_2.Race
        if L1_2 == L2_2 then
          L1_2 = NetRace
          L1_2 = L1_2.JoinOnlineServer
          L2_2 = UIGlobals
          L2_2 = L2_2.Network
          L2_2 = L2_2.MatchingEnumeratedGameIndexToJoin
          L1_2 = L1_2(L2_2)
          if L1_2 == false then
            L1_2 = print
            L2_2 = "GAME INVITE - Failed to join online server"
            L1_2(L2_2)
            L1_2 = PopupSpawn
            L2_2 = UIEnums
            L2_2 = L2_2.CustomPopups
            L2_2 = L2_2.MultiplayerAcceptGameInvitationFailed
            L1_2(L2_2)
          else
            L1_2 = PopupGUI
            L2_2 = UIEnums
            L2_2 = L2_2.MpOnlineQuickMatching
            L2_2 = L2_2.JoinContinue
            L1_2.state = L2_2
          end
        else
          L1_2 = UIGlobals
          L1_2 = L1_2.Network
          L1_2 = L1_2.GameInviteType
          L2_2 = UIEnums
          L2_2 = L2_2.MpGameInviteType
          L2_2 = L2_2.Party
          if L1_2 == L2_2 then
            L1_2 = NetParty
            L1_2 = L1_2.JoinOnlineServer
            L2_2 = UIGlobals
            L2_2 = L2_2.Network
            L2_2 = L2_2.MatchingEnumeratedGameIndexToJoin
            L1_2 = L1_2(L2_2)
            if L1_2 == false then
              L1_2 = PopupSpawn
              L2_2 = UIEnums
              L2_2 = L2_2.CustomPopups
              L2_2 = L2_2.MultiplayerAcceptGameInvitationFailed
              L1_2(L2_2)
            else
              L1_2 = PopupGUI
              L2_2 = UIEnums
              L2_2 = L2_2.MpOnlineQuickMatching
              L2_2 = L2_2.JoinContinue
              L1_2.state = L2_2
            end
          else
            L1_2 = print
            L2_2 = "GAME INVITE - Invalid invite type"
            L1_2(L2_2)
            L1_2 = PopupSpawn
            L2_2 = UIEnums
            L2_2 = L2_2.CustomPopups
            L2_2 = L2_2.MultiplayerAcceptGameInvitationFailed
            L1_2(L2_2)
          end
        end
      else
        L1_2 = PopupGUI
        L1_2 = L1_2.state
        L2_2 = UIEnums
        L2_2 = L2_2.MpOnlineQuickMatching
        L2_2 = L2_2.JoinContinue
        if L1_2 == L2_2 then
          L1_2 = UIGlobals
          L1_2 = L1_2.Network
          L1_2 = L1_2.GameInviteType
          L2_2 = UIEnums
          L2_2 = L2_2.MpGameInviteType
          L2_2 = L2_2.Race
          if L1_2 == L2_2 then
            L1_2 = false
            L2_2 = UIEnums
            L2_2 = L2_2.Network
            L2_2 = L2_2.JoinErrors
            L2_2 = L2_2.eJoinErrorInvalid
            L3_2 = NetRace
            L3_2 = L3_2.MonitorJoinOnlineServer
            L4_2 = UIGlobals
            L4_2 = L4_2.Network
            L4_2 = L4_2.MatchingEnumeratedGameIndexToJoin
            L3_2, L4_2 = L3_2(L4_2)
            L2_2 = L4_2
            L1_2 = L3_2
            if L1_2 == true then
              L3_2 = UIGlobals
              L3_2 = L3_2.Network
              L3_2.JoinErrorCode = L2_2
              L3_2 = UIEnums
              L3_2 = L3_2.Network
              L3_2 = L3_2.JoinErrors
              L3_2 = L3_2.eJoinErrorNone
              if L2_2 == L3_2 then
                L3_2 = PopupGUI
                L4_2 = UIEnums
                L4_2 = L4_2.MpOnlineQuickMatching
                L4_2 = L4_2.Complete
                L3_2.state = L4_2
                L3_2 = UIGlobals
                L3_2 = L3_2.Network
                L4_2 = UIEnums
                L4_2 = L4_2.MpGameInviteState
                L4_2 = L4_2.Polling
                L3_2.GameInviteState = L4_2
                L3_2 = PopupCancel
                L4_2 = UIEnums
                L4_2 = L4_2.MpLaunchScreen
                L4_2 = L4_2.MultiplayerLobby
                L5_2 = false
                L6_2 = true
                L3_2(L4_2, L5_2, L6_2)
                L3_2 = UIGlobals
                L3_2 = L3_2.Network
                L4_2 = NetServices
                L4_2 = L4_2.CanUseChat
                L4_2 = L4_2()
                L4_2 = L4_2 == false
                L3_2.VoiceChatRestricted = L4_2
              else
                L3_2 = PopupSpawn
                L4_2 = UIEnums
                L4_2 = L4_2.CustomPopups
                L4_2 = L4_2.MultiplayerAcceptGameInvitationFailed
                L3_2(L4_2)
              end
            end
          else
            L1_2 = UIGlobals
            L1_2 = L1_2.Network
            L1_2 = L1_2.GameInviteType
            L2_2 = UIEnums
            L2_2 = L2_2.MpGameInviteType
            L2_2 = L2_2.Party
            if L1_2 == L2_2 then
              L1_2 = false
              L2_2 = UIEnums
              L2_2 = L2_2.Network
              L2_2 = L2_2.JoinErrors
              L2_2 = L2_2.eJoinErrorInvalid
              L3_2 = NetParty
              L3_2 = L3_2.MonitorJoinOnlineServer
              L4_2 = UIGlobals
              L4_2 = L4_2.Network
              L4_2 = L4_2.MatchingEnumeratedGameIndexToJoin
              L3_2, L4_2 = L3_2(L4_2)
              L2_2 = L4_2
              L1_2 = L3_2
              if L1_2 == true then
                L3_2 = UIGlobals
                L3_2 = L3_2.Network
                L3_2.JoinErrorCode = L2_2
                L3_2 = UIEnums
                L3_2 = L3_2.Network
                L3_2 = L3_2.JoinErrors
                L3_2 = L3_2.eJoinErrorNone
                if L2_2 == L3_2 then
                  L3_2 = PopupGUI
                  L4_2 = UIEnums
                  L4_2 = L4_2.MpOnlineQuickMatching
                  L4_2 = L4_2.Complete
                  L3_2.state = L4_2
                  L3_2 = UIGlobals
                  L3_2 = L3_2.Network
                  L4_2 = UIEnums
                  L4_2 = L4_2.MpGameInviteState
                  L4_2 = L4_2.Polling
                  L3_2.GameInviteState = L4_2
                  L3_2 = PopupCancel
                  L4_2 = UIEnums
                  L4_2 = L4_2.MpLaunchScreen
                  L4_2 = L4_2.PartyLobby
                  L5_2 = false
                  L6_2 = true
                  L3_2(L4_2, L5_2, L6_2)
                  L3_2 = UIGlobals
                  L3_2 = L3_2.Network
                  L4_2 = NetServices
                  L4_2 = L4_2.CanUseChat
                  L4_2 = L4_2()
                  L4_2 = L4_2 == false
                  L3_2.VoiceChatRestricted = L4_2
                else
                  L3_2 = PopupSpawn
                  L4_2 = UIEnums
                  L4_2 = L4_2.CustomPopups
                  L4_2 = L4_2.MultiplayerAcceptGameInvitationFailed
                  L3_2(L4_2)
                end
              end
            else
              L1_2 = PopupSpawn
              L2_2 = UIEnums
              L2_2 = L2_2.CustomPopups
              L2_2 = L2_2.MultiplayerAcceptGameInvitationFailed
              L1_2(L2_2)
            end
          end
        else
          L1_2 = PopupGUI
          L1_2 = L1_2.state
          L2_2 = UIEnums
          L2_2 = L2_2.MpOnlineQuickMatching
          L2_2 = L2_2.Complete
          if L1_2 == L2_2 then
          end
        end
      end
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerAcceptGameInvitationFailed
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ERROR
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.MP_GAME_INVITATION_FAILED
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = NetServices
  L0_2 = L0_2.ClearGameInvite
  L0_2()
  L0_2 = UIText
  L0_2 = L0_2.MP_JOIN_ERROR_DEFAULT
  L1_2 = UIGlobals
  L1_2 = L1_2.Network
  L1_2 = L1_2.JoinErrorCode
  L2_2 = UIEnums
  L2_2 = L2_2.Network
  L2_2 = L2_2.JoinErrors
  L2_2 = L2_2.eJoinErrorNotEnoughOpenSlots
  if L1_2 == L2_2 then
    L1_2 = UIText
    L0_2 = L1_2.MP_JOIN_ERROR_NO_SLOTS
  else
    L1_2 = UIGlobals
    L1_2 = L1_2.Network
    L1_2 = L1_2.JoinErrorCode
    L2_2 = UIEnums
    L2_2 = L2_2.Network
    L2_2 = L2_2.JoinErrors
    L2_2 = L2_2.eJoinErrorBannedFromSession
    if L1_2 == L2_2 then
      L1_2 = UIText
      L0_2 = L1_2.MP_JOIN_ERROR_BANNED
    else
      L1_2 = UIGlobals
      L1_2 = L1_2.Network
      L1_2 = L1_2.JoinErrorCode
      L2_2 = UIEnums
      L2_2 = L2_2.Network
      L2_2 = L2_2.JoinErrors
      L2_2 = L2_2.eJoinErrorNoConnectionToHost
      if L1_2 == L2_2 then
        L1_2 = UIText
        L0_2 = L1_2.MP_JOIN_ERROR_HOST
      else
        L1_2 = UIGlobals
        L1_2 = L1_2.Network
        L1_2 = L1_2.JoinErrorCode
        L2_2 = UIEnums
        L2_2 = L2_2.Network
        L2_2 = L2_2.JoinErrors
        L2_2 = L2_2.eJoinErrorNoCommunications
        if L1_2 == L2_2 then
          L1_2 = UIText
          L0_2 = L1_2.MP_JOIN_ERROR_PEERS
        else
          L1_2 = UIGlobals
          L1_2 = L1_2.Network
          L1_2 = L1_2.JoinErrorCode
          L2_2 = UIEnums
          L2_2 = L2_2.Network
          L2_2 = L2_2.JoinErrors
          L2_2 = L2_2.eJoinErrorToManyTeams
          if L1_2 == L2_2 then
            L1_2 = UIText
            L0_2 = L1_2.MP_JOIN_ERROR_TEAM
          else
            L1_2 = UIGlobals
            L1_2 = L1_2.Network
            L1_2 = L1_2.JoinErrorCode
            L2_2 = UIEnums
            L2_2 = L2_2.Network
            L2_2 = L2_2.JoinErrors
            L2_2 = L2_2.eJoinErrorToManyTeamMembers
            if L1_2 == L2_2 then
              L1_2 = UIText
              L0_2 = L1_2.MP_JOIN_ERROR_TEAM_MEMBERS
            else
              L1_2 = UIGlobals
              L1_2 = L1_2.Network
              L1_2 = L1_2.JoinErrorCode
              L2_2 = UIEnums
              L2_2 = L2_2.Network
              L2_2 = L2_2.JoinErrors
              L2_2 = L2_2.eJoinErrorContentMismatch
              if L1_2 == L2_2 then
                L1_2 = UIText
                L0_2 = L1_2.MP_JOIN_ERROR_CONTENT
              else
                L1_2 = UIGlobals
                L1_2 = L1_2.Network
                L1_2 = L1_2.JoinErrorCode
                L2_2 = UIEnums
                L2_2 = L2_2.Network
                L2_2 = L2_2.JoinErrors
                L2_2 = L2_2.eJoinErrorChampionshipStarted
                if L1_2 == L2_2 then
                  L1_2 = UIText
                  L0_2 = L1_2.MP_JOIN_ERROR_CHAMPIONSHIP_STARTED
                else
                  L1_2 = UIGlobals
                  L1_2 = L1_2.Network
                  L1_2 = L1_2.JoinErrorCode
                  L2_2 = UIEnums
                  L2_2 = L2_2.Network
                  L2_2 = L2_2.JoinErrors
                  L2_2 = L2_2.eJoinErrorRankedMatchStarted
                  if L1_2 == L2_2 then
                    L1_2 = UIText
                    L0_2 = L1_2.MP_JOIN_ERROR_RANKED_STARTED
                  else
                    L1_2 = UIGlobals
                    L1_2 = L1_2.Network
                    L1_2 = L1_2.JoinErrorCode
                    L2_2 = UIEnums
                    L2_2 = L2_2.Network
                    L2_2 = L2_2.JoinErrors
                    L2_2 = L2_2.eJoinErrorPartyClosed
                    if L1_2 == L2_2 then
                      L1_2 = UIText
                      L0_2 = L1_2.MP_JOIN_ERROR_PARTY_CLOSED
                    else
                      L1_2 = UIGlobals
                      L1_2 = L1_2.Network
                      L1_2 = L1_2.JoinErrorCode
                      L2_2 = UIEnums
                      L2_2 = L2_2.Network
                      L2_2 = L2_2.JoinErrors
                      L2_2 = L2_2.eJoinErrorPlaylistVerClient
                      if L1_2 == L2_2 then
                        L1_2 = UIText
                        L0_2 = L1_2.MP_JOIN_ERROR_PLAYLIST_VERSION_CLIENT
                      else
                        L1_2 = UIGlobals
                        L1_2 = L1_2.Network
                        L1_2 = L1_2.JoinErrorCode
                        L2_2 = UIEnums
                        L2_2 = L2_2.Network
                        L2_2 = L2_2.JoinErrors
                        L2_2 = L2_2.eJoinErrorPlaylistVerHost
                        if L1_2 == L2_2 then
                          L1_2 = UIText
                          L0_2 = L1_2.MP_JOIN_ERROR_PLAYLIST_VERSION_HOST
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
    end
  end
  L1_2 = CustomPopup
  L1_2 = L1_2.CurrentData
  L1_2.message_text_ID = L0_2
  L1_2 = CustomPopup
  L1_2 = L1_2.CurrentData
  L1_2.size = nil
  L1_2 = UIGlobals
  L1_2 = L1_2.Network
  L1_2 = L1_2.GameInviteType
  L2_2 = UIEnums
  L2_2 = L2_2.MpGameInviteType
  L2_2 = L2_2.Race
  if L1_2 == L2_2 then
    L1_2 = NetRace
    L1_2 = L1_2.OnlineJoinFailedNameAvailable
    L1_2 = L1_2()
    if L1_2 == true then
      L1_2 = CustomPopup
      L1_2 = L1_2.CurrentData
      L2_2 = {}
      L2_2.x = 240
      L2_2.y = 80
      L1_2.size = L2_2
      L1_2 = CustomPopup
      L1_2 = L1_2.CurrentData
      L1_2.message_text_ID = "MATCHING_JOIN_ERROR_RACE"
    end
  else
    L1_2 = UIGlobals
    L1_2 = L1_2.Network
    L1_2 = L1_2.GameInviteType
    L2_2 = UIEnums
    L2_2 = L2_2.MpGameInviteType
    L2_2 = L2_2.Party
    if L1_2 == L2_2 then
      L1_2 = NetParty
      L1_2 = L1_2.OnlineJoinFailedNameAvailable
      L1_2 = L1_2()
      if L1_2 == true then
        L1_2 = CustomPopup
        L1_2 = L1_2.CurrentData
        L2_2 = {}
        L2_2.x = 240
        L2_2.y = 80
        L1_2.size = L2_2
        L1_2 = CustomPopup
        L1_2 = L1_2.CurrentData
        L1_2.message_text_ID = "MATCHING_JOIN_ERROR_PARTY"
      end
    end
  end
end
L3_1.init_CB = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = net_GameInviteFailed
  L0_2()
  L0_2 = PopupCancel
  L0_2()
  L0_2 = EnableCarousel
  L1_2 = true
  L0_2(L1_2)
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerUnrecoverableError
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.MP_BIG_ERROR_TITLE
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.MP_BIG_ERROR
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerRouterError
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.MP_ROUTER_ERROR_TITLE
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.MP_ROUTER_ERROR
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerCreateOnlineParty
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.no_next = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L3_1.show_progress = true
L3_1.timeout = 15
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_CREATING_PARTY
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = net_CloseAllSessions
  L0_2()
  L0_2 = PopupSpawn
  L1_2 = UIEnums
  L1_2 = L1_2.CustomPopups
  L1_2 = L1_2.MultiplayerCreateFailed
  L0_2(L1_2)
end
L3_1.timeout_CB = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = PopupGUI
  L1_2 = UIEnums
  L1_2 = L1_2.MpOnlineGameCreation
  L1_2 = L1_2.BandwidthScan
  L0_2.state = L1_2
  L0_2 = PopupGUI
  L0_2.timer = 0
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PopupGUI
  L2_2 = PopupGUI
  L2_2 = L2_2.timer
  L2_2 = L2_2 + A0_2
  L1_2.timer = L2_2
  L1_2 = PopupGUI
  L1_2 = L1_2.state
  L2_2 = UIEnums
  L2_2 = L2_2.MpOnlineGameCreation
  L2_2 = L2_2.BandwidthScan
  if L1_2 == L2_2 then
    L1_2 = NetServices
    L1_2 = L1_2.BandwidthEvaluationRunning
    L1_2 = L1_2()
    if L1_2 == false then
      L1_2 = PopupGUI
      L1_2.timeout_timer = 0
      L1_2 = PopupGUI
      L2_2 = UIEnums
      L2_2 = L2_2.MpOnlineGameCreation
      L2_2 = L2_2.InitialDelay
      L1_2.state = L2_2
    end
  else
    L1_2 = PopupGUI
    L1_2 = L1_2.state
    L2_2 = UIEnums
    L2_2 = L2_2.MpOnlineGameCreation
    L2_2 = L2_2.InitialDelay
    if L1_2 == L2_2 then
      L1_2 = PopupGUI
      L1_2 = L1_2.timer
      if 1 < L1_2 then
        L1_2 = NetParty
        L1_2 = L1_2.CreateOnlineServer
        L1_2 = L1_2()
        if L1_2 == true then
          L1_2 = PopupGUI
          L2_2 = UIEnums
          L2_2 = L2_2.MpOnlineGameCreation
          L2_2 = L2_2.Creating
          L1_2.state = L2_2
        else
          L1_2 = PopupSpawn
          L2_2 = UIEnums
          L2_2 = L2_2.CustomPopups
          L2_2 = L2_2.MultiplayerCreateFailed
          L1_2(L2_2)
        end
      end
    else
      L1_2 = PopupGUI
      L1_2 = L1_2.state
      L2_2 = UIEnums
      L2_2 = L2_2.MpOnlineGameCreation
      L2_2 = L2_2.Creating
      if L1_2 == L2_2 then
        L1_2 = false
        L2_2 = false
        L3_2 = NetParty
        L3_2 = L3_2.ContinueCreateOnlineServer
        L3_2, L4_2 = L3_2()
        L2_2 = L4_2
        L1_2 = L3_2
        if L1_2 == true then
          if L2_2 == true then
            L3_2 = PopupGUI
            L4_2 = UIEnums
            L4_2 = L4_2.MpOnlineGameCreation
            L4_2 = L4_2.Complete
            L3_2.state = L4_2
          else
            L3_2 = NetRace
            L3_2 = L3_2.Delete
            L3_2()
            L3_2 = PopupSpawn
            L4_2 = UIEnums
            L4_2 = L4_2.CustomPopups
            L4_2 = L4_2.MultiplayerCreateFailed
            L3_2(L4_2)
          end
        end
      else
        L1_2 = PopupGUI
        L1_2 = L1_2.state
        L2_2 = UIEnums
        L2_2 = L2_2.MpOnlineGameCreation
        L2_2 = L2_2.Complete
        if L1_2 == L2_2 then
          L1_2 = net_EnterPartyLobby
          L2_2 = false
          L1_2(L2_2)
          L1_2 = PopupCancel
          L1_2()
        else
          L1_2 = print
          L2_2 = "UIEnums.CustomPopups.MultiplayerCreateOnlineGame - unknown state"
          L1_2(L2_2)
        end
      end
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerPartyTooBig
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.MP_PARTY_TOO_BIG_TITLE
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.MP_PARTY_TOO_BIG
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.DeleteGroup
L3_1 = {}
L3_1.darken = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_DELETE_GROUP
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_DELETE_GROUP_MSG
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_YES_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_NO_B
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = RemoveUserGroup
  L0_2()
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.SaveNewEvent
L3_1 = {}
L3_1.darken = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_WARNING
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_SAVE_NEW_EVENT_MSG
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_YES_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_NO_B
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = RemoveUserEvent
  L0_2()
  L0_2 = EndEventCreation
  L0_2()
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MaximumEventsReached
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ALERT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_MAX_EVENTS_REACHED_MSG
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.NoUserGroups
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_NO_USER_GROUPS
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_NO_USER_GROUPS_MSG
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.BuyUpgrade
L3_1 = {}
L3_1.darken = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.RBU_SHOP_BUY_UPGRADE_POPUP_TEXT
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_YES_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_NO_B
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = Shop_BuyUpgrade
  L0_2()
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerNoEvents
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_NO_EVENT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_NO_EVENT_MSG
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerLanSearching
L3_1 = {}
L3_1.darken = true
L3_1.no_next = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_SEARCHING_FOR_GAMES
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = NetRace
  L0_2 = L0_2.EnumerateLanGames
  L1_2 = true
  L0_2(L1_2)
  L0_2 = PopupGUI
  L0_2.timer = 0
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = PopupGUI
  L2_2 = PopupGUI
  L2_2 = L2_2.timer
  L2_2 = L2_2 + A0_2
  L1_2.timer = L2_2
  L1_2 = NetRace
  L1_2 = L1_2.IsEnumeratingLanGames
  L1_2 = L1_2()
  if L1_2 == true then
    return
  end
  L1_2 = PopupGUI
  L1_2 = L1_2.timer
  if 1 < L1_2 then
    L1_2 = NetRace
    L1_2 = L1_2.NumLanServersEnumerated
    L1_2 = L1_2()
    if L1_2 == 0 then
      L1_2 = PopupSpawn
      L2_2 = UIEnums
      L2_2 = L2_2.CustomPopups
      L2_2 = L2_2.NoLanGames
      L1_2(L2_2)
    else
      L1_2 = PopupCancel
      L2_2 = "Multiplayer\\Events\\MpLobbyList.lua"
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerE3Searching
L3_1 = {}
L3_1.darken = true
L3_1.no_next = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_SEARCHING_FOR_GAMES
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.ProfilePreLoad
L3_1 = {}
L3_1.darken = true
L4_1 = UIText
L4_1 = L4_1.POP_PROFILE_PRELOAD_TITLE
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_PROFILE_PRELOAD_MSG
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L3_1.no_back = true
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.ProfileKickedYou
L3_1 = {}
L3_1.darken = true
L4_1 = UIText
L4_1 = L4_1.POP_PROFILE_KICKED_TITLE
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_PROFILE_KICKED_MSG
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L3_1.no_back = true
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MessagesAlert
L3_1 = {}
L3_1.darken = true
L4_1 = UIText
L4_1 = L4_1.IDS_CMN_NOWT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.IDS_CMN_NOWT
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L3_1.no_back = true
function L4_1()
  local L0_2, L1_2
  L0_2 = CustomPopup
  L0_2 = L0_2.CurrentData
  L1_2 = UIGlobals
  L1_2 = L1_2.MessagesAlert
  L1_2 = L1_2.title_id
  L0_2.title_text_ID = L1_2
  L0_2 = CustomPopup
  L0_2 = L0_2.CurrentData
  L1_2 = UIGlobals
  L1_2 = L1_2.MessagesAlert
  L1_2 = L1_2.message_id
  L0_2.message_text_ID = L1_2
end
L3_1.init_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.OptionsChangeStorageDevice
L3_1 = {}
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_WARNING
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_STORAGE_MSG
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_YES_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_NO_B
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = Profile
  L0_2 = L0_2.StoreDeviceId
  L1_2 = Profile
  L1_2 = L1_2.GetPrimaryPad
  L1_2 = L1_2()
  L0_2(L1_2)
  L0_2 = UIGlobals
  L0_2 = L0_2.DoNotSave
  L1_2 = Profile
  L1_2 = L1_2.GetPrimaryPad
  L1_2 = L1_2()
  L0_2[L1_2] = false
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.GroupsCarDoNotHaveOne
L3_1 = {}
L3_1.darken = true
L4_1 = UIText
L4_1 = L4_1.POP_GROUPS_NO_CAR_TITLE
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_GROUPS_NO_CAR_MSG
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L3_1.no_back = true
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.ContentServerData
L3_1 = {}
L3_1.show_progress = true
L3_1.darken = true
L3_1.no_back = true
L3_1.no_next = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L3_1.message_text_ID = "GAME_CONTENT_SERVER_INFO"
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.SplitscreenResetScores
L3_1 = {}
L3_1.darken = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.INFO_YES_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_NO_B
L3_1.back_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_WARNING
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_SS_RESET_SCORES_MSG
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = Multiplayer
  L0_2 = L0_2.SplitscreenResetScores
  L0_2()
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.ServiceConnectionLost
L3_1 = {}
L3_1.darken = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ALERT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_DISCONNECTED_FROM_LIVE
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L3_1.no_back = true
function L4_1()
  local L0_2, L1_2
  L0_2 = UIEnums
  L0_2 = L0_2.CurrentPlatform
  L1_2 = UIEnums
  L1_2 = L1_2.Platform
  L1_2 = L1_2.Xenon
  if L0_2 == L1_2 then
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L1_2 = UIText
    L1_2 = L1_2.POP_DISCONNECTED_FROM_LIVE
    L0_2.message_text_ID = L1_2
  else
    L0_2 = UIEnums
    L0_2 = L0_2.CurrentPlatform
    L1_2 = UIEnums
    L1_2 = L1_2.Platform
    L1_2 = L1_2.PC
    if L0_2 == L1_2 then
      L0_2 = CustomPopup
      L0_2 = L0_2.CurrentData
      L1_2 = UIText
      L1_2 = L1_2.POP_DISCONNECTED_FROM_INTERNET
      L0_2.message_text_ID = L1_2
    else
      L0_2 = UIEnums
      L0_2 = L0_2.CurrentPlatform
      L1_2 = UIEnums
      L1_2 = L1_2.Platform
      L1_2 = L1_2.PS3
      if L0_2 == L1_2 then
        L0_2 = CustomPopup
        L0_2 = L0_2.CurrentData
        L1_2 = UIText
        L1_2 = L1_2.POP_DISCONNECTED_FROM_PSN
        L0_2.message_text_ID = L1_2
      end
    end
  end
end
L3_1.init_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.GarageBuyVehicle
L3_1 = {}
L3_1.darken = true
L4_1 = UIText
L4_1 = L4_1.INFO_YES_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_NO_B
L3_1.back_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_GARAGE_BUY_MSG
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = Garage_BuyCar
  L0_2()
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.GarageMiniBuyVehicle
L3_1 = {}
L3_1.darken = true
L4_1 = UIText
L4_1 = L4_1.INFO_YES_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_NO_B
L3_1.back_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_GARAGE_BUY_MSG
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = GarageMini_BuyCar
  L0_2()
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.UploadUserEvent
L3_1 = {}
L3_1.darken = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_UPLOADING_EVENT
L3_1.message_text_ID = L4_1
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L3_1.no_next = true
L3_1.no_back = true
L3_1.show_progress = true
function L4_1()
  local L0_2, L1_2
  L0_2 = PopupGUI
  L0_2.timer = 0
  L0_2 = PopupGUI
  L1_2 = UIEnums
  L1_2 = L1_2.LspState
  L1_2 = L1_2.Ready
  L0_2.state = L1_2
  L0_2 = LSP
  L0_2 = L0_2.Enable
  L1_2 = true
  L0_2(L1_2)
  L0_2 = LSP
  L0_2 = L0_2.SetFileName
  L1_2 = "Event.bin"
  L0_2(L1_2)
  L0_2 = LSP
  L0_2 = L0_2.SetFileSlot
  L1_2 = EventCreator
  L1_2 = L1_2.GetCurrentEventSlot
  L1_2 = L1_2()
  L1_2 = 6 + L1_2
  L0_2(L1_2)
  L0_2 = LSP
  L0_2 = L0_2.SetUserIndex
  L1_2 = Profile
  L1_2 = L1_2.GetPrimaryPad
  L1_2 = L1_2()
  L0_2(L1_2)
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PopupGUI
  L2_2 = PopupGUI
  L2_2 = L2_2.timer
  L2_2 = L2_2 + A0_2
  L1_2.timer = L2_2
  L1_2 = PopupGUI
  L1_2 = L1_2.state
  L2_2 = UIEnums
  L2_2 = L2_2.LspState
  L2_2 = L2_2.Ready
  if L1_2 == L2_2 then
    L1_2 = PopupGUI
    L2_2 = UIEnums
    L2_2 = L2_2.LspState
    L2_2 = L2_2.Uploading
    L1_2.state = L2_2
    L1_2 = LSP
    L1_2 = L1_2.UploadUserEvent
    L1_2()
  else
    L1_2 = PopupGUI
    L1_2 = L1_2.state
    L2_2 = UIEnums
    L2_2 = L2_2.LspState
    L2_2 = L2_2.Uploading
    if L1_2 == L2_2 then
      L1_2 = LSP
      L1_2 = L1_2.PumpCurrentTask
      L1_2, L2_2 = L1_2()
      if L2_2 == true then
        L3_2 = PopupGUI
        L4_2 = UIEnums
        L4_2 = L4_2.LspState
        L4_2 = L4_2.Finished
        L3_2.state = L4_2
        L3_2 = PopupSpawn
        L4_2 = UIEnums
        L4_2 = L4_2.CustomPopups
        L4_2 = L4_2.ContentServerError
        L3_2(L4_2)
      elseif L1_2 == false then
        L3_2 = LSP
        L3_2 = L3_2.FinishUserEventUpload
        L3_2()
        L3_2 = PopupGUI
        L4_2 = UIEnums
        L4_2 = L4_2.LspState
        L4_2 = L4_2.Finished
        L3_2.state = L4_2
      end
    else
      L1_2 = PopupGUI
      L1_2 = L1_2.state
      L2_2 = UIEnums
      L2_2 = L2_2.LspState
      L2_2 = L2_2.Finished
      if L1_2 == L2_2 then
        L1_2 = PopupGUI
        L1_2 = L1_2.timer
        if 2 < L1_2 then
          L1_2 = Back
          L1_2()
          L1_2 = EventCreator
          L1_2 = L1_2.CreateSocialCommentary
          L2_2 = EventCreator
          L2_2 = L2_2.GetCurrentEventSlot
          L2_2, L3_2, L4_2 = L2_2()
          L1_2(L2_2, L3_2, L4_2)
          L1_2 = StartAsyncSave
          L1_2()
          L1_2 = PopupCancel
          L1_2()
        end
      end
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.UploadUserGroup
L3_1 = {}
L3_1.darken = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_UPLOADING_GROUP
L3_1.message_text_ID = L4_1
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L3_1.no_next = true
L3_1.no_back = true
L3_1.show_progress = true
function L4_1()
  local L0_2, L1_2
  L0_2 = PopupGUI
  L0_2.timer = 0
  L0_2 = PopupGUI
  L1_2 = UIEnums
  L1_2 = L1_2.LspState
  L1_2 = L1_2.Ready
  L0_2.state = L1_2
  L0_2 = LSP
  L0_2 = L0_2.Enable
  L1_2 = true
  L0_2(L1_2)
  L0_2 = LSP
  L0_2 = L0_2.SetFileName
  L1_2 = "Group.bin"
  L0_2(L1_2)
  L0_2 = LSP
  L0_2 = L0_2.SetFileSlot
  L1_2 = GroupCreator
  L1_2 = L1_2.GetCurrentGroupSlot
  L1_2 = L1_2()
  L1_2 = 5 + L1_2
  L0_2(L1_2)
  L0_2 = LSP
  L0_2 = L0_2.SetUserIndex
  L1_2 = Profile
  L1_2 = L1_2.GetPrimaryPad
  L1_2 = L1_2()
  L0_2(L1_2)
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PopupGUI
  L2_2 = PopupGUI
  L2_2 = L2_2.timer
  L2_2 = L2_2 + A0_2
  L1_2.timer = L2_2
  L1_2 = PopupGUI
  L1_2 = L1_2.state
  L2_2 = UIEnums
  L2_2 = L2_2.LspState
  L2_2 = L2_2.Ready
  if L1_2 == L2_2 then
    L1_2 = PopupGUI
    L2_2 = UIEnums
    L2_2 = L2_2.LspState
    L2_2 = L2_2.Uploading
    L1_2.state = L2_2
    L1_2 = LSP
    L1_2 = L1_2.UploadUserGroup
    L1_2()
  else
    L1_2 = PopupGUI
    L1_2 = L1_2.state
    L2_2 = UIEnums
    L2_2 = L2_2.LspState
    L2_2 = L2_2.Uploading
    if L1_2 == L2_2 then
      L1_2 = LSP
      L1_2 = L1_2.PumpCurrentTask
      L1_2, L2_2 = L1_2()
      if L2_2 == true then
        L3_2 = PopupGUI
        L4_2 = UIEnums
        L4_2 = L4_2.LspState
        L4_2 = L4_2.Finished
        L3_2.state = L4_2
        L3_2 = PopupSpawn
        L4_2 = UIEnums
        L4_2 = L4_2.CustomPopups
        L4_2 = L4_2.ContentServerError
        L3_2(L4_2)
      elseif L1_2 == false then
        L3_2 = LSP
        L3_2 = L3_2.FinishUserGroupUpload
        L3_2()
        L3_2 = PopupGUI
        L4_2 = UIEnums
        L4_2 = L4_2.LspState
        L4_2 = L4_2.Finished
        L3_2.state = L4_2
      end
    else
      L1_2 = PopupGUI
      L1_2 = L1_2.state
      L2_2 = UIEnums
      L2_2 = L2_2.LspState
      L2_2 = L2_2.Finished
      if L1_2 == L2_2 then
        L1_2 = PopupGUI
        L1_2 = L1_2.timer
        if 2 < L1_2 then
          L1_2 = Back
          L1_2()
          L1_2 = StartAsyncSave
          L1_2()
          L1_2 = PopupCancel
          L1_2()
        end
      end
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.UserEventSearch
L3_1 = {}
L3_1.darken = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_SEARCHING_EVENTS
L3_1.message_text_ID = L4_1
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L3_1.no_next = true
L3_1.no_back = true
L3_1.show_progress = true
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = PopupGUI
  L0_2.timer = 0
  L0_2 = PopupGUI
  L1_2 = UIEnums
  L1_2 = L1_2.LspState
  L1_2 = L1_2.Ready
  L0_2.state = L1_2
  L0_2 = LSP
  L0_2 = L0_2.Enable
  L1_2 = true
  L0_2(L1_2)
  L0_2 = LSP
  L0_2 = L0_2.SetUserIndex
  L1_2 = Profile
  L1_2 = L1_2.GetPrimaryPad
  L1_2, L2_2 = L1_2()
  L0_2(L1_2, L2_2)
  L0_2 = LSP
  L0_2 = L0_2.ClearTags
  L0_2()
  L0_2 = LSP
  L0_2 = L0_2.AddTag
  L1_2 = 0
  L2_2 = UIEnums
  L2_2 = L2_2.ContentServerType
  L2_2 = L2_2.Event
  L0_2(L1_2, L2_2)
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = PopupGUI
  L2_2 = PopupGUI
  L2_2 = L2_2.timer
  L2_2 = L2_2 + A0_2
  L1_2.timer = L2_2
  L1_2 = PopupGUI
  L1_2 = L1_2.state
  L2_2 = UIEnums
  L2_2 = L2_2.LspState
  L2_2 = L2_2.Ready
  if L1_2 == L2_2 then
    L1_2 = PopupGUI
    L2_2 = UIEnums
    L2_2 = L2_2.LspState
    L2_2 = L2_2.Searching
    L1_2.state = L2_2
    L1_2 = LSP
    L1_2 = L1_2.SearchEvents
    L2_2 = UIGlobals
    L2_2 = L2_2.Multiplayer
    L2_2 = L2_2.EventFilter
    L1_2(L2_2)
  else
    L1_2 = PopupGUI
    L1_2 = L1_2.state
    L2_2 = UIEnums
    L2_2 = L2_2.LspState
    L2_2 = L2_2.Searching
    if L1_2 == L2_2 then
      L1_2 = LSP
      L1_2 = L1_2.PumpCurrentTask
      L1_2, L2_2 = L1_2()
      if L2_2 == true then
        L3_2 = PopupGUI
        L4_2 = UIEnums
        L4_2 = L4_2.LspState
        L4_2 = L4_2.Finished
        L3_2.state = L4_2
        L3_2 = PopupSpawn
        L4_2 = UIEnums
        L4_2 = L4_2.CustomPopups
        L4_2 = L4_2.ContentServerError
        L3_2(L4_2)
      elseif L1_2 == false then
        L3_2 = show_table
        L4_2 = LSP
        L4_2 = L4_2.GetReturnedSearchData
        L4_2 = L4_2()
        L5_2 = 1
        L3_2(L4_2, L5_2)
        L3_2 = PopupGUI
        L4_2 = UIEnums
        L4_2 = L4_2.LspState
        L4_2 = L4_2.Finished
        L3_2.state = L4_2
      end
    else
      L1_2 = PopupGUI
      L1_2 = L1_2.state
      L2_2 = UIEnums
      L2_2 = L2_2.LspState
      L2_2 = L2_2.Finished
      if L1_2 == L2_2 then
        L1_2 = PopupGUI
        L1_2 = L1_2.timer
        if 2 < L1_2 then
          L1_2 = LSP
          L1_2 = L1_2.GetNumSearchEventsResult
          L2_2 = UIGlobals
          L2_2 = L2_2.Multiplayer
          L2_2 = L2_2.EventFilter
          L1_2 = L1_2(L2_2)
          if 0 < L1_2 then
            L1_2 = PopupSpawn
            L2_2 = UIEnums
            L2_2 = L2_2.CustomPopups
            L2_2 = L2_2.DownloadUserEvents
            L1_2(L2_2)
          else
            L1_2 = PopupSpawn
            L2_2 = UIEnums
            L2_2 = L2_2.CustomPopups
            L2_2 = L2_2.ContentServerNoEventsFound
            L1_2(L2_2)
          end
        end
      end
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.DownloadUserEvents
L3_1 = {}
L3_1.darken = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_DOWNLOADING_EVENTS
L3_1.message_text_ID = L4_1
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L3_1.no_next = true
L3_1.no_back = true
L3_1.show_progress = true
function L4_1()
  local L0_2, L1_2
  L0_2 = PopupGUI
  L0_2.timer = 0
  L0_2 = PopupGUI
  L1_2 = UIEnums
  L1_2 = L1_2.LspState
  L1_2 = L1_2.Ready
  L0_2.state = L1_2
  L0_2 = LSP
  L0_2 = L0_2.Enable
  L1_2 = true
  L0_2(L1_2)
  L0_2 = LSP
  L0_2 = L0_2.SetUserIndex
  L1_2 = Profile
  L1_2 = L1_2.GetPrimaryPad
  L1_2 = L1_2()
  L0_2(L1_2)
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PopupGUI
  L2_2 = PopupGUI
  L2_2 = L2_2.timer
  L2_2 = L2_2 + A0_2
  L1_2.timer = L2_2
  L1_2 = PopupGUI
  L1_2 = L1_2.state
  L2_2 = UIEnums
  L2_2 = L2_2.LspState
  L2_2 = L2_2.Ready
  if L1_2 == L2_2 then
    L1_2 = PopupGUI
    L2_2 = UIEnums
    L2_2 = L2_2.LspState
    L2_2 = L2_2.MetaData
    L1_2.state = L2_2
    L1_2 = LSP
    L1_2 = L1_2.GetEventMetaData
    L2_2 = UIGlobals
    L2_2 = L2_2.Multiplayer
    L2_2 = L2_2.EventFilter
    L1_2(L2_2)
  else
    L1_2 = PopupGUI
    L1_2 = L1_2.state
    L2_2 = UIEnums
    L2_2 = L2_2.LspState
    L2_2 = L2_2.MetaData
    if L1_2 == L2_2 then
      L1_2 = LSP
      L1_2 = L1_2.PumpCurrentTask
      L1_2, L2_2 = L1_2()
      if L2_2 == true then
        L3_2 = PopupGUI
        L4_2 = UIEnums
        L4_2 = L4_2.LspState
        L4_2 = L4_2.Finished
        L3_2.state = L4_2
        L3_2 = PopupSpawn
        L4_2 = UIEnums
        L4_2 = L4_2.CustomPopups
        L4_2 = L4_2.ContentServerError
        L3_2(L4_2)
      elseif L1_2 == false then
        L3_2 = PopupGUI
        L4_2 = UIEnums
        L4_2 = L4_2.LspState
        L4_2 = L4_2.Downloading
        L3_2.state = L4_2
        L3_2 = LSP
        L3_2 = L3_2.DownloadUserEvents
        L3_2()
      end
    else
      L1_2 = PopupGUI
      L1_2 = L1_2.state
      L2_2 = UIEnums
      L2_2 = L2_2.LspState
      L2_2 = L2_2.Downloading
      if L1_2 == L2_2 then
        L1_2 = LSP
        L1_2 = L1_2.PumpCurrentTask
        L1_2, L2_2 = L1_2()
        if L2_2 == true then
          L3_2 = PopupSpawn
          L4_2 = UIEnums
          L4_2 = L4_2.CustomPopups
          L4_2 = L4_2.ContentServerError
          L3_2(L4_2)
        elseif L1_2 == false then
          L3_2 = PopupGUI
          L4_2 = UIEnums
          L4_2 = L4_2.LspState
          L4_2 = L4_2.Finished
          L3_2.state = L4_2
        end
      else
        L1_2 = PopupGUI
        L1_2 = L1_2.state
        L2_2 = UIEnums
        L2_2 = L2_2.LspState
        L2_2 = L2_2.Finished
        if L1_2 == L2_2 then
          L1_2 = PopupGUI
          L1_2 = L1_2.timer
          if 2 < L1_2 then
            L1_2 = LSP
            L1_2 = L1_2.GetNumDownloadedFiles
            L1_2 = L1_2()
            if 0 < L1_2 then
              L1_2 = PopupCancel
              L2_2 = "Multiplayer\\Events\\MpEventsList.lua"
              L3_2 = true
              L1_2(L2_2, L3_2)
            else
              L1_2 = print
              L2_2 = "LSP download "
              L3_2 = LSP
              L3_2 = L3_2.GetNumDownloadedFiles
              L3_2, L4_2 = L3_2()
              L1_2(L2_2, L3_2, L4_2)
              L1_2 = PopupSpawn
              L2_2 = UIEnums
              L2_2 = L2_2.CustomPopups
              L2_2 = L2_2.ContentServerError
              L1_2(L2_2)
            end
          end
        end
      end
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.ContentServerError
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ERROR
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_CONTENT_SERVER_ERROR
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.ContentServerCantUpload
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ERROR
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_CONTENT_SERVER_CANT_UPLOAD
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.ContentServerNoEventsFound
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ERROR
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_CONTENT_SERVER_NO_EVENTS_FOUND
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MultiplayerRateItem
L3_1 = {}
L3_1.darken = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.INFO_SUBMIT_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_IGNORE_X
L3_1.back_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.CMN_NOWT
L3_1.x_text_ID = L4_1
L3_1.title_text_ID = "MPL_EVENT_NAME0"
L4_1 = UIText
L4_1 = L4_1.POP_RATE_GROUP
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = PopupGUI
  L1_2 = {}
  L0_2.stars = L1_2
  L0_2 = PopupGUI
  L0_2.rating = 3
  L0_2 = 1
  L1_2 = 5
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = PopupGUI
    L4_2 = L4_2.stars
    L5_2 = SCUI_Popup
    L5_2 = L5_2.name_to_id
    L6_2 = "star_"
    L7_2 = L3_2
    L6_2 = L6_2 .. L7_2
    L5_2 = L5_2[L6_2]
    L4_2[L3_2] = L5_2
    L4_2 = UIButtons
    L4_2 = L4_2.Activated
    L5_2 = PopupGUI
    L5_2 = L5_2.stars
    L5_2 = L5_2[L3_2]
    L6_2 = true
    L4_2(L5_2, L6_2)
    if 3 < L3_2 then
      L4_2 = UIButtons
      L4_2 = L4_2.ColourStyle
      L5_2 = PopupGUI
      L5_2 = L5_2.stars
      L5_2 = L5_2[L3_2]
      L6_2 = "Main_Black"
      L4_2(L5_2, L6_2)
    end
  end
  L0_2 = UIGlobals
  L0_2 = L0_2.Multiplayer
  L0_2 = L0_2.RateEvent
  if L0_2 == true then
    L0_2 = UIGlobals
    L0_2 = L0_2.Multiplayer
    L0_2.RateEvent = false
  end
  L0_2 = Multiplayer
  L0_2 = L0_2.IsFavouriteEvent
  L1_2 = 0
  L0_2 = L0_2(L1_2)
  if L0_2 == false then
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L1_2 = UIText
    L1_2 = L1_2.INFO_TAG_FAVOURITE_EVENT
    L0_2.x_text_ID = L1_2
  else
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L0_2.x_text_ID = nil
  end
end
L3_1.init_CB = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = UIEnums
  L3_2 = L3_2.Message
  L3_2 = L3_2.ButtonLeft
  if A0_2 ~= L3_2 then
    L3_2 = UIEnums
    L3_2 = L3_2.Message
    L3_2 = L3_2.ButtonDown
    if A0_2 ~= L3_2 then
      goto lbl_30
    end
  end
  L3_2 = PopupGUI
  L3_2 = L3_2.rating
  if 0 < L3_2 then
    L3_2 = UIButtons
    L3_2 = L3_2.ColourStyle
    L4_2 = PopupGUI
    L4_2 = L4_2.stars
    L5_2 = PopupGUI
    L5_2 = L5_2.rating
    L4_2 = L4_2[L5_2]
    L5_2 = "Main_Black"
    L3_2(L4_2, L5_2)
    L3_2 = PopupGUI
    L4_2 = PopupGUI
    L4_2 = L4_2.rating
    L4_2 = L4_2 - 1
    L3_2.rating = L4_2
    goto lbl_113
    ::lbl_30::
    L3_2 = UIEnums
    L3_2 = L3_2.Message
    L3_2 = L3_2.ButtonRight
    if A0_2 ~= L3_2 then
      L3_2 = UIEnums
      L3_2 = L3_2.Message
      L3_2 = L3_2.ButtonUp
      if A0_2 ~= L3_2 then
        goto lbl_59
      end
    end
    L3_2 = PopupGUI
    L3_2 = L3_2.rating
    if L3_2 < 5 then
      L3_2 = PopupGUI
      L4_2 = PopupGUI
      L4_2 = L4_2.rating
      L4_2 = L4_2 + 1
      L3_2.rating = L4_2
      L3_2 = UIButtons
      L3_2 = L3_2.ColourStyle
      L4_2 = PopupGUI
      L4_2 = L4_2.stars
      L5_2 = PopupGUI
      L5_2 = L5_2.rating
      L4_2 = L4_2[L5_2]
      L5_2 = "Support_4"
      L3_2(L4_2, L5_2)
      goto lbl_113
      ::lbl_59::
      L3_2 = UIEnums
      L3_2 = L3_2.Message
      L3_2 = L3_2.ButtonX
      if A0_2 == L3_2 then
        L3_2 = Multiplayer
        L3_2 = L3_2.IsFavouriteEvent
        L4_2 = 0
        L3_2 = L3_2(L4_2)
        if L3_2 == false then
          L3_2 = PlaySfxNext
          L3_2()
          L3_2 = Multiplayer
          L3_2 = L3_2.AddFavouriteEvent
          L4_2 = 0
          L3_2 = L3_2(L4_2)
          if L3_2 == false then
            L3_2 = PopupSpawn
            L4_2 = UIEnums
            L4_2 = L4_2.CustomPopups
            L4_2 = L4_2.MaxFavourties
            L3_2(L4_2)
          end
          L3_2 = UIGlobals
          L3_2 = L3_2.CurrentLanguage
          L4_2 = UIEnums
          L4_2 = L4_2.Language
          L4_2 = L4_2.English
          L3_2 = L3_2 == L4_2
          if L3_2 == false then
            L4_2 = UIButtons
            L4_2 = L4_2.Size
            L5_2 = SCUI_Popup
            L5_2 = L5_2.name_to_id
            L5_2 = L5_2.info_1_o
            L6_2 = 0
            L7_2 = 0
            L8_2 = 0
            L4_2(L5_2, L6_2, L7_2, L8_2)
          else
            L4_2 = UIButtons
            L4_2 = L4_2.Size
            L5_2 = SCUI_Popup
            L5_2 = L5_2.name_to_id
            L5_2 = L5_2.info_1
            L6_2 = 0
            L7_2 = 0
            L8_2 = 0
            L4_2(L5_2, L6_2, L7_2, L8_2)
          end
        end
      end
    end
  end
  ::lbl_113::
end
L3_1.message_CB = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = print
  L1_2 = "GROUP RATING"
  L2_2 = PopupGUI
  L2_2 = L2_2.rating
  L0_2(L1_2, L2_2)
  L0_2 = LSP
  L0_2 = L0_2.VoteUserEvent
  L1_2 = PopupGUI
  L1_2 = L1_2.rating
  L0_2(L1_2)
  L0_2 = PopupSpawn
  L1_2 = UIEnums
  L1_2 = L1_2.CustomPopups
  L1_2 = L1_2.SubmittingEventRating
  L0_2(L1_2)
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.NoUserEvents
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_SUBMITTING_EVENT_RATING
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.NoUserEvents
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ERROR
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_NO_USER_EVENTS
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.DeleteEvent
L3_1 = {}
L3_1.darken = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_ALERT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_DELETE_EVENT_MSG
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_YES_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_NO_B
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = RemoveUserEvent
  L0_2()
  L0_2 = StartAsyncSave
  L0_2()
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.NoFavouriteEvents
L3_1 = {}
L3_1.darken = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L3_1.no_back = true
L4_1 = UIText
L4_1 = L4_1.POP_ERROR
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_NO_FAVOURITE_EVENTS
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.NoRecentEvents
L3_1 = {}
L3_1.darken = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L3_1.no_back = true
L4_1 = UIText
L4_1 = L4_1.POP_ERROR
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_NO_RECENT_EVENTS
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.VerifyEventName
L3_1 = {}
L3_1.darken = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L3_1.no_back = true
L3_1.no_next = true
L3_1.show_progress = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_VERIFYING_EVENT_NAME
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = PopupGUI
  L0_2.timer = 0
  L0_2 = PopupGUI
  L1_2 = UIEnums
  L1_2 = L1_2.PopupState
  L1_2 = L1_2.Ready
  L0_2.state = L1_2
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PopupGUI
  L2_2 = PopupGUI
  L2_2 = L2_2.timer
  L2_2 = L2_2 + A0_2
  L1_2.timer = L2_2
  L1_2 = PopupGUI
  L1_2 = L1_2.state
  L2_2 = UIEnums
  L2_2 = L2_2.PopupState
  L2_2 = L2_2.Ready
  if L1_2 == L2_2 then
    L1_2 = PopupGUI
    L2_2 = UIEnums
    L2_2 = L2_2.PopupState
    L2_2 = L2_2.Busy
    L1_2.state = L2_2
    L1_2 = EventCreator
    L1_2 = L1_2.VerifyEventName
    L1_2()
  else
    L1_2 = PopupGUI
    L1_2 = L1_2.state
    L2_2 = UIEnums
    L2_2 = L2_2.PopupState
    L2_2 = L2_2.Busy
    if L1_2 == L2_2 then
      L1_2 = EventCreator
      L1_2 = L1_2.PollVerifyString
      L1_2, L2_2 = L1_2()
      if L1_2 == false then
        if L2_2 == false then
          L3_2 = PopupSpawn
          L4_2 = UIEnums
          L4_2 = L4_2.CustomPopups
          L4_2 = L4_2.InvalidEventName
          L3_2(L4_2)
        else
          L3_2 = PopupSpawn
          L4_2 = UIEnums
          L4_2 = L4_2.CustomPopups
          L4_2 = L4_2.VerifyEventDesc
          L3_2(L4_2)
        end
      end
    else
      L1_2 = PopupGUI
      L1_2 = L1_2.state
      L2_2 = UIEnums
      L2_2 = L2_2.PopupState
      L2_2 = L2_2.Finished
      if L1_2 == L2_2 then
      end
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.VerifyEventDesc
L3_1 = {}
L3_1.darken = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L3_1.no_back = true
L3_1.no_next = true
L3_1.show_progress = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_VERIFYING_EVENT_DESC
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = PopupGUI
  L0_2.timer = 0
  L0_2 = PopupGUI
  L1_2 = UIEnums
  L1_2 = L1_2.PopupState
  L1_2 = L1_2.Ready
  L0_2.state = L1_2
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PopupGUI
  L2_2 = PopupGUI
  L2_2 = L2_2.timer
  L2_2 = L2_2 + A0_2
  L1_2.timer = L2_2
  L1_2 = PopupGUI
  L1_2 = L1_2.state
  L2_2 = UIEnums
  L2_2 = L2_2.PopupState
  L2_2 = L2_2.Ready
  if L1_2 == L2_2 then
    L1_2 = PopupGUI
    L2_2 = UIEnums
    L2_2 = L2_2.PopupState
    L2_2 = L2_2.Busy
    L1_2.state = L2_2
    L1_2 = EventCreator
    L1_2 = L1_2.VerifyEventDesc
    L1_2()
  else
    L1_2 = PopupGUI
    L1_2 = L1_2.state
    L2_2 = UIEnums
    L2_2 = L2_2.PopupState
    L2_2 = L2_2.Busy
    if L1_2 == L2_2 then
      L1_2 = EventCreator
      L1_2 = L1_2.PollVerifyString
      L1_2, L2_2 = L1_2()
      if L1_2 == false then
        if L2_2 == false then
          L3_2 = PopupSpawn
          L4_2 = UIEnums
          L4_2 = L4_2.CustomPopups
          L4_2 = L4_2.InvalidEventDesc
          L3_2(L4_2)
        else
          L3_2 = PopupSpawn
          L4_2 = UIEnums
          L4_2 = L4_2.CustomPopups
          L4_2 = L4_2.UploadUserEvent
          L3_2(L4_2)
        end
      end
    else
      L1_2 = PopupGUI
      L1_2 = L1_2.state
      L2_2 = UIEnums
      L2_2 = L2_2.PopupState
      L2_2 = L2_2.Finished
      if L1_2 == L2_2 then
      end
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.InvalidEventName
L3_1 = {}
L3_1.darken = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L3_1.no_back = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ALERT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_INVALID_EVENT_NAME
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.InvalidEventDesc
L3_1 = {}
L3_1.darken = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L3_1.no_back = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ALERT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_INVALID_EVENT_DESC
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.SubmittingEventRating
L3_1 = {}
L3_1.darken = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L3_1.no_back = true
L3_1.no_next = true
L3_1.show_progress = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_SUBMITTING_EVENT_RATING
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = PopupGUI
  L0_2.timer = 0
  L0_2 = PopupGUI
  L1_2 = UIEnums
  L1_2 = L1_2.PopupState
  L1_2 = L1_2.Ready
  L0_2.state = L1_2
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PopupGUI
  L2_2 = PopupGUI
  L2_2 = L2_2.timer
  L2_2 = L2_2 + A0_2
  L1_2.timer = L2_2
  L1_2 = PopupGUI
  L1_2 = L1_2.state
  L2_2 = UIEnums
  L2_2 = L2_2.PopupState
  L2_2 = L2_2.Ready
  if L1_2 == L2_2 then
    L1_2 = PopupGUI
    L2_2 = UIEnums
    L2_2 = L2_2.PopupState
    L2_2 = L2_2.Busy
    L1_2.state = L2_2
  else
    L1_2 = PopupGUI
    L1_2 = L1_2.state
    L2_2 = UIEnums
    L2_2 = L2_2.PopupState
    L2_2 = L2_2.Busy
    if L1_2 == L2_2 then
      L1_2 = LSP
      L1_2 = L1_2.CheckCurrentTask
      L1_2, L2_2 = L1_2()
      if L2_2 == true then
        L3_2 = PopupSpawn
        L4_2 = UIEnums
        L4_2 = L4_2.CustomPopups
        L4_2 = L4_2.ContentServerError
        L3_2(L4_2)
      elseif L1_2 == false then
        L3_2 = PopupGUI
        L4_2 = UIEnums
        L4_2 = L4_2.PopupState
        L4_2 = L4_2.Finished
        L3_2.state = L4_2
      end
    else
      L1_2 = PopupGUI
      L1_2 = L1_2.state
      L2_2 = UIEnums
      L2_2 = L2_2.PopupState
      L2_2 = L2_2.Finished
      if L1_2 == L2_2 then
        L1_2 = PopupGUI
        L1_2 = L1_2.timer
        if 2 < L1_2 then
          L1_2 = PopupSpawn
          L2_2 = UIEnums
          L2_2 = L2_2.CustomPopups
          L2_2 = L2_2.EventRatingComplete
          L1_2(L2_2)
        end
      end
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.EventRatingComplete
L3_1 = {}
L3_1.darken = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L3_1.no_back = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_RATING_COMPLETE
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.TwitterUserUnknown
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_TWITTER
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TWITTER_LOGIN_ERROR
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.SaveEventChanges
L3_1 = {}
L3_1.darken = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ALERT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_SAVE_EVENT_MSG
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_YES_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_CANCEL
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = SaveEvent
  L0_2()
end
L3_1.next_CB = L4_1
function L4_1()
  local L0_2, L1_2
end
L3_1.back_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.ConfirmRemoveRace
L3_1 = {}
L3_1.darken = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ALERT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_REMOVE_EVENT_RACE
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_YES_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_NO_B
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = RemoveEventRace
  L0_2()
end
L3_1.next_CB = L4_1
function L4_1()
  local L0_2, L1_2
end
L3_1.back_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.ContentServerGeneralError
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ERROR
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_CONTENT_SERVER_GENERAL_ERROR
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_TRY_RECONNECT
L3_1.x_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = net_CanReconnectToDemonware
  L0_2 = L0_2()
  if L0_2 == false then
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L0_2.x_text_ID = nil
    L0_2 = PopupGUI
    L0_2.ShowingX = false
  else
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L1_2 = UIText
    L1_2 = L1_2.INFO_TRY_RECONNECT
    L0_2.x_text_ID = L1_2
    L0_2 = PopupGUI
    L0_2.ShowingX = true
  end
end
L3_1.init_CB = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = UIEnums
  L3_2 = L3_2.Message
  L3_2 = L3_2.ButtonX
  if A0_2 == L3_2 then
    L3_2 = net_CanReconnectToDemonware
    L3_2 = L3_2()
    if L3_2 == true then
      L3_2 = PlaySfxNext
      L3_2()
      L3_2 = net_StartServiceConnection
      L4_2 = true
      L5_2 = nil
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L3_1.message_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = net_CanReconnectToDemonware
  L1_2 = L1_2()
  if L1_2 == false then
    L1_2 = PopupGUI
    L1_2 = L1_2.ShowingX
    if L1_2 == true then
      L1_2 = PopupSpawn
      L2_2 = UIEnums
      L2_2 = L2_2.CustomPopups
      L2_2 = L2_2.ContentServerGeneralError
      L1_2(L2_2)
    end
  else
    L1_2 = PopupGUI
    L1_2 = L1_2.ShowingX
    if L1_2 == false then
      L1_2 = PopupSpawn
      L2_2 = UIEnums
      L2_2 = L2_2.CustomPopups
      L2_2 = L2_2.ContentServerGeneralError
      L1_2(L2_2)
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.ContentServerUploadBandwidthError
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ERROR
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_CONTENT_SERVER_UPLOAD_BANDWIDTH_ERROR
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.ContentServerDownloadBandwidthError
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ERROR
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_CONTENT_SERVER_DOWNLOAD_BANDWIDTH_ERROR
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.ThankyouForVoting
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_THANK_YOU_FOR_VOTING
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2.FinishedVoting = true
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.ContentServerNoResultsFromSearch
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_SEARCH_RETURNED_NO_RESULTS
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = PopupCancel
  L1_2 = "Photos\\PhotoSearchParams.lua"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.ContentServerNoUserPhotos
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_SEARCH_NO_USER_PHOTOS
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = PopupCancel
  L1_2 = "Photos\\Photos.lua"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.ContentServerLeaderboardError
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_SEARCH_LEADERBOARD_ERROR
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = PopupCancel
  L1_2 = "Photos\\Photos.lua"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.AlreadyVoted
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_ALREADY_VOTED
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = PopupCancel
  L1_2 = "Photos\\ViewPhoto.lua"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.OverwritePhotoServerSlot
L3_1 = {}
L3_1.darken = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ALERT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_OVERWRITE_SERVER_PHOTO_SLOT
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_YES_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_NO_B
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = ContextTable
  L1_2 = UIGlobals
  L1_2 = L1_2.PhotoSlotContext
  L0_2 = L0_2[L1_2]
  L0_2 = L0_2.GUI
  L1_2 = DoUpload
  L2_2 = UIButtons
  L2_2 = L2_2.GetSelection
  L3_2 = L0_2.node_list_id
  L2_2 = L2_2(L3_2)
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.RetryRace
L3_1 = {}
L3_1.darken = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_WARNING
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_RETRY_RACE
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_SELECT
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_BACK
L3_1.back_text_ID = L4_1
L4_1 = {}
L5_1 = {}
L6_1 = UIEnums
L6_1 = L6_1.PopupOptions
L6_1 = L6_1.Yes
L5_1.value = L6_1
L6_1 = UIText
L6_1 = L6_1.POP_OPTION_YES
L5_1.name = L6_1
L6_1 = {}
L7_1 = UIEnums
L7_1 = L7_1.PopupOptions
L7_1 = L7_1.No
L6_1.value = L7_1
L7_1 = UIText
L7_1 = L7_1.POP_OPTION_NO
L6_1.name = L7_1
L4_1[1] = L5_1
L4_1[2] = L6_1
L3_1.options = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.TwitterPostError
L3_1 = {}
L3_1.darken = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_TWITTER
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TWITTER_POST_ERROR
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_X_AUTHENTICATE
L3_1.x_text_ID = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = UIEnums
  L3_2 = L3_2.Message
  L3_2 = L3_2.ButtonX
  if A0_2 == L3_2 then
    L3_2 = PlaySfxNext
    L3_2()
    L3_2 = UIGlobals
    L3_2.TwitterBackToTweetScreen = true
    L3_2 = PopupCancel
    L4_2 = "Shared\\TwitterAuthenticate.lua"
    L5_2 = nil
    L6_2 = nil
    L7_2 = UIEnums
    L7_2 = L7_2.Context
    L7_2 = L7_2.Blurb
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L3_1.message_CB = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2.TwitterBackToTweetScreen = false
  L0_2 = UIGlobals
  L0_2.TwitterClose = true
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.TwitterConnectionError
L3_1 = {}
L3_1.darken = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_TWITTER
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TWITTER_CONNECTION_ERROR
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2.TwitterClose = true
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.MaxEventRaces
L3_1 = {}
L3_1.darken = true
L3_1.no_back = true
L3_1.colour_style = "Main_Black"
L3_1.intensity = 0.6
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ALERT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_MAX_EVENT_RACES
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L2_1 = L2_1.TwitterPosted
L3_1 = {}
L3_1.darken = true
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_TWITTER
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TWITTER_POSTED
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2.TwitterClose = true
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "EventOptions"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_EVENT_OPTIONS"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L5_1 = "INFO_HOST_PRIVATE_EVENT"
L4_1 = L4_1[L5_1]
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_CANCEL
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = HostGame
  L1_2 = false
  L0_2(L1_2)
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "NetConnectionTask"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = true
L3_1.no_next = L4_1
L4_1 = nil
L3_1.colour_style = L4_1
L4_1 = nil
L3_1.icon_name = L4_1
L4_1 = true
L3_1.show_progress = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.CMN_NOWT
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "net connection start"
  L0_2(L1_2)
  L0_2 = PopupGUI
  L0_2.profile_download_failed = false
  L0_2 = CustomPopup
  L0_2 = L0_2.CurrentData
  L1_2 = UIGlobals
  L1_2 = L1_2.NetConnectionDarken
  L0_2.darken = L1_2
  L0_2 = UIGlobals
  L0_2 = L0_2.Network
  L0_2.AgeConnectionError = false
  L0_2 = PopupGUI
  L1_2 = UIEnums
  L1_2 = L1_2.PopupState
  L1_2 = L1_2.Ready
  L0_2.State = L1_2
  L0_2 = PopupGUI
  L0_2.Timer = 0
  L0_2 = UIGlobals
  L0_2 = L0_2.server_connection
  L0_2 = L0_2.online_mode
  if L0_2 == true then
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L1_2 = UIText
    L1_2 = L1_2.RBC_SERVER_CONNECTION_ONLINE
    L0_2.message_text_ID = L1_2
  else
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L1_2 = UIText
    L1_2 = L1_2.RBC_SERVER_CONNECTION_OFFLINE
    L0_2.message_text_ID = L1_2
  end
  L0_2 = IsMultiplayerMode
  L0_2 = L0_2()
  if L0_2 == true then
    L0_2 = print
    L1_2 = "is multiplayer"
    L0_2(L1_2)
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L0_2.colour_style = "Main_Black"
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L0_2.intensity = 0.6
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L0_2.icon_name = "groups"
  else
    L0_2 = print
    L1_2 = "is singleplayer"
    L0_2(L1_2)
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L0_2.colour_style = "Main_2"
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L0_2.icon_name = "bio"
  end
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = PopupGUI
  L1_2 = L1_2.State
  L2_2 = UIEnums
  L2_2 = L2_2.PopupState
  L2_2 = L2_2.Ready
  if L1_2 == L2_2 then
    L1_2 = UIEnums
    L1_2 = L1_2.Network
    L1_2 = L1_2.Router
    L1_2 = L1_2.eConnectionStateNotActive
    L2_2 = UIEnums
    L2_2 = L2_2.Network
    L2_2 = L2_2.Router
    L2_2 = L2_2.eConnectionResultNone
    L3_2 = false
    L4_2 = NetServices
    L4_2 = L4_2.ConnectionStatus
    L4_2, L5_2, L6_2 = L4_2()
    L3_2 = L6_2
    L2_2 = L5_2
    L1_2 = L4_2
    L4_2 = PopupGUI
    L5_2 = UIEnums
    L5_2 = L5_2.PopupState
    L5_2 = L5_2.Busy
    L4_2.State = L5_2
    L4_2 = net_FlushEverything
    L5_2 = true
    L4_2(L5_2)
    L4_2 = NetServices
    L4_2 = L4_2.Connect
    L5_2 = UIGlobals
    L5_2 = L5_2.server_connection
    L5_2 = L5_2.online_mode
    L4_2 = L4_2(L5_2)
    if L4_2 == false then
      L4_2 = PopupGUI
      L5_2 = UIEnums
      L5_2 = L5_2.PopupState
      L5_2 = L5_2.Failed
      L4_2.State = L5_2
    end
  else
    L1_2 = PopupGUI
    L1_2 = L1_2.State
    L2_2 = UIEnums
    L2_2 = L2_2.PopupState
    L2_2 = L2_2.Busy
    if L1_2 == L2_2 then
      L1_2 = UIEnums
      L1_2 = L1_2.Network
      L1_2 = L1_2.Router
      L1_2 = L1_2.eConnectionStateNotActive
      L2_2 = UIEnums
      L2_2 = L2_2.Network
      L2_2 = L2_2.Router
      L2_2 = L2_2.eConnectionResultNone
      L3_2 = false
      L4_2 = NetServices
      L4_2 = L4_2.ConnectionStatus
      L4_2, L5_2, L6_2 = L4_2()
      L3_2 = L6_2
      L2_2 = L5_2
      L1_2 = L4_2
      L4_2 = UIEnums
      L4_2 = L4_2.Network
      L4_2 = L4_2.Router
      L4_2 = L4_2.eConnectionStateComplete
      if L1_2 == L4_2 then
        L4_2 = net_connection_CompleteConnect
        L4_2()
        L4_2 = PopupGUI
        L5_2 = UIEnums
        L5_2 = L5_2.PopupState
        L5_2 = L5_2.ServerTime
        L4_2.State = L5_2
      else
        L4_2 = UIEnums
        L4_2 = L4_2.Network
        L4_2 = L4_2.Router
        L4_2 = L4_2.eConnectionStateFailed
        if L1_2 ~= L4_2 then
          L4_2 = UIEnums
          L4_2 = L4_2.Network
          L4_2 = L4_2.Router
          L4_2 = L4_2.eConnectionStateNotActive
        end
        if L1_2 == L4_2 then
          L4_2 = UIEnums
          L4_2 = L4_2.Network
          L4_2 = L4_2.Router
          L4_2 = L4_2.eConnectionResultNoServiceProvider
          if L2_2 == L4_2 then
            L4_2 = UIGlobals
            L4_2 = L4_2.server_connection
            L4_2 = L4_2.online_mode
            if L4_2 == true then
              L4_2 = net_CloseServiceConnection
              L4_2()
              L4_2 = UIGlobals
              L4_2 = L4_2.server_connection
              L4_2.active = false
              L4_2 = print
              L5_2 = "net connection error"
              L4_2(L5_2)
              L4_2 = PopupSpawn
              L5_2 = UIEnums
              L5_2 = L5_2.CustomPopups
              L5_2 = L5_2.NetConnectionErrorNoOnline
              L4_2(L5_2)
            else
              L4_2 = PopupGUI
              L5_2 = UIEnums
              L5_2 = L5_2.PopupState
              L5_2 = L5_2.SilentExit
              L4_2.State = L5_2
              L4_2 = PopupCancel
              L4_2()
              L4_2 = UIGlobals
              L4_2 = L4_2.server_connection
              L4_2.active = false
              L4_2 = print
              L5_2 = "net connection success"
              L4_2(L5_2)
              L4_2 = UIGlobals
              L4_2 = L4_2.server_connection
              L4_2 = L4_2.callback
              if L4_2 ~= nil then
                L4_2 = UIGlobals
                L4_2 = L4_2.server_connection
                L4_2 = L4_2.callback
                L5_2 = true
                L4_2(L5_2)
              end
            end
          else
            L4_2 = UIEnums
            L4_2 = L4_2.Network
            L4_2 = L4_2.Router
            L4_2 = L4_2.eConnectionResultAgeError
            if L2_2 == L4_2 then
              L4_2 = UIGlobals
              L4_2 = L4_2.Network
              L4_2.AgeConnectionError = true
              L4_2 = PopupGUI
              L5_2 = UIEnums
              L5_2 = L5_2.PopupState
              L5_2 = L5_2.Failed
              L4_2.State = L5_2
              L4_2 = net_CloseServiceConnection
              L4_2()
            else
              L4_2 = UIEnums
              L4_2 = L4_2.Network
              L4_2 = L4_2.Router
              L4_2 = L4_2.eConnectionResultInvalidUserName
              if L2_2 == L4_2 then
                L4_2 = PopupGUI
                L5_2 = UIEnums
                L5_2 = L5_2.PopupState
                L5_2 = L5_2.Failed
                L4_2.State = L5_2
              else
                L4_2 = UIEnums
                L4_2 = L4_2.Network
                L4_2 = L4_2.Router
                L4_2 = L4_2.eConnectionResultInvalidPassword
                if L2_2 == L4_2 then
                  L4_2 = PopupGUI
                  L5_2 = UIEnums
                  L5_2 = L5_2.PopupState
                  L5_2 = L5_2.Failed
                  L4_2.State = L5_2
                else
                  L4_2 = PopupGUI
                  L5_2 = UIEnums
                  L5_2 = L5_2.PopupState
                  L5_2 = L5_2.Failed
                  L4_2.State = L5_2
                end
              end
            end
          end
        end
      end
    else
      L1_2 = PopupGUI
      L1_2 = L1_2.State
      L2_2 = UIEnums
      L2_2 = L2_2.PopupState
      L2_2 = L2_2.ServerTime
      if L1_2 == L2_2 then
        L1_2 = NetServices
        L1_2 = L1_2.StartServerTimeStampTask
        L1_2 = L1_2()
        if L1_2 == true then
          L2_2 = PopupGUI
          L3_2 = UIEnums
          L3_2 = L3_2.PopupState
          L3_2 = L3_2.Finished
          L2_2.State = L3_2
          L2_2 = LSP
          L2_2 = L2_2.Enable
          L3_2 = true
          L2_2(L3_2)
          L2_2 = UIGlobals
          L2_2.DoPublisherCheck = true
        end
      else
        L1_2 = PopupGUI
        L1_2 = L1_2.State
        L2_2 = UIEnums
        L2_2 = L2_2.PopupState
        L2_2 = L2_2.Failed
        if L1_2 == L2_2 then
          L1_2 = PopupGUI
          L2_2 = PopupGUI
          L2_2 = L2_2.Timer
          L2_2 = L2_2 + A0_2
          L1_2.Timer = L2_2
          L1_2 = PopupGUI
          L1_2 = L1_2.Timer
          if 0 < L1_2 then
            L1_2 = LSP
            L1_2 = L1_2.Enable
            L2_2 = false
            L1_2(L2_2)
            L1_2 = net_CloseServiceConnection
            L1_2()
            L1_2 = UIGlobals
            L1_2 = L1_2.server_connection
            L1_2.active = false
            L1_2 = NetServices
            L1_2 = L1_2.MpBetaExpired
            L1_2 = L1_2()
            if L1_2 == true then
              L1_2 = PopupGUI
              L1_2.Timer = 0
              L1_2 = MultiplayerBetaExpired
              L1_2()
            else
              L1_2 = PopupGUI
              L1_2 = L1_2.profile_download_failed
              if L1_2 == true then
                L1_2 = PopupSpawn
                L2_2 = UIEnums
                L2_2 = L2_2.CustomPopups
                L2_2 = L2_2.ProfileDownloadFailed
                L1_2(L2_2)
              else
                L1_2 = print
                L2_2 = "net connection error"
                L1_2(L2_2)
                L1_2 = PopupSpawn
                L2_2 = UIEnums
                L2_2 = L2_2.CustomPopups
                L2_2 = L2_2.NetConnectionError
                L1_2(L2_2)
              end
            end
            L1_2 = NetServices
            L1_2 = L1_2.ClearGameInvite
            L1_2()
            L1_2 = net_GameInviteFailed
            L1_2()
          end
        else
          L1_2 = PopupGUI
          L1_2 = L1_2.State
          L2_2 = UIEnums
          L2_2 = L2_2.PopupState
          L2_2 = L2_2.Finished
          if L1_2 == L2_2 then
            L1_2 = PopupGUI
            L2_2 = PopupGUI
            L2_2 = L2_2.Timer
            L2_2 = L2_2 + A0_2
            L1_2.Timer = L2_2
            L1_2 = PopupGUI
            L1_2 = L1_2.Timer
            if 1.5 < L1_2 then
              L1_2 = UIGlobals
              L1_2 = L1_2.DoPublisherCheck
              if L1_2 == true then
                L1_2 = Amax
                L1_2 = L1_2.TwitterCheckPublisherFile
                L1_2()
                L1_2 = Amax
                L1_2 = L1_2.FacebookCheckPublisherFile
                L1_2()
                L1_2 = Social
                L1_2 = L1_2.DownloadChallengeProgression
                L1_2()
                L1_2 = UIGlobals
                L1_2.DoPublisherCheck = nil
              end
              L1_2 = Amax
              L1_2 = L1_2.TwitterPublisherFileCheckFinished
              L1_2 = L1_2()
              L2_2 = Amax
              L2_2 = L2_2.FacebookPublisherFileCheckFinished
              L2_2 = L2_2()
              L3_2 = Social
              L3_2 = L3_2.IsDownloadChallengeProgressionComplete
              L3_2 = L3_2()
              L4_2 = UIGlobals
              L4_2 = L4_2.server_connection
              L4_2 = L4_2.online_mode
              if L4_2 == false or L1_2 == true and L2_2 == true and L3_2 == true then
                L4_2 = UIGlobals
                L4_2 = L4_2.server_connection
                L4_2 = L4_2.online_mode
                if L4_2 == true then
                  L4_2 = Amax
                  L4_2 = L4_2.StartFriendEnumeration
                  L4_2()
                end
                L4_2 = NetServices
                L4_2 = L4_2.MpBetaExpired
                L4_2 = L4_2()
                if L4_2 == true then
                  L4_2 = LSP
                  L4_2 = L4_2.Enable
                  L5_2 = false
                  L4_2(L5_2)
                  L4_2 = net_CloseServiceConnection
                  L4_2()
                  L4_2 = UIGlobals
                  L4_2 = L4_2.server_connection
                  L4_2.active = false
                  L4_2 = PopupGUI
                  L4_2.Timer = 0
                  L4_2 = MultiplayerBetaExpired
                  L4_2()
                else
                  L4_2 = net_EnableGlobalUpdate
                  L5_2 = true
                  L4_2(L5_2)
                  L4_2 = PopupCancel
                  L4_2()
                  L4_2 = UIGlobals
                  L4_2 = L4_2.server_connection
                  L4_2.active = false
                  L4_2 = print
                  L5_2 = "net connection success"
                  L4_2(L5_2)
                  L4_2 = UIGlobals
                  L4_2 = L4_2.server_connection
                  L4_2 = L4_2.callback
                  if L4_2 ~= nil then
                    L4_2 = UIGlobals
                    L4_2 = L4_2.server_connection
                    L4_2 = L4_2.callback
                    L5_2 = true
                    L4_2(L5_2)
                  end
                end
              end
            end
          else
            L1_2 = PopupGUI
            L1_2 = L1_2.State
            L2_2 = UIEnums
            L2_2 = L2_2.PopupState
            L2_2 = L2_2.SilentExit
            if L1_2 == L2_2 then
            end
          end
        end
      end
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "NetConnectionError"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ERROR
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.CMN_NOWT
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = IsFunction
  L1_2 = EnableCarousel
  L0_2 = L0_2(L1_2)
  if L0_2 == true then
    L0_2 = EnableCarousel
    L1_2 = true
    L0_2(L1_2)
  end
end
L3_1.end_CB = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2 = L0_2.server_connection
  L0_2 = L0_2.online_mode
  if L0_2 == true then
    L0_2 = UIGlobals
    L0_2 = L0_2.Network
    L0_2 = L0_2.AgeConnectionError
    if L0_2 == false then
      L0_2 = CustomPopup
      L0_2 = L0_2.CurrentData
      L1_2 = UIText
      L1_2 = L1_2.RBC_SERVER_CONNECTION_FAILED
      L0_2.message_text_ID = L1_2
      L0_2 = UIEnums
      L0_2 = L0_2.CurrentPlatform
      L1_2 = UIEnums
      L1_2 = L1_2.Platform
      L1_2 = L1_2.PS3
      if L0_2 == L1_2 then
        L0_2 = Profile
        L0_2 = L0_2.PadProfileOnline
        L1_2 = Profile
        L1_2 = L1_2.GetPrimaryPad
        L1_2 = L1_2()
        L0_2 = L0_2(L1_2)
        if L0_2 == false then
          L0_2 = CustomPopup
          L0_2 = L0_2.CurrentData
          L1_2 = UIText
          L1_2 = L1_2.RBC_SERVER_CONNECTION_FAILED_ONLINE_REQUIRED
          L0_2.message_text_ID = L1_2
        end
      end
    else
      L0_2 = CustomPopup
      L0_2 = L0_2.CurrentData
      L1_2 = UIText
      L1_2 = L1_2.RBC_SERVER_CONNECTION_FAILED_AGE_CHECK
      L0_2.message_text_ID = L1_2
    end
  else
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L1_2 = UIText
    L1_2 = L1_2.RBC_SERVER_CONNECTION_FAILED
    L0_2.message_text_ID = L1_2
  end
end
L3_1.init_CB = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2 = L0_2.server_connection
  L0_2 = L0_2.callback
  if L0_2 ~= nil then
    L0_2 = UIGlobals
    L0_2 = L0_2.server_connection
    L0_2 = L0_2.callback
    L1_2 = false
    L0_2(L1_2)
  end
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "ProfileUploadFailed"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ERROR
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "PRO_UPLOAD_FAILED"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "ProfileDownloadFailed"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ERROR
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "PRO_DOWNLOAD_FAILED"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2 = L0_2.server_connection
  L0_2 = L0_2.callback
  if L0_2 ~= nil then
    L0_2 = UIGlobals
    L0_2 = L0_2.server_connection
    L0_2 = L0_2.callback
    L1_2 = false
    L0_2(L1_2)
  end
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "NetConnectionErrorNoOnline"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ERROR
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "RBC_SERVER_CONNECTION_FAILED_ONLINE_REQUIRED"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
end
L3_1.init_CB = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2 = L0_2.server_connection
  L0_2 = L0_2.callback
  if L0_2 ~= nil then
    L0_2 = UIGlobals
    L0_2 = L0_2.server_connection
    L0_2 = L0_2.callback
    L1_2 = false
    L0_2(L1_2)
  end
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "LeaderboardNoScore"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_LEADERBOARDS_NO_SCORE"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "LeaderboardNoFriends"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_LEADERBOARDS_NO_FRIENDS"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "ConfirmLegendMode"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L5_1 = "POP_TITLE_LEGEND"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = "GAME_LEGEND_RESET"
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_SELECT
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_BACK
L3_1.back_text_ID = L4_1
L4_1 = {}
L5_1 = {}
L6_1 = UIEnums
L6_1 = L6_1.PopupOptions
L6_1 = L6_1.Yes
L5_1.value = L6_1
L6_1 = UIText
L7_1 = "POP_OPTION_LEGEND"
L6_1 = L6_1[L7_1]
L5_1.name = L6_1
L6_1 = {}
L7_1 = UIEnums
L7_1 = L7_1.PopupOptions
L7_1 = L7_1.No
L6_1.value = L7_1
L7_1 = UIText
L8_1 = "POP_OPTION_CANCEL"
L7_1 = L7_1[L8_1]
L6_1.name = L7_1
L4_1[1] = L5_1
L4_1[2] = L6_1
L3_1.options = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = PopupGUI
  L0_2 = L0_2.send_arg3
  L1_2 = UIEnums
  L1_2 = L1_2.PopupOptions
  L1_2 = L1_2.Yes
  if L0_2 == L1_2 then
    L0_2 = Multiplayer
    L0_2 = L0_2.LegendModeReset
    L0_2()
    L0_2 = StartAsyncSave
    L0_2()
    L0_2 = PopupCancel
    L1_2 = "Multiplayer\\MpOnline.lua"
    L2_2 = true
    L0_2(L1_2, L2_2)
  end
end
L3_1.end_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "MaxFavourties"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ALERT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_MAXED_FAVOURITES_REACHED"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "TwitterNotAvailable"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_TWITTER
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_TWITTER_NOT_AVAILABLE"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_TRY_RECONNECT
L3_1.x_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = net_CanReconnectToDemonware
  L0_2 = L0_2()
  if L0_2 == false then
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L0_2.x_text_ID = nil
  else
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L1_2 = UIText
    L1_2 = L1_2.INFO_TRY_RECONNECT
    L0_2.x_text_ID = L1_2
  end
  L0_2 = UIEnums
  L0_2 = L0_2.CurrentPlatform
  L1_2 = UIEnums
  L1_2 = L1_2.Platform
  L1_2 = L1_2.PS3
  if L0_2 == L1_2 then
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L1_2 = UIText
    L1_2 = L1_2.POP_TWITTER_NOT_AVAILABLE_PSN
    L0_2.message_text_ID = L1_2
  end
end
L3_1.init_CB = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = UIEnums
  L3_2 = L3_2.Message
  L3_2 = L3_2.ButtonX
  if A0_2 == L3_2 then
    L3_2 = net_CanReconnectToDemonware
    L3_2 = L3_2()
    if L3_2 == true then
      L3_2 = PlaySfxNext
      L3_2()
      L3_2 = net_StartServiceConnection
      L4_2 = true
      L5_2 = nil
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L3_1.message_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "PS3NoVoiceAllowed"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ALERT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_PS3_NO_VOICE_ALLOWED"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2 = L0_2.Network
  L0_2.VoiceChatRestricted = false
end
L3_1.init_CB = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = IsFunction
  L1_2 = CustomPopup
  L1_2 = L1_2.Callback
  L0_2 = L0_2(L1_2)
  if L0_2 == true then
    L0_2 = CustomPopup
    L0_2 = L0_2.Callback
    L0_2()
  end
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "EventNameOverwrite"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ALERT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_OVERWRITE_EVENT"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_YES_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_NO_B
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = PopupSpawn
  L1_2 = UIEnums
  L1_2 = L1_2.CustomPopups
  L1_2 = L1_2.VerifyEventName
  L0_2(L1_2)
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "EventNoRaces"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ALERT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_NO_EVENT_RACES"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "NoLocalPhotos"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_NO_LOCAL_PHOTOS"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = PopupCancel
  L0_2()
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FacebookUserUnknown"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L5_1 = "POP_TITLE_FACEBOOK"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FACEBOOK_LOGIN_ERROR"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FacebookPostError"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L5_1 = "POP_TITLE_FACEBOOK"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FACEBOOK_POST_ERROR"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_X_AUTHENTICATE
L3_1.x_text_ID = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = UIEnums
  L3_2 = L3_2.Message
  L3_2 = L3_2.ButtonX
  if A0_2 == L3_2 then
    L3_2 = PlaySfxNext
    L3_2()
    L3_2 = UIGlobals
    L3_2.FacebookBackToStoryScreen = true
    L3_2 = PopupCancel
    L4_2 = "Shared\\FacebookAuthenticate.lua"
    L5_2 = nil
    L6_2 = nil
    L7_2 = UIEnums
    L7_2 = L7_2.Context
    L7_2 = L7_2.Blurb
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L3_1.message_CB = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2.FacebookBackToStoryScreen = false
  L0_2 = UIGlobals
  L0_2.FacebookClose = true
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FacebookConnectionError"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L5_1 = "POP_TITLE_FACEBOOK"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FACEBOOK_CONNECTION_ERROR"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2.FacebookClose = true
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FacebookPosted"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L5_1 = "POP_TITLE_FACEBOOK"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FACEBOOK_POSTED"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2.FacebookClose = true
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FacebookNotAvailable"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L5_1 = "POP_TITLE_FACEBOOK"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FACEBOOK_NOT_AVAILABLE"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_TRY_RECONNECT
L3_1.x_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = net_CanReconnectToDemonware
  L0_2 = L0_2()
  if L0_2 == false then
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L0_2.x_text_ID = nil
  else
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L1_2 = UIText
    L1_2 = L1_2.INFO_TRY_RECONNECT
    L0_2.x_text_ID = L1_2
  end
  L0_2 = UIEnums
  L0_2 = L0_2.CurrentPlatform
  L1_2 = UIEnums
  L1_2 = L1_2.Platform
  L1_2 = L1_2.PS3
  if L0_2 == L1_2 then
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L1_2 = UIText
    L1_2 = L1_2.POP_FACEBOOK_NOT_AVAILABLE_PSN
    L0_2.message_text_ID = L1_2
  end
end
L3_1.init_CB = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = UIEnums
  L3_2 = L3_2.Message
  L3_2 = L3_2.ButtonX
  if A0_2 == L3_2 then
    L3_2 = net_CanReconnectToDemonware
    L3_2 = L3_2()
    if L3_2 == true then
      L3_2 = PlaySfxNext
      L3_2()
      L3_2 = net_StartServiceConnection
      L4_2 = true
      L5_2 = nil
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L3_1.message_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "EventNotUploaded"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ALERT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_EVENT_NOT_UPLOADED"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "EventNoCarClasses"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ALERT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_NO_CAR_CLASSES"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "EventSaveWarning"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ALERT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_SAVE_EVENT"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_CANCEL
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = SaveEvent
  L0_2()
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "UploadPhotoToFacebook"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.show_progress = L4_1
L4_1 = true
L3_1.no_next = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L5_1 = "POP_TITLE_FACEBOOK"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FACEBOOK_UPLOADING"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = UIGlobals
  L0_2.FacebookPhotoUploadStage = 0
  L0_2 = UIGlobals
  L0_2.FacebookUploadingPhoto = true
  L0_2 = LSP
  L0_2 = L0_2.Enable
  L1_2 = true
  L0_2(L1_2)
  L0_2 = LSP
  L0_2 = L0_2.SetFileName
  L1_2 = "Photo.jpg"
  L0_2(L1_2)
  L0_2 = LSP
  L0_2 = L0_2.SetFileSlot
  L1_2 = 0
  L0_2(L1_2)
  L0_2 = LSP
  L0_2 = L0_2.SetUserIndex
  L1_2 = Profile
  L1_2 = L1_2.GetPrimaryPad
  L1_2, L2_2 = L1_2()
  L0_2(L1_2, L2_2)
  L0_2 = LSP
  L0_2 = L0_2.UploadCurrentPhoto
  L0_2 = L0_2()
  if L0_2 == false then
    L1_2 = PopupSpawn
    L2_2 = UIEnums
    L2_2 = L2_2.CustomPopups
    L2_2 = L2_2.ContentServerCantUpload
    L1_2(L2_2)
  end
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = UIGlobals
  L1_2 = L1_2.FacebookPhotoUploadStage
  if L1_2 == 0 then
    L1_2 = LSP
    L1_2 = L1_2.PumpCurrentTask
    L1_2, L2_2 = L1_2()
    if L1_2 == false then
      if L2_2 ~= 0 then
        if L2_2 == 2003 then
          L3_2 = PopupSpawn
          L4_2 = UIEnums
          L4_2 = L4_2.CustomPopups
          L4_2 = L4_2.ContentServerUploadBandwidthError
          L3_2(L4_2)
        else
          L3_2 = Profile
          L3_2 = L3_2.PadProfileOnline
          L4_2 = Profile
          L4_2 = L4_2.GetPrimaryPad
          L4_2 = L4_2()
          L3_2 = L3_2(L4_2)
          if L3_2 == false then
            L3_2 = PopupSpawn
            L4_2 = UIEnums
            L4_2 = L4_2.CustomPopups
            L4_2 = L4_2.MultiplayerOnlineConnectionLost
            L3_2(L4_2)
          else
            L3_2 = PopupSpawn
            L4_2 = UIEnums
            L4_2 = L4_2.CustomPopups
            L4_2 = L4_2.ContentServerGeneralError
            L3_2(L4_2)
          end
        end
      else
        L3_2 = UIGlobals
        L3_2.FacebookPhotoUploadStage = 1
        L3_2 = Amax
        L3_2 = L3_2.UploadPhotoToFacebook
        L3_2()
      end
    end
  else
    L1_2 = PopupGUI
    L2_2 = PopupGUI
    L2_2 = L2_2.timer
    L2_2 = L2_2 + A0_2
    L1_2.timer = L2_2
    L1_2 = Amax
    L1_2 = L1_2.PumpFacebookCurrentTask
    L1_2, L2_2 = L1_2()
    L3_2 = PopupGUI
    L3_2 = L3_2.timer
    if 2 < L3_2 and L1_2 == false then
      if L2_2 == 0 then
        L3_2 = PopupSpawn
        L4_2 = UIEnums
        L4_2 = L4_2.CustomPopups
        L4_2 = L4_2.FacebookPhotoUploadComplete
        L3_2(L4_2)
      elseif L2_2 == 3601 or L2_2 == 3602 then
        L3_2 = UIGlobals
        L3_2.AuthenticateFromPhoto = true
        L3_2 = PopupSpawn
        L4_2 = UIEnums
        L4_2 = L4_2.CustomPopups
        L4_2 = L4_2.FacebookPostError
        L3_2(L4_2)
      elseif L2_2 == 3605 then
        L3_2 = PopupSpawn
        L4_2 = UIEnums
        L4_2 = L4_2.CustomPopups
        L4_2 = L4_2.FacebookPhotoAlbumFull
        L3_2(L4_2)
      else
        L3_2 = PopupSpawn
        L4_2 = UIEnums
        L4_2 = L4_2.CustomPopups
        L4_2 = L4_2.ContentServerGeneralError
        L3_2(L4_2)
      end
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FacebookPhotoUploadComplete"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L5_1 = "POP_TITLE_FACEBOOK"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FACEBOOK_PHOTO_UPLOADED"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FacebookPhotoAlbumFull"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L5_1 = "POP_TITLE_FACEBOOK"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FACEBOOK_ALBUM_FULL"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "ConfirmModConfig"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ALERT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_SAVE_MOD_CHANGES"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_YES_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_CANCEL
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L1_2 = UIEnums
  L1_2 = L1_2.ModShopFlags
  L1_2 = L1_2.Discard
  L0_2.ModShopFlag = L1_2
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "DiscardEventSettings"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_WARNING
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_DISCARD_EVENT_SETTINGS"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_YES_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_CANCEL
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = DiscardEventSettings
  L1_2 = true
  L0_2(L1_2)
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "DiscardEventPlaylist"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_WARNING
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_DISCARD_EVENT_PLAYLIST"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_YES_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_CANCEL
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = DiscardEventPlaylist
  L1_2 = true
  L0_2(L1_2)
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "DiscardEventPlaylistRace"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_WARNING
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_DISCARD_EVENT_RACE"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_YES_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_CANCEL
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = DiscardEventRace
  L1_2 = true
  L0_2(L1_2)
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "IdlePlayerKicked"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_WARNING
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_IDLE_PLAYER_KICKED_MSG"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = true
L3_1.no_back = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2.IdlePlayerKicked = false
end
L3_1.init_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FacebookLegal"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FACEBOOK_LEGAL"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L5_1 = "INFO_A_ACCEPT"
L4_1 = L4_1[L5_1]
L3_1.next_text_ID = L4_1
L4_1 = UIText
L5_1 = "INFO_B_DECLINE"
L4_1 = L4_1[L5_1]
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = Amax
  L0_2 = L0_2.FacebookUnAuthenticate
  L0_2()
  L0_2 = UIGlobals
  L0_2.FacebookClose = true
end
L3_1.back_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "TwitterLegal"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_TWITTER_LEGAL"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L5_1 = "INFO_A_ACCEPT"
L4_1 = L4_1[L5_1]
L3_1.next_text_ID = L4_1
L4_1 = UIText
L5_1 = "INFO_B_DECLINE"
L4_1 = L4_1[L5_1]
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = Amax
  L0_2 = L0_2.TwitterUnAuthenticate
  L0_2()
  L0_2 = UIGlobals
  L0_2.TwitterClose = true
end
L3_1.back_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "TwitterPost"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_TWITTER_POST"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_YES_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_NO_B
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = SendTweet
  L0_2()
  L0_2 = PopupSpawn
  L1_2 = UIEnums
  L1_2 = L1_2.CustomPopups
  L1_2 = L1_2.TwitterPosting
  L0_2(L1_2)
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "DeleteTwitterPost"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_TWITTER_DELETE_POST"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_YES_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_NO_B
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = DeleteTweet
  L0_2()
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FacebookPost"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FACEBOOK_POST"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_YES_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_NO_B
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = SendStory
  L0_2()
  L0_2 = UIGlobals
  L0_2.SendFacebookStory = true
  L0_2 = PopupSpawn
  L1_2 = UIEnums
  L1_2 = L1_2.CustomPopups
  L1_2 = L1_2.FacebookPosting
  L0_2(L1_2)
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "DeleteFacebookPost"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FACEBOOK_DELETE_POST"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_YES_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_NO_B
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = DeleteStory
  L0_2()
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "TwitterPosting"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.show_progress = L4_1
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = true
L3_1.no_next = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_SOCIAL_UPLOADING"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FacebookPosting"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.show_progress = L4_1
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = true
L3_1.no_next = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_SOCIAL_UPLOADING"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "CheckForDLC"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = UIEnums
L5_1 = "CurrentPlatform"
L4_1 = L4_1[L5_1]
L5_1 = UIEnums
L6_1 = "Platform"
L5_1 = L5_1[L6_1]
L6_1 = "Xenon"
L5_1 = L5_1[L6_1]
L4_1 = L4_1 == L5_1
L3_1.silent = L4_1
L4_1 = true
L3_1.show_progress = L4_1
L4_1 = false
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = true
L3_1.no_next = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_DLC_CHECKING"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = PopupGUI
  L0_2.timer = 0
  L0_2 = print
  L1_2 = "check for DLC start"
  L0_2(L1_2)
  L0_2 = GameProfile
  L0_2 = L0_2.StartDLC
  L0_2()
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PopupGUI
  L2_2 = PopupGUI
  L2_2 = L2_2.timer
  L2_2 = L2_2 + A0_2
  L1_2.timer = L2_2
  L1_2 = GameProfile
  L1_2 = L1_2.ContinueDLC
  L1_2, L2_2 = L1_2()
  if L1_2 == true then
    L3_2 = PopupGUI
    L3_2 = L3_2.timer
    if 0 <= L3_2 then
      if L2_2 == true then
        L3_2 = print
        L4_2 = "check for DLC error"
        L3_2(L4_2)
        L3_2 = PopupSpawn
        L4_2 = UIEnums
        L4_2 = L4_2.CustomPopups
        L4_2 = L4_2.ErrorWithDLC
        L3_2(L4_2)
      else
        L3_2 = print
        L4_2 = "check for DLC finished"
        L3_2(L4_2)
        L3_2 = PopupCancel
        L3_2()
        L3_2 = IsFunction
        L4_2 = UIGlobals
        L4_2 = L4_2.CallbackDLC
        L3_2 = L3_2(L4_2)
        if L3_2 == true then
          L3_2 = UIGlobals
          L3_2 = L3_2.CallbackDLC
          L4_2 = true
          L3_2(L4_2)
        end
      end
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "ErrorWithDLC"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ERROR
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_DLC_ERROR"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = IsFunction
  L1_2 = UIGlobals
  L1_2 = L1_2.CallbackDLC
  L0_2 = L0_2(L1_2)
  if L0_2 == true then
    L0_2 = UIGlobals
    L0_2 = L0_2.CallbackDLC
    L1_2 = false
    L0_2(L1_2)
  end
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "SaveNewRace"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_WARNING
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_SAVE_NEW_RACE_MSG"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_YES_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_CANCEL
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = SaveEvent
  L0_2()
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "DiscardEventChanges"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_WARNING
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_DISCARD_EVENT_CHANGES"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_YES_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_CANCEL
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = RestoreUserEvent
  L0_2()
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "ModShopOptions"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
L4_1 = UIText
L5_1 = "POP_TITLE_OPTIONS"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_SELECT
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_BACK
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = CustomPopup
  L0_2 = L0_2.CurrentData
  L1_2 = {}
  L2_2 = {}
  L3_2 = UIEnums
  L3_2 = L3_2.ModShopOptions
  L3_2 = L3_2.Use
  L2_2.value = L3_2
  L3_2 = UIText
  L3_2 = L3_2.POP_OPTION_USE_LOADOUT
  L2_2.name = L3_2
  L3_2 = UIGlobals
  L3_2 = L3_2.Multiplayer
  L3_2 = L3_2.CanEquipMods
  L3_2 = not L3_2
  L2_2.locked = L3_2
  L3_2 = {}
  L4_2 = UIEnums
  L4_2 = L4_2.ModShopOptions
  L4_2 = L4_2.Edit
  L3_2.value = L4_2
  L4_2 = UIText
  L4_2 = L4_2.POP_OPTION_EDIT_LOADOUT
  L3_2.name = L4_2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L0_2.options = L1_2
  L0_2 = UIGlobals
  L0_2 = L0_2.Multiplayer
  L0_2 = L0_2.InLobby
  if L0_2 ~= false then
    L0_2 = Amax
    L0_2 = L0_2.IsGameModeRanked
    L0_2 = L0_2()
    if L0_2 ~= true then
      goto lbl_54
    end
  end
  L0_2 = CustomPopup
  L0_2 = L0_2.CurrentData
  L0_2 = L0_2.options
  L1_2 = CustomPopup
  L1_2 = L1_2.CurrentData
  L1_2 = L1_2.options
  L1_2 = #L1_2
  L1_2 = L1_2 + 1
  L2_2 = {}
  L3_2 = UIEnums
  L3_2 = L3_2.ModShopOptions
  L3_2 = L3_2.Rename
  L2_2.value = L3_2
  L3_2 = UIText
  L3_2 = L3_2.POP_OPTION_RENAME_LOADOUT
  L2_2.name = L3_2
  L0_2[L1_2] = L2_2
  ::lbl_54::
end
L3_1.init_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "MatchMakingOptions"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
L4_1 = UIText
L5_1 = "POP_TITLE_MATCHMAKING_OPTIONS"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.CMN_NOWT
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_SELECT
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_BACK
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = SCUI_Popup
  L0_2 = L0_2.name_to_id
  L0_2 = L0_2.options
  L1_2 = CustomPopup
  L1_2 = L1_2.CurrentData
  L2_2 = {}
  L2_2.x = 256
  L2_2.y = 64
  L2_2.z = 0
  L1_2.size = L2_2
  L1_2 = UIButtons
  L1_2 = L1_2.CloneXtGadgetByName
  L2_2 = "TheCustomPopup.lua"
  L3_2 = "menu_node"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = UIButtons
  L2_2 = L2_2.Size
  L3_2 = L1_2
  L4_2 = 0
  L5_2 = 32
  L6_2 = 0
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = UIButtons
  L2_2 = L2_2.Size
  L3_2 = UIButtons
  L3_2 = L3_2.FindChildByName
  L4_2 = L1_2
  L5_2 = "frame"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 232
  L5_2 = 32
  L6_2 = 0
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = UIButtons
  L2_2 = L2_2.Size
  L3_2 = UIButtons
  L3_2 = L3_2.FindChildByName
  L4_2 = L1_2
  L5_2 = "frame_fill"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 232
  L5_2 = 32
  L6_2 = 0
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = UIButtons
  L2_2 = L2_2.Size
  L3_2 = UIButtons
  L3_2 = L3_2.FindChildByName
  L4_2 = L1_2
  L5_2 = "selector"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 232
  L5_2 = 32
  L6_2 = 0
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = UIButtons
  L2_2 = L2_2.Size
  L3_2 = UIButtons
  L3_2 = L3_2.FindChildByName
  L4_2 = L1_2
  L5_2 = "selector_fill"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 232
  L5_2 = 32
  L6_2 = 0
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = UIButtons
  L2_2 = L2_2.Activated
  L3_2 = UIButtons
  L3_2 = L3_2.FindChildByName
  L4_2 = L1_2
  L5_2 = "option_name"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = SCUI_Popup
  L2_2 = L2_2.name_to_id
  L2_2 = L2_2.region_rule_slider
  L3_2 = UIButtons
  L3_2 = L3_2.Activated
  L4_2 = L2_2
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = UIButtons
  L3_2 = L3_2.Activated
  L4_2 = SCUI_Popup
  L4_2 = L4_2.name_to_id
  L4_2 = L4_2.region_title
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = UIButtons
  L3_2 = L3_2.SetParent
  L4_2 = L2_2
  L5_2 = L1_2
  L6_2 = UIEnums
  L6_2 = L6_2.Justify
  L6_2 = L6_2.TopLeft
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = UIButtons
  L3_2 = L3_2.AddItem
  L4_2 = L2_2
  L5_2 = UIEnums
  L5_2 = L5_2.MatchingRule
  L5_2 = L5_2.Any
  L6_2 = UIText
  L6_2 = L6_2.MP_REGION_ANY
  L7_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = UIButtons
  L3_2 = L3_2.AddItem
  L4_2 = L2_2
  L5_2 = UIEnums
  L5_2 = L5_2.MatchingRule
  L5_2 = L5_2.Preferred
  L6_2 = UIText
  L6_2 = L6_2.MP_REGION_PREFERRED
  L7_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = UIButtons
  L3_2 = L3_2.AddItem
  L4_2 = L2_2
  L5_2 = UIEnums
  L5_2 = L5_2.MatchingRule
  L5_2 = L5_2.Enforced
  L6_2 = UIText
  L6_2 = L6_2.MP_REGION_REQUIRED
  L7_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = UIButtons
  L3_2 = L3_2.AddListItem
  L4_2 = L0_2
  L5_2 = L1_2
  L6_2 = 0
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = Amax
  L3_2 = L3_2.GetMultiplayerOptions
  L3_2 = L3_2()
  L4_2 = UIButtons
  L4_2 = L4_2.SetSelection
  L5_2 = L2_2
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L3_1.init_CB = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = SCUI_Popup
  L0_2 = L0_2.name_to_id
  L0_2 = L0_2.region_rule_slider
  L1_2 = Amax
  L1_2 = L1_2.SetMultiplayerOptions
  L2_2 = UIButtons
  L2_2 = L2_2.GetSelection
  L3_2 = L0_2
  L2_2, L3_2 = L2_2(L3_2)
  L1_2(L2_2, L3_2)
  L1_2 = NetServices
  L1_2 = L1_2.SetMatchingRegionInfo
  L1_2()
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "LobbyOptions"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
L4_1 = UIText
L5_1 = "POP_TITLE_GARAGE"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_SELECT
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_BACK
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = CustomPopup
  L0_2 = L0_2.CurrentData
  L1_2 = {}
  L0_2.options = L1_2
  L0_2 = Multiplayer
  L0_2 = L0_2.GetNewCarsForClass
  L1_2 = NetRace
  L1_2 = L1_2.GetCarClass
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = UIGlobals
  L1_2 = L1_2.Multiplayer
  L1_2 = L1_2.LobbyState
  L2_2 = UIEnums
  L2_2 = L2_2.MpLobbyState
  L2_2 = L2_2.Countdown
  L1_2 = L1_2 ~= L2_2
  L2_2 = Multiplayer
  L2_2 = L2_2.CanChooseMods
  L2_2 = L2_2()
  L2_2 = L2_2 == false
  L3_2 = Multiplayer
  L3_2 = L3_2.GetRaceResultsValid
  L3_2 = L3_2()
  L3_2 = L3_2 == false
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = CustomPopup
  L5_2 = L5_2.CurrentData
  L5_2 = L5_2.options
  L6_2 = {}
  L7_2 = UIEnums
  L7_2 = L7_2.LobbyOptions
  L7_2 = L7_2.CarSelect
  L6_2.value = L7_2
  L7_2 = UIText
  L7_2 = L7_2.MP_CAR_SELECT
  L6_2.name = L7_2
  L6_2.locked = L1_2
  L4_2(L5_2, L6_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = CustomPopup
  L5_2 = L5_2.CurrentData
  L5_2 = L5_2.options
  L6_2 = {}
  L7_2 = UIEnums
  L7_2 = L7_2.LobbyOptions
  L7_2 = L7_2.ModShop
  L6_2.value = L7_2
  L7_2 = UIText
  L7_2 = L7_2.MP_MOD_SHOP
  L6_2.name = L7_2
  L6_2.locked = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = Amax
  L4_2 = L4_2.GetPlayMode
  L4_2 = L4_2()
  L5_2 = UIEnums
  L5_2 = L5_2.PlayMode
  L5_2 = L5_2.CustomRace
  if L4_2 == L5_2 then
    L4_2 = NetRace
    L4_2 = L4_2.IsHost
    L4_2 = L4_2()
    if L4_2 == true then
      L4_2 = table
      L4_2 = L4_2.insert
      L5_2 = CustomPopup
      L5_2 = L5_2.CurrentData
      L5_2 = L5_2.options
      L6_2 = {}
      L7_2 = UIEnums
      L7_2 = L7_2.LobbyOptions
      L7_2 = L7_2.Settings
      L6_2.value = L7_2
      L7_2 = UIText
      L7_2 = L7_2.MP_GAME_SETTINGS
      L6_2.name = L7_2
      L4_2(L5_2, L6_2)
    end
  end
  L4_2 = Amax
  L4_2 = L4_2.GetGameMode
  L4_2 = L4_2()
  L5_2 = UIEnums
  L5_2 = L5_2.GameMode
  L5_2 = L5_2.Online
  if L4_2 == L5_2 then
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = CustomPopup
    L5_2 = L5_2.CurrentData
    L5_2 = L5_2.options
    L6_2 = {}
    L7_2 = UIEnums
    L7_2 = L7_2.LobbyOptions
    L7_2 = L7_2.Challenges
    L6_2.value = L7_2
    L7_2 = UIText
    L7_2 = L7_2.MP_CHALLENGES
    L6_2.name = L7_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = CustomPopup
  L5_2 = L5_2.CurrentData
  L5_2 = L5_2.options
  L6_2 = {}
  L7_2 = UIEnums
  L7_2 = L7_2.LobbyOptions
  L7_2 = L7_2.SessionScoreboard
  L6_2.value = L7_2
  L7_2 = UIText
  L7_2 = L7_2.MP_SESSION_LEADERBOARD
  L6_2.name = L7_2
  L4_2(L5_2, L6_2)
  L4_2 = NetRace
  L4_2 = L4_2.RaceInProgress
  L4_2 = L4_2()
  if L4_2 == true then
    L4_2 = NetRace
    L4_2 = L4_2.HasRaceFinished
    L4_2 = L4_2()
    if L4_2 == false then
      L4_2 = table
      L4_2 = L4_2.insert
      L5_2 = CustomPopup
      L5_2 = L5_2.CurrentData
      L5_2 = L5_2.options
      L6_2 = {}
      L7_2 = UIEnums
      L7_2 = L7_2.LobbyOptions
      L7_2 = L7_2.RacePreview
      L6_2.value = L7_2
      L7_2 = UIText
      L7_2 = L7_2.MP_RACE_PREVIEW
      L6_2.name = L7_2
      L4_2(L5_2, L6_2)
    end
  else
    L4_2 = Amax
    L4_2 = L4_2.IsGameModeOnline
    L4_2 = L4_2()
    if L4_2 == true then
      L4_2 = table
      L4_2 = L4_2.insert
      L5_2 = CustomPopup
      L5_2 = L5_2.CurrentData
      L5_2 = L5_2.options
      L6_2 = {}
      L7_2 = UIEnums
      L7_2 = L7_2.LobbyOptions
      L7_2 = L7_2.RaceSummery
      L6_2.value = L7_2
      L7_2 = UIText
      L7_2 = L7_2.MP_RACE_SUMMERY
      L6_2.name = L7_2
      L6_2.locked = L3_2
      L4_2(L5_2, L6_2)
    end
  end
end
L3_1.init_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "ViewPlayer"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
L4_1 = UIText
L4_1 = L4_1.CMN_NOWT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_SELECT
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_BACK
L3_1.back_text_ID = L4_1
L4_1 = {}
L3_1.options = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = UIGlobals
  L0_2 = L0_2.Multiplayer
  L0_2 = L0_2.InPartyLobby
  if L0_2 == true then
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L1_2 = "LOBBY_PARTY_PLAYER_VIEWING"
    L2_2 = UIGlobals
    L2_2 = L2_2.Multiplayer
    L2_2 = L2_2.SelectPlayerJoinRef
    L1_2 = L1_2 .. L2_2
    L0_2.title_text_ID = L1_2
  else
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L1_2 = "LOBBY_PLAYER_VIEWING"
    L2_2 = UIGlobals
    L2_2 = L2_2.Multiplayer
    L2_2 = L2_2.SelectPlayerJoinRef
    L1_2 = L1_2 .. L2_2
    L0_2.title_text_ID = L1_2
  end
  L0_2 = CustomPopup
  L0_2 = L0_2.CurrentData
  L1_2 = {}
  L0_2.options = L1_2
  L0_2 = UIEnums
  L0_2 = L0_2.CurrentPlatform
  L1_2 = UIEnums
  L1_2 = L1_2.Platform
  L1_2 = L1_2.Xenon
  if L0_2 == L1_2 then
    L0_2 = table
    L0_2 = L0_2.insert
    L1_2 = CustomPopup
    L1_2 = L1_2.CurrentData
    L1_2 = L1_2.options
    L2_2 = {}
    L3_2 = UIEnums
    L3_2 = L3_2.PlayerOptions
    L3_2 = L3_2.GamerCard
    L2_2.value = L3_2
    L3_2 = UIText
    L3_2 = L3_2.MP_VIEW_GAMERCARD
    L2_2.name = L3_2
    L3_2 = NetServices
    L3_2 = L3_2.CanViewGamerCard
    L4_2 = Profile
    L4_2 = L4_2.GetPrimaryPad
    L4_2, L5_2, L6_2, L7_2 = L4_2()
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = not L3_2
    L2_2.locked = L3_2
    L0_2(L1_2, L2_2)
    L0_2 = table
    L0_2 = L0_2.insert
    L1_2 = CustomPopup
    L1_2 = L1_2.CurrentData
    L1_2 = L1_2.options
    L2_2 = {}
    L3_2 = UIEnums
    L3_2 = L3_2.PlayerOptions
    L3_2 = L3_2.Review
    L2_2.value = L3_2
    L3_2 = UIText
    L3_2 = L3_2.MP_SUBMIT_PLAYER_REVIEW
    L2_2.name = L3_2
    L3_2 = NetServices
    L3_2 = L3_2.CanSubmitPlayerReview
    L4_2 = Profile
    L4_2 = L4_2.GetPrimaryPad
    L4_2, L5_2, L6_2, L7_2 = L4_2()
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = not L3_2
    L2_2.locked = L3_2
    L0_2(L1_2, L2_2)
  end
  L0_2 = NetServices
  L0_2 = L0_2.QuickMuteAvailable
  L1_2 = Profile
  L1_2 = L1_2.GetPrimaryPad
  L1_2 = L1_2()
  L2_2 = UIGlobals
  L2_2 = L2_2.Multiplayer
  L2_2 = L2_2.SelectPlayerJoinRef
  L3_2 = UIGlobals
  L3_2 = L3_2.Multiplayer
  L3_2 = L3_2.InPartyLobby
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  if L0_2 == true then
    L0_2 = NetServices
    L0_2 = L0_2.IsRemotePlayerQuickMuted
    L1_2 = Profile
    L1_2 = L1_2.GetPrimaryPad
    L1_2 = L1_2()
    L2_2 = UIGlobals
    L2_2 = L2_2.Multiplayer
    L2_2 = L2_2.SelectPlayerJoinRef
    L3_2 = UIGlobals
    L3_2 = L3_2.Multiplayer
    L3_2 = L3_2.InPartyLobby
    L0_2 = L0_2(L1_2, L2_2, L3_2)
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = CustomPopup
    L2_2 = L2_2.CurrentData
    L2_2 = L2_2.options
    L3_2 = {}
    L4_2 = UIEnums
    L4_2 = L4_2.PlayerOptions
    L4_2 = L4_2.Voice
    L3_2.value = L4_2
    L4_2 = Select
    L5_2 = L0_2
    L6_2 = UIText
    L6_2 = L6_2.MP_UNMUTE
    L7_2 = UIText
    L7_2 = L7_2.MP_MUTE
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2.name = L4_2
    L1_2(L2_2, L3_2)
  end
end
L3_1.init_CB = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = UIButtons
  L0_2 = L0_2.GetSelection
  L1_2 = SCUI_Popup
  L1_2 = L1_2.name_to_id
  L1_2 = L1_2.options
  L0_2 = L0_2(L1_2)
  L1_2 = UIEnums
  L1_2 = L1_2.PlayerOptions
  L1_2 = L1_2.GamerCard
  if L0_2 == L1_2 then
    L1_2 = NetServices
    L1_2 = L1_2.CanViewGamerCard
    L2_2 = Profile
    L2_2 = L2_2.GetPrimaryPad
    L2_2, L3_2, L4_2, L5_2 = L2_2()
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if L1_2 == true then
      L1_2 = NetServices
      L1_2 = L1_2.ViewGamerCard
      L2_2 = Profile
      L2_2 = L2_2.GetPrimaryPad
      L2_2 = L2_2()
      L3_2 = UIGlobals
      L3_2 = L3_2.Multiplayer
      L3_2 = L3_2.SelectPlayerJoinRef
      L4_2 = UIGlobals
      L4_2 = L4_2.Multiplayer
      L4_2 = L4_2.InPartyLobby
      L5_2 = UIGlobals
      L5_2 = L5_2.Multiplayer
      L5_2 = L5_2.ViewingResults
      L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  else
    L1_2 = UIEnums
    L1_2 = L1_2.PlayerOptions
    L1_2 = L1_2.Review
    if L0_2 == L1_2 then
      L1_2 = NetServices
      L1_2 = L1_2.CanSubmitPlayerReview
      L2_2 = Profile
      L2_2 = L2_2.GetPrimaryPad
      L2_2, L3_2, L4_2, L5_2 = L2_2()
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
      if L1_2 == true then
        L1_2 = NetServices
        L1_2 = L1_2.SubmitPlayerReview
        L2_2 = Profile
        L2_2 = L2_2.GetPrimaryPad
        L2_2 = L2_2()
        L3_2 = UIGlobals
        L3_2 = L3_2.Multiplayer
        L3_2 = L3_2.SelectPlayerJoinRef
        L4_2 = UIGlobals
        L4_2 = L4_2.IsIngame
        L5_2 = UIGlobals
        L5_2 = L5_2.Multiplayer
        L5_2 = L5_2.InPartyLobby
        L1_2(L2_2, L3_2, L4_2, L5_2)
    end
    else
      L1_2 = UIEnums
      L1_2 = L1_2.PlayerOptions
      L1_2 = L1_2.Voice
      if L0_2 == L1_2 then
        L1_2 = NetServices
        L1_2 = L1_2.ToggleRemotePlayerQuickMute
        L2_2 = Profile
        L2_2 = L2_2.GetPrimaryPad
        L2_2 = L2_2()
        L3_2 = UIGlobals
        L3_2 = L3_2.Multiplayer
        L3_2 = L3_2.SelectPlayerJoinRef
        L4_2 = UIGlobals
        L4_2 = L4_2.Multiplayer
        L4_2 = L4_2.InPartyLobby
        L1_2(L2_2, L3_2, L4_2)
      end
    end
  end
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "MpBetaExpired"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ERROR
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_BETA_EXPIRED"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = true
L3_1.no_back = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "AcceptPartyRaceInvite"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
L4_1 = true
L3_1.no_back = L4_1
L4_1 = true
L3_1.no_next = L4_1
L4_1 = true
L3_1.show_progress = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_ATTEMPTING_TO_JOIN_GAME
L3_1.message_text_ID = L4_1
L4_1 = 25
L3_1.timeout = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = PopupGUI
  L0_2.timer = 0
  L0_2 = PopupGUI
  L1_2 = UIEnums
  L1_2 = L1_2.MpOnlineMatching
  L1_2 = L1_2.JoinStart
  L0_2.state = L1_2
  L0_2 = print
  L1_2 = "PARTY RACE INVITE"
  L0_2(L1_2)
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = PopupGUI
  L2_2 = PopupGUI
  L2_2 = L2_2.timer
  L2_2 = L2_2 + A0_2
  L1_2.timer = L2_2
  L1_2 = true
  L2_2 = NetParty
  L2_2 = L2_2.IsHost
  L2_2 = L2_2()
  if L2_2 == true then
    L1_2 = false
    L2_2 = NetRace
    L2_2 = L2_2.Delete
    L2_2()
    L2_2 = NetParty
    L2_2 = L2_2.SendReturnToPartyLobby
    L2_2()
    L2_2 = UIGlobals
    L2_2 = L2_2.Network
    L3_2 = UIEnums
    L3_2 = L3_2.MpRaceInviteState
    L3_2 = L3_2.Polling
    L2_2.RaceInviteState = L3_2
    L2_2 = net_EnterPartyLobby
    L3_2 = true
    L2_2(L3_2)
    L2_2 = PopupCancel
    L2_2()
  else
    L2_2 = NetParty
    L2_2 = L2_2.ReceivedReturnToLobby
    L3_2 = false
    L2_2 = L2_2(L3_2)
    if L2_2 == true then
      L1_2 = false
      L2_2 = NetRace
      L2_2 = L2_2.Delete
      L2_2()
      L2_2 = UIGlobals
      L2_2 = L2_2.Network
      L3_2 = UIEnums
      L3_2 = L3_2.MpRaceInviteState
      L3_2 = L3_2.Polling
      L2_2.RaceInviteState = L3_2
      L2_2 = net_EnterPartyLobby
      L3_2 = true
      L2_2(L3_2)
      L2_2 = PopupCancel
      L2_2()
    end
  end
  if L1_2 == true then
    L2_2 = PopupGUI
    L2_2 = L2_2.state
    L3_2 = UIEnums
    L3_2 = L3_2.MpOnlineMatching
    L3_2 = L3_2.JoinStart
    if L2_2 == L3_2 then
      L2_2 = PopupGUI
      L2_2 = L2_2.timer
      if 1.5 <= L2_2 then
        L2_2 = NetRace
        L2_2 = L2_2.JoinOnlineServer
        L3_2 = 0
        L2_2 = L2_2(L3_2)
        if L2_2 == true then
          L2_2 = NetParty
          L2_2 = L2_2.GetRaceInviteData
          L2_2, L3_2, L4_2 = L2_2()
          if L3_2 == true then
            L5_2 = net_MpEnterPlayMode
            L6_2 = UIEnums
            L6_2 = L6_2.PlayMode
            L6_2 = L6_2.CustomRace
            L5_2(L6_2)
            L5_2 = PopupGUI
            L6_2 = UIEnums
            L6_2 = L6_2.MpOnlineMatching
            L6_2 = L6_2.JoinContinue
            L5_2.state = L6_2
            L5_2 = NetParty
            L5_2 = L5_2.ChangeLocalPlayersState
            L6_2 = UIEnums
            L6_2 = L6_2.Network
            L6_2 = L6_2.PlayerStates
            L6_2 = L6_2.eNetPlayerStatePartyJoinRace
            L5_2(L6_2)
          else
            L5_2 = Multiplayer
            L5_2 = L5_2.CachePlaylists
            L6_2 = UIEnums
            L6_2 = L6_2.GameMode
            L6_2 = L6_2.Online
            L5_2(L6_2)
            L5_2 = Multiplayer
            L5_2 = L5_2.FindPlaylistFromID
            L6_2 = L4_2
            L5_2 = L5_2(L6_2)
            if L5_2 == true then
              L5_2 = net_MpEnterPlayMode
              L6_2 = UIEnums
              L6_2 = L6_2.PlayMode
              L6_2 = L6_2.Playlist
              L7_2 = L2_2
              L5_2(L6_2, L7_2)
              L5_2 = PopupGUI
              L6_2 = UIEnums
              L6_2 = L6_2.MpOnlineMatching
              L6_2 = L6_2.JoinContinue
              L5_2.state = L6_2
              L5_2 = NetParty
              L5_2 = L5_2.ChangeLocalPlayersState
              L6_2 = UIEnums
              L6_2 = L6_2.Network
              L6_2 = L6_2.PlayerStates
              L6_2 = L6_2.eNetPlayerStatePartyJoinRace
              L5_2(L6_2)
            else
              L5_2 = print
              L6_2 = "Invite failed because you cant play the event"
              L5_2(L6_2)
              L5_2 = PopupGUI
              L6_2 = UIEnums
              L6_2 = L6_2.MpOnlineMatching
              L6_2 = L6_2.PartyJoinFailure
              L5_2.state = L6_2
              L5_2 = NetParty
              L5_2 = L5_2.ChangeLocalPlayersState
              L6_2 = UIEnums
              L6_2 = L6_2.Network
              L6_2 = L6_2.PlayerStates
              L6_2 = L6_2.eNetPlayerStatePartyJoinRaceFailed
              L5_2(L6_2)
            end
          end
        else
          L2_2 = PopupGUI
          L3_2 = UIEnums
          L3_2 = L3_2.MpOnlineMatching
          L3_2 = L3_2.PartyJoinFailure
          L2_2.state = L3_2
          L2_2 = NetParty
          L2_2 = L2_2.ChangeLocalPlayersState
          L3_2 = UIEnums
          L3_2 = L3_2.Network
          L3_2 = L3_2.PlayerStates
          L3_2 = L3_2.eNetPlayerStatePartyJoinRaceFailed
          L2_2(L3_2)
        end
      end
    else
      L2_2 = PopupGUI
      L2_2 = L2_2.state
      L3_2 = UIEnums
      L3_2 = L3_2.MpOnlineMatching
      L3_2 = L3_2.JoinContinue
      if L2_2 == L3_2 then
        L2_2 = false
        L3_2 = UIEnums
        L3_2 = L3_2.Network
        L3_2 = L3_2.JoinErrors
        L3_2 = L3_2.eJoinErrorInvalid
        L4_2 = NetRace
        L4_2 = L4_2.MonitorJoinOnlineServer
        L5_2 = 0
        L4_2, L5_2 = L4_2(L5_2)
        L3_2 = L5_2
        L2_2 = L4_2
        if L2_2 == true then
          L4_2 = UIEnums
          L4_2 = L4_2.Network
          L4_2 = L4_2.JoinErrors
          L4_2 = L4_2.eJoinErrorNone
          if L3_2 == L4_2 then
            L4_2 = NetParty
            L4_2 = L4_2.ChangeLocalPlayersState
            L5_2 = UIEnums
            L5_2 = L5_2.Network
            L5_2 = L5_2.PlayerStates
            L5_2 = L5_2.eNetPlayerStatePartyJoinRaceSuccessful
            L4_2(L5_2)
            L4_2 = PopupGUI
            L5_2 = UIEnums
            L5_2 = L5_2.MpOnlineMatching
            L5_2 = L5_2.Complete
            L4_2.state = L5_2
          else
            L4_2 = NetParty
            L4_2 = L4_2.ChangeLocalPlayersState
            L5_2 = UIEnums
            L5_2 = L5_2.Network
            L5_2 = L5_2.PlayerStates
            L5_2 = L5_2.eNetPlayerStatePartyJoinRaceFailed
            L4_2(L5_2)
            L4_2 = PopupGUI
            L5_2 = UIEnums
            L5_2 = L5_2.MpOnlineMatching
            L5_2 = L5_2.PartyJoinFailure
            L4_2.state = L5_2
          end
        end
      else
        L2_2 = PopupGUI
        L2_2 = L2_2.state
        L3_2 = UIEnums
        L3_2 = L3_2.MpOnlineMatching
        L3_2 = L3_2.Complete
        if L2_2 == L3_2 then
          L2_2 = NetParty
          L2_2 = L2_2.AllPlayersJoinedRace
          L2_2 = L2_2()
          if L2_2 == true then
            L2_2 = net_EnableGlobalUpdatePartyCommands
            L3_2 = true
            L2_2(L3_2)
            L2_2 = NetParty
            L2_2 = L2_2.ClearRaceInvite
            L2_2()
            L2_2 = UIGlobals
            L2_2 = L2_2.Network
            L3_2 = UIEnums
            L3_2 = L3_2.MpRaceInviteState
            L3_2 = L3_2.Polling
            L2_2.RaceInviteState = L3_2
            L2_2 = PopupCancel
            L3_2 = "Multiplayer\\MpLobby.lua"
            L4_2 = true
            L2_2(L3_2, L4_2)
          end
        else
          L2_2 = PopupGUI
          L2_2 = L2_2.state
          L3_2 = UIEnums
          L3_2 = L3_2.MpOnlineMatching
          L3_2 = L3_2.PartyJoinFailure
          if L2_2 == L3_2 then
          end
        end
      end
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "SharingOptions"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L4_1 = UIText
L5_1 = "POP_TITLE_SHARE"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.CMN_NOWT
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_SELECT
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_BACK
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = CustomPopup
  L0_2 = L0_2.CurrentData
  L1_2 = {}
  L0_2.options = L1_2
  L0_2 = UIGlobals
  L0_2.FacebookUploadingPhoto = false
  L0_2 = false
  L1_2 = Amax
  L1_2 = L1_2.GetFacebookTimeout
  L1_2 = L1_2()
  if 0 < L1_2 then
    L0_2 = true
  end
  L1_2 = Amax
  L1_2 = L1_2.FacebookHasPublisherFile
  L1_2 = L1_2()
  if L1_2 == true then
    L1_2 = UIGlobals
    L1_2.FacebookLocked = L0_2
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = CustomPopup
    L2_2 = L2_2.CurrentData
    L2_2 = L2_2.options
    L3_2 = {}
    L4_2 = UIEnums
    L4_2 = L4_2.ShareOptions
    L4_2 = L4_2.Facebook
    L3_2.value = L4_2
    L3_2.name = "GAME_FACEBOOK_PUBLISH_INFO"
    L3_2.locked = L0_2
    L1_2(L2_2, L3_2)
  end
  L0_2 = false
  L1_2 = Amax
  L1_2 = L1_2.GetTwitterTimeout
  L1_2 = L1_2()
  if 0 < L1_2 then
    L0_2 = true
  end
  L1_2 = Amax
  L1_2 = L1_2.TwitterHasPublisherFile
  L1_2 = L1_2()
  if L1_2 == true then
    L1_2 = UIGlobals
    L1_2.TwitterLocked = L0_2
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = CustomPopup
    L2_2 = L2_2.CurrentData
    L2_2 = L2_2.options
    L3_2 = {}
    L4_2 = UIEnums
    L4_2 = L4_2.ShareOptions
    L4_2 = L4_2.Twitter
    L3_2.value = L4_2
    L3_2.name = "GAME_TWITTER_PUBLISH_INFO"
    L3_2.locked = L0_2
    L1_2(L2_2, L3_2)
  end
  L1_2 = UIEnums
  L1_2 = L1_2.CurrentPlatform
  L2_2 = UIEnums
  L2_2 = L2_2.Platform
  L2_2 = L2_2.Xenon
  if L1_2 == L2_2 then
    L1_2 = Profile
    L1_2 = L1_2.PadProfileOnline
    L2_2 = Profile
    L2_2 = L2_2.GetPrimaryPad
    L2_2, L3_2, L4_2 = L2_2()
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    if L1_2 == true then
      L1_2 = table
      L1_2 = L1_2.insert
      L2_2 = CustomPopup
      L2_2 = L2_2.CurrentData
      L2_2 = L2_2.options
      L3_2 = {}
      L4_2 = UIEnums
      L4_2 = L4_2.ShareOptions
      L4_2 = L4_2.Blurb
      L3_2.value = L4_2
      L4_2 = UIText
      L4_2 = L4_2.RBC_SYSTEM_MESSAGE
      L3_2.name = L4_2
      L3_2.locked = false
      L1_2(L2_2, L3_2)
    end
  else
    L1_2 = UIEnums
    L1_2 = L1_2.CurrentPlatform
    L2_2 = UIEnums
    L2_2 = L2_2.Platform
    L2_2 = L2_2.PS3
    if L1_2 == L2_2 then
      L1_2 = Profile
      L1_2 = L1_2.PadProfileOnline
      L2_2 = Profile
      L2_2 = L2_2.GetPrimaryPad
      L2_2, L3_2, L4_2 = L2_2()
      L1_2 = L1_2(L2_2, L3_2, L4_2)
      if L1_2 ~= true then
        L1_2 = net_CanReconnectToDemonware
        L1_2 = L1_2()
        if L1_2 ~= true then
          goto lbl_126
        end
      end
      L1_2 = table
      L1_2 = L1_2.insert
      L2_2 = CustomPopup
      L2_2 = L2_2.CurrentData
      L2_2 = L2_2.options
      L3_2 = {}
      L4_2 = UIEnums
      L4_2 = L4_2.ShareOptions
      L4_2 = L4_2.Blurb
      L3_2.value = L4_2
      L4_2 = UIText
      L4_2 = L4_2.RBC_PS3_SYSTEM_MESSAGE
      L3_2.name = L4_2
      L3_2.locked = false
      L1_2(L2_2, L3_2)
    end
  end
  ::lbl_126::
end
L3_1.init_CB = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = 0
  L1_2 = Amax
  L1_2 = L1_2.FacebookHasPublisherFile
  L1_2 = L1_2()
  if L1_2 == true then
    L1_2 = Amax
    L1_2 = L1_2.GetFacebookTimeout
    L1_2 = L1_2()
    if 0 < L1_2 then
      L1_2 = UIButtons
      L1_2 = L1_2.SetNodeItemLocked
      L2_2 = SCUI_Popup
      L2_2 = L2_2.name_to_id
      L2_2 = L2_2.options
      L3_2 = UIEnums
      L3_2 = L3_2.ShareOptions
      L3_2 = L3_2.Facebook
      L4_2 = true
      L5_2 = true
      L1_2(L2_2, L3_2, L4_2, L5_2)
    else
      L1_2 = UIButtons
      L1_2 = L1_2.SetNodeItemLocked
      L2_2 = SCUI_Popup
      L2_2 = L2_2.name_to_id
      L2_2 = L2_2.options
      L3_2 = UIEnums
      L3_2 = L3_2.ShareOptions
      L3_2 = L3_2.Facebook
      L4_2 = false
      L5_2 = true
      L1_2(L2_2, L3_2, L4_2, L5_2)
      L1_2 = UIGlobals
      L1_2 = L1_2.FacebookLocked
      if L1_2 == true then
        L1_2 = UIButtons
        L1_2 = L1_2.GetNodeID
        L2_2 = SCUI_Popup
        L2_2 = L2_2.name_to_id
        L2_2 = L2_2.options
        L3_2 = L0_2
        L1_2 = L1_2(L2_2, L3_2)
        L2_2 = UIButtons
        L2_2 = L2_2.FindChildByName
        L3_2 = L1_2
        L4_2 = "option_name"
        L2_2 = L2_2(L3_2, L4_2)
        L3_2 = UIButtons
        L3_2 = L3_2.ColourStyle
        L4_2 = L2_2
        L5_2 = "!255 0 0 0"
        L3_2(L4_2, L5_2)
        L3_2 = UIGlobals
        L3_2.FacebookLocked = false
      end
    end
    L0_2 = L0_2 + 1
  end
  L1_2 = Amax
  L1_2 = L1_2.TwitterHasPublisherFile
  L1_2 = L1_2()
  if L1_2 == true then
    L1_2 = Amax
    L1_2 = L1_2.GetTwitterTimeout
    L1_2 = L1_2()
    if 0 < L1_2 then
      L1_2 = UIButtons
      L1_2 = L1_2.SetNodeItemLocked
      L2_2 = SCUI_Popup
      L2_2 = L2_2.name_to_id
      L2_2 = L2_2.options
      L3_2 = UIEnums
      L3_2 = L3_2.ShareOptions
      L3_2 = L3_2.Twitter
      L4_2 = true
      L5_2 = true
      L1_2(L2_2, L3_2, L4_2, L5_2)
    else
      L1_2 = UIButtons
      L1_2 = L1_2.SetNodeItemLocked
      L2_2 = SCUI_Popup
      L2_2 = L2_2.name_to_id
      L2_2 = L2_2.options
      L3_2 = UIEnums
      L3_2 = L3_2.ShareOptions
      L3_2 = L3_2.Twitter
      L4_2 = false
      L5_2 = true
      L1_2(L2_2, L3_2, L4_2, L5_2)
      L1_2 = UIGlobals
      L1_2 = L1_2.TwitterLocked
      if L1_2 == true then
        L1_2 = UIButtons
        L1_2 = L1_2.GetNodeID
        L2_2 = SCUI_Popup
        L2_2 = L2_2.name_to_id
        L2_2 = L2_2.options
        L3_2 = L0_2
        L1_2 = L1_2(L2_2, L3_2)
        L2_2 = UIButtons
        L2_2 = L2_2.FindChildByName
        L3_2 = L1_2
        L4_2 = "option_name"
        L2_2 = L2_2(L3_2, L4_2)
        L3_2 = UIButtons
        L3_2 = L3_2.ColourStyle
        L4_2 = L2_2
        L5_2 = "!255 0 0 0"
        L3_2(L4_2, L5_2)
        L3_2 = UIGlobals
        L3_2.TwitterLocked = false
      end
    end
  end
end
L3_1.update_CB = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = UIButtons
  L0_2 = L0_2.GetSelection
  L1_2 = SCUI_Popup
  L1_2 = L1_2.name_to_id
  L1_2 = L1_2.options
  L0_2 = L0_2(L1_2)
  L1_2 = UIEnums
  L1_2 = L1_2.CurrentPlatform
  L2_2 = UIEnums
  L2_2 = L2_2.Platform
  L2_2 = L2_2.PS3
  if L1_2 == L2_2 then
    L1_2 = UIEnums
    L1_2 = L1_2.ShareOptions
    L1_2 = L1_2.Blurb
    if L0_2 == L1_2 then
      L1_2 = Profile
      L1_2 = L1_2.PadProfileOnline
      L2_2 = Profile
      L2_2 = L2_2.GetPrimaryPad
      L2_2, L3_2, L4_2 = L2_2()
      L1_2 = L1_2(L2_2, L3_2, L4_2)
      if L1_2 == false then
        L1_2 = net_CanReconnectToDemonware
        L1_2 = L1_2()
        if L1_2 == true then
          L1_2 = net_StartServiceConnection
          L2_2 = true
          L3_2 = nil
          L4_2 = true
          L1_2(L2_2, L3_2, L4_2)
        end
      end
    end
  end
end
L3_1.next_CB = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2 = L0_2.ShareFromWhatPopup
  if L0_2 ~= -1 then
    L0_2 = PopupSpawn
    L1_2 = UIGlobals
    L1_2 = L1_2.ShareFromWhatPopup
    L0_2(L1_2)
  end
end
L3_1.back_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "MPOnlineSharingOptions"
L2_1 = L2_1[L3_1]
L3_1 = {}
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "MPLobbyLocalSharingOptions"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L4_1 = UIText
L5_1 = "POP_TITLE_WHAT_SHARE"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_SELECT
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_BACK
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = UIButtons
  L0_2 = L0_2.GetSelection
  L1_2 = SCUI_Popup
  L1_2 = L1_2.name_to_id
  L1_2 = L1_2.options
  L0_2 = L0_2(L1_2)
  L1_2 = UIGlobals
  L1_2.SharingOptionsChosen = L0_2
  L1_2 = UIGlobals
  L2_2 = UIEnums
  L2_2 = L2_2.CustomPopups
  L2_2 = L2_2.MPLobbyLocalSharingOptions
  L1_2.ShareFromWhatPopup = L2_2
  L1_2 = PopupSpawn
  L2_2 = UIEnums
  L2_2 = L2_2.CustomPopups
  L2_2 = L2_2.SharingOptions
  L1_2(L2_2)
end
L3_1.next_CB = L4_1
L4_1 = {}
L5_1 = {}
L6_1 = UIEnums
L7_1 = "MPLobbyLocalSharingOptions"
L6_1 = L6_1[L7_1]
L7_1 = "Position"
L6_1 = L6_1[L7_1]
L5_1.value = L6_1
L6_1 = UIText
L7_1 = "MP_LAST_RACE_POSITION"
L6_1 = L6_1[L7_1]
L5_1.name = L6_1
L6_1 = {}
L7_1 = UIEnums
L8_1 = "MPLobbyLocalSharingOptions"
L7_1 = L7_1[L8_1]
L8_1 = "Rank"
L7_1 = L7_1[L8_1]
L6_1.value = L7_1
L7_1 = UIText
L8_1 = "MP_SCOREBOARD_RANK"
L7_1 = L7_1[L8_1]
L6_1.name = L7_1
L4_1[1] = L5_1
L4_1[2] = L6_1
L3_1.options = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "TwitterAuthenticated"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_TWITTER
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_TWITTER_AUTHENTICATED"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2.TwitterClose = true
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "SendingFriendDemand"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.show_progress = L4_1
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = true
L3_1.no_next = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_UPLOADING"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = PopupGUI
  L0_2.timer = 0
  L0_2 = FriendDemand
  L0_2 = L0_2.Send
  L0_2()
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PopupGUI
  L2_2 = PopupGUI
  L2_2 = L2_2.timer
  L2_2 = L2_2 + A0_2
  L1_2.timer = L2_2
  L1_2 = FriendDemand
  L1_2 = L1_2.PumpSend
  L1_2, L2_2 = L1_2()
  if L1_2 == false then
    L3_2 = PopupGUI
    L3_2 = L3_2.timer
    if 2 < L3_2 then
      if L2_2 == 0 then
        L3_2 = PopupSpawn
        L4_2 = UIEnums
        L4_2 = L4_2.CustomPopups
        L4_2 = L4_2.FriendDemandSent
        L3_2(L4_2)
      else
        L3_2 = PopupSpawn
        L4_2 = UIEnums
        L4_2 = L4_2.CustomPopups
        L4_2 = L4_2.FriendDemandSendingError
        L3_2(L4_2)
      end
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FriendDemandSent"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L5_1 = "POP_FRIEND_DEMAND"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FRIEND_DEMAND_POSTED"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = true
L3_1.no_back = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2.FriendDemandSent = true
end
L3_1.init_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FriendDemandSendingError"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L5_1 = "POP_FRIEND_DEMAND"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FRIEND_DEMAND_ERROR"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_TRY_RECONNECT
L3_1.x_text_ID = L4_1
L4_1 = true
L3_1.no_back = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = net_CanReconnectToDemonware
  L0_2 = L0_2()
  if L0_2 == false then
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L0_2.x_text_ID = nil
  else
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L1_2 = UIText
    L1_2 = L1_2.INFO_TRY_RECONNECT
    L0_2.x_text_ID = L1_2
  end
end
L3_1.init_CB = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = UIEnums
  L3_2 = L3_2.Message
  L3_2 = L3_2.ButtonX
  if A0_2 == L3_2 then
    L3_2 = net_CanReconnectToDemonware
    L3_2 = L3_2()
    if L3_2 == true then
      L3_2 = PlaySfxNext
      L3_2()
      L3_2 = net_StartServiceConnection
      L4_2 = true
      L5_2 = FriendChallengeReloadScreen
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L3_1.message_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FriendDemandRetrieving"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.show_progress = L4_1
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = true
L3_1.no_next = L4_1
L4_1 = UIText
L5_1 = "POP_FRIEND_DEMAND"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_RETRIEVING"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = PopupGUI
  L0_2.timer = 0
  L0_2 = FriendDemand
  L0_2 = L0_2.RetrieveFromServer
  L1_2 = false
  L0_2(L1_2)
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PopupGUI
  L2_2 = PopupGUI
  L2_2 = L2_2.timer
  L2_2 = L2_2 + A0_2
  L1_2.timer = L2_2
  L1_2 = PopupGUI
  L1_2 = L1_2.timer
  if 1 < L1_2 then
    L1_2 = FriendDemand
    L1_2 = L1_2.PumpSend
    L1_2, L2_2 = L1_2()
    if L1_2 == false then
      if L2_2 == 0 then
        L3_2 = UIGlobals
        L3_2 = L3_2.FriendDemandDoNotRefresh
        if L3_2 ~= true then
          L3_2 = UIGlobals
          L3_2.RefreshFriendDemandScreen = true
        end
        L3_2 = FriendDemand
        L3_2 = L3_2.MessagesStillOnServer
        L3_2 = L3_2()
        if L3_2 == true then
          L3_2 = PopupSpawn
          L4_2 = UIEnums
          L4_2 = L4_2.CustomPopups
          L4_2 = L4_2.FriendDemandMoreOnServer
          L3_2(L4_2)
        else
          L3_2 = PopupCancel
          L3_2()
        end
      else
        L3_2 = UIGlobals
        L3_2.FriendDemandAttemptFromMessage = false
        L3_2 = net_CanReconnectToDemonware
        L3_2 = L3_2()
        if L3_2 == false then
          L3_2 = PopupSpawn
          L4_2 = UIEnums
          L4_2 = L4_2.CustomPopups
          L4_2 = L4_2.MultiplayerOnlineConnectionLost
          L3_2(L4_2)
        else
          L3_2 = PopupSpawn
          L4_2 = UIEnums
          L4_2 = L4_2.CustomPopups
          L4_2 = L4_2.ContentServerGeneralError
          L3_2(L4_2)
        end
      end
      L3_2 = UIGlobals
      L3_2.FriendDemandDoNotRefresh = false
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FriendDemandMoreOnServer"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L5_1 = "POP_FRIEND_DEMAND"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FRIEND_DEMAND_MORE_ON_SERVER"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = true
L3_1.no_back = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FriendDemandRetrievingError"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L5_1 = "POP_FRIEND_DEMAND"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FRIEND_DEMAND_RETRIEVING_ERROR"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = true
L3_1.no_back = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FriendDemandDelete"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L5_1 = "POP_FRIEND_DEMAND"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_DELETE_FRIEND_DEMAND"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_YES_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_NO_B
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2 = L0_2.FriendDemandCurrentType
  L1_2 = UIEnums
  L1_2 = L1_2.FriendDemandMessageType
  L1_2 = L1_2.Local
  if L0_2 == L1_2 then
    L0_2 = FriendDemand
    L0_2 = L0_2.Remove
    L1_2 = UIGlobals
    L1_2 = L1_2.CurrentFriendDemandMessageIndex
    L0_2(L1_2)
    L0_2 = StartAsyncSave
    L0_2()
    L0_2 = UIGlobals
    L0_2.RefreshFriendDemandScreen = true
  else
    L0_2 = PopupSpawn
    L1_2 = UIEnums
    L1_2 = L1_2.CustomPopups
    L1_2 = L1_2.FriendDemandDeleting
    L0_2(L1_2)
  end
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FriendDemandDeleting"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.show_progress = L4_1
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = true
L3_1.no_next = L4_1
L4_1 = UIText
L5_1 = "POP_FRIEND_DEMAND"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_DELETING_FRIEND_DEMAND"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = PopupGUI
  L0_2.timer = 0
  L0_2 = FriendDemand
  L0_2 = L0_2.DeleteMessage
  L1_2 = UIGlobals
  L1_2 = L1_2.CurrentFriendDemandMessageIndex
  L0_2(L1_2)
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PopupGUI
  L2_2 = PopupGUI
  L2_2 = L2_2.timer
  L2_2 = L2_2 + A0_2
  L1_2.timer = L2_2
  L1_2 = PopupGUI
  L1_2 = L1_2.timer
  if 1 < L1_2 then
    L1_2 = FriendDemand
    L1_2 = L1_2.PumpSend
    L1_2, L2_2 = L1_2()
    if L1_2 == false then
      if L2_2 == 0 then
        L3_2 = PopupSpawn
        L4_2 = UIEnums
        L4_2 = L4_2.CustomPopups
        L4_2 = L4_2.FriendDemandRetrieving
        L3_2(L4_2)
      else
        L3_2 = net_CanReconnectToDemonware
        L3_2 = L3_2()
        if L3_2 == false then
          L3_2 = PopupSpawn
          L4_2 = UIEnums
          L4_2 = L4_2.CustomPopups
          L4_2 = L4_2.MultiplayerOnlineConnectionLost
          L3_2(L4_2)
        else
          L3_2 = PopupSpawn
          L4_2 = UIEnums
          L4_2 = L4_2.CustomPopups
          L4_2 = L4_2.ContentServerGeneralError
          L3_2(L4_2)
        end
      end
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "SpChangeDifficulty"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L5_1 = "CMN_DIFFICULTY"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_SELECT
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_BACK
L3_1.back_text_ID = L4_1
L4_1 = {}
L5_1 = {}
L6_1 = 1
L5_1.value = L6_1
L6_1 = UIText
L7_1 = "CMN_DIFFICULTY_2"
L6_1 = L6_1[L7_1]
L5_1.name = L6_1
L6_1 = {}
L7_1 = 2
L6_1.value = L7_1
L7_1 = UIText
L8_1 = "CMN_DIFFICULTY_3"
L7_1 = L7_1[L8_1]
L6_1.name = L7_1
L7_1 = {}
L8_1 = 3
L7_1.value = L8_1
L8_1 = UIText
L9_1 = "CMN_DIFFICULTY_4"
L8_1 = L8_1[L9_1]
L7_1.name = L8_1
L4_1[1] = L5_1
L4_1[2] = L6_1
L4_1[3] = L7_1
L3_1.options = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = CustomPopup
  L0_2 = L0_2.CurrentData
  L1_2 = UIGlobals
  L1_2 = L1_2.OptionsTable
  L1_2 = L1_2.difficulty
  L0_2.default_option = L1_2
end
L3_1.init_CB = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = UIButtons
  L0_2 = L0_2.GetSelection
  L1_2 = SCUI_Popup
  L1_2 = L1_2.name_to_id
  L1_2 = L1_2.options
  L0_2 = L0_2(L1_2)
  L1_2 = UIGlobals
  L1_2 = L1_2.OptionsTable
  L1_2 = L1_2.difficulty
  if L0_2 ~= L1_2 then
    L2_2 = UIGlobals
    L2_2 = L2_2.OptionsTable
    L2_2.difficulty = L0_2
    L2_2 = Amax
    L2_2 = L2_2.Options
    L3_2 = UIGlobals
    L3_2 = L3_2.OptionsTable
    L2_2(L3_2)
    L2_2 = Amax
    L2_2 = L2_2.GameDataLogDifficultySelected
    L3_2 = L1_2
    L4_2 = L0_2
    L2_2(L3_2, L4_2)
    L2_2 = print
    L3_2 = "Difficulty changed to"
    L4_2 = L0_2
    L2_2(L3_2, L4_2)
    L2_2 = StartAsyncSave
    L2_2()
  end
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "MultiplayerOnlineConnectionLost"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ALERT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_NO_CONNECTION_TO_LIVE"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIEnums
  L0_2 = L0_2.CurrentPlatform
  L1_2 = UIEnums
  L1_2 = L1_2.Platform
  L1_2 = L1_2.Xenon
  if L0_2 == L1_2 then
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L1_2 = UIText
    L1_2 = L1_2.POP_NO_CONNECTION_TO_LIVE
    L0_2.message_text_ID = L1_2
  else
    L0_2 = UIEnums
    L0_2 = L0_2.CurrentPlatform
    L1_2 = UIEnums
    L1_2 = L1_2.Platform
    L1_2 = L1_2.PC
    if L0_2 == L1_2 then
      L0_2 = CustomPopup
      L0_2 = L0_2.CurrentData
      L1_2 = UIText
      L1_2 = L1_2.POP_NO_CONNECTION_TO_INTERNET
      L0_2.message_text_ID = L1_2
    else
      L0_2 = UIEnums
      L0_2 = L0_2.CurrentPlatform
      L1_2 = UIEnums
      L1_2 = L1_2.Platform
      L1_2 = L1_2.PS3
      if L0_2 == L1_2 then
        L0_2 = CustomPopup
        L0_2 = L0_2.CurrentData
        L1_2 = UIText
        L1_2 = L1_2.POP_NO_CONNECTION_TO_PSN
        L0_2.message_text_ID = L1_2
      end
    end
  end
end
L3_1.init_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "DiscardModshopLoadoutChanges"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_WARNING
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_DISCARD_LOADOUT_CHANGES"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = true
L3_1.no_back = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "AutoSaveWarning"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_WARNING
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_AUTO_SAVE_WARNING"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = true
L3_1.save_icon = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "ActiveProfileChanged"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_PROFILE_KICKED_TITLE
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_INACTIVE_PROFILE_CHANGED_MSG"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = true
L3_1.no_back = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "SpPostRaceSharingOptions"
L2_1 = L2_1[L3_1]
L3_1 = {}
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "AcceptingFriendDemand"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.show_progress = L4_1
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = true
L3_1.no_next = L4_1
L4_1 = UIText
L5_1 = "POP_FRIEND_DEMAND"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FRIEND_DEMAND_ACCEPTING"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = UIGlobals
  L0_2 = L0_2.FriendDemandAttemptFromServer
  if L0_2 == false then
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L1_2 = UIText
    L1_2 = L1_2.POP_FRIEND_DEMAND_SAVING
    L0_2.message_text_ID = L1_2
  end
  L0_2 = PopupGUI
  L0_2.timer = 0
  L0_2 = FriendDemand
  L0_2 = L0_2.SaveMessageToSlot
  L1_2 = UIGlobals
  L1_2 = L1_2.CurrentFriendDemandMessageIndex
  L2_2 = UIGlobals
  L2_2 = L2_2.CurrentFriendFreeSlot
  L0_2(L1_2, L2_2)
  L0_2 = FriendDemand
  L0_2 = L0_2.DeleteMessage
  L1_2 = UIGlobals
  L1_2 = L1_2.CurrentFriendDemandMessageIndex
  L0_2(L1_2)
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PopupGUI
  L2_2 = PopupGUI
  L2_2 = L2_2.timer
  L2_2 = L2_2 + A0_2
  L1_2.timer = L2_2
  L1_2 = PopupGUI
  L1_2 = L1_2.timer
  if 2 < L1_2 then
    L1_2 = FriendDemand
    L1_2 = L1_2.PumpSend
    L1_2, L2_2 = L1_2()
    if L1_2 == false then
      if L2_2 == 0 then
        L3_2 = FriendDemand
        L3_2 = L3_2.Accepted
        L4_2 = UIGlobals
        L4_2 = L4_2.FriendDemandFilterFriend
        L3_2(L4_2)
        L3_2 = StartAsyncSave
        L3_2()
        L3_2 = UIGlobals
        L3_2 = L3_2.FriendDemandAttemptFromServer
        if L3_2 == true then
          L3_2 = UIGlobals
          L3_2.RefreshFriendDemandScreen = true
          L3_2 = PopupCancel
          L3_2()
        else
          L3_2 = PopupSpawn
          L4_2 = UIEnums
          L4_2 = L4_2.CustomPopups
          L4_2 = L4_2.AcceptedFriendDemand
          L3_2(L4_2)
        end
      else
        L3_2 = UIGlobals
        L3_2.FriendDemandAttemptFromServer = false
        L3_2 = FriendDemand
        L3_2 = L3_2.RemoveMessageFromSlot
        L4_2 = UIGlobals
        L4_2 = L4_2.CurrentFriendFreeSlot
        L3_2(L4_2)
        L3_2 = net_CanReconnectToDemonware
        L3_2 = L3_2()
        if L3_2 == false then
          L3_2 = PopupSpawn
          L4_2 = UIEnums
          L4_2 = L4_2.CustomPopups
          L4_2 = L4_2.MultiplayerOnlineConnectionLost
          L3_2(L4_2)
        else
          L3_2 = PopupSpawn
          L4_2 = UIEnums
          L4_2 = L4_2.CustomPopups
          L4_2 = L4_2.ContentServerGeneralError
          L3_2(L4_2)
        end
      end
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "AcceptedFriendDemand"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = false
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L5_1 = "POP_FRIEND_DEMAND"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FRIEND_DEMAND_ACCEPTED"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2.RefreshFriendDemandScreen = true
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "SpTierSelectSharingOptions"
L2_1 = L2_1[L3_1]
L3_1 = {}
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "SpMainSelectSharingOptions"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L4_1 = UIText
L5_1 = "POP_TITLE_WHAT_SHARE"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_SELECT
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_BACK
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = CustomPopup
  L0_2 = L0_2.CurrentData
  L1_2 = {}
  L2_2 = {}
  L3_2 = UIEnums
  L3_2 = L3_2.SpTierSelectSharingOptions
  L3_2 = L3_2.NumberOfFans
  L2_2.value = L3_2
  L3_2 = UIText
  L3_2 = L3_2.SP_NUMBER_OF_FANS
  L2_2.name = L3_2
  L3_2 = {}
  L4_2 = UIEnums
  L4_2 = L4_2.SpTierSelectSharingOptions
  L4_2 = L4_2.NumberOfStars
  L3_2.value = L4_2
  L4_2 = UIText
  L4_2 = L4_2.SP_NUMBER_OF_STARS
  L3_2.name = L4_2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L0_2.options = L1_2
end
L3_1.init_CB = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = UIButtons
  L0_2 = L0_2.GetSelection
  L1_2 = SCUI_Popup
  L1_2 = L1_2.name_to_id
  L1_2 = L1_2.options
  L0_2 = L0_2(L1_2)
  L1_2 = UIGlobals
  L1_2.SharingOptionsChosen = L0_2
  L1_2 = UIGlobals
  L2_2 = UIEnums
  L2_2 = L2_2.CustomPopups
  L2_2 = L2_2.SpMainSelectSharingOptions
  L1_2.ShareFromWhatPopup = L2_2
  L1_2 = PopupSpawn
  L2_2 = UIEnums
  L2_2 = L2_2.CustomPopups
  L2_2 = L2_2.SharingOptions
  L1_2(L2_2)
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "SpEventSelectSharingOptions"
L2_1 = L2_1[L3_1]
L3_1 = {}
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "NoHistory"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_NO_RACE_HISTORY"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2.RaceHistoryClose = true
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "OnlinePhotoSharingOptions"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L4_1 = UIText
L5_1 = "POP_TITLE_SHARE"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.CMN_NOWT
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_SELECT
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_BACK
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = CustomPopup
  L0_2 = L0_2.CurrentData
  L1_2 = {}
  L0_2.options = L1_2
  L0_2 = Amax
  L0_2 = L0_2.FacebookHasPublisherFile
  L0_2 = L0_2()
  if L0_2 == true then
    L0_2 = table
    L0_2 = L0_2.insert
    L1_2 = CustomPopup
    L1_2 = L1_2.CurrentData
    L1_2 = L1_2.options
    L2_2 = {}
    L3_2 = UIEnums
    L3_2 = L3_2.ShareOptions
    L3_2 = L3_2.FacebookAlbum
    L2_2.value = L3_2
    L3_2 = UIText
    L3_2 = L3_2.RBC_FACEBOOK_ALBUM
    L2_2.name = L3_2
    L0_2(L1_2, L2_2)
  end
  L0_2 = table
  L0_2 = L0_2.insert
  L1_2 = CustomPopup
  L1_2 = L1_2.CurrentData
  L1_2 = L1_2.options
  L2_2 = {}
  L3_2 = UIEnums
  L3_2 = L3_2.ShareOptions
  L3_2 = L3_2.Blurb
  L2_2.value = L3_2
  L3_2 = UIText
  L3_2 = L3_2.RBC_AGORA_UPLOAD
  L2_2.name = L3_2
  L0_2(L1_2, L2_2)
end
L3_1.init_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FacebookAuthenticated"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L5_1 = "POP_TITLE_FACEBOOK"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FACEBOOK_AUTHENTICATED"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2.FacebookClose = true
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "SpPostRaceOptions"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L5_1 = "POP_TITLE_OPTIONS"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_SELECT
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_BACK
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = CustomPopup
  L0_2 = L0_2.CurrentData
  L1_2 = {}
  L0_2.options = L1_2
  L0_2 = Amax
  L0_2 = L0_2.SP_IsStreetRaceFD
  L0_2 = L0_2()
  L0_2 = L0_2 == true
  L1_2 = Amax
  L1_2 = L1_2.SP_GetLevelResult
  L1_2 = L1_2()
  L2_2 = false
  L3_2 = false
  L4_2 = false
  if L0_2 == true then
    L5_2 = FriendDemand
    L5_2 = L5_2.IsComplete
    L5_2 = L5_2()
    if 0 < L5_2 then
      L5_2 = UIGlobals
      L5_2 = L5_2.FriendDemandSent
      if L5_2 == false then
        L3_2 = true
    end
    else
      L5_2 = UIGlobals
      L5_2 = L5_2.FriendDemandSent
      if L5_2 == false then
        L4_2 = true
      end
    end
  else
    L5_2 = UIGlobals
    L5_2 = L5_2.FriendDemandSent
    if L5_2 == false then
      L5_2 = L1_2.state
      if L5_2 ~= "none" then
        L5_2 = Amax
        L5_2 = L5_2.GetNumFriends
        L5_2 = L5_2()
        if 0 < L5_2 then
          L2_2 = true
        end
      end
    end
    L4_2 = true
  end
  L5_2 = CustomPopup
  L5_2 = L5_2.CurrentData
  L5_2 = L5_2.options
  L6_2 = CustomPopup
  L6_2 = L6_2.CurrentData
  L6_2 = L6_2.options
  L6_2 = #L6_2
  L6_2 = L6_2 + 1
  L7_2 = {}
  L7_2.value = 1
  L8_2 = UIText
  L8_2 = L8_2.POP_OPTION_RETRUN_TO_EVENT_SELECT
  L7_2.name = L8_2
  L5_2[L6_2] = L7_2
  if L2_2 == true then
    L5_2 = CustomPopup
    L5_2 = L5_2.CurrentData
    L5_2 = L5_2.options
    L6_2 = CustomPopup
    L6_2 = L6_2.CurrentData
    L6_2 = L6_2.options
    L6_2 = #L6_2
    L6_2 = L6_2 + 1
    L7_2 = {}
    L7_2.value = 2
    L8_2 = UIText
    L8_2 = L8_2.FDE_CHALLENGE_A_FRIEND
    L7_2.name = L8_2
    L5_2[L6_2] = L7_2
  end
  if L3_2 == true then
    L5_2 = CustomPopup
    L5_2 = L5_2.CurrentData
    L5_2 = L5_2.options
    L6_2 = CustomPopup
    L6_2 = L6_2.CurrentData
    L6_2 = L6_2.options
    L6_2 = #L6_2
    L6_2 = L6_2 + 1
    L7_2 = {}
    L7_2.value = 2
    L8_2 = UIText
    L8_2 = L8_2.FDE_RECHALLENGE_A_FRIEND
    L7_2.name = L8_2
    L5_2[L6_2] = L7_2
  end
  if L4_2 == true then
    L5_2 = CustomPopup
    L5_2 = L5_2.CurrentData
    L5_2 = L5_2.options
    L6_2 = CustomPopup
    L6_2 = L6_2.CurrentData
    L6_2 = L6_2.options
    L6_2 = #L6_2
    L6_2 = L6_2 + 1
    L7_2 = {}
    L7_2.value = 0
    L8_2 = UIText
    L8_2 = L8_2.POP_OPTION_RETRY
    L7_2.name = L8_2
    L5_2[L6_2] = L7_2
  end
  L5_2 = L1_2.state
  if L5_2 == "none" and L4_2 == true then
    L5_2 = CustomPopup
    L5_2 = L5_2.CurrentData
    L5_2.default_option = 0
  elseif L3_2 == true then
    L5_2 = CustomPopup
    L5_2 = L5_2.CurrentData
    L5_2.default_option = 2
  else
    L5_2 = CustomPopup
    L5_2 = L5_2.CurrentData
    L5_2.default_option = 1
  end
end
L3_1.init_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "HostChangedSettings"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ALERT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_HOST_CHANGED_SETTINGS"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "SsRetry"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_WARNING
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_SS_RETRY"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_SELECT
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_BACK
L3_1.back_text_ID = L4_1
L4_1 = {}
L5_1 = {}
L6_1 = UIEnums
L6_1 = L6_1.PopupOptions
L6_1 = L6_1.Yes
L5_1.value = L6_1
L6_1 = UIText
L6_1 = L6_1.POP_OPTION_YES
L5_1.name = L6_1
L6_1 = {}
L7_1 = UIEnums
L7_1 = L7_1.PopupOptions
L7_1 = L7_1.No
L6_1.value = L7_1
L7_1 = UIText
L7_1 = L7_1.POP_OPTION_NO
L6_1.name = L7_1
L4_1[1] = L5_1
L4_1[2] = L6_1
L3_1.options = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "TaleOfTheTapeSharingOptions"
L2_1 = L2_1[L3_1]
L3_1 = {}
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FriendDemandOptions"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L4_1 = UIText
L5_1 = "POP_FRIEND_DEMAND"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_SELECT
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_BACK
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = UIGlobals
  L0_2 = L0_2.FriendDemandCurrentType
  L1_2 = UIEnums
  L1_2 = L1_2.FriendDemandMessageType
  L1_2 = L1_2.Local
  if L0_2 == L1_2 then
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L1_2 = {}
    L2_2 = {}
    L3_2 = UIEnums
    L3_2 = L3_2.FriendDemandOptions
    L3_2 = L3_2.Attempt
    L2_2.value = L3_2
    L3_2 = UIText
    L3_2 = L3_2.FDE_TRY_NOW
    L2_2.name = L3_2
    L3_2 = {}
    L4_2 = UIEnums
    L4_2 = L4_2.FriendDemandOptions
    L4_2 = L4_2.Delete
    L3_2.value = L4_2
    L4_2 = UIText
    L4_2 = L4_2.FDE_DELETE
    L3_2.name = L4_2
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L0_2.options = L1_2
  else
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L1_2 = {}
    L2_2 = {}
    L3_2 = UIEnums
    L3_2 = L3_2.FriendDemandOptions
    L3_2 = L3_2.Attempt
    L2_2.value = L3_2
    L3_2 = UIText
    L3_2 = L3_2.FDE_ATTEMPT
    L2_2.name = L3_2
    L3_2 = {}
    L4_2 = UIEnums
    L4_2 = L4_2.FriendDemandOptions
    L4_2 = L4_2.Store
    L3_2.value = L4_2
    L4_2 = UIText
    L4_2 = L4_2.FDE_STORE
    L3_2.name = L4_2
    L4_2 = {}
    L5_2 = UIEnums
    L5_2 = L5_2.FriendDemandOptions
    L5_2 = L5_2.Delete
    L4_2.value = L5_2
    L5_2 = UIText
    L5_2 = L5_2.FDE_DELETE
    L4_2.name = L5_2
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    L0_2.options = L1_2
  end
end
L3_1.init_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FriendCompare"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
L4_1 = UIText
L5_1 = "POP_FRIEND_COMPARE"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FRIEND_COMPARE_MSG"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_YES_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_NO_B
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = Amax
  L0_2 = L0_2.SetFriendCompare
  L1_2 = UIGlobals
  L1_2 = L1_2.CompareToFriendRow
  L0_2(L1_2)
  L0_2 = Amax
  L0_2 = L0_2.RequestRivalRemotePicture
  L0_2()
  L0_2 = UIGlobals
  L0_2.UpdateEventOwners = true
  L0_2 = UIGlobals
  L0_2.UpdateEventOwnersPreRace = true
  L0_2 = PopupSpawn
  L1_2 = UIEnums
  L1_2 = L1_2.CustomPopups
  L1_2 = L1_2.FriendCompareChosen
  L0_2(L1_2)
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "NetworkCableRemoved"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ALERT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_NETWORK_CABLE_REMOVED"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = true
L3_1.no_back = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "SSLobbySharingOptions"
L2_1 = L2_1[L3_1]
L3_1 = {}
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "LeaderboardReadError"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ALERT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_LEADERBOARD_READ_ERROR"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FriendDemandCustomAttemptError"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ERROR
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FRIEND_DEMAND_CUSTOM_POPUP_ERROR"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = true
L3_1.no_back = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FriendDemandCustomAttemptPadError"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ERROR
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FRIEND_DEMAND_CUSTOM_POPUP_PAD_ERROR"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = true
L3_1.no_back = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "ContentServerSearching"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.show_progress = L4_1
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = true
L3_1.no_next = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_SEARCHING"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "DiscardOptionsChanges"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L4_1 = "options cog"
L3_1.icon_name = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_WARNING
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_DISCARD_OPTIONS"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_SELECT
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_BACK
L3_1.back_text_ID = L4_1
L4_1 = {}
L5_1 = {}
L6_1 = UIEnums
L6_1 = L6_1.PopupOptions
L6_1 = L6_1.Yes
L5_1.value = L6_1
L6_1 = UIText
L6_1 = L6_1.POP_OPTION_YES
L5_1.name = L6_1
L6_1 = {}
L7_1 = UIEnums
L7_1 = L7_1.PopupOptions
L7_1 = L7_1.No
L6_1.value = L7_1
L7_1 = UIText
L7_1 = L7_1.POP_OPTION_NO
L6_1.name = L7_1
L4_1[1] = L5_1
L4_1[2] = L6_1
L3_1.options = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "ResetToDefaults"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L4_1 = "options cog"
L3_1.icon_name = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_WARNING
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_RESET_DEFAULT"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_SELECT
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_BACK
L3_1.back_text_ID = L4_1
L4_1 = {}
L5_1 = {}
L6_1 = UIEnums
L6_1 = L6_1.PopupOptions
L6_1 = L6_1.Yes
L5_1.value = L6_1
L6_1 = UIText
L6_1 = L6_1.POP_OPTION_YES
L5_1.name = L6_1
L6_1 = {}
L7_1 = UIEnums
L7_1 = L7_1.PopupOptions
L7_1 = L7_1.No
L6_1.value = L7_1
L7_1 = UIText
L7_1 = L7_1.POP_OPTION_NO
L6_1.name = L7_1
L4_1[1] = L5_1
L4_1[2] = L6_1
L3_1.options = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FriendCompareChosen"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FRIEND_COMPARE"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = "GAME_FRIEND_COMPARE_MSG"
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = StartAsyncSave
  L0_2()
end
L3_1.init_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FriendChallengeNoFriends"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L3_1.icon_name = "groups"
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FRIEND_CHALLENGE_NO_FRIENDS"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FriendDemandInboxOptions"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_SELECT
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_BACK
L3_1.back_text_ID = L4_1
L4_1 = UIText
L5_1 = "FDE_FRIEND_DEMANDS"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.CMN_NOWT
L3_1.message_text_ID = L4_1
L4_1 = {}
L5_1 = {}
L6_1 = 0
L5_1.value = L6_1
L6_1 = UIText
L7_1 = "FDE_MENU_NOT_ACCEPTED"
L6_1 = L6_1[L7_1]
L5_1.name = L6_1
L6_1 = {}
L7_1 = 1
L6_1.value = L7_1
L7_1 = UIText
L8_1 = "FDE_MENU_ACCEPTED"
L7_1 = L7_1[L8_1]
L6_1.name = L7_1
L7_1 = {}
L8_1 = 2
L7_1.value = L8_1
L8_1 = UIText
L9_1 = "FDE_MENU_RE_CHALLENGES"
L8_1 = L8_1[L9_1]
L7_1.name = L8_1
L4_1[1] = L5_1
L4_1[2] = L6_1
L4_1[3] = L7_1
L3_1.options = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = CustomPopup
  L0_2 = L0_2.CurrentData
  L1_2 = "GAME_FRIEND_DEMAND_FRIEND_"
  L2_2 = UIGlobals
  L2_2 = L2_2.FriendDemandFilterFriend
  L1_2 = L1_2 .. L2_2
  L0_2.title_text_ID = L1_2
  L0_2 = CustomPopup
  L0_2 = L0_2.CurrentData
  L0_2 = L0_2.options
  L0_2 = L0_2[1]
  L1_2 = FriendDemand
  L1_2 = L1_2.GetFriendNewCount
  L2_2 = UIGlobals
  L2_2 = L2_2.FriendDemandFilterFriend
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 == 0
  L0_2.locked = L1_2
  L0_2 = CustomPopup
  L0_2 = L0_2.CurrentData
  L0_2 = L0_2.options
  L0_2 = L0_2[2]
  L1_2 = FriendDemand
  L1_2 = L1_2.GetFriendActiveCount
  L2_2 = UIGlobals
  L2_2 = L2_2.FriendDemandFilterFriend
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 == 0
  L0_2.locked = L1_2
end
L3_1.init_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FriendDemandNoFreeSlots"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_WARNING
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FRIEND_CHALLENGE_NO_FREE_SLOTS"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FriendDemandNoBlurbs"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_WARNING
L3_1.title_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2 = L0_2.FriendDemandFilter
  if L0_2 == 3 then
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L1_2 = UIText
    L1_2 = L1_2.POP_FRIEND_CHALLENGE_NO_BLURBS_EVENT
    L0_2.message_text_ID = L1_2
  else
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L1_2 = UIText
    L1_2 = L1_2.POP_FRIEND_CHALLENGE_NO_BLURBS_FRIEND
    L0_2.message_text_ID = L1_2
  end
end
L3_1.init_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FriendChallengeNoPrivilege"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_NO_CONTENT_PRIVILEGE"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FriendDemandNotOnServer"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L5_1 = "FDE_FRIEND_DEMANDS"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "FDE_FRIEND_DEMANDS_DOESNT_EXIST"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "InvalidNetworkConnection"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_WARNING
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_NO_NETWORK_CONNECTION"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = true
L3_1.no_back = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FriendDemandRemoveOldChallenges"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L5_1 = "POP_FRIEND_DEMAND"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FRIEND_DEMAND_REMOVE_OLD"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_YES_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_NO_B
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = FriendDemand
  L0_2 = L0_2.CleanOutOldChallenges
  L0_2()
  L0_2 = StartAsyncSave
  L0_2()
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "SPLeaderboardPostRaceError"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ERROR
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_CONTENT_SERVER_GENERAL_ERROR
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_TRY_RECONNECT
L3_1.x_text_ID = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = UIEnums
  L3_2 = L3_2.Message
  L3_2 = L3_2.ButtonX
  if A0_2 == L3_2 then
    L3_2 = PlaySfxNext
    L3_2()
    L3_2 = UIEnums
    L3_2 = L3_2.CurrentPlatform
    L4_2 = UIEnums
    L4_2 = L4_2.Platform
    L4_2 = L4_2.Xenon
    if L3_2 == L4_2 then
      L3_2 = UIGlobals
      L3_2 = L3_2.server_connection
      L4_2 = SPRaceAwardLeaderboard
      L3_2.callback = L4_2
      L3_2 = PopupSpawn
      L4_2 = UIEnums
      L4_2 = L4_2.CustomPopups
      L4_2 = L4_2.ReconnectToLeaderboards
      L3_2(L4_2)
    else
      L3_2 = net_StartServiceConnection
      L4_2 = true
      L5_2 = SPRaceAwardLeaderboard
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L3_1.message_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "StorageDownload"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = true
L3_1.no_next = L4_1
L4_1 = true
L3_1.show_progress = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_STORAGE_DOWNLOAD"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = NetServices
  L0_2 = L0_2.InitTimeOutTimer
  L0_2()
  L0_2 = PopupGUI
  L0_2.Timer = 0
  L0_2 = PopupGUI
  L1_2 = UIEnums
  L1_2 = L1_2.NetTaskType
  L1_2 = L1_2.TitleStorage
  L0_2.task = L1_2
  L0_2 = PopupGUI
  L1_2 = UIEnums
  L1_2 = L1_2.NetTaskState
  L1_2 = L1_2.Ready
  L0_2.state = L1_2
  L0_2 = net_MpEnter
  L1_2 = UIEnums
  L1_2 = L1_2.GameMode
  L1_2 = L1_2.Online
  L0_2(L1_2)
end
L3_1.init_CB = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2 = L0_2.Network
  L0_2 = L0_2.GameInviteState
  L1_2 = UIEnums
  L1_2 = L1_2.MpGameInviteState
  L1_2 = L1_2.Initialising
  if L0_2 == L1_2 then
    L0_2 = UIGlobals
    L0_2 = L0_2.Network
    L1_2 = UIEnums
    L1_2 = L1_2.MpGameInviteState
    L1_2 = L1_2.PreProcessing
    L0_2.GameInviteState = L1_2
  end
end
L3_1.end_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PopupGUI
  L2_2 = PopupGUI
  L2_2 = L2_2.Timer
  L2_2 = L2_2 + A0_2
  L1_2.Timer = L2_2
  L1_2 = PopupGUI
  L1_2 = L1_2.task
  L2_2 = UIEnums
  L2_2 = L2_2.NetTaskType
  L2_2 = L2_2.TitleStorage
  if L1_2 == L2_2 then
    L1_2 = PopupGUI
    L1_2 = L1_2.state
    L2_2 = UIEnums
    L2_2 = L2_2.NetTaskState
    L2_2 = L2_2.Ready
    if L1_2 == L2_2 then
      L1_2 = UIScreen
      L1_2 = L1_2.IsContextActive
      L2_2 = UIEnums
      L2_2 = L2_2.Context
      L2_2 = L2_2.LoadSave
      L1_2 = L1_2(L2_2)
      if L1_2 == false then
        L1_2 = PopupGUI
        L2_2 = UIEnums
        L2_2 = L2_2.NetTaskState
        L2_2 = L2_2.Busy
        L1_2.state = L2_2
      end
    else
      L1_2 = PopupGUI
      L1_2 = L1_2.state
      L2_2 = UIEnums
      L2_2 = L2_2.NetTaskState
      L2_2 = L2_2.Busy
      if L1_2 == L2_2 then
        L1_2 = NetServices
        L1_2 = L1_2.TitleStorageStatus
        L1_2 = L1_2()
        L2_2 = UIEnums
        L2_2 = L2_2.TitleStorageState
        L2_2 = L2_2.Finished
        if L1_2 == L2_2 then
          L2_2 = print
          L3_2 = "Storage Download : TMS Complete "
          L2_2(L3_2)
          L2_2 = PopupGUI
          L3_2 = UIEnums
          L3_2 = L3_2.NetTaskType
          L3_2 = L3_2.UserStorage
          L2_2.task = L3_2
          L2_2 = PopupGUI
          L3_2 = UIEnums
          L3_2 = L3_2.NetTaskState
          L3_2 = L3_2.Ready
          L2_2.state = L3_2
        else
          L2_2 = UIEnums
          L2_2 = L2_2.TitleStorageState
          L2_2 = L2_2.Failed
          if L1_2 == L2_2 then
            L2_2 = print
            L3_2 = "Storage Download : TMS Failed "
            L2_2(L3_2)
            L2_2 = PopupGUI
            L3_2 = UIEnums
            L3_2 = L3_2.NetTaskState
            L3_2 = L3_2.Failed
            L2_2.state = L3_2
            L2_2 = UIGlobals
            L3_2 = UIEnums
            L3_2 = L3_2.StorageFailType
            L3_2 = L3_2.TitleFailed
            L2_2.StorageFailType = L3_2
          end
        end
      else
        L1_2 = PopupGUI
        L1_2 = L1_2.state
        L2_2 = UIEnums
        L2_2 = L2_2.NetTaskState
        L2_2 = L2_2.Failed
        if L1_2 == L2_2 then
          L1_2 = PopupSpawn
          L2_2 = UIEnums
          L2_2 = L2_2.CustomPopups
          L2_2 = L2_2.StorageDownloadFailed
          L1_2(L2_2)
        end
      end
    end
  else
    L1_2 = PopupGUI
    L1_2 = L1_2.task
    L2_2 = UIEnums
    L2_2 = L2_2.NetTaskType
    L2_2 = L2_2.UserStorage
    if L1_2 == L2_2 then
      L1_2 = PopupGUI
      L1_2 = L1_2.state
      L2_2 = UIEnums
      L2_2 = L2_2.NetTaskState
      L2_2 = L2_2.Ready
      if L1_2 == L2_2 then
        L1_2 = NetServices
        L1_2 = L1_2.UserProfileDownloaded
        L1_2 = L1_2()
        if L1_2 == true then
          L2_2 = print
          L3_2 = "Storage Download : Profile already downloaded"
          L2_2(L3_2)
          L2_2 = PopupGUI
          L3_2 = UIEnums
          L3_2 = L3_2.NetTaskState
          L3_2 = L3_2.Complete
          L2_2.state = L3_2
        else
          L2_2 = NetServices
          L2_2 = L2_2.StartProfileDowload
          L2_2 = L2_2()
          L3_2 = UIEnums
          L3_2 = L3_2.StorageReaderState
          L3_2 = L3_2.InProgress
          if L2_2 ~= L3_2 then
            L3_2 = print
            L4_2 = "Storage Download : Start Profile Failed "
            L3_2(L4_2)
            L3_2 = PopupGUI
            L4_2 = UIEnums
            L4_2 = L4_2.NetTaskState
            L4_2 = L4_2.Failed
            L3_2.state = L4_2
            L3_2 = UIGlobals
            L4_2 = UIEnums
            L4_2 = L4_2.StorageFailType
            L4_2 = L4_2.UserFailed
            L3_2.StorageFailType = L4_2
          else
            L3_2 = PopupGUI
            L4_2 = UIEnums
            L4_2 = L4_2.NetTaskState
            L4_2 = L4_2.Busy
            L3_2.state = L4_2
          end
        end
      else
        L1_2 = PopupGUI
        L1_2 = L1_2.state
        L2_2 = UIEnums
        L2_2 = L2_2.NetTaskState
        L2_2 = L2_2.Busy
        if L1_2 == L2_2 then
          L1_2 = NetServices
          L1_2 = L1_2.ContinueProfileDownload
          L1_2 = L1_2()
          L2_2 = UIEnums
          L2_2 = L2_2.StorageReaderState
          L2_2 = L2_2.Failed
          if L1_2 == L2_2 then
            L2_2 = print
            L3_2 = "Storage Download : Profile Failed "
            L2_2(L3_2)
            L2_2 = PopupGUI
            L3_2 = UIEnums
            L3_2 = L3_2.NetTaskState
            L3_2 = L3_2.Failed
            L2_2.state = L3_2
            L2_2 = UIGlobals
            L3_2 = UIEnums
            L3_2 = L3_2.StorageFailType
            L3_2 = L3_2.UserFailed
            L2_2.StorageFailType = L3_2
          else
            L2_2 = UIEnums
            L2_2 = L2_2.StorageReaderState
            L2_2 = L2_2.Corrupted
            if L1_2 == L2_2 then
              L2_2 = print
              L3_2 = "Storage Download : Profile Corrupted "
              L2_2(L3_2)
              L2_2 = PopupGUI
              L3_2 = UIEnums
              L3_2 = L3_2.NetTaskState
              L3_2 = L3_2.Failed
              L2_2.state = L3_2
              L2_2 = UIGlobals
              L3_2 = UIEnums
              L3_2 = L3_2.StorageFailType
              L3_2 = L3_2.UserCorrupted
              L2_2.StorageFailType = L3_2
            else
              L2_2 = UIEnums
              L2_2 = L2_2.StorageReaderState
              L2_2 = L2_2.VersionError
              if L1_2 == L2_2 then
                L2_2 = print
                L3_2 = "Storage Download : Profile Version Error "
                L2_2(L3_2)
                L2_2 = PopupGUI
                L3_2 = UIEnums
                L3_2 = L3_2.NetTaskState
                L3_2 = L3_2.Failed
                L2_2.state = L3_2
                L2_2 = UIGlobals
                L3_2 = UIEnums
                L3_2 = L3_2.StorageFailType
                L3_2 = L3_2.UserCorrupted
                L2_2.StorageFailType = L3_2
              else
                L2_2 = UIEnums
                L2_2 = L2_2.StorageReaderState
                L2_2 = L2_2.FileDoesNotExist
                if L1_2 == L2_2 then
                  L2_2 = print
                  L3_2 = "Storage Download : Profile new user "
                  L2_2(L3_2)
                  L2_2 = PopupGUI
                  L3_2 = UIEnums
                  L3_2 = L3_2.NetTaskState
                  L3_2 = L3_2.Complete
                  L2_2.state = L3_2
                  L2_2 = StartAsyncSave
                  L2_2()
                else
                  L2_2 = UIEnums
                  L2_2 = L2_2.StorageReaderState
                  L2_2 = L2_2.Successful
                  if L1_2 == L2_2 then
                    L2_2 = print
                    L3_2 = "Storage Download : Profile Complete "
                    L2_2(L3_2)
                    L2_2 = PopupGUI
                    L3_2 = UIEnums
                    L3_2 = L3_2.NetTaskState
                    L3_2 = L3_2.Complete
                    L2_2.state = L3_2
                    L2_2 = NetServices
                    L2_2 = L2_2.ApplyDownloadedProfile
                    L2_2()
                  end
                end
              end
            end
          end
        else
          L1_2 = PopupGUI
          L1_2 = L1_2.state
          L2_2 = UIEnums
          L2_2 = L2_2.NetTaskState
          L2_2 = L2_2.Failed
          if L1_2 == L2_2 then
            L1_2 = PopupSpawn
            L2_2 = UIEnums
            L2_2 = L2_2.CustomPopups
            L2_2 = L2_2.StorageDownloadFailed
            L1_2(L2_2)
          else
            L1_2 = PopupGUI
            L1_2 = L1_2.state
            L2_2 = UIEnums
            L2_2 = L2_2.NetTaskState
            L2_2 = L2_2.Complete
            if L1_2 == L2_2 then
              L1_2 = PopupGUI
              L1_2 = L1_2.Timer
              if 1.5 <= L1_2 then
                L1_2 = PopupCancel
                L1_2()
                L1_2 = UIGlobals
                L1_2 = L1_2.StorageDownloadCallback
                if L1_2 ~= nil then
                  L1_2 = UIGlobals
                  L1_2 = L1_2.StorageDownloadCallback
                  L2_2 = true
                  L1_2(L2_2)
                end
              end
            end
          end
        end
      end
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "StorageDownloadFailed"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_WARNING
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_STORAGE_DOWNLOAD_FAILED"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = true
L3_1.no_back = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = IsFunction
  L1_2 = EnableCarousel
  L0_2 = L0_2(L1_2)
  if L0_2 == true then
    L0_2 = EnableCarousel
    L1_2 = true
    L0_2(L1_2)
  end
end
L3_1.end_CB = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = UIEnums
  L1_2 = L1_2.StorageFailType
  L1_2 = L1_2.UserFailed
  L2_2 = UIText
  L2_2 = L2_2.POP_STORAGE_DOWNLOAD_FAILED
  L0_2[L1_2] = L2_2
  L1_2 = UIEnums
  L1_2 = L1_2.StorageFailType
  L1_2 = L1_2.UserCorrupted
  L2_2 = UIText
  L2_2 = L2_2.POP_STORAGE_DOWNLOAD_CORRUPTED
  L0_2[L1_2] = L2_2
  L1_2 = UIEnums
  L1_2 = L1_2.StorageFailType
  L1_2 = L1_2.TitleFailed
  L2_2 = UIText
  L2_2 = L2_2.POP_STORAGE_DOWNLOAD_FAILED
  L0_2[L1_2] = L2_2
  L1_2 = UIGlobals
  L1_2 = L1_2.StorageFailType
  L2_2 = UIEnums
  L2_2 = L2_2.StorageFailType
  L2_2 = L2_2.UserCorrupted
  if L1_2 == L2_2 then
    L1_2 = CustomPopup
    L1_2 = L1_2.CurrentData
    L1_2.no_back = false
    L1_2 = CustomPopup
    L1_2 = L1_2.CurrentData
    L2_2 = UIText
    L2_2 = L2_2.INFO_B_CANCEL
    L1_2.back_text_ID = L2_2
  end
  L1_2 = CustomPopup
  L1_2 = L1_2.CurrentData
  L2_2 = UIGlobals
  L2_2 = L2_2.StorageFailType
  L2_2 = L0_2[L2_2]
  L1_2.message_text_ID = L2_2
  L1_2 = NetServices
  L1_2 = L1_2.ResetMultiplayerProfile
  L1_2()
  L1_2 = UIGlobals
  L1_2 = L1_2.Network
  L2_2 = UIEnums
  L2_2 = L2_2.MpGameInviteState
  L2_2 = L2_2.Polling
  L1_2.GameInviteState = L2_2
  L1_2 = NetServices
  L1_2 = L1_2.ClearGameInvite
  L1_2()
  L1_2 = net_FlushEverything
  L1_2()
end
L3_1.init_CB = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2 = L0_2.StorageFailType
  L1_2 = UIEnums
  L1_2 = L1_2.StorageFailType
  L1_2 = L1_2.UserCorrupted
  if L0_2 == L1_2 then
    L0_2 = UIGlobals
    L0_2 = L0_2.StorageDownloadCallback
    if L0_2 ~= nil then
      L0_2 = UIGlobals
      L0_2 = L0_2.StorageDownloadCallback
      L1_2 = true
      L0_2(L1_2)
      L0_2 = StartAsyncSave
      L0_2()
    end
  else
    L0_2 = UIGlobals
    L0_2 = L0_2.StorageDownloadCallback
    if L0_2 ~= nil then
      L0_2 = UIGlobals
      L0_2 = L0_2.StorageDownloadCallback
      L1_2 = false
      L0_2(L1_2)
    end
  end
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FriendDemandNoFriendsChosen"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L5_1 = "POP_FRIEND_DEMAND"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FRIEND_DEMAND_NO_FRIENDS_CHOSEN"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "LostLobbyConnection"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ALERT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_LOST_CONNECTION_LOBBY"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "DisconnectFromFacebook"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L5_1 = "POP_TITLE_FACEBOOK"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FACEBOOK_UN_REGISTERED"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_YES_A
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_NO_B
L3_1.back_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = UIGlobals
  L0_2.fb_disconnecting = true
  L0_2 = Amax
  L0_2 = L0_2.FacebookUnRegister
  L0_2()
  L0_2 = PopupSpawn
  L1_2 = UIEnums
  L1_2 = L1_2.CustomPopups
  L1_2 = L1_2.DisconnectingFromFacebook
  L0_2(L1_2)
end
L3_1.next_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "DisconnectingFromFacebook"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.show_progress = L4_1
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = true
L3_1.no_next = L4_1
L4_1 = UIText
L5_1 = "POP_TITLE_FACEBOOK"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FACEBOOK_UN_REGISTERING"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FacebookDisconnected"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_TITLE_FACEBOOK"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_FACEBOOK_DISCONNECTED"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "TrophiesNotInstalled"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_CANCEL
L3_1.back_text_ID = L4_1
L4_1 = true
L3_1.no_next = L4_1
L4_1 = true
L3_1.show_progress = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_TROPHIES_NOT_INSTALLED"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = Amax
  L0_2 = L0_2.TrophiesInstalled
  L0_2 = L0_2()
  if L0_2 == true then
    L1_2 = PopupCancel
    L1_2()
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "GarageFirstModUnlocked"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_GARAGE_FIRST_MOD_UNLOCKED"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "ReconnectToLeaderboards"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = true
L3_1.no_next = L4_1
L4_1 = nil
L3_1.colour_style = L4_1
L4_1 = nil
L3_1.icon_name = L4_1
L4_1 = true
L3_1.show_progress = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.CMN_NOWT
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = CustomPopup
  L0_2 = L0_2.CurrentData
  L1_2 = UIGlobals
  L1_2 = L1_2.NetConnectionDarken
  L0_2.darken = L1_2
  L0_2 = PopupGUI
  L0_2.FinishedCreatingNetworkSession = false
  L0_2 = PopupGUI
  L0_2.reading_leaderboard = false
  L0_2 = PopupGUI
  L0_2.server_timeout = 0
  L0_2 = PopupGUI
  L0_2.end_timer = 1.5
  L0_2 = Profile
  L0_2 = L0_2.PadProfileOnline
  L1_2 = Profile
  L1_2 = L1_2.GetPrimaryPad
  L1_2 = L1_2()
  L0_2 = L0_2(L1_2)
  if L0_2 == true then
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L1_2 = UIText
    L1_2 = L1_2.RBC_SERVER_CONNECTION_ONLINE
    L0_2.message_text_ID = L1_2
    L0_2 = UIGlobals
    L0_2 = L0_2.SuccessfullyCreatedNetworkSession
    if L0_2 == false then
      L0_2 = Amax
      L0_2 = L0_2.StartCreateStatsOnlyMatchingSession
      L0_2()
    end
    L0_2 = PopupGUI
    L1_2 = UIEnums
    L1_2 = L1_2.PopupState
    L1_2 = L1_2.Busy
    L0_2.State = L1_2
  else
    L0_2 = CustomPopup
    L0_2 = L0_2.CurrentData
    L1_2 = UIText
    L1_2 = L1_2.RBC_SERVER_CONNECTION_OFFLINE
    L0_2.message_text_ID = L1_2
    L0_2 = PopupGUI
    L1_2 = UIEnums
    L1_2 = L1_2.PopupState
    L1_2 = L1_2.Failed
    L0_2.State = L1_2
  end
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = PopupGUI
  L1_2 = L1_2.State
  L2_2 = UIEnums
  L2_2 = L2_2.PopupState
  L2_2 = L2_2.Busy
  if L1_2 == L2_2 then
    L1_2 = Profile
    L1_2 = L1_2.PadProfileOnline
    L2_2 = Profile
    L2_2 = L2_2.GetPrimaryPad
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2()
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    if L1_2 ~= true then
      L1_2 = PopupGUI
      L2_2 = UIEnums
      L2_2 = L2_2.PopupState
      L2_2 = L2_2.Failed
      L1_2.State = L2_2
      return
    end
    L1_2 = PopupGUI
    L1_2 = L1_2.FinishedCreatingNetworkSession
    if L1_2 == false then
      L1_2 = UIGlobals
      L1_2 = L1_2.SuccessfullyCreatedNetworkSession
      if L1_2 == false then
        L1_2 = PopupGUI
        L2_2 = UIGlobals
        L3_2 = Amax
        L3_2 = L3_2.ContinueCreateStatsOnlyMatchingSession
        L3_2, L4_2 = L3_2()
        L2_2.SuccessfullyCreatedNetworkSession = L4_2
        L1_2.FinishedCreatingNetworkSession = L3_2
        L1_2 = print
        L2_2 = "SUCCESSFULLY CREATED NETWORK SESSION"
        L3_2 = UIGlobals
        L3_2 = L3_2.SuccessfullyCreatedNetworkSession
        L1_2(L2_2, L3_2)
    end
    else
      L1_2 = UIGlobals
      L1_2 = L1_2.SuccessfullyCreatedNetworkSession
      if L1_2 == true then
        L1_2 = UIGlobals
        L1_2 = L1_2.NetworkSessionStarted
        if L1_2 == false then
          L1_2 = UIGlobals
          L2_2 = Amax
          L2_2 = L2_2.StartPlayStatsOnlyMatchingSession
          L2_2 = L2_2()
          L1_2.NetworkSessionStarted = L2_2
          L1_2 = print
          L2_2 = "Network Session Started: "
          L3_2 = UIGlobals
          L3_2 = L3_2.NetworkSessionStarted
          L1_2(L2_2, L3_2)
          L1_2 = UIGlobals
          L1_2 = L1_2.NetworkSessionStarted
          if L1_2 == true then
            L1_2 = PopupGUI
            L1_2.reading_leaderboard = true
            L1_2 = print
            L2_2 = "Reading the scoreboard"
            L1_2(L2_2)
            L1_2 = Amax
            L1_2 = L1_2.StartFriendScoreboardRead
            L2_2 = 0
            L1_2(L2_2)
          end
        end
        L1_2 = UIGlobals
        L1_2 = L1_2.NetworkSessionStarted
        if L1_2 == false then
          L1_2 = PopupGUI
          L2_2 = UIEnums
          L2_2 = L2_2.PopupState
          L2_2 = L2_2.Failed
          L1_2.State = L2_2
          return
        else
          L1_2 = PopupGUI
          L1_2 = L1_2.reading_leaderboard
          if L1_2 == true then
            L1_2 = Amax
            L1_2 = L1_2.ScoreboardReadComplete
            L1_2, L2_2, L3_2, L4_2 = L1_2()
            L5_2 = PopupGUI
            L6_2 = PopupGUI
            L6_2 = L6_2.server_timeout
            L6_2 = L6_2 + A0_2
            L5_2.server_timeout = L6_2
            L5_2 = PopupGUI
            L5_2 = L5_2.server_timeout
            if 15 < L5_2 then
              L5_2 = PopupGUI
              L6_2 = UIEnums
              L6_2 = L6_2.PopupState
              L6_2 = L6_2.Failed
              L5_2.State = L6_2
              return
            end
            if L1_2 == true then
              L5_2 = PopupGUI
              L5_2.reading_leaderboard = false
              L5_2 = print
              L6_2 = "Finished Reading Leaderboard"
              L7_2 = L2_2
              L8_2 = L3_2
              L9_2 = L4_2
              L5_2(L6_2, L7_2, L8_2, L9_2)
              L5_2 = UIGlobals
              L5_2.SPPostRaceLeaderboardDone = false
              L5_2 = PopupGUI
              L6_2 = UIEnums
              L6_2 = L6_2.PopupState
              L6_2 = L6_2.Finished
              L5_2.State = L6_2
              L5_2 = CustomPopup
              L5_2 = L5_2.CurrentData
              L6_2 = UIText
              L6_2 = L6_2.RBC_COMPLETED
              L5_2.message_text_ID = L6_2
              L5_2 = UIGlobals
              L5_2 = L5_2.server_connection
              L5_2 = L5_2.callback
              if L5_2 ~= nil then
                L5_2 = UIGlobals
                L5_2 = L5_2.server_connection
                L5_2 = L5_2.callback
                L6_2 = true
                L5_2(L6_2)
              end
            end
          end
        end
      else
        L1_2 = PopupGUI
        L2_2 = UIEnums
        L2_2 = L2_2.PopupState
        L2_2 = L2_2.Failed
        L1_2.State = L2_2
        return
      end
    end
  else
    L1_2 = PopupGUI
    L1_2 = L1_2.State
    L2_2 = UIEnums
    L2_2 = L2_2.PopupState
    L2_2 = L2_2.Failed
    if L1_2 == L2_2 then
      L1_2 = print
      L2_2 = "Failed"
      L1_2(L2_2)
      L1_2 = PopupSpawn
      L2_2 = UIEnums
      L2_2 = L2_2.CustomPopups
      L2_2 = L2_2.SPLeaderboardPostRaceError
      L1_2(L2_2)
    else
      L1_2 = PopupGUI
      L1_2 = L1_2.State
      L2_2 = UIEnums
      L2_2 = L2_2.PopupState
      L2_2 = L2_2.Finished
      if L1_2 == L2_2 then
        L1_2 = PopupGUI
        L2_2 = PopupGUI
        L2_2 = L2_2.end_timer
        L2_2 = L2_2 - A0_2
        L1_2.end_timer = L2_2
        L1_2 = PopupGUI
        L1_2 = L1_2.end_timer
        if L1_2 <= 0 then
          L1_2 = PopupCancel
          L1_2()
        end
      end
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FacebookAuthenticating"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.show_progress = L4_1
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = true
L3_1.no_next = L4_1
L4_1 = UIText
L5_1 = "POP_TITLE_FACEBOOK"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_PLEASE_WAIT"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "TwitterAuthenticating"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.show_progress = L4_1
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = true
L3_1.no_next = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_TWITTER
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "POP_PLEASE_WAIT"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FailedAgeCheck"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "RBC_SERVER_CONNECTION_FAILED_AGE_CHECK"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FailedWriteToLeaderboards"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L3_1.colour_style = "Main_Black"
L4_1 = 0.6
L3_1.intensity = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_ERROR
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_CONTENT_SERVER_GENERAL_ERROR
L3_1.message_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_TRY_RECONNECT
L3_1.x_text_ID = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = UIEnums
  L3_2 = L3_2.Message
  L3_2 = L3_2.ButtonX
  if A0_2 == L3_2 then
    L3_2 = PlaySfxNext
    L3_2()
    L3_2 = PopupSpawn
    L4_2 = UIEnums
    L4_2 = L4_2.CustomPopups
    L4_2 = L4_2.RetryWriteToLeaderboards
    L3_2(L4_2)
  end
end
L3_1.message_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "RetryWriteToLeaderboards"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = true
L3_1.no_next = L4_1
L4_1 = nil
L3_1.colour_style = L4_1
L4_1 = nil
L3_1.icon_name = L4_1
L4_1 = true
L3_1.show_progress = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_PLEASE_WAIT
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.CMN_NOWT
L3_1.message_text_ID = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = Amax
  L0_2 = L0_2.StartSPScoreboardWrite
  L0_2()
  L0_2 = PopupGUI
  L1_2 = UIEnums
  L1_2 = L1_2.PopupState
  L1_2 = L1_2.Busy
  L0_2.State = L1_2
  L0_2 = CustomPopup
  L0_2 = L0_2.CurrentData
  L1_2 = UIText
  L1_2 = L1_2.RBC_SERVER_CONNECTION_ONLINE
  L0_2.message_text_ID = L1_2
  L0_2 = PopupGUI
  L0_2.TimeOut = 15
end
L3_1.init_CB = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = PopupGUI
  L1_2 = L1_2.State
  L2_2 = UIEnums
  L2_2 = L2_2.PopupState
  L2_2 = L2_2.Busy
  if L1_2 == L2_2 then
    L1_2 = PopupGUI
    L2_2 = PopupGUI
    L2_2 = L2_2.TimeOut
    L2_2 = L2_2 - A0_2
    L1_2.TimeOut = L2_2
    L1_2 = Amax
    L1_2 = L1_2.SPScooreboardWriteSuccess
    L1_2 = L1_2()
    if L1_2 ~= false then
      L1_2 = PopupGUI
      L1_2 = L1_2.TimeOut
      if not (L1_2 <= 0) then
        goto lbl_27
      end
    end
    L1_2 = PopupGUI
    L2_2 = UIEnums
    L2_2 = L2_2.PopupState
    L2_2 = L2_2.Failed
    L1_2.State = L2_2
    ::lbl_27::
    L1_2 = Amax
    L1_2 = L1_2.SPScoreboardWriteComplete
    L2_2 = true
    L1_2 = L1_2(L2_2)
    if L1_2 == true then
      L1_2 = UIGlobals
      L1_2.SPPostRaceLeaderboardDone = true
      L1_2 = PopupGUI
      L2_2 = UIEnums
      L2_2 = L2_2.PopupState
      L2_2 = L2_2.Finished
      L1_2.State = L2_2
    end
  else
    L1_2 = PopupGUI
    L1_2 = L1_2.State
    L2_2 = UIEnums
    L2_2 = L2_2.PopupState
    L2_2 = L2_2.Failed
    if L1_2 == L2_2 then
      L1_2 = PopupSpawn
      L2_2 = UIEnums
      L2_2 = L2_2.CustomPopups
      L2_2 = L2_2.FailedWriteToLeaderboards
      L1_2(L2_2)
      L1_2 = UIGlobals
      L1_2.SPPostRaceLeaderboardDone = true
    else
      L1_2 = PopupGUI
      L1_2 = L1_2.State
      L2_2 = UIEnums
      L2_2 = L2_2.PopupState
      L2_2 = L2_2.Finished
      if L1_2 == L2_2 then
        L1_2 = UIGlobals
        L1_2.LeaderboardReTryPassed = true
        L1_2 = PopupCancel
        L1_2()
      end
    end
  end
end
L3_1.update_CB = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FriendDemandRemovedFriend"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "RBC_REMOVED_FRIEND"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "FriendDemandNotFriend"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "RBC_FC_NOT_FRIEND"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "SocialTagFriendSuccess"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "SOC_TAGGED"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "SocialTagFriendRemove"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "SOC_TAG_REMOVED"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "SocialTagCategorySuccess"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "SOC_TAGGED_CATEGORY"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "SocialTagCategoryRemove"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = true
L3_1.no_back = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_OK
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.POP_TITLE_INFO
L3_1.title_text_ID = L4_1
L4_1 = UIText
L5_1 = "SOC_TAG_REMOVED_CATEGORY"
L4_1 = L4_1[L5_1]
L3_1.message_text_ID = L4_1
L1_1[L2_1] = L3_1
L2_1 = UIEnums
L2_1 = L2_1.CustomPopups
L3_1 = "LicenceOptions"
L2_1 = L2_1[L3_1]
L3_1 = {}
L4_1 = true
L3_1.darken = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_A_SELECT
L3_1.next_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.INFO_B_BACK
L3_1.back_text_ID = L4_1
L4_1 = UIText
L5_1 = "SOC_BLUR_LICENCE"
L4_1 = L4_1[L5_1]
L3_1.title_text_ID = L4_1
L4_1 = UIText
L4_1 = L4_1.CMN_NOWT
L3_1.message_text_ID = L4_1
L4_1 = {}
L5_1 = {}
L6_1 = 0
L5_1.value = L6_1
L6_1 = UIText
L7_1 = "SOC_ADD_FRONT"
L6_1 = L6_1[L7_1]
L5_1.name = L6_1
L6_1 = {}
L7_1 = 1
L6_1.value = L7_1
L7_1 = UIText
L8_1 = "SOC_ADD_REAR"
L7_1 = L7_1[L8_1]
L6_1.name = L7_1
L4_1[1] = L5_1
L4_1[2] = L6_1
L3_1.options = L4_1
L1_1[L2_1] = L3_1
L0_1.Data = L1_1
CustomPopup = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = UIScreen
  L2_2 = L2_2.IsPopupActive
  L2_2 = L2_2()
  if L2_2 == true then
    L2_2 = PopupSpawn
    L3_2 = A0_2
    L2_2(L3_2)
  else
    if A0_2 == nil then
      L2_2 = print
      L3_2 = "SetupCustomPopup : Error, the index passed was a nil"
      L2_2(L3_2)
      L2_2 = CustomPopup
      L3_2 = CustomPopup
      L3_2 = L3_2.Data
      L4_2 = UIEnums
      L4_2 = L4_2.CustomPopups
      L4_2 = L4_2.Default
      L3_2 = L3_2[L4_2]
      L2_2.CurrentData = L3_2
      L2_2 = CustomPopup
      L3_2 = UIEnums
      L3_2 = L3_2.CustomPopups
      L3_2 = L3_2.Default
      L2_2.CurrentType = L3_2
      L2_2 = CustomPopup
      L2_2.Callback = nil
    else
      L2_2 = CustomPopup
      L3_2 = CustomPopup
      L3_2 = L3_2.Data
      L3_2 = L3_2[A0_2]
      L2_2.CurrentData = L3_2
      L2_2 = CustomPopup
      L2_2.CurrentType = A0_2
      L2_2 = CustomPopup
      L2_2.Callback = A1_2
      L2_2 = CustomPopup
      L2_2 = L2_2.CurrentData
      if L2_2 == nil then
        L2_2 = print
        L3_2 = "SetupCustomPopup : Error index was invalid"
        L2_2(L3_2)
        L2_2 = CustomPopup
        L3_2 = CustomPopup
        L3_2 = L3_2.Data
        L4_2 = UIEnums
        L4_2 = L4_2.CustomPopups
        L4_2 = L4_2.Default
        L3_2 = L3_2[L4_2]
        L2_2.CurrentData = L3_2
        L2_2 = CustomPopup
        L3_2 = UIEnums
        L3_2 = L3_2.CustomPopups
        L3_2 = L3_2.Default
        L2_2.CurrentType = L3_2
      end
    end
    L2_2 = CustomPopup
    L3_2 = GUI
    L2_2.CallingGUI = L3_2
    L2_2 = CustomPopup
    L3_2 = SCUI
    L2_2.CallingSCUI = L3_2
    L2_2 = UIScreen
    L2_2 = L2_2.AddPopup
    L3_2 = "TheCustomPopup.lua"
    L2_2(L3_2)
  end
end
SetupCustomPopup = L0_1
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = IsNumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 == false then
    L1_2 = print
    L2_2 = "PopupSpawn : Error id not a number"
    L1_2(L2_2)
    return
  end
  L1_2 = UIGlobals
  L1_2 = L1_2.UserKickBackMode
  L2_2 = UIEnums
  L2_2 = L2_2.UserKickBackMode
  L2_2 = L2_2.None
  if L1_2 ~= L2_2 then
    L1_2 = print
    L2_2 = "PopupSpawn : Disabled, Returning to start screen."
    L1_2(L2_2)
    return
  end
  L1_2 = PopupGUI
  L1_2.spawn_next = A0_2
  L1_2 = UIScreen
  L1_2 = L1_2.CancelPopup
  L1_2()
end
PopupSpawn = L0_1
function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  L4_2 = PopupGUI
  L4_2.cancel = true
  L4_2 = PopupGUI
  L4_2.finished = true
  L4_2 = PopupGUI
  L4_2.next_screen = A0_2
  L4_2 = PopupGUI
  L4_2.go_subscreen = A1_2
  L4_2 = PopupGUI
  L4_2.go_launch_screen = A2_2
  L4_2 = PopupGUI
  L4_2.context = A3_2
  L4_2 = PopupGUI
  L4_2.timeout_timer = 0
end
PopupCancel = L0_1
