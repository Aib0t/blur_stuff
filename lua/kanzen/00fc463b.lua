LuaQ                   
�  	���	���   $     $@  @ $�  � $�  � $    $@ @ $� �  �       GUI 	   finished     wait_for_copy    Init 
   StartLoop    MessageUpdate    FrameUpdate    Render    EndLoop    End                       @� @  �@ A�  ��  @�  @A A� �� @�  A@ �� �  B  �� @��  C A@ �   @�@ E� F�� F � �@ @� �       AddSCUI_Elements 	   UIScreen    SetScreenTimers 333333�?
   UIButtons    CloneXtGadgetByName 	   SCUIBank    Gfx_FadeUpDown    SetupMovie            Ui\Movies\BizarreSplash.bik 	   UISystem    EnableMovieLooping    StoreScreen    UIEnums    ScreenStorage 
   LOAD_NEXT    Intro\Legal.lua                                 �                            0     	T   �   �@���  � � ��  � ��@��  ����  ���  EA F���@��@ ƀ��  �B�B �� ��  A �@ ���@ ƀ��  �B�C �� ��  � �@ �
��@ ƀ��  �BD � 	��@ � �DEAEA� �A �A �  �EF�@ �   ɀ��@���  � �ƀ�W�   ���  � �����  ���@ ƀ��  �B�B � ��  A �@ �  �@�  �       GUI 	   finished    UIEnums    Message    MovieFinished            print    State 
   UIGlobals    Ps3InstallState    NONE 	   GoScreen    Intro\Legal.lua 
   COPY_DATA    Intro\AttractSplash.lua    COPY_ATTRACT    AddTransmitter    Screen    safe    right       @@     �z@   Panel    _2D    wait_for_copy    ButtonStart 	   MenuNext    PlaySfxNext                     2   9        E   F@� �� ��E�  F � �@ � A��A��  �E   I���E  �@ \@  � 
      GUI    wait_for_copy 
   UIGlobals    Ps3InstallState    UIEnums 
   COPY_DATA  	   GoScreen    Intro\AttractSplash.lua                     ;   =          �                         ?   A         �                         C   H      
      @@ A�  @ �   A A�  ��  @� �    	   UISystem    DestroyMovie         	   UIScreen    SetScreenTimers                             