LuaQ                   
  	���	 ��J�  �� � BI� ��� ��BI���	@��J�  I C�I@Ä	@��   $   � $@  � $�    $�  @ $  � $@ �  �       GUI 	   finished  
   countdown       @   team_names    team_a    UIText    MP_TEAM_A_NAME    team_b    MP_TEAM_B_NAME    team_results    MPL_TEAM_A_RESULT    MPL_TEAM_B_RESULT    Init 
   StartLoop 	   PostInit    MessageUpdate    FrameUpdate    MpTeamResults_SetupTeamResults           )      S      @� @  �@ A�  �  @�@ E� F�� @   @B @� � �B @�   E� F�� \�� 	@��@  �@ A  �@ ��E@  F�� �   �� � ��@�� �EF\@ E@ �   �  �@�ƀ� ACE FA�F��A\@ E@  F�� �  �@ \���@  ��D� � � E�FE� F��F��@ �@ � �  ACGE FA�� �AC�GF���@ �@ ��Gŀ ���� ��@  � !      AddSCUI_Elements 
   UIButtons    CloneXtGadgetByName %   Multiplayer\Ingame\MpRaceResults.lua 
   MpBgStuff    SetupInfoLine    UIText    INFO_QUIT_RACE    Amax    SetupResults    NetRace    EnterResultsIdle    GUI    results    Multiplayer    GetTeamResults %   Multiplayer\Ingame\MpTeamResults.lua    table_dummy 
   SetParent    SCUI    name_to_id 
   top_dummy    UIEnums    Justify    MiddleCentre    MpTeamResults_SetupTeamResults    winner    bottom_dummy    loser 	   UISystem 
   PlaySound    SoundEffect    Toggle                     +   -         �                         /   2            @@ E�  F�� F � �   � � @    @@ E�  F�� F@� �   � � @  �    
   UIButtons 
   Activated    SCUI    name_to_id    table_dummy    player_node                     4   @        E  �  ��   @�� \� @�  � � E�  F��@�  � � E FA�F��@  �E� � �B�AB\A  � 
      SCUI_MessageUpdate    GUI 	   finished    UIEnums    Message 	   MenuBack    SetupCustomPopup    CustomPopups 	   ExitRace                     B   Z     ;   E   F@� \�� ��  �E�  ��  � A�  I� �E�  F � @� ��E�  I@A�E   F�� \�� �� @�E� F � \�� �@ ��B��B�� @�E  F@� \@� E   F�� \@� E� \@� E� F � �@ �@D��D\@ E� �  \@ E@ F�� ��  ��E�  A �FE�  F�� � �\@� �       NetRace    CanStartResultsCountdown    GUI 
   countdown            IsHost    Amax    GetPlayMode    UIEnums 	   PlayMode 	   Playlist    Multiplayer    StartRaceVoting    SendVoteResults    StopIngameMusic    SendMessage    GameFlowMessage 	   QuitRace 	   GoScreen    Loading\LoadingUI.lua 
   UIButtons    ChangeText    countdown_id    MPL_RETURN_TO_LOBBY    math    ceil                     \   �     �   �   �@�   A�  ܀�  A@@  ��  ��E  FA��  � \���  �A@�  B ����  Ɓ�  E� F�FB��A��  Ɓ� �E� FB�FB��A��  Ɓ�  A� � �BC�B ��C� �B��B�����A��  ��  E FB�FB��A��  ��  E FB�FB��A��  � A� ��  ��  EAC �� ����  �EE  FC��Â� \���C�W�B  ��C  �� C�  �F@��ÂC���� @ @�E  F���  �C@�Â ����C �G��\C�E  F���  �C@�Â� ���� �G��\C�E  F���  �C@�ÂD ����� �G��\C�E  F���  �C@�Â ����� �G��\C�E  F��  �C@�Â ���� �C��C�\C�E  F��  �C@�Â� ���� �C��C�\C�E  F��  �C@�Â ���� �C��C�\C�E  F���  �C@�ÂD ����� � \C E	 �  �C@�ÂD	 ����CH�I\C F�IZ  ��E  F��  �C@�Â ����
 \C�E  F��  �C@�Â� ����
 \C�E  F��  �C@�Â ����
 \C�!�  �� � )   
   UIButtons    FindChildByName    players    title    result    icon    ChangeText    GUI    team_names    team_results    ChangeTextureUV         
   UIGlobals 
   TeamIcons    u    v    ColourStyle    TeamColours       �?      $@   CloneXtGadgetByName %   Multiplayer\Ingame\MpTeamResults.lua    player_node 
   Activated    backing        @   AddListItem    ipairs 	   position    MPL_RESULT_POSITION    index    name    MPL_RESULT_NAME    rank    MPL_RESULT_RANK    MPL_RESULT_SCORE    Mp_RankIcon 
   rank_icon    legend    player 
   Support_4                             