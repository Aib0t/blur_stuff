LuaQ                0   
@ 	À	 Á	 Á	ÀAJ   	@ J   	@J   	@ J   	@J   	@ J   	@	ÀCJ   	@ J   	@   $    $@  À $    $À  @ $   $@ À $   $À @ $   $@ À $   $À @         GUI 	   finished     allow_pause    automation_start    num_players       ð?   ai_hud_ids    safe_2d_ids    safe_3d_ids    inter_2d_ids    inter_3d_ids    revs_partial_ids    going_to_pause_pad       ð¿   mp_fan_msg_root    mp_fan_msg_activate_in    Init 	   PostInit $   HUD_Coop_SetupNormalPositionDisplay !   HUD_Coop_SetupVipPositionDisplay 
   StartLoop    MessageUpdate    FrameUpdate    Render 	   EnterEnd    EndLoop    End 
   PauseGame           2      2      @ @  @ AÀ  @   @A A À @  E@ FÂ FÀÂ @   E@  FÃ \ 	@À  D A@ @  ÀD @    @E @ ÀE A  @  @F E FÀÆ F Ç @   @G E@ FÇ FÀÇ   @  !      Splitscreen_AddSplits    Amax    SetGlobalFade       ð?	   UIScreen    SetScreenTimers 333333Ó?333333Ã?   net_SetRichPresence    UIEnums    RichPresence    InRace    GUI    num_players    GetNumViewports 	   UISystem    LoadLuaScript    Screens\Ingame\HUD_Helpers.lua    HUD    SetupPlayerViewports    IsSplitScreen    Profile 
   LockToPad       ð¿   SetPrimaryPad 
   UIGlobals    Splitscreen    primary_pad    AddMessageNow    GameMessage    SetLocalPlayerIndex                             4        /¿     E  FÀÀ \ 	@   E  F@Á \ 	@  E   FÀÁ   @£ÁJ  ABÁ Â Å ÆAÂ A Ü BBA B bA   CÆÁÂ A  UA  CÆAÄ AÂ  UA  CÆÅB A  UA Á Å  ÆÁÁ B  AÍ @@E FDÆ À  \D E FÆ ÏDDÌÄEÄ\D !  Àû  ÃA 
 E FCÂ ÁÃ \ CBÁ  Å ÆCÂ AD Ü"C  E  \À G	ÀÅ @ D  G	À @ D  G	ÀE @ D  G	À @D a  @ù CBA Ã E FÉ ÁC	 \ CBÁ 	 Å ÆÉ  AÄ	 Ü  J	  DJ	  J	D  ÄJ	Ä DF@ DF	Å ÆDË	ÆÄ	 D   K@  DK	Ä 	ÅÄ ÆÌ	ÆDÌ	D  DF@ DF	Å ÆÌ	ÆÄ	 D   K@  L	Ä 	ÅÄ ÆÌ	ÆDÌ	D   ÄL	Í I	ÀE   	 I	À @ 	 ÄM	À  B D  ÄM	À  B D  G	À  AE D  DB	Á  Å ÆDÂ	 AÅ Ü K
@	ÅÅ ÆÌÆÏE   EO
E FÉ
	Á \Å À  EÅ EP
P

E FEÐ
 IÀ 	Æ À 
\EE FEÐ
 IÀ 	 À 
\EE FÇ
 IÀ 	Æ ÁE Æ @ F\E E FÇ
 IÀ 	 ÁE  @ F\E E FÇ
 IÀ 	 ÁE  @ F\E E FÇ
 	ÁE  @ F\E E FÉ
	ÁÅ \ RÊE   @ FÉ¤Æ @
