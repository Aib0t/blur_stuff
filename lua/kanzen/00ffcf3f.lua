LuaQ                3   
� 	���	���J@  �@  �   �� �I���	@ �	 	���	 B�	    $     $@  @ $�  � $�  � $    $@ @ $� � $� � $    $@ @ $� � $� � $    $@ @ $� � $� � $    $@ @  �       GUI 	   finished     loading_ui 
   light_ids    result    primary    timer            allow_next_and_share    count_failed    count    Init 	   PostInit 
   StartLoop    MessageUpdate    FrameUpdate 	   EnterEnd    EndLoop    End #   SpFriendDemand_CreatePrimaryLights    SpFriendDemand_ParamOn    SpFriendDemand_PassFailOn    SpFriendDemand_TakePhoto    SpFriendDemand_BackToUiStart    SpFriendDemand_BackToUiEnd    SpFriendDemand_Retry    SpFriendDemand_Skip    SpFriendDemand_DarkenFinished    SpFriendDemand_EffectsFinished           .      :      @@ A�  ��  � A�@A@�� @� � @� �   B @B ��� �B E  F@� F�� � � @��  D �� @D  �� �D E  F@� F�� �  �   @�@ �E ��  ����
 � J ��  �@F��F�� � �� AGb@�"@� E� \@� E� �   \@  �     	   UIScreen    SetScreenTimers       �?
   UIGlobals    screen_time    default_end    AddSCUI_Elements    SetupInfoLine    FriendDemandSent 
   UIButtons 
   Activated    SCUI    name_to_id    background    UIHardware    WideScreen     Scale    centre �������?   FriendDemand    IsComplete            UIEnums    SocialNetworkingItemType    FriendDemandPassed    UIText    SOC_PASSED_FRIEND_CHALLENGE 	   CMN_NOWT    StartTickerBar    StartStorySharing                     0   �      0     E�  F�� \�� 	@���   A �� E@ F�� �� � B� �   B� �� �@ ƀ��B܀  ACA� �� ��E F�� �A Ɓ���� BE�E\A E� � �F� B ���ƁF \A�E F��� �F�  ����A Ɓ�\A�E F��� �F� � ���� \A�EA F��� �F� � ����	 B�� \A  E FA��� �� \��� �D��B �D�IE FB�F���A � �F��� ���� �� �A�	 ܁� J@ �  B� J@��� B�B
 FB�� E F����J�  �\B E FB���ƂK\B�E F��� �F�� ����� \B�E F��� �F�� ����B \B�E F��� �F��� ����� \B�F�L� �M�BM�� �E F���B ��D��D�� ��� \B E F���B ��D��I�� ��� \B E  IBN� �E FB��� �� \��� �D��C �D�NE FC�F���B � �F��� ���� �� �A�	 ܂� F@��� ��E F�� �  \C�E F����� \C�E F�� �� \C�E ��L\� � ��J��� @ �C � �CK� ���C��C ƃO�� � ƃ��JA ���C � �C� �F�K�C�� ��� �FP�C�� ��� F@�� ��AD �C�� ��� F@�� ��A� �C�� ��� F@��� ��A� �C�E FB�� �B \��� �D��C �D�QE FC�F���B � ��Q�� �QRB� �B � �BR�� A � �B�� ��R��  B� �B � ��R��� B� �B �B ��H� �� �A� ܂�	 FC� �B  � ��F� �� �A ܂�C FC� �B  � ��F� �� �A� ܂�� @� � ��B�� ��F� �� �AC ܂�� @� �� ��B�� ��F� �� �A� ܂�� @� � ��B�� �F��C ���� ��  B  �B�� ��� F@��� ��A� �� �� UÃ�B�� �� F@��� ��B  �B�� �� F@�� ��B  �B�� ���C �DVA� �� �C UÃ�B��� Ƃ�܂� �@W� ���W@W  �C  � ����LE F�FC�W@ ���@W� ���W@W  �C  � ��� �FEC F��F��C ���D �XED F��� C   �OEC F��F��C ��� AD � C   �OEC F��F���C ��� AD � C    F��	C���@N��  E  F�LC�	C� �ZEC F��F���� �   Z��C ��@N��  E  F�LC�	C� �ZEC F��F���� �   Z��C �LE F�FC�W@����@N��  E  F�LC�	C� �ZEC F��F���� �   Z��C  � m      GUI    is_boss_race    Amax    SP_IsBossBattleFD    SP_GetLevelResult 
   UIGlobals    FriendDemandAttemptingIndex    FriendDemand    GetInfo    SinglePlayer 
   EventInfo    eventid_sp 
   UIButtons    CloneXtGadgetByName %   SinglePlayer\Ingame\SpRaceAwards.lua    _obj_dummy 
   SetParent    SCUI    name_to_id    primary_rb    UIEnums    Justify    MiddleCentre #   SpFriendDemand_CreatePrimaryLights    FindChildByName    _obj_light_dummy    state    ChangeText    _obj_title    UIText    SP_EVENT_PRIMARY 
   _obj_info    HUD_SP_RACE_RESULT    UIShape    ChangeObjectName 
   _obj_icon    Sp_KindToShape    kind    criteria_rb    _obj_graphic 
   Activated    Fd_GetCriteriaIconInfo    ChangeTexture    tex            ChangeEffectIndex    effect     HUD_SP_FD_CRITERIA_RESULT_TITLE    _obj_info_lights    HUD_SP_FD_CRITERIA_RESULT_THEM    HUD_SP_FD_CRITERIA_RESULT_YOU    extra_modifier    FriendDemandModifer    NotUsed 	   Position       Y@   has_extra_modifier  	   param_rb    _obj_graphic_lights    Fd_GetModifierIconInfo    Fd_GetParamIconInfo    extra_param    ColourStyle    colour    HUD_SP_FD_PARAM_RESULT_TITLE    HUD_SP_FD_PARAM_RESULT_THEM    HUD_SP_FD_PARAM_RESULT_YOU    SpSCUI    blurb_node    blurb_node_rb    Panel    _3DAA_LIGHT 	   Rotation 	   Selected    blurb_icon    blurb_event_text    Sp_KindToText    blurb_name    GAME_BLURB_NORMAL_MSG    _NAME    blurb_info_time_sent    _TIME_SENT    blurb_info_days_left 
   _ATTEMPTS    blurb_type_icon    blurb_sender    _SENDER     selection_box_text_no_highlight    _DESC 
   GetResult    passed    passed_state    passed_criteria    passed_param    pass_fail_info    Select    FDE_POST_RACE_PASS    FDE_POST_RACE_FAIL 
   Support_0 
   Support_3    pass_fail_icon 
   fd_passed    count_failed       �?   ReplaceTimeLineLabel    darken    darken_                     �   �         �                         �   �     �   E  �  ��   @�� \� @�  � � E�  F��F�@ ��EA F��@���E� � Ł  �A�Ɓ�� \A  ��E�  F��F��@ ��E� � Ł  �A�Ɓ�� \A  E \�� W@���EA F��W@�� �E� F�@�  � � E�  FA�F��@  �E� F�� ���E� FA�@�� �E� \A�  �E� F��@� �E� ��  �F�AF\A ��E�  FA�F��@ @�E�  F�FA�@ ���� �E \A� ��@�� �E� \A� ���� �E FA�� ��H�� \�   ���E� \��  �@�E� ��  �F�I\A �	�EA	 �� ��  \A  �E�	 F��\��  �@�E� ��  �F�J\A @�EA
 F��\��  �@�E� ��  �F��J\A ��E ��  �AB�AK\A EA
 F��\A� E� �� \A  � 0      SCUI_MessageUpdate    UIEnums    GameFlowMessage 	   UILoaded 
   UIGlobals    LoadFromDebug 	   GoScreen    GetStoredScreen    ScreenStorage 
   FE_RETURN    StartGameRendering    SubScreenActive    GUIBank    loading    GUI    loading_ui    Message 	   MenuNext    allow_next_and_share     has_taken_photo    SpFriendDemand_Skip    SetupCustomPopup    CustomPopups    SpPostRaceOptions 
   PopupNext            SpFriendDemand_Retry       �?   SpFriendDemand_BackToUiStart        @   Profile    PadProfileOnline    GetPrimaryPad    net_CanReconnectToDemonware     MultiplayerOnlineConnectionLost    net_StartServiceConnection    LSP    IsConnected    ContentServerGeneralError    FriendDemand    HasPrivilege    FriendChallengeNoPrivilege    StoreScreen    FE_FRIEND_DEMAND    PopulateRechallengeText #   Ingame\ReChallengeFriendDemand.lua                     �   �         �                         �   �          �                         �   �         �                         �   �            @@ �@ @ ��  @�  �       GUI    loading_ui    SpFriendDemand_BackToUiEnd                     �       d   �   �@  ƀ��� ��   � EA  F��܀� AA � �A `�E� Y�   ��B  �� �  � C �� � B  \��� ����	��C ƃ�  @  �� �C	�DC	�C �C ƃ�  E� F��F���� �C �C ��  E� F�F��C��C �C�  A� �� �C @A �@����C ���  �G� �  ���  @��B  �E�BE��E�B  ���B�Ƃ����B��B�_A�MAAN�N��N��A �AF�  �EB FB��  �B �@ \B� �       SP_MaxStars    GUI    is_boss_race    Sp_EventStateToStars               �?   Sp_CreateStar       (@   ipairs 
   UIButtons 
   SetParent    UIEnums    Justify 	   TopRight    Panel    _3DAA_0    MiddleCentre    Scale    _    Size 
   light_ids    result    primary       *@      �?	   Position                                  @@ W�@ @��   A E@ F�� F�� @  �       GUI    has_extra_modifier  	   UISystem 
   PlaySound    UIEnums    SoundEffect    PostRaceGoalSpawn                     "  $           @@ E�  ��  � AW@A  ��@  � � ŀ ���� �� �AAB\  @   � 
   	   UISystem 
   PlaySound    Select    GUI 
   fd_passed    UIEnums    SoundEffect    PostRacePassed    PostRaceFailed                     &  2     &      @@ �@ @��  E  F@� F�� @ @��  B A@ �   �   @ � �B E  F@� F�� � � @�� �C E  F � F@� @ � �D E  F � F@� @ � 	��� �    
   UIGlobals    FriendDemandSent    SetupCustomPopup    UIEnums    CustomPopups    SpPostRaceOptions    Amax 
   TakePhoto       �?
   UIButtons 
   Activated    SCUI    name_to_id    background    SendMessage    GameFlowMessage    Pause 	   UISystem 
   PlaySound    SoundEffect    EndOfRacePause    GUI    has_taken_photo                     4  T     +      	����   A E@ F�� F�� @   @B E@ F�� F�� @ �   A E@ F�� F � @ @ �C A� �  @�@ �D A� � � @�@ �D A  � � @�@ @� � @� � A  @  �       GUI    loading_ui    Amax    SendMessage    UIEnums    GameFlowMessage    UnPause 	   UISystem 
   PlaySound    SoundEffect    EndOfRaceUnPause 	   QuitRace 	   UIScreen    SetScreenTimers         333333�?
   UIButtons    TimeLineActive 
   end_alpha    start_load    SetupInfoLine    StartAsyncSave 	   GoScreen    Loading\LoadingUi.lua                     V  a         �                         k       4      @@ @� �  �@ E  �@ ��A��AF�� F � F@� F�� � � � � @ �  �B A  � � @��  �B A@ � � @�� �C @�   @� @ �D E@ F�� F � @ @ �D E@ F�� F@� @ � 	 Ƌ� J   	@��� A� @  �       FriendDemand 
   ReAttempt 
   UIButtons 
   Activated    ContextTable    UIEnums    Context    Main    SCUI    name_to_id    Txt_Loading    TimeLineActive    CSB_off_full    start_load    GameProfile    RetryingEvent    StopIngameMusic    Amax    SendMessage    GameFlowMessage    StopGameRendering    StopGameUpdate 
   UIGlobals    IsQuickRestart    Ingame    GoLoadingScreen    Loading\LoadingSpGame.lua                     �  �     W      @@ �@   � �    �@ W�@ @ �  @� @ E� F�� �  � �    B� \@�E� F�� �@ � �    B� \@�E� F�� �� � �    B� \@�E� F�� �� � �    B� \@�E� F�� �  � �    B� \@�E� F�� �@ � �    B� \@�E� F�� �� � �    B� \@�E� F�� �� � �    B� \@�E� F�� �  � �    B� \@�E� F�� �@ � �    B� \@�E� \@� E   I��� �       GUI    has_skipped    has_taken_photo    SpFriendDemand_TakePhoto       Y@
   UIButtons    TimeLineActive    CSB_off 	   commands    primary_on    fan_par_on    fan_run_on    blurb_info_on 	   darken_1 	   darken_2 	   darken_3    pass_fail_info_on    SpFriendDemand_EffectsFinished                     �  �       W @  �E@  �@  ��@��@I� �E@  F�� �@  � A�� @�E@ F�� �� � �  \@  � 	      GUI    count       �?   count_failed 
   UIButtons    TimeLineActive    pass_fail_info_on                             �  �           	����  E  F@� @  �       GUI    allow_next_and_share    SetupInfoLine    UIText    INFO_A_NEXT                             