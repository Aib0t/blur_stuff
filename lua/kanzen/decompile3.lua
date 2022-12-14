SocialSystem = {
  TickerBarActive = false,
  TickerMenuActive = false,
  LicenceActive = false,
  LicenceShowingFront = false,
  LicenceShowingPlayer = false,
  StorySharingActive = false,
  PhotoSharingActive = false
}
TickerMenu = {
  StoryItemIndex = -1,
  NumFriends = 0,
  BreakingNews = 0,
  TickerTextPosStart = 200,
  TickerTextPos = 0,
  NumNewsItems = 0,
  NumChallenges = 0,
  Stories = {},
  StoryText = {},
  StoryTextLengths = {},
  StorySpacers = {},
  TotalTickerNews = 10,
  TakingPhoto = 0,
  Menus = {
    Shout = 0,
    News = 1,
    Tag = 2,
    Friends = 3,
    Challenges = 4
  }
}
function StartTickerBar()
  if SocialSystem.TickerBarActive == false then
    SocialSystem.TickerBarActive = true
    UIButtons.TimeLineActive("open_ticker_bar", SocialSystem.TickerBarActive)
  end
end
function EndTickerBar()
  if SocialSystem.TickerBarActive == true then
    SocialSystem.TickerBarActive = false
    UIButtons.TimeLineActive("open_ticker_bar", SocialSystem.TickerBarActive)
  end
end
function StartTickerMenu(_ARG_0_)
  if SocialSystem.TickerMenuActive == false then
    StoreInfoLine()
    SetupInfoLine()
    SocialSystem.TickerMenuActive = true
    UIButtons.TimeLineActive("create_menu_bg", SocialSystem.TickerMenuActive, 0)
    UIScreen.BlockInputToContext(true, UIEnums.Context.System)
    UIButtons.Activated(SystemSCUI.name_to_id.HorizMenu, true)
    UIButtons.Activated(SystemSCUI.name_to_id.VertMenu, true)
    UIButtons.Selected(SystemSCUI.name_to_id.HorizMenu, true)
    UIButtons.Selected(SystemSCUI.name_to_id.VertMenu, true)
    TickerMenu.NumNewsItems = Social.GetNumNewsItems()
    TickerMenu.CurrentVert = nil
    VerticalMenuUpdate(true)
  end
end
function EndTickerMenu(_ARG_0_)
  if SocialSystem.TickerMenuActive == true then
    RestoreInfoLine()
    SocialSystem.TickerMenuActive = false
    if _ARG_0_ == true then
      UIButtons.TimeLineActive("create_menu_bg", SocialSystem.TickerMenuActive, 0)
    else
      UIButtons.TimeLineActive("create_menu_bg", SocialSystem.TickerMenuActive)
    end
    UIButtons.TimeLineActive("show_cp", false, 0)
    UIScreen.BlockInputToContext(false, UIEnums.Context.System)
    UIButtons.Activated(SystemSCUI.name_to_id.HorizMenu, false)
    UIButtons.Activated(SystemSCUI.name_to_id.VertMenu, false)
  end
end
function StartStorySharing(_ARG_0_, _ARG_1_, _ARG_2_)
  EndSocialSharing()
  if #_ARG_0_ > 0 and Amax.CanUseShare() == true then
    SocialSystem.StorySharingActive = true
    if _ARG_2_ == true then
      UIButtons.Activated(SystemSCUI.name_to_id.ProShoutIcon, true)
    else
      UIButtons.TimeLineActive("shout_icon_active", SocialSystem.StorySharingActive, 0)
    end
    TickerMenu.GoBackScreen = _ARG_1_
    TickerMenu.StoryItemIndex = -1
    TickerMenu.Stories = _ARG_0_
    CreateShoutMenu(TickerMenu.Stories)
  end
end
function StartPhotoSharing(_ARG_0_)
  EndSocialSharing()
  if Amax.CanUseShare() == true then
    SocialSystem.PhotoSharingActive = true
    UIButtons.TimeLineActive("shout_icon_active", SocialSystem.PhotoSharingActive, 0)
    TickerMenu.GoBackScreen = _ARG_0_
    TickerMenu.StoryItemIndex = -1
    TickerMenu.Stories = {
      {
        -1,
        UIText.SOC_PHOTO,
        UIText.SOC_PHOTO_HELP
      }
    }
    CreateShoutMenu(TickerMenu.Stories)
  end
