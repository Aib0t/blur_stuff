LuaQ                �      @@ A�  @ 
� 	@A�	�A�	�A�E� F�� \�� 	@��E@ F�� � � \� 	@ �	 ć�  � �D � @ @ d   	@ �� �D � @ @ d@  	@ �� �D � � � d�  	@ �@ d�  	@��� d  	@��� �D �     d@ 	@ �� �D � @ @ d� 	@ �� �D � � � d� 	@ �� �D � � � d  	@ �� �D �     d@ 	@ �
  J ��@ ŀ ��� b@�� ��@ � AHA� �@�� �� E� F���	 �@�
�E �� �AI��	 "A�J��A Ł ���
 bA���Ł � BJA�
 �A���� E� F��� �A�
�E �� �BK�� "B�"@ @ @ � @   $� � $� � $    $@ @ $� � $� � $    $@ @ $� � $� � $     � =   	   UISystem    LoadLuaScript     Screens\Debug\DebugItemBase.lua    GUI 	   stringNo         	   finished     leaving_debug_menu    city_groups_table    GameModeDebug    GetCityGroups    city_table 	   GameData 
   GetCities    stableTimer        @   CityGroupSelectGadget 
   DebugItem    New    AddData    CitySelectGadget    RouteSelectGadget    Update    LapSelectGadget    EnvironmentSelectGadget    PartyModeGadget    ViewPortSelectGadget     SplitscreenRaceModeSelectGadget 
   DebugMenu    UIText    DBG_CITY_GROUP 
   CityGroup 	   CMN_CITY    City 
   CMN_ROUTE    Route 	   CMN_LAPS    Laps    CMN_ENVIRONMENT_OVERIDE    Environment    CMN_PARTY_MODE 
   PartyMode    CMN_VIEWPORTS 
   Viewports    CMN_SPLIT_SCREEN_RACEMODE    SplitScreenRaceMode    NumberOfItems    CurrentItemSelected       �?   Init 	   PostInit 
   StartLoop    MessageUpdate    LaunchGame    FrameUpdate    Render    EndLoop    End 	   MoveMenu    SetupRaceTable                )   E   F@� ��@ \@ E�  �  �@A\ ���  ��A� �����A��  �ABƁ@   E F���� �A�� � ���́�����a�  ��E  F@� \�� G� E   F�� ��@ �� ̀�\@� �    
   UIButtons    ClearItems    ID    ipairs    GUI    city_groups_table    StoreString 	   stringNo    group_name    AddItem       �?   CurrentGroup    GameModeDebug    GetCityGroup    SetSelection                     "   -        E@  F�� ��  � A� A�@A�  \�  G   E� F�� �   F�� �@  � B�@B �@ �� � � � ���A  ���BB FC�BC�  �A���  �� �       CurrentGroup 
   UIButtons    GetSelection 
   DebugMenu       �?   GetID    GUI    city_groups_table    ClearItems    ID    ipairs    AddItem    id    name                     2   @     6   E@  F�� ��  � A�@A��A�  \�  G   E� F � �   \� �@ ��B��@  � C�@C �@ �� � � � ���A  ���B �BFD�A��A  �A�BC F�D�B ��B�� �A��A B �BBA����  ���@  ��@��  � ��@�ˀ��  ��  ��  �       CurrentCity 
   UIButtons    GetSelection 
   DebugMenu        @      �?   GetID 	   GameData 
   GetRoutes    GUI 	   stringNo            ClearItems    ID    ipairs    StoreString 
   debug_tag    AddItem    id    CurrentRoute       @                    B   H        E   �@  ��@��  � �� ��@��  ��  W�� ��E� K�� \@ E  F@� �@  ��B�� �@��  �   \@   �       CurrentGroup 
   UIButtons    GetSelection 
   DebugMenu       �?   GetID    CitySelectGadget    AddData    GameModeDebug    SetCityGroup    GetSelectionIndex    CityGroupSelectGadget                     J   V     0   E   �@  ��@��  � ��@�ˀ��  ��  W��  �K�A \@ E  �@ ��   E� � \@ E� �@  ��@��  �@��@�ˀ��  ��  W�� ��E@  F�� ��  �@C�@A��A�  \�  G� E  �@ ��   E� � \@  �       CurrentCity 
   UIButtons    GetSelection 
   DebugMenu        @      �?   GetID    AddData    UpdateRouteShapes 
   Shp_Route       @   CurrentRoute    Shp_StartLine       @                    Y   t     �   E   F@� ��@ \@ E   F�� ��@ �  A �AB  \@�E   F�� ��@ �� A BB  \@�E   F�� ��@ �@ A �BB  \@�E   F�� ��@ �� A CB  \@�E   F�� ��@ �@ A �CB  \@�E   F�� ��@ �� A DB  \@�E   F�� ��@ �@ A �DB  \@�E   F�� ��@ �� A EB  \@�E   F�� ��@ �@ A �EB  \@�E   F�� ��@ �� A FB  \@�E   F�� ��@ �@ A �FB  \@�E   F�� ��@ �� A GB  \@�E   F�� ��@ �@ A �GB  \@�E   F�� ��@ �� A HB  \@�E   F�� ��@ �@ A �HB  \@�E   F�� ��@ �� A IB  \@�E   F�� ��@ �@	 A �IB  \@�E   F�� ��@ ��	 A JB  \@�E   F�� ��@ �@
 A �JB  \@�E   F�� ��@ ��
 A KB  \@�E   F�� ��@ �@ A �KB  \@� � /   
   UIButtons    ClearItems    ID    AddItem            UIText 	   CMN_NONE       �?   CMN_1        @   CMN_2       @   CMN_3       @   CMN_4       @   CMN_5       @   CMN_6       @   CMN_7        @   CMN_8       "@   CMN_9       $@   CMN_10       &@   CMN_11       (@   CMN_12       *@   CMN_13       ,@   CMN_14       .@   CMN_15       0@   CMN_16       1@   CMN_17       2@   CMN_18       3@   CMN_19       4@   CMN_20                     w           E   F@� ��@ \@ E   F�� ��@ �  A �AB  \@�E� �  �@B\ ���  ��@Ɓ@ ��F���  �A�a�  �� �    
   UIButtons    ClearItems    ID    AddItem            UIText    CMN_NO    ipairs    GUI    city_table    id    name                     �   �        E   F@� ��@ \@ E   F�� ��@ �  A �AB  \@�E   F�� ��@ �� A BB  \@� � 	   
   UIButtons    ClearItems    ID    AddItem            UIText    CMN_NO       �?   CMN_YES                     �   �     %   E   F@� ��@ \@ E   F�� ��@ �  A �AB  \@�E   F�� ��@ �� A BB  \@�E   F�� ��@ �@ A �BB  \@�E   F�� ��@ �� A CB  \@� �    
   UIButtons    ClearItems    ID    AddItem       �?   UIText    CMN_1        @   CMN_2       @   CMN_3       @   CMN_4                     �   �        E   F@� ��@ \@ E�  F � \�� �@ � � � ���  Ɓ��@ F�A�B�  �A���  �� � 	   
   UIButtons    ClearItems    ID 	   GameData    GetSplitScreenEvents    ipairs    AddItem    id    name                     �   �      3      @� @  	�@�@  	@A�� 	 @ E� �� \ @����AC��AB �  �����    ���D�A �A �C�A a�  ��E� F�� \�� �� �� � ���C���A �C��@� �A���  ���@ �  �@ �� �@�  �       AddSCUI_Elements 
   UIGlobals    LoadFromDebug    Sp     GUI 	   stringNo               H@   ipairs 
   DebugMenu       �?
   AddButton        @      @   AddData    NumberOfItems    Amax    GetLevelData    SetSelection 	   MoveMenu    EndTickerBar                     �   �            A@  ��  ��   AA @  �       UpdateRouteShapes 
   Shp_Route       @   CurrentCity    CurrentRoute    Shp_StartLine                     �   �         �                         �   /    	�   �      @� � ܀ @�  � � ŀ  ���@�  � � �  �@�ƀ��  @	�@@��ŀ  ���� �  � � ŀ  �@��ŀ ��� CAC�@ ŀ ƀ�  �@ ŀ ���  �@ �   AD�D� ����  EAEA� �@���  �@ @��  �@��@��   �@@��ŀ  �@���� ��� �@� ���  �@�� ��  @�@@� ��� A �@  ��  �@�ƀ��  ���  ���
 JA  I�A  ��Ȑ�A  ��Ȑ