E   E@ S  EBÁ F Å ÆË  @	Æ LFLÜE Å  ÆÓ I@ Æ É EBÁ  Å ÆË  @	Æ LFTÜE Å  ÆEÏ I@	 AÆ  ÁÆ UÆÜEÅ ÆEÂ A Ü K@ÅÆ ÆÌÆÏF F E  FFÕ\  Ó@AÀE  \F À EÆ À \FE FFÂ Á \ KÀ 	EÇ FÌFÏF  IÀG Å  ÆFÏ  AÇ  Á UÇÜFÅ ÆFÂ AÇ Ü K@ÅÇ ÆÌÆ×G  F@Å ÆÆ @ À ÜGÅ ÆGÂH A Ü HF@Å ÆHÆ 	EÉ F	ØFIØ	À	 ÜHÅ ÆÉ 	A Ü	 ÉX@		 Á	  I	  ÉA 		 IBA I I	 IBA  I	 IBA É I	  	ZJ	  	I	  	ZÉ E	 F	É	Á \	I´ E  FÉÚ\   
 JBA 
 AJ 
 ÁJ ÁU

 CÅ
 Æ
É  A ÜË AË UJ 
 CÅ
 Æ
É  A ÜË AË UJ 
  
ZÊ Å
  Æ
ÚÆÊÔ
ÌÁ
J \Ê\
 @
 