end
function EndSocialSharing()
  UIButtons.TimeLineActive("shout_icon_active", false)
  UIButtons.Activated(SystemSCUI.name_to_id.ProShoutIcon, false)
  SocialSystem.StorySharingActive = false
  SocialSystem.PhotoSharingActive = false
  TickerMenu.Stories = {}
end
function StartStorySharingItemIndex(_ARG_0_)
  TickerMenu.StoryItemIndex = _ARG_0_
end
function StartLicence(_ARG_0_, _ARG_1_, _ARG_2_)
  if SocialSystem.LicenceActive == false then
    UIButtons.Activated(SystemSCUI.name_to_id.licence_rb, true)
    UIButtons.TimeLineActive("licence_open", true, 0)
    UIButtons.Position(SystemSCUI.name_to_id.licence_rb, _ARG_1_, _ARG_2_, nil)
    SocialSystem.LicenceActive = true
    SocialSystem.LicenceShowingFront = false
    UIButtons.TimeLineActive("flip_licence", SocialSystem.LicenceShowingFront, 0)
    UIScreen.BlockInputToContext(true, UIEnums.Context.System)
    if _ARG_0_ == 0 then
      SocialSystem.LicenceShowingPlayer = true
      UIButtons.ChangeText(SystemSCUI.name_to_id.gamertag, "SOC_LICENCE_PLAYER_NAME")
      UIButtons.ChangeText(SystemSCUI.name_to_id.vs_heading, UIText.SOC_YOUR_STATS)
    else
      SocialSystem.LicenceShowingPlayer = false
      UIButtons.ChangeText(SystemSCUI.name_to_id.gamertag, "SOC_LICENCE_NAME")
      UIButtons.ChangeText(SystemSCUI.name_to_id.vs_heading, "SOC_LICENCE_REAR_TITLE")
    end
    UIButtons.Selected(SystemSCUI.name_to_id.HorizMenu, false)
    UIButtons.Selected(SystemSCUI.name_to_id.VertMenu, false)
    if Social.GetLicence(_ARG_0_) == true then
      if _ARG_0_ == 0 then
        UIButtons.ChangeTexture({filename = "GAMERPIC_0"}, 1, SystemSCUI.name_to_id.gamerpic)
      else
        UIButtons.ChangeTexture({
          filename = "REMOTE_GAMERPIC_0"
        }, 1, SystemSCUI.name_to_id.gamerpic)
      end
    else
      UIButtons.ChangeTexture({
        filename = "default_gamerpic"
      }, 1, SystemSCUI.name_to_id.gamerpic)
    end
    UpdateLicence()
  end
end
function EndLicence()
  if SocialSystem.LicenceActive == true then
    UIButtons.TimeLineActive("licence_open", false)
    SocialSystem.LicenceActive = false
    if SocialSystem.TickerMenuActive == false then
      UIScreen.BlockInputToContext(false, UIEnums.Context.System)
    else
      UIButtons.Selected(SystemSCUI.name_to_id.HorizMenu, true)
      UIButtons.Selected(SystemSCUI.name_to_id.VertMenu, true)
    end
  end