B  	ɐ"A � ��@	 �@� ��  EAE�@ ŀ	 �	 �@ ���  �@�� ��  @�@@� ��� A
 �@  ��  �@�ƀ��  ��@@@���
 �@� ��  �@ ���  �@��@��  @�@@� �ŀ � �@  	��  �@�� ��  @�@@� �ŀ � �@ @��  �@��@�W�   ��  �@�ƀ��  ��@@@��� �����  �@�� E� L��A�H�M� A �@� � 8      SCUI_MessageUpdate    GUI 	   finished    UIEnums    Message 	   MenuBack    stableTimer            leaving_debug_menu    Amax    SetGameMode 	   GameMode    Nothing    SetDebugEvent    SetUICarToMultiplayer 
   UIGlobals    ReturnMode    QuitDebugMenu    StoreScreen    ScreenStorage 
   FE_RETURN    Intro\AttractSplash.lua 	   GoScreen    Loading\LoadingUi.lua 	   MenuNext     LaunchGame    ButtonLeftShoulder    Debug\DebugUI.lua    AutomationLoadGame    Splitscreen    players    pad       �?       @      @   Splitscreen_ClearMessages    GoLoadingScreen    Loading\LoadingGame.lua    ButtonLeftTrigger    Debug\DebugEventScreen.lua    ButtonRightTrigger    SetupRaceTable    Debug\DebugCarScreen.lua 	   ButtonUp 	   MoveMenu       �   ButtonDown    ButtonLeft    ButtonRight    CurrentItemSelected 
   UIButtons    SetSelectionByIndex 
   DebugMenu    GetID                     1  7           E@  F�� F�� @   @� @ �A E� F � @ @ A� @  �       StoreScreen    UIEnums    ScreenStorage 
   FE_RETURN    SetupRaceTable    Amax    LoadTextureClone    GUI    route_texture_name    GoLoadingScreen    Loading\LoadingGame.lua                     9  �    �   E   F@� @ �@�E   �   �@@�  I���@ �E   I���E�  �  \ � ��A���A�A a�  ��E   F��  �   � � E   F@� �� @ �E� F � �@ � C��C�� ��E� �  \@ E@ F�� �� � � \@�E@ F � �� \@ E@ F@� �� \@ E� F�� \@� E@ F � �   \@ E@ F@� �   \@ E@ F�� �   \@ E� F � �@ �@G��G\@ E� F�� �@ � H�@H\@ E� F�� � 	 � � \@�E� F�� �@	 �   \@�E�	 F�� ��  � 
 \@�E@
 �@ ��J��J\@ E� I B�E� I J� I@A�I ̗I�̘I ͙I�͚I Λ�� �@N�@@ �I�Λ���� �@N@A@ �I�Λ@��� �@N O@ �I Λ� ��� �@N L���� �� �@��@������� �@N� �@ ��� ������ �@O�� �@ �� � � �@ �� �@ ��� �@P� � �@ �� �� �@  � D      GUI    stableTimer            ipairs 
   DebugMenu       �?   Update    leaving_debug_menu 	   finished  
   UIGlobals    LaunchMode    UIEnums    Automation    print    GOGO Automation    Profile    Setup    arg1 
   LockToPad    SetPrimaryPad    GameProfile    InitPrimary    AllowProfileChanges    ActOnProfileChanges    AllowAllPadInput    Amax    SendMessage    GameFlowMessage    EnteredDebugMenu    SetGameMode 	   GameMode    SinglePlayer 
   UIButtons    TimeLineActive    exit    start_fade 	   UIScreen    SetScreenTimers ffffff�?   StoreScreen    ScreenStorage 
   FE_RETURN    AlreadySetupRace    LoadFromDebug    Difficulty    PickupSlots       @   HealthSlots       @   Vehicle      �TA   ShieldSlots       @   EventID    ��QA   automation_event_id    ����  �]1]��       @   LoadTextureClone    usa_amboy_3    show_table    DebugEvent    SetupDebugRace    GoLoadingScreen    Loading\LoadingGame.lua                     �  �         �                         �  �        �                         �  �         �                         �  �    	    E   L � G   E   @� @ �E�  G   E   ��  @ @ �A@  G   E�  �  \ � ��A��AA  �A�a�  @�E  �   F�� F@� K@� � � \@� �       CurrentItemSelected       �?   NumberOfItems    ipairs 
   DebugMenu 	   Activate                     �  �        
      @  E�   � �F�@K��  \A�!�  @�@ �A E   @  �    
   DebugRace    ipairs 
   DebugMenu       �?   WriteToStructure    Amax 
   SetupRace                             