IÀ
  Å
 ÆJÝ  EK FÜFÝK \Ë\Ë	Ë]FÜJÉîI 	^I^ S 	 IBA  E	 FIÐ	 	IÀ	 Ê ÅÉ ÆIÐÆ	ßÌ	\II _EÉ FÉßF	à	 I	  	A S@	 ÉM@	 	  I	 ÉM@	 	  I	 I`@	I 	 I`@	I  \@  ^ @^  S    ` EÀ FÀà F á @ @  ^ 	@á¼  E   F Ú  E  \   aÆBZ Ba   þ!  ü        GUI 
   show_revs    Amax 	   ShowRevs    show_camera_helpers    ShowCameraHelpers       ð?   num_players 
   UIButtons    CloneXtGadgetByName    hud_objects    FullScreen_Fade    FullScreen_Flash    FullScreen_FlashGraphic    ReplaceTimeLineLabel 	   HoG_fade 
   HoG_fade_        @   Flash_fade    Flash_fade_       @   FlashGraphic_fade    FlashGraphic_fade_    GetScreenBounds    ipairs    Size 	   Position    Clip_Push_41    Clip_Push_14    Clip_Push_31 	   SetXtVar    render_state.clip_pos.vx    render_state.clip_pos.vy    render_state.clip_size.vx    render_state.clip_size.vy    2D_SAFE    FindChildByName    2D_Intermediate    3D_SAFE    3D_Intermediate    safe_2d_ids    safe_3d_ids    inter_2d_ids    inter_3d_ids    HUD    ViewportId 
   SetParent    UIEnums    Justify    MiddleCentre    ViewportId3d    mp_fan_msg_activate_in       ð¿   Perks_CoOpMainHUD    Perks_MainHUD 
   Activated    bender            dmy_MiniMapScale 	   Map_Root 	   TopRight    ChangeText    Map_SpeedNumber    HUD_    _SPEED_MPH    Panel    _RT0    shp_MiniMapRoad    shp_MiniMapRoad_Alt    name    dmy_MiniMapTranslate 	   Map_Main    ChangeTexture 	   filename    MINIMAP_RT       @	   Map_Revs    revs_partial_ids    Map_RevsPartial 
   Fans_Icon    BottomRight    Fans_Number    _FANS    Fans_BackingTop    IsRaceCoopVip !   HUD_Coop_SetupVipPositionDisplay $   HUD_Coop_SetupNormalPositionDisplay 	   Map_Laps    Map_LapsNum    _LAP    Mirror_Root_SS 
   TopCentre    coop_objects    Ss_RaceLine_Main    Screen    safe    width 
   targeting    Scale 333333ç?   Clip_Pop_41    Clip_Pop_14    Clip_Pop_31    ai_hud_ids    id    AIHud_Main    GetNumVehicles    AIHud_Parent    _    ai_targeting_left 	   targeted    ai_targeting_right 
   UIGlobals    Splitscreen    players    ai_name    ColourStyle    colours    pad    Ingame 	   IntroHUD    GoNode    GoText    _VP0 	   UIScreen    AddMessageNow    GameMessage    SetLocalPlayerIndex    RenderBranchScan    SendMessage    GameFlowMessage    RaceStarted     ResolveAiHud                           5      @@Á  Á  Å   Æ Á  @  A AÁAÜ@ Å   Æ@À  A Ü  A@  ÅA ÆÁÆÁÁA   AB@ EÁ FÃ ÁA   A ÕA\AE  FAÂÁÁ \Á CÀB @  A     
   UIButtons    CloneXtGadgetByName    hud_objects    Pos_Backing 
   SetParent    UIEnums    Justify    TopLeft    Position_Title    FindChildByName    Position_Amount    Amax    ChangeText    HUD_ 	   _POS_NUM    Position_AmountOf    _POS_NUM_OF                           
%   E   F@À   ÁÀ  \   @@Á   Å   Æ@Á  A ÜÁ B@A À   A  AA@ Á EÁ FÂ ÁA    A ÕA\A     
   UIButtons    CloneXtGadgetByName    coop_objects    Pos_Backing    Position_Title    FindChildByName    Position_Amount    Amax    ChangeText    HUD_ 	   _POS_NUM    Position_AmountOf    _POS_NUM_OF                                                         "  A    	S     A@@    Á  AAA  @ ÁA  B@A A  À A Á  ÁBCW  Á  ÁBAC À ÁC A DÁÁ Â A ÁA A  	Á  ÁBE @ÁÅ  Å ÆÆÆAÆÔÀÅ ÆÆÆÉÀ@Á  ÁBG  ÁÅ @Å ÆÆÆAÆÔÀÀ Å ÆÆÆÉÂ        GUI 	   finished    UIEnums    Message    ButtonStart    Amax    IsGamePaused     PlaySfxNext 
   PauseGame    GameFlowMessage    RaceFinished    RaceFailed 
   UIGlobals    Ingame    RaceFinishedMsg 	   UIScreen    SetScreenTimers         	   GoScreen    Coop\Ingame\CoopFinished.lua    Wrecked       ð?   Splitscreen    players    SplitscreenMessages    wrecked    Respawn                     C  c    I   E   F@À À     EÀ  F Á \ À @E@ À  A  \@    E   FÀÁ À @A     @BÁ  `ÀE FÁÂ \ÃEB FÃ  ÂCÁ  NCÄNMC\B_ûA     @BÁ  `ÀE  FÁÄF@E  FÁÄ  ÁD IE  FÁÄF ÄEA FÅ  AEÂ \A_ù        GUI 	   finished    Profile    GuideActive 
   PauseGame    GetPrimaryPad 
   show_revs       ð?   num_players    Amax 
   GetRevs01      Ã@
   UIButtons 	   Rotation    revs_partial_ids               p@     Àk@   mp_fan_msg_activate_in 
   Activated    mp_fan_msg_root                     e  g                                  i  l           @@ A     @     
   UIButtons    TimeLineActive    Show_Pickup                     n  p                                 r              @ @  E  @ @  EÀ  @ @  E  @ @  A ÀÀ  B @B À ÀB E  F@Ã FÃ @  ÀC E  F@Ã FÃ @         Camera_UseFrontend    SetNil    HUD    HUD_Panels 
   HUD_Items    IsSplitScreen    GUI    going_to_pause_pad       ð¿   Profile    SetPrimaryPad 
   UIGlobals    Splitscreen    primary_pad 
   LockToPad                           &   E   F@À À     E   I E  F@Á    À@\@ E  FÁ    À@\@ E   I ÂE@ FÂ À  C@C\@ E   FÃ ÀÃ  E  F@Ä  Â   \@EÀ   \@         GUI    allow_pause     going_to_pause_pad    Profile    SetPrimaryPad 
   LockToPad    going_to_pause    Amax    SendMessage    UIEnums    GameFlowMessage    Pause    num_players       ð?
   UIButtons    TimeLineActive    start 	   GoScreen    Ingame\Paused.lua                             