end
function SetLicenceStatBars(_ARG_0_, _ARG_1_, _ARG_2_)
  if SocialSystem.LicenceShowingPlayer == true then
    UIButtons.Position(SystemSCUI.name_to_id["bar" .. _ARG_0_ .. "_you"], nil, 1.75, nil)
  else
    UIButtons.Position(SystemSCUI.name_to_id["bar" .. _ARG_0_ .. "_you"], nil, 3, nil)
  end
  UIButtons.Size(SystemSCUI.name_to_id["bar" .. _ARG_0_ .. "_you"], _ARG_1_, 5, nil)
  UIButtons.Size(SystemSCUI.name_to_id["bar" .. _ARG_0_ .. "_friend"], _ARG_2_, 5, nil)
  if _ARG_1_ > UIButtons.GetStaticTextLength(SystemSCUI.name_to_id["bar" .. _ARG_0_ .. "_you_var"]) then
    UIButtons.Justify(SystemSCUI.name_to_id["bar" .. _ARG_0_ .. "_you_var"], UIEnums.Justify.MiddleRight)
    UIButtons.Position(SystemSCUI.name_to_id["bar" .. _ARG_0_ .. "_you_var"], -0.5, nil, nil)
  else
    UIButtons.Justify(SystemSCUI.name_to_id["bar" .. _ARG_0_ .. "_you_var"], UIEnums.Justify.MiddleLeft)
    UIButtons.Position(SystemSCUI.name_to_id["bar" .. _ARG_0_ .. "_you_var"], 0.5, nil, nil)
  end
  if _ARG_2_ > UIButtons.GetStaticTextLength(SystemSCUI.name_to_id["bar" .. _ARG_0_ .. "_friend_var"]) then
    UIButtons.Justify(SystemSCUI.name_to_id["bar" .. _ARG_0_ .. "_friend_var"], UIEnums.Justify.MiddleRight)
    UIButtons.Position(SystemSCUI.name_to_id["bar" .. _ARG_0_ .. "_friend_var"], -0.5, nil, nil)
  else
    UIButtons.Justify(SystemSCUI.name_to_id["bar" .. _ARG_0_ .. "_friend_var"], UIEnums.Justify.MiddleLeft)
    UIButtons.Position(SystemSCUI.name_to_id["bar" .. _ARG_0_ .. "_friend_var"], 0.5, nil, nil)
  end
  if SocialSystem.LicenceShowingPlayer == true then
    UIButtons.Activated(SystemSCUI.name_to_id["bar" .. _ARG_0_ .. "_friend"], false)
    UIButtons.Activated(SystemSCUI.name_to_id["bar" .. _ARG_0_ .. "_friend_var"], false)
  else
    UIButtons.Activated(SystemSCUI.name_to_id["bar" .. _ARG_0_ .. "_friend"], true)
    UIButtons.Activated(SystemSCUI.name_to_id["bar" .. _ARG_0_ .. "_friend_var"], true)
  end
end
function UpdateLicence()
  if SocialSystem.LicenceShowingPlayer == true then
  end
  if Social.GetLicenceData().You.front_bg == 0 then
    UIButtons.ChangeTexture({filename = "null"}, 1, SystemSCUI.name_to_id.front_licence)
  else
    UIButtons.ChangeTexture({
      filename = UIGlobals.LicenceBG[Social.GetLicenceData().You.front_bg][2]
    }, 1, SystemSCUI.name_to_id.front_licence)
  end
  if SocialSystem.LicenceShowingPlayer == true then
  end
  if Social.GetLicenceData().You.rear_bg == 0 then
    UIButtons.ChangeTexture({filename = "null"}, 1, SystemSCUI.name_to_id.back_licence)
  else
    UIButtons.ChangeTexture({
      filename = UIGlobals.LicenceBG[Social.GetLicenceData().You.rear_bg][2]
    }, 1, SystemSCUI.name_to_id.back_licence)
  end
  for _FORV_8_ = 1, 5 do
    if Social.GetLicenceData().You[_FORV_8_] > Social.GetLicenceData().Friend[_FORV_8_] then
      SetLicenceStatBars(_FORV_8_, 40, 40 / Social.GetLicenceData().You[_FORV_8_] * Social.GetLicenceData().Friend[_FORV_8_])
    elseif Social.GetLicenceData().You[_FORV_8_] < Social.GetLicenceData().Friend[_FORV_8_] then
      SetLicenceStatBars(_FORV_8_, 40 / Social.GetLicenceData().Friend[_FORV_8_] * Social.GetLicenceData().You[_FORV_8_], 40)
    elseif Social.GetLicenceData().You[_FORV_8_] == 0 and Social.GetLicenceData().Friend[_FORV_8_] == 0 then
      SetLicenceStatBars(_FORV_8_, 0, 0)
    elseif Social.GetLicenceData().You[_FORV_8_] == Social.GetLicenceData().Friend[_FORV_8_] then
      SetLicenceStatBars(_FORV_8_, 20, 20)
    end
  end
end
