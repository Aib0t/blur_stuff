LuaQ                   
�  	���	 ��	���   $   � $@  � $�    $�  @ $  � $@ � $�   $� @ $  �  �       GUI 	   finished     timer         	   uploaded    Init 	   PostInit 
   StartLoop    MessageUpdate    FrameUpdate 	   EnterEnd    EndLoop    End    FriendChallengeReloadScreen 	       
         B      @� @  @� �  �@  A ��
 � J ��@ ��A��A�  �@� �Bb@�"@� E� �   �  A AC�C�  \@  ��
 � J ��@ ��A��C�  � � �Bb@�"@� E� �   �  A AC�C�  \@  @ E� F � �@ �� \��	@ �� �E E@ F�� �  �@F��F�@ ���� �@  �       AddSCUI_Elements    SetupInfoLine 
   UIGlobals    FriendDemandIsResend    UIEnums    SocialNetworkingItemType    FriendReDemand    UIText "   SOC_SENDING_BACK_FRIEND_CHALLENGE 	   CMN_NOWT    StartStorySharing    GetStoredScreen    ScreenStorage    FE_FRIEND_DEMAND    FriendDemand    SOC_SENDING_FRIEND_CHALLENGE    GUI 
   camera_id 
   UIButtons    CloneXtGadgetByName 	   SCUIBank    Cam_Carousel 
   SetParent    SCUI    name_to_id    CameraDolly    Justify    MiddleCentre                     !   �      "�     @@ �@ E�  �  �@A�   � A� � � �A�Ɓ�� C�� ��B�C�� CB�B\@ E@ �  B� � �� \���� ɀ ��@ ƀ������  �@�  A@�EE F���@��  � �  A@AF@� � �AB��F�@ �  � �  A@�E@� � �AB��F�@ �   � A ��  A�
 E  FB��� ����F��	B��E  FB�� ����F��	B��E  FB��� ����F��	B��E  FB��	 ����F��	B��� �� AIJA  ��	 �
 �A�܁� ��I���� ������A  AEF��FA���
 A�
 �J�� A� �  ��  A� ����B ��Ƃ�W@����B Ƃ������ ̂�C K���� �� ̂��C��߁�� � @ �� B�� @ �� B�� @ ��FW@���E FC��C  � ������� Ă�G\C ��E FC��C  �CL��� Ă�G\C EC F���� �E FC��Â�CG��   ��\C���E FC��Â�CG�� D KL�CD��\C�!�  ����A ��  �� �LFÂFC��  �� C ��W ��� MF��FB�� ����CH�� �M�������E F������H	\�ME@�@ �EM
OE�
�� ��� ����� �� ��M�F��F� A� � �F� �� 
� Ɔ�G�GHC��� W��  ��G  �� ��R�L���� ���F�� �M�F��F��L���F�� �M�F�����L���F�� �M�F����G�LG	��	�F����W@�@ � �@� �LE  FB�F��� B� �LE  FB�FB��� B�W��@ � �@� �LE  FB�F���� B� �LE  FB�F���� B�W@�@ � �@� �LE  FB�F��� B� �LE  FB�FB��� B������ �OE F�FB�B  �@���� �OE F�F��B �� �@�� �OE F�F��B  BQB�  � F      SCUI    name_to_id    screen    SetupScreenTitle    UIText    FDE_FRIEND_DEMAND    message    common_icons    UIEnums    Justify 
   TopCentre    Panel    _3DAA_LIGHT    SetupBottomHelpBar       �?   GUI    bottom_bar_id 
   UIGlobals    FriendDemandIsResend 
   UIButtons    ChangeText 
   sent_text    FDE_RECHALLENGE_SENT 
   SetParent 
   help_text    MiddleCentre               @   name    name_    pic    pic_    frame    frame_    blob    blob_    ChangeTexture 	   filename 
   GAMERPIC_    Profile    GetPrimaryPad    PROFILE_PAD_NAME    GetRemoteGamerPictureMap    FriendDemandFriends     show_table    ipairs    REMOTE_GAMERPIC_    DEFAULT_GAMERPIC    GAME_FRIEND_DEMAND_FRIEND_ 
   Activated    Size        @	   Position    Select    vs_1a    vs_1b    vs_2a    vs_2b    vs_3a    vs_3b 	   UISystem 
   PlaySound    SoundEffect 
   FriendVs1 
   FriendVs2 
   FriendVs3    FriendDemand    Send                     �   �         �                         �   �        E  �  ��   @�� \� @�  � � E�  F��@�@�E FA�F��@  �E� \A� E �A � Ɓ����� \A   �       SCUI_MessageUpdate    GUI 	   uploaded    UIEnums    Message 	   MenuNext    PlaySfxNext 	   GoScreen    GetStoredScreen    ScreenStorage    FE_FRIEND_DEMAND                     �   �     Q   E   F@� �� ��E   �   ��@�  I���E   F�� @ ���E@ F�� \�� �� @��   �����  A �B�@ �� � �A B  �@��C ��� � �� B� �� �@ �  �����	�ŀ ���� E� ܀  �����@ ܀� ��@�ŀ � FAF�@ @�ŀ � C��  �@ ���� � �܀� ��@�ŀ � FAG�@  �ŀ � F�G�@  �       GUI 	   uploaded     timer        @   FriendDemand 	   PumpSend    SetupInfoLine    UIText    INFO_A_NEXT 
   UIButtons    TimeLineActive    help_text_on            sent_on 
   UIGlobals    FriendDemandSent    Profile    PadProfileOnline    GetPrimaryPad    net_CanReconnectToDemonware    SetupCustomPopup    UIEnums    CustomPopups     MultiplayerOnlineConnectionLost    net_StartServiceConnection    LSP    IsConnected    ContentServerGeneralError    FriendDemandSendingError                     �   �          �                         �   �         �                         �   �          �                         �   �         @ � �E@  ��  \@  �    	   GoScreen    Ingame\SendingFriendDemand.lua                             