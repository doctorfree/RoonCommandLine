FasdUAS 1.101.10   ��   ��    k             l     ��  ��    9 3 Created 2014-11-22 21:32:47 +1100 by Shane Stanley     � 	 	 f   C r e a t e d   2 0 1 4 - 1 1 - 2 2   2 1 : 3 2 : 4 7   + 1 1 0 0   b y   S h a n e   S t a n l e y   
  
 l     ��  ��    6 0 Version 1.1.0. Based on 'Dialog Toolkit.scptd'.     �   `   V e r s i o n   1 . 1 . 0 .   B a s e d   o n   ' D i a l o g   T o o l k i t . s c p t d ' .      l     ��  ��    � � Copyright �2014-19. May be freely distributed and copied. If you modify it, please rename the modified version to avoid clashes.     �     C o p y r i g h t   � 2 0 1 4 - 1 9 .   M a y   b e   f r e e l y   d i s t r i b u t e d   a n d   c o p i e d .   I f   y o u   m o d i f y   i t ,   p l e a s e   r e n a m e   t h e   m o d i f i e d   v e r s i o n   t o   a v o i d   c l a s h e s .      l     ��  ��    , & You use it entirely at your own risk.     �   L   Y o u   u s e   i t   e n t i r e l y   a t   y o u r   o w n   r i s k .      l     ��������  ��  ��        l     ��  ��    6 0 Place this file  in ~/Library/Script Libraries      �   `   P l a c e   t h i s   f i l e     i n   ~ / L i b r a r y / S c r i p t   L i b r a r i e s       !   l     ��������  ��  ��   !  " # " x     �� $ %��   $ 1      ��
�� 
ascr % �� &��
�� 
minv & m       ' ' � ( (  2 . 4��   #  ) * ) x    �� +����   + 2  	 ��
�� 
osax��   *  , - , x     �� .����   . 4    �� /
�� 
frmk / m     0 0 � 1 1  F o u n d a t i o n��   -  2 3 2 x     -�� 4����   4 4   " &�� 5
�� 
frmk 5 m   $ % 6 6 � 7 7  A p p K i t��   3  8 9 8 l      : ; < : x   - :�� =����   = 4   / 3�� >
�� 
frmk > m   1 2 ? ? � @ @  C a r b o n��   ; ) # AEInteractWithUser() is in Carbon     < � A A F   A E I n t e r a c t W i t h U s e r ( )   i s   i n   C a r b o n   9  B C B l     ��������  ��  ��   C  D E D l     �� F G��   F ) # classes, constants, and enums used    G � H H F   c l a s s e s ,   c o n s t a n t s ,   a n d   e n u m s   u s e d E  I J I j   : =�� K�� 0 
nsoffstate 
NSOffState K N   : < L L m   : ;����   J  M N M j   > A�� O�� N0 %nsstringdrawinguseslinefragmentorigin %NSStringDrawingUsesLineFragmentOrigin O N   > @ P P m   > ?����  N  Q R Q j   B E�� S�� 0 	nsnoimage 	NSNoImage S N   B D T T m   B C����   R  U V U j   F I�� W�� (0 nssmallcontrolsize NSSmallControlSize W N   F H X X m   F G����  V  Y Z Y j   J M�� [�� 20 nsmodalpanelwindowlevel NSModalPanelWindowLevel [ N   J L \ \ m   J K����  Z  ] ^ ] j   N Q�� _��  0 nsswitchbutton NSSwitchButton _ N   N P ` ` m   N O����  ^  a b a j   R U�� c�� .0 nsmodalresponsecancel NSModalResponseCancel c N   R T d d m   R S����   b  e f e j   V Y�� g��  0 nsboxseparator NSBoxSeparator g N   V X h h m   V W����  f  i j i j   Z _�� k�� 0 nsradiobutton NSRadioButton k N   Z ^ l l m   Z ]����  j  m n m j   ` c�� o�� *0 nsroundedbezelstyle NSRoundedBezelStyle o N   ` b p p m   ` a����  n  q r q j   d i�� s�� 20 nsmomentarypushinbutton NSMomentaryPushInButton s N   d h t t m   d g����  r  u v u j   j m�� w�� 0 	nsonstate 	NSOnState w N   j l x x m   j k����  v  y z y j   n q�� {�� &0 nsradiomodematrix NSRadioModeMatrix { N   n p | | m   n o����   z  } ~ } j   r u�� �� 00 nsbackingstorebuffered NSBackingStoreBuffered  N   r t � � m   r s����  ~  � � � j   v y�� ��� *0 nspathstylestandard NSPathStyleStandard � N   v x � � m   v w����   �  � � � j   z ��� ��� $0 nscommandkeymask NSCommandKeyMask � N   z ~ � � m   z }����     �  � � � j   � ��� ��� ,0 nsmodalresponseabort NSModalResponseAbort � N   � � � � m   � ������ �  � � � j   � ��� ��� *0 nslefttextalignment NSLeftTextAlignment � N   � � � � m   � �����   �  � � � j   � ��� ��� 0 	nsnotitle 	NSNoTitle � N   � � � � m   � �����   �  � � � j   � ��� ��� ,0 nsregularcontrolsize NSRegularControlSize � N   � � � � m   � �����   �  � � � j   � ��� ��� .0 nscentertextalignment NSCenterTextAlignment � N   � � � � m   � �����  �  � � � j   � ��� ��� $0 nspathstylepopup NSPathStylePopUp � N   � � � � m   � �����  �  � � � j   � ��� ��� ,0 nsrighttextalignment NSRightTextAlignment � N   � � � � m   � �����  �  � � � j   � ��� ��� 0 nslineborder NSLineBorder � N   � � � � m   � �����  �  � � � j   � ��� ��� &0 nsminicontrolsize NSMiniControlSize � N   � � � � m   � �����  �  � � � j   � ��� ��� (0 nstitledwindowmask NSTitledWindowMask � N   � � � � m   � �����  �  � � � j   � ��� ��� 0 nsimage NSImage � N   � � � � n  � � � � � o   � ����� 0 nsimage NSImage � m   � ���
�� misccura �  � � � j   � ��� ��� 0 nsimageview NSImageView � N   � � � � n  � � � � � o   � ����� 0 nsimageview NSImageView � m   � ���
�� misccura �  � � � j   � ��� ��� 0 nsmatrix NSMatrix � N   � � � � n  � � � � � o   � ����� 0 nsmatrix NSMatrix � m   � ���
�� misccura �  � � � j   � ��� ��� 0 nspathcontrol NSPathControl � N   � � � � n  � � � � � o   � ����� 0 nspathcontrol NSPathControl � m   � ���
�� misccura �  � � � j   � ��� ��� 0 nspopupbutton NSPopUpButton � N   � � � � n  � � � � � o   � ����� 0 nspopupbutton NSPopUpButton � m   � ���
�� misccura �  � � � j   ��� ��� 0 nsfont NSFont � N   � � � n  � � � � o   ����� 0 nsfont NSFont � m   � ���
�� misccura �  � � � j  �� ��� 20 nsmodalpanelrunloopmode NSModalPanelRunLoopMode � N   � � n  � � � o  ���� 20 nsmodalpanelrunloopmode NSModalPanelRunLoopMode � m  ��
�� misccura �  � � � j  �� ��� 0 nsview NSView � N   � � n  � � � o  ���� 0 nsview NSView � m  ��
�� misccura �  � � � j   +�� ��� 0 nsapp NSApp � N   ( � � n  ' � � � o  #'���� 0 nsapp NSApp � m   #��
�� misccura �  � � � j  ,7�� ��� 0 nsbox NSBox � N  ,4 � � n ,3 � � � o  /3���� 0 nsbox NSBox � m  ,/��
�� misccura �  � � � j  8C�� ��� 0 nswindow NSWindow � N  8@ � � n 8? � � � o  ;?���� 0 nswindow NSWindow � m  8;��
�� misccura �  � � � j  DO�� ��� 0 nsbuttoncell NSButtonCell � N  DL � � n DK � � � o  GK���� 0 nsbuttoncell NSButtonCell � m  DG��
�� misccura �  � � � j  P[�� ��� 0 nsobject NSObject � N  PX � � n PW � � � o  SW���� 0 nsobject NSObject � m  PS��
�� misccura �  �  � j  \g���� 0 nstextfield NSTextField N  \d n \c o  _c���� 0 nstextfield NSTextField m  \_��
�� misccura   j  hs���� 0 nsstring NSString N  hp n ho	
	 o  ko���� 0 nsstring NSString
 m  hk�
� misccura  j  t�~�~ 	0 NSURL   N  t| n t{ o  w{�}�} 	0 NSURL   m  tw�|
�| misccura  j  ���{�{ 0 nsscreen NSScreen N  �� n �� o  ���z�z 0 nsscreen NSScreen m  ���y
�y misccura  j  ���x�x 0 nsalert NSAlert N  �� n �� o  ���w�w 0 nsalert NSAlert m  ���v
�v misccura  j  ���u�u 0 nsbutton NSButton N  ��   n ��!"! o  ���t�t 0 nsbutton NSButton" m  ���s
�s misccura #$# j  ���r%�r *0 nsfontattributename NSFontAttributeName% N  ��&& n ��'(' o  ���q�q *0 nsfontattributename NSFontAttributeName( m  ���p
�p misccura$ )*) j  ���o+�o 0 nsthread NSThread+ N  ��,, n ��-.- o  ���n�n 0 nsthread NSThread. m  ���m
�m misccura* /0/ j  ���l1�l 0 nsdictionary NSDictionary1 N  ��22 n ��343 o  ���k�k 0 nsdictionary NSDictionary4 m  ���j
�j misccura0 565 j  ���i7�i (0 nsattributedstring NSAttributedString7 N  ��88 n ��9:9 o  ���h�h (0 nsattributedstring NSAttributedString: m  ���g
�g misccura6 ;<; j  ���f=�f &0 nssecuretextfield NSSecureTextField= N  ��>> n ��?@? o  ���e�e &0 nssecuretextfield NSSecureTextField@ m  ���d
�d misccura< ABA l     �c�b�a�c  �b  �a  B CDC j  ���`E�` "0 buttonsideinset buttonSideInsetE m  ���_�_ D FGF j  ���^H�^ 0 buttonyvalue buttonYValueH m  ���]�] G IJI j  ���\K�\ $0 accviewsideinset accViewSideInsetK m  ���[�[ J LML j  ���ZN�Z 0 accviewyvalue accViewYValueN m  ���Y�Y 2M OPO j  ��XQ�X 0 accviewtopgap accViewTopGapQ m  ���W�W P RSR j  	�VT�V (0 minimumbuttonwidth minimumButtonWidthT m  �U�U QS UVU l     �T�S�R�T  �S  �R  V WXW l     �QYZ�Q  Y 6 0 used to return values from main-thread handlers   Z �[[ `   u s e d   t o   r e t u r n   v a l u e s   f r o m   m a i n - t h r e a d   h a n d l e r sX \]\ j  
�P^�P 0 
returncode 
returnCode^ m  
�O
�O 
msng] _`_ j  �Na�N 0 handlerresult handlerResulta m  �M
�M 
msng` bcb l     �L�K�J�L  �K  �J  c ded i  fgf I     �Ihi
�I .!AScDiEwnull���     ctxth o      �H�H 0 windowtitle windowTitlei �Gjk
�G 
!AvWj o      �F�F 0 thewidth theWidthk �Elm
�E 
!AvHl o      �D�D 0 	theheight 	theHeightm �Cno
�C 
!AvCn o      �B�B 0 controlslist controlsListo �Apq
�A 
givup |�@�?r�>s�@  �?  r o      �=�= 0 giveup giveUp�>  s m      �<�<  q �;tu
�; 
!AcFt |�:�9v�8w�:  �9  v o      �7�7 0 defaultfield defaultField�8  w m      �6
�6 
msngu �5xy
�5 
!AiPx |�4�3z�2{�4  �3  z o      �1�1 0 initposition initPosition�2  { J      �0�0  y �/|}
�/ 
!AvL| |�.�-~�,�.  �-  ~ o      �+�+  0 cancelleftflag cancelLeftFlag�,   m      �*
�* boovtrue} �)��(
�) 
btns� o      �'�' 0 
allbuttons 
allButtons�(  g k    ��� ��� l     �&���&  �   check we can interact   � ��� ,   c h e c k   w e   c a n   i n t e r a c t� ��� l    
���� r     
��� n    ��� I    �%��$�% (0 aeinteractwithuser AEInteractWithUser� ��� m    �#�#��� ��� m    �"
�" 
msng� ��!� m    � 
�  
msng�!  �$  � m     �
� misccura� o      �� 0 theerror theError�   -1 is kAEDefaultTimeout   � ��� 0   - 1   i s   k A E D e f a u l t T i m e o u t� ��� Z    ����� >   ��� o    �� 0 theerror theError� m    ��  � R    ���
� .ascrerr ****      � ****� m    �� ��� 6 U s e r   i n t e r a c t i o n   d i s a l l o w e d� ���
� 
errn� o    �� 0 theerror theError�  �  �  � ��� Z    {����� c    '��� n   %��� I   ! %���� 0 ismainthread isMainThread�  �  � o    !�� 0 nsthread NSThread� m   % &�
� 
bool� k   * O�� ��� n  * :��� I   + :���� D0  prepareenhancedwindowmainthread_  prepareEnhancedWindowMainThread_� ��� J   + 6�� ��� o   + ,�� 0 windowtitle windowTitle� ��� o   , -�� 0 thewidth theWidth� ��� o   - .�
�
 0 	theheight 	theHeight� ��� o   . /�	�	 0 controlslist controlsList� ��� o   / 0�� 0 giveup giveUp� ��� o   0 1�� 0 defaultfield defaultField� ��� o   1 2�� 0 initposition initPosition� ��� o   2 3��  0 cancelleftflag cancelLeftFlag� ��� o   3 4�� 0 
allbuttons 
allButtons�  �  �  �  f   * +� ��� r   ; B��� o   ; @�� 0 handlerresult handlerResult� o      �� 0 	thewindow 	theWindow� �� � n  C O��� I   D O������� B0 showthewindowandwaitmainthread_ showTheWindowAndWaitMainThread_� ���� J   D K�� ��� o   D E���� 0 	thewindow 	theWindow� ��� o   E F���� 0 defaultfield defaultField� ��� o   F G���� 0 giveup giveUp� ��� o   G H���� 0 initposition initPosition� ���� o   H I���� 0 windowtitle windowTitle��  ��  ��  �  f   C D�   �  � k   R {�� ��� n  R d��� I   S d������� n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_� ��� m   S T�� ��� @ p r e p a r e E n h a n c e d W i n d o w M a i n T h r e a d :� ��� J   T _�� ��� o   T U���� 0 windowtitle windowTitle� ��� o   U V���� 0 thewidth theWidth� ��� o   V W���� 0 	theheight 	theHeight� ��� o   W X���� 0 controlslist controlsList� ��� o   X Y���� 0 giveup giveUp� ��� o   Y Z���� 0 defaultfield defaultField� ��� o   Z [���� 0 initposition initPosition� ��� o   [ \����  0 cancelleftflag cancelLeftFlag� ���� o   \ ]���� 0 
allbuttons 
allButtons��  � ���� m   _ `��
�� boovtrue��  ��  �  f   R S� ��� r   e l��� o   e j���� 0 handlerresult handlerResult� o      ���� 0 	thewindow 	theWindow� ���� n  m {��� I   n {������� n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_� ��� m   n o   � > s h o w T h e W i n d o w A n d W a i t M a i n T h r e a d :�  J   o v  o   o p���� 0 	thewindow 	theWindow  o   p q���� 0 defaultfield defaultField 	
	 o   q r���� 0 giveup giveUp
  o   r s���� 0 initposition initPosition �� o   s t���� 0 windowtitle windowTitle��   �� m   v w��
�� boovtrue��  ��  �  f   m n��  �  r   | � m   | }��
�� 
msng o      ���� 0 handlerresult handlerResult  l  � �����   ( " get values after window is closed    � D   g e t   v a l u e s   a f t e r   w i n d o w   i s   c l o s e d  r   � � o   � ����� 0 
returncode 
returnCode o      ���� 0 buttonnumber buttonNumber  l  � �  Z  � �!"����! =   � �#$# o   � ����� 0 buttonnumber buttonNumber$ o   � ����� .0 nsmodalresponsecancel NSModalResponseCancel" R   � �����%
�� .ascrerr ****      � ****��  % ��&��
�� 
errn& m   � ���������  ��  ��   ' ! designated Cancel button pressed     �'' B   d e s i g n a t e d   C a n c e l   b u t t o n   p r e s s e d ()( Z   � �*+��,* =   � �-.- o   � ����� 0 buttonnumber buttonNumber. o   � ����� ,0 nsmodalresponseabort NSModalResponseAbort+ l  � �/01/ r   � �232 m   � �44 �55  G a v e   U p3 o      ���� 0 
buttonname 
buttonName0  
 timed out   1 �66    t i m e d   o u t��  , r   � �787 c   � �9:9 n  � �;<; I   � ��������� 	0 title  ��  ��  < l  � �=����= n   � �>?> 4   � ���@
�� 
cobj@ o   � ����� 0 buttonnumber buttonNumber? o   � ����� 0 
allbuttons 
allButtons��  ��  : m   � ���
�� 
ctxt8 o      ���� 0 
buttonname 
buttonName) ABA l  � ���CD��  C   get values from controls   D �EE 2   g e t   v a l u e s   f r o m   c o n t r o l sB FGF r   � �HIH J   � �����  I o      ����  0 controlresults controlResultsG JKJ X   ��L��ML Z   ��NOPQN c   � �RSR l  � �T����T n  � �UVU I   � ���W����  0 iskindofclass_ isKindOfClass_W X��X l  � �Y����Y o   � ����� 0 nstextfield NSTextField��  ��  ��  ��  V o   � ����� 0 acontrol aControl��  ��  S m   � ���
�� 
boolO k   � �ZZ [\[ r   � �]^] c   � �_`_ n  � �aba I   � ��������� 0 stringvalue stringValue��  ��  b o   � ����� 0 acontrol aControl` m   � ���
�� 
ctxt^ n      cdc  ;   � �d o   � �����  0 controlresults controlResults\ e��e l  � �f����f n  � �ghg I   � ���i���� 0 setdelegate_ setDelegate_i j��j l  � �k����k m   � ���
�� 
msng��  ��  ��  ��  h o   � ����� 0 acontrol aControl��  ��  ��  P lml c   non l  
p����p n  
qrq I  
��s����  0 iskindofclass_ isKindOfClass_s t��t l u����u o  ���� 0 nspopupbutton NSPopUpButton��  ��  ��  ��  r o   ���� 0 acontrol aControl��  ��  o m  
��
�� 
boolm vwv r  xyx c  z{z n |}| I  �������� *0 titleofselecteditem titleOfSelectedItem��  ��  } o  ���� 0 acontrol aControl{ m  ��
�� 
ctxty n      ~~  ;   o  ����  0 controlresults controlResultsw ��� c  *��� l (������ n (��� I  (�������  0 iskindofclass_ isKindOfClass_� ���� l $������ o  $���� 0 nsbutton NSButton��  ��  ��  ��  � o  ���� 0 acontrol aControl��  ��  � m  ()��
�� 
bool� ��� r  -7��� c  -4��� n -2��� I  .2�������� 	0 state  ��  ��  � o  -.���� 0 acontrol aControl� m  23��
�� 
bool� n      ���  ;  56� o  45����  0 controlresults controlResults� ��� c  :F��� l :D������ n :D��� I  ;D���~�  0 iskindofclass_ isKindOfClass_� ��}� l ;@��|�{� o  ;@�z�z 0 nspathcontrol NSPathControl�|  �{  �}  �~  � o  :;�y�y 0 acontrol aControl��  ��  � m  DE�x
�x 
bool� ��� r  IY��� c  IV��� n IR��� I  NR�w�v�u�w 0 path  �v  �u  � n IN��� I  JN�t�s�r�t 0 URL  �s  �r  � o  IJ�q�q 0 acontrol aControl� m  RU�p
�p 
ctxt� n      ���  ;  WX� o  VW�o�o  0 controlresults controlResults� ��� c  \h��� l \f��n�m� n \f��� I  ]f�l��k�l  0 iskindofclass_ isKindOfClass_� ��j� l ]b��i�h� o  ]b�g�g 0 nsmatrix NSMatrix�i  �h  �j  �k  � o  \]�f�f 0 acontrol aControl�n  �m  � m  fg�e
�e 
bool� ��� r  k{��� c  kx��� n kt��� I  pt�d�c�b�d 	0 title  �c  �b  � n kp��� I  lp�a�`�_�a 0 selectedcell selectedCell�`  �_  � o  kl�^�^ 0 acontrol aControl� m  tw�]
�] 
ctxt� n      ���  ;  yz� o  xy�\�\  0 controlresults controlResults� ��� c  ~���� l ~���[�Z� n ~���� I  ��Y��X�Y  0 iskindofclass_ isKindOfClass_� ��W� l ���V�U� o  ��T�T 0 nsimageview NSImageView�V  �U  �W  �X  � o  ~�S�S 0 acontrol aControl�[  �Z  � m  ���R
�R 
bool� ��Q� r  ����� c  ����� n ����� I  ���P�O�N�P 0 name  �O  �N  � n ����� I  ���M�L�K�M 	0 image  �L  �K  � o  ���J�J 0 acontrol aControl� m  ���I
�I 
ctxt� n      ���  ;  ��� o  ���H�H  0 controlresults controlResults�Q  Q l ������ r  ����� m  ���G
�G 
msng� n      ���  ;  ��� o  ���F�F  0 controlresults controlResults�   NSBox    � ���    N S B o x  �� 0 acontrol aControlM o   � ��E�E 0 controlslist controlsListK ��� r  ����� m  ���D
�D 
msng� n     ��� o  ���C�C 0 
returncode 
returnCode�  f  ��� ��B� L  ���� J  ���� ��� o  ���A�A 0 
buttonname 
buttonName� ��@� o  ���?�?  0 controlresults controlResults�@  �B  e ��� l     �>�=�<�>  �=  �<  � ��� i  ��� I     �;��
�; .!ASc!CbSnull���     ****� o      �:�: 0 
buttonlist 
buttonList� �9��
�9 
!btK� |�8�7��6��8  �7  � o      �5�5  0 buttonkeyslist buttonKeysList�6  � J      �4�4  � �3��
�3 
!beQ� |�2�1��0��2  �1  � o      �/�/ 0 equalwidths equalWidths�0  � l     ��.�-� m      �,
�, boovfals�.  �-  � �+��
�+ 
dflt� |�*�)��(��*  �)  � o      �'�' 0 okindex okIndex�(  � m      �&�&  � �%��$
�% 
cbtn� |�#�"��! �#  �"  � o      � �  0 cancelindex cancelIndex�!    m      ��  �$  � k     2  Z     +� c      n    		
	 I    	���� 0 ismainthread isMainThread�  �  
 o     �� 0 nsthread NSThread m   	 
�
� 
bool n    I    ��� <0 createbuttonsviewmainthread_ createButtonsViewMainThread_ � J      o    �� 0 
buttonlist 
buttonList  o    ��  0 buttonkeyslist buttonKeysList  o    �� 0 equalwidths equalWidths  o    �� 0 cancelindex cancelIndex � o    �� 0 okindex okIndex�  �  �    f    �   n   + I    +��� n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_  m     � 8 c r e a t e B u t t o n s V i e w M a i n T h r e a d :  !  J    &"" #$# o     �� 0 
buttonlist 
buttonList$ %&% o     !��  0 buttonkeyslist buttonKeysList& '(' o   ! "�� 0 equalwidths equalWidths( )*) o   " #�
�
 0 cancelindex cancelIndex* +�	+ o   # $�� 0 okindex okIndex�	  ! ,�, m   & '�
� boovtrue�  �    f     -�- L   , 2.. o   , 1�� 0 handlerresult handlerResult�  � /0/ l     ����  �  �  0 121 i   #343 I     � 56
�  .!AScDiEanull���     ****5 o      ���� 0 maintext mainText6 ��78
�� 
mesS7 o      ����  0 theexplanation theExplanation8 ��9:
�� 
as A9 |����;��<��  ��  ; o      ���� 0 	styletype 	styleType��  < m      ��
�� !AtP*nfA: ��=>
�� 
btns= o      ���� 0 buttonslist buttonsList> ��?@
�� 
!suP? |����A��B��  ��  A o      ���� "0 showsuppression showSuppression��  B m      ��
�� boovfals@ ��CD
�� 
givuC |����E��F��  ��  E o      ���� 0 giveup giveUp��  F m      ����  D ��GH
�� 
!AvWG o      ���� 0 thewidth theWidthH ��IJ
�� 
!AvHI o      ���� 0 	theheight 	theHeightJ ��K��
�� 
!AvCK o      ���� 0 controlslist controlsList��  4 k    �LL MNM Z     OPQRO =     STS o     ���� 0 	styletype 	styleTypeT m    ��
�� !AtP*riTP r    	UVU m    ���� V o      ���� 0 stylenum styleNumQ WXW =    YZY o    ���� 0 	styletype 	styleTypeZ m    ��
�� !AtP*arNX [��[ r    \]\ m    ����  ] o      ���� 0 stylenum styleNum��  R r    ^_^ m    ���� _ o      ���� 0 stylenum styleNumN `a` l   &bcdb r    &efe n   $ghg I    $��i���� (0 aeinteractwithuser AEInteractWithUseri jkj m    ������k lml m    ��
�� 
msngm n��n m     ��
�� 
msng��  ��  h m    ��
�� misccuraf o      ���� 0 theerror theErrorc   -1 is kAEDefaultTimeout   d �oo 0   - 1   i s   k A E D e f a u l t T i m e o u ta pqp Z   ' 7rs����r >  ' *tut o   ' (���� 0 theerror theErroru m   ( )����  s R   - 3��vw
�� .ascrerr ****      � ****v m   1 2xx �yy 6 U s e r   i n t e r a c t i o n   d i s a l l o w e dw ��z��
�� 
errnz o   / 0���� 0 theerror theError��  ��  ��  q {|{ Z   8 k}~��} c   8 C��� n  8 A��� I   = A�������� 0 ismainthread isMainThread��  ��  � o   8 =���� 0 nsthread NSThread� m   A B��
�� 
bool~ n  F V��� I   G V������� B0 displayenhancedalertmainthread_ displayEnhancedAlertMainThread_� ���� J   G R�� ��� o   G H���� 0 maintext mainText� ��� o   H I����  0 theexplanation theExplanation� ��� o   I J���� 0 stylenum styleNum� ��� o   J K���� 0 buttonslist buttonsList� ��� o   K L���� "0 showsuppression showSuppression� ��� o   L M���� 0 giveup giveUp� ��� o   M N���� 0 thewidth theWidth� ��� o   N O���� 0 	theheight 	theHeight� ���� o   O P���� 0 controlslist controlsList��  ��  ��  �  f   F G��   n  Y k��� I   Z k������� n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_� ��� m   Z [�� ��� > d i s p l a y E n h a n c e d A l e r t M a i n T h r e a d :� ��� J   [ f�� ��� o   [ \���� 0 maintext mainText� ��� o   \ ]����  0 theexplanation theExplanation� ��� o   ] ^���� 0 stylenum styleNum� ��� o   ^ _���� 0 buttonslist buttonsList� ��� o   _ `���� "0 showsuppression showSuppression� ��� o   ` a���� 0 giveup giveUp� ��� o   a b���� 0 thewidth theWidth� ��� o   b c���� 0 	theheight 	theHeight� ���� o   c d���� 0 controlslist controlsList��  � ���� m   f g��
�� boovtrue��  ��  �  f   Y Z| ��� l  l l������  � d ^	if a giveUp time was specified and the alert didn't timeout, cancel the pending abort request   � ��� � 	 i f   a   g i v e U p   t i m e   w a s   s p e c i f i e d   a n d   t h e   a l e r t   d i d n ' t   t i m e o u t ,   c a n c e l   t h e   p e n d i n g   a b o r t   r e q u e s t� ��� Z  l �������� F   l ��� ?   l o��� o   l m���� 0 giveup giveUp� m   m n����  � >  r }��� o   r w���� 0 
returncode 
returnCode� o   w |���� ,0 nsmodalresponseabort NSModalResponseAbort� n  � ���� I   � �������� t0 8cancelpreviousperformrequestswithtarget_selector_object_ 8cancelPreviousPerformRequestsWithTarget_selector_object_� ��� l  � ������� o   � ����� 0 nsapp NSApp��  ��  � ��� m   � ��� ���  a b o r t M o d a l� ���� l  � ������� m   � ���
�� 
msng��  ��  ��  ��  � o   � ����� 0 nsobject NSObject��  ��  � ��� l  � �������  � ' ! get values after alert is closed   � ��� B   g e t   v a l u e s   a f t e r   a l e r t   i s   c l o s e d� ��� r   � ���� o   � ����� 0 handlerresult handlerResult� o      ���� 0 thealert theAlert� ��� r   � ���� m   � ���
�� 
msng� o      ���� 0 handlerresult handlerResult� ��� r   � ���� c   � ���� n  � ���� I   � ��������� 	0 state  ��  ��  � n  � ���� I   � ��������� &0 suppressionbutton suppressionButton��  ��  � o   � ����� 0 thealert theAlert� m   � ���
�� 
bool� o      ���� "0 suppressedstate suppressedState� ��� l  � ����� r   � ���� [   � ���� `   � ���� o   � ����� 0 
returncode 
returnCode� m   � ������� m   � ����� � o      ���� 0 buttonnumber buttonNumber� "  where 1 = right-most button   � ��� 8   w h e r e   1   =   r i g h t - m o s t   b u t t o n� ��� Z   � ������� =   � ���� o   � ����� 0 buttonnumber buttonNumber� m   � �����  � r   � ���� m   � ��� ���  G a v e   U p� o      �� 0 
buttonname 
buttonName��  � r   � �� � n   � � 4   � ��~
�~ 
cobj o   � ��}�} 0 buttonnumber buttonNumber l  � ��|�{ n   � � 1   � ��z
�z 
rvse o   � ��y�y 0 buttonslist buttonsList�|  �{    o      �x�x 0 
buttonname 
buttonName�  l  � ��w	
�w  	   get values from controls   
 � 2   g e t   v a l u e s   f r o m   c o n t r o l s  r   � � J   � ��v�v   o      �u�u  0 controlresults controlResults  X   ���t Z   �� c   � l  ��s�r n  � I   ��q�p�q  0 iskindofclass_ isKindOfClass_ �o l  � ��n�m o   � ��l�l 0 nstextfield NSTextField�n  �m  �o  �p   o   � ��k�k 0 acontrol aControl�s  �r   m  �j
�j 
bool r   !  c  "#" n $%$ I  �i�h�g�i 0 stringvalue stringValue�h  �g  % o  �f�f 0 acontrol aControl# m  �e
�e 
ctxt! n      &'&  ;  ' o  �d�d  0 controlresults controlResults ()( c  '*+* l %,�c�b, n %-.- I  %�a/�`�a  0 iskindofclass_ isKindOfClass_/ 0�_0 l !1�^�]1 o  !�\�\ 0 nspopupbutton NSPopUpButton�^  �]  �_  �`  . o  �[�[ 0 acontrol aControl�c  �b  + m  %&�Z
�Z 
bool) 232 r  *8454 c  *5676 n *1898 I  -1�Y�X�W�Y *0 titleofselecteditem titleOfSelectedItem�X  �W  9 o  *-�V�V 0 acontrol aControl7 m  14�U
�U 
ctxt5 n      :;:  ;  67; o  56�T�T  0 controlresults controlResults3 <=< c  ;I>?> l ;G@�S�R@ n ;GABA I  >G�QC�P�Q  0 iskindofclass_ isKindOfClass_C D�OD l >CE�N�ME o  >C�L�L 0 nsbutton NSButton�N  �M  �O  �P  B o  ;>�K�K 0 acontrol aControl�S  �R  ? m  GH�J
�J 
bool= FGF r  LXHIH c  LUJKJ n LSLML I  OS�I�H�G�I 	0 state  �H  �G  M o  LO�F�F 0 acontrol aControlK m  ST�E
�E 
boolI n      NON  ;  VWO o  UV�D�D  0 controlresults controlResultsG PQP c  [iRSR l [gT�C�BT n [gUVU I  ^g�AW�@�A  0 iskindofclass_ isKindOfClass_W X�?X l ^cY�>�=Y o  ^c�<�< 0 nspathcontrol NSPathControl�>  �=  �?  �@  V o  [^�;�; 0 acontrol aControl�C  �B  S m  gh�:
�: 
boolQ Z[Z r  l~\]\ c  l{^_^ n lw`a` I  sw�9�8�7�9 0 path  �8  �7  a n lsbcb I  os�6�5�4�6 0 URL  �5  �4  c o  lo�3�3 0 acontrol aControl_ m  wz�2
�2 
ctxt] n      ded  ;  |}e o  {|�1�1  0 controlresults controlResults[ fgf c  ��hih l ��j�0�/j n ��klk I  ���.m�-�.  0 iskindofclass_ isKindOfClass_m n�,n l ��o�+�*o o  ���)�) 0 nsmatrix NSMatrix�+  �*  �,  �-  l o  ���(�( 0 acontrol aControl�0  �/  i m  ���'
�' 
boolg pqp r  ��rsr c  ��tut n ��vwv I  ���&�%�$�& 	0 title  �%  �$  w n ��xyx I  ���#�"�!�# 0 selectedcell selectedCell�"  �!  y o  ��� �  0 acontrol aControlu m  ���
� 
ctxts n      z{z  ;  ��{ o  ����  0 controlresults controlResultsq |}| c  ��~~ l ������ n ����� I  ������  0 iskindofclass_ isKindOfClass_� ��� l ������ o  ���� 0 nsimageview NSImageView�  �  �  �  � o  ���� 0 acontrol aControl�  �   m  ���
� 
bool} ��� r  ����� c  ����� n ����� I  ������ 0 name  �  �  � n ����� I  ������ 	0 image  �  �  � o  ���� 0 acontrol aControl� m  ���
� 
ctxt� n      ���  ;  ��� o  ���
�
  0 controlresults controlResults�   l ������ r  ����� m  ���	
�	 
msng� n      ���  ;  ��� o  ����  0 controlresults controlResults�   NSBox    � ���    N S B o x  �t 0 acontrol aControl o   � ��� 0 controlslist controlsList ��� r  ����� m  ���
� 
msng� n     ��� o  ���� 0 
returncode 
returnCode�  f  ��� ��� L  ���� J  ���� ��� o  ���� 0 
buttonname 
buttonName� ��� o  ���� "0 suppressedstate suppressedState� ��� o  ��� �   0 controlresults controlResults�  �  2 ��� l     ��������  ��  ��  � ��� l     ������  � u o alignment is left aligned, right aligned or center aligned; multiLine is a boolean, true for multi-line labels   � ��� �   a l i g n m e n t   i s   l e f t   a l i g n e d ,   r i g h t   a l i g n e d   o r   c e n t e r   a l i g n e d ;   m u l t i L i n e   i s   a   b o o l e a n ,   t r u e   f o r   m u l t i - l i n e   l a b e l s� ��� i  $'��� I     ����
�� .!ASuCrLanull���     ctxt� o      ���� 0 labelstring labelString� ����
�� 
!Lli� |����������  ��  � o      ���� 0 theleft theLeft��  � m      ����  � ����
�� 
!BtM� o      ���� 0 	thebottom 	theBottom� ����
�� 
!MxW� o      ���� 0 maxwidth maxWidth� ����
�� 
!AlI� |����������  ��  � o      ���� 0 	alignment  ��  � m      ��
�� !LaL!LlE� ����
�� 
!MuL� |����������  ��  � o      ���� 0 	wrapsbool 	wrapsBool��  � m      ��
�� boovtrue� ����
�� 
!MuS� |����������  ��  � o      ���� 0 controlsize controlSize��  � m      ��
�� !CsZ!CrL� �����
�� 
!MuB� |����������  ��  � o      ���� 0 boldtype boldType��  � m      ��
�� boovfals��  � k     8�� ��� Z     1������ c     ��� n    	��� I    	�������� 0 ismainthread isMainThread��  ��  � o     ���� 0 nsthread NSThread� m   	 
��
�� 
bool� n   ��� I    ������� 00 createlabelmainthread_ createLabelMainThread_� ���� J    �� ��� o    ���� 0 labelstring labelString� ��� o    ���� 0 theleft theLeft� ��� o    ���� 0 	thebottom 	theBottom� ��� o    ���� 0 maxwidth maxWidth� ��� o    ���� 0 	alignment  � ��� o    ���� 0 	wrapsbool 	wrapsBool� ��� o    ���� 0 controlsize controlSize� ���� o    ���� 0 boldtype boldType��  ��  ��  �  f    ��  � n    1��� I   ! 1������� n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_� ��� m   ! "�� ��� , c r e a t e L a b e l M a i n T h r e a d :� ��� J   " ,�� ��� o   " #���� 0 labelstring labelString� ��� o   # $���� 0 theleft theLeft� ��� o   $ %���� 0 	thebottom 	theBottom� ��� o   % &���� 0 maxwidth maxWidth� ��� o   & '���� 0 	alignment  � ��� o   ' (���� 0 	wrapsbool 	wrapsBool� � � o   ( )���� 0 controlsize controlSize  �� o   ) *���� 0 boldtype boldType��  � �� m   , -��
�� boovtrue��  ��  �  f     !� �� L   2 8 o   2 7���� 0 handlerresult handlerResult��  �  l     ��������  ��  ��    i  (+	
	 I     ��
�� .!ASuMlWdnull���     **** o      ���� 0 listoflabels listOfLabels ��
�� 
!MuS |��������  ��   o      ���� 0 controlsize controlSize��   m      ��
�� !CsZ!CrL ����
�� 
!MuB |��������  ��   o      ���� 0 boldtype boldType��   m      ��
�� boovfals��  
 k     _  r     	 n     I    ������ :0 fontofcontrolsize_boldtype_ fontOfControlSize_boldType_  o    ���� 0 controlsize controlSize �� o    ���� 0 boldtype boldType��  ��    f      o      ���� 0 thefont theFont   r   
 !"! n  
 #$# I    ��%���� <0 dictionarywithobject_forkey_ dictionaryWithObject_forKey_% &'& o    ���� 0 thefont theFont' (��( l   )����) o    ���� *0 nsfontattributename NSFontAttributeName��  ��  ��  ��  $ o   
 ���� 0 nsdictionary NSDictionary" o      ���� 0 theatts theAtts  *+* r    ,-, m    ����  - o      ���� 0 maxwidth maxWidth+ ./. X     Z0��10 k   0 U22 343 r   0 <565 l  0 :7����7 n  0 :898 I   5 :��:���� &0 stringwithstring_ stringWithString_: ;��; o   5 6���� 0 labelstring labelString��  ��  9 o   0 5���� 0 nsstring NSString��  ��  6 o      ���� 0 	thestring 	theString4 <=< r   = G>?> n   = E@A@ o   C E���� 	0 width  A l  = CB����B n  = CCDC I   > C��E���� *0 sizewithattributes_ sizeWithAttributes_E F��F o   > ?���� 0 theatts theAtts��  ��  D o   = >���� 0 	thestring 	theString��  ��  ? o      ���� 0 newwidth newWidth= G��G Z  H UHI��~H ?   H KJKJ o   H I�}�} 0 newwidth newWidthK o   I J�|�| 0 maxwidth maxWidthI r   N QLML o   N O�{�{ 0 newwidth newWidthM o      �z�z 0 maxwidth maxWidth�  �~  ��  �� 0 labelstring labelString1 o   # $�y�y 0 listoflabels listOfLabels/ N�xN l  [ _OPQO L   [ _RR [   [ ^STS o   [ \�w�w 0 maxwidth maxWidthT m   \ ]UU @      P * $ allow for frame rectangle and fudge   Q �VV H   a l l o w   f o r   f r a m e   r e c t a n g l e   a n d   f u d g e�x   WXW l     �v�u�t�v  �u  �t  X YZY i  ,/[\[ I     �s]^
�s .!ASuMlDpnull���     ctxt] o      �r�r 0 	labeltext 	labelText^ �q_`
�q 
!MxW_ o      �p�p 0 maxwidth maxWidth` �oab
�o 
!MuSa |�n�mc�ld�n  �m  c o      �k�k 0 controlsize controlSize�l  d m      �j
�j !CsZ!CrLb �ie�h
�i 
!MuBe |�g�ff�eg�g  �f  f o      �d�d 0 boldtype boldType�e  g m      �c
�c boovfals�h  \ k     [hh iji r     	klk n    mnm I    �bo�a�b :0 fontofcontrolsize_boldtype_ fontOfControlSize_boldType_o pqp o    �`�` 0 controlsize controlSizeq r�_r o    �^�^ 0 boldtype boldType�_  �a  n  f     l o      �]�] 0 thefont theFontj sts r   
 uvu n  
 wxw I    �\y�[�\ <0 dictionarywithobject_forkey_ dictionaryWithObject_forKey_y z{z o    �Z�Z 0 thefont theFont{ |�Y| l   }�X�W} o    �V�V *0 nsfontattributename NSFontAttributeName�X  �W  �Y  �[  x o   
 �U�U 0 nsdictionary NSDictionaryv o      �T�T 0 theatts theAttst ~~ r    (��� n   &��� I   ! &�S��R�S &0 stringwithstring_ stringWithString_� ��Q� o   ! "�P�P 0 	labeltext 	labelText�Q  �R  � o    !�O�O 0 nsstring NSString� o      �N�N 0 	labeltext 	labelText ��� r   ) :��� n  ) 8��� I   * 8�M��L�M T0 (boundingrectwithsize_options_attributes_ (boundingRectWithSize_options_attributes_� ��� J   * .�� ��� o   * +�K�K 0 maxwidth maxWidth� ��J� m   + ,�I�I��J  � ��� o   . 3�H�H N0 %nsstringdrawinguseslinefragmentorigin %NSStringDrawingUsesLineFragmentOrigin� ��G� o   3 4�F�F 0 theatts theAtts�G  �L  � o   ) *�E�E 0 	labeltext 	labelText� o      �D�D 0 theframe theFrame� ��� Z   ; V���C�� =  ; @��� n   ; >��� m   < >�B
�B 
pcls� o   ; <�A�A 0 theframe theFrame� m   > ?�@
�@ 
reco� r   C J��� n   C H��� o   F H�?�? 
0 height  � n   C F��� o   D F�>�> 0 size  � o   C D�=�= 0 theframe theFrame� o      �<�< 0 	theheight 	theHeight�C  � r   M V��� n   M T��� 4   Q T�;�
�; 
cobj� m   R S�:�: � n   M Q��� 4   N Q�9�
�9 
cobj� m   O P�8�8 � o   M N�7�7 0 theframe theFrame� o      �6�6 0 	theheight 	theHeight� ��5� l  W [���� L   W [�� [   W Z��� o   W X�4�4 0 	theheight 	theHeight� m   X Y�3�3 �   allow  fudge   � ���    a l l o w     f u d g e�5  Z ��� l     �2�1�0�2  �1  �0  � ��� l     �/���/  � ^ X extraHeight of 0 means it takes a single line, otherwise add as many points as you want   � ��� �   e x t r a H e i g h t   o f   0   m e a n s   i t   t a k e s   a   s i n g l e   l i n e ,   o t h e r w i s e   a d d   a s   m a n y   p o i n t s   a s   y o u   w a n t� ��� i  03��� I     �.��
�. .!ASuCrTfnull���     ctxt� o      �-�- 0 enteredtext enteredText� �,��
�, 
!FpL� |�+�*��)��+  �*  � o      �(�( 0 placeholder  �)  � m      �� ���  � �'��
�' 
!Lli� |�&�%��$��&  �%  � o      �#�# 0 theleft theLeft�$  � m      �"�"  � �!��
�! 
!BtM� o      � �  0 	thebottom 	theBottom� ���
� 
!FwI� o      �� 0 thewidth theWidth� ���
� 
!ExH� |������  �  � o      �� 0 extraheight extraHeight�  � m      ��  � ���
� 
!MlT� |������  �  � o      �� 0 acceptstabs acceptsTabs�  � m      �
� boovfals�  � k     6�� ��� Z     /����� c     ��� n    	��� I    	���� 0 ismainthread isMainThread�  �  � o     �� 0 nsthread NSThread� m   	 
�
� 
bool� n   ��� I    �
��	�
 00 createfieldmainthread_ createFieldMainThread_� ��� J    �� ��� o    �� 0 enteredtext enteredText� ��� o    �� 0 placeholder  � ��� o    �� 0 theleft theLeft� ��� o    �� 0 	thebottom 	theBottom� ��� o    �� 0 thewidth theWidth� ��� o    �� 0 extraheight extraHeight� ��� o    � �  0 acceptstabs acceptsTabs�  �  �	  �  f    �  � n   /��� I     /������� n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_� ��� m     !�� ��� , c r e a t e F i e l d M a i n T h r e a d :� ��� J   ! *�� ��� o   ! "���� 0 enteredtext enteredText� � � o   " #���� 0 placeholder     o   # $���� 0 theleft theLeft  o   $ %���� 0 	thebottom 	theBottom  o   % &���� 0 thewidth theWidth  o   & '���� 0 extraheight extraHeight 	��	 o   ' (���� 0 acceptstabs acceptsTabs��  � 
��
 m   * +��
�� boovtrue��  ��  �  f     � �� L   0 6 o   0 5���� 0 handlerresult handlerResult��  �  l     ��������  ��  ��    i  47 I     ��
�� .!ASuCrSfnull���     ctxt o      ���� 0 enteredtext enteredText ��
�� 
!FpL |��������  ��   o      ���� 0 placeholder  ��   m       �   ��
�� 
!Lli |��������  ��   o      ���� 0 theleft theLeft��   m      ����   �� 
�� 
!BtM o      ���� 0 	thebottom 	theBottom  ��!��
�� 
!FwI! o      ���� 0 thewidth theWidth��   k     2"" #$# Z     +%&��'% c     ()( n    	*+* I    	�������� 0 ismainthread isMainThread��  ��  + o     ���� 0 nsthread NSThread) m   	 
��
�� 
bool& n   ,-, I    ��.���� <0 createsecurefieldmainthread_ createSecureFieldMainThread_. /��/ J    00 121 o    ���� 0 enteredtext enteredText2 343 o    ���� 0 placeholder  4 565 o    ���� 0 theleft theLeft6 787 o    ���� 0 	thebottom 	theBottom8 9��9 o    ���� 0 thewidth theWidth��  ��  ��  -  f    ��  ' n   +:;: I    +��<���� n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_< =>= m    ?? �@@ 8 c r e a t e S e c u r e F i e l d M a i n T h r e a d :> ABA J    &CC DED o     ���� 0 enteredtext enteredTextE FGF o     !���� 0 placeholder  G HIH o   ! "���� 0 theleft theLeftI JKJ o   " #���� 0 	thebottom 	theBottomK L��L o   # $���� 0 thewidth theWidth��  B M��M m   & '��
�� boovtrue��  ��  ;  f    $ N��N L   , 2OO o   , 1���� 0 handlerresult handlerResult��   PQP l     ��������  ��  ��  Q RSR l     ��TU��  T %  makes label and field together   U �VV >   m a k e s   l a b e l   a n d   f i e l d   t o g e t h e rS WXW i  8;YZY I     ��[\
�� .!ASuCrLfnull���     ctxt[ o      ���� 0 enteredtext enteredText\ ��]^
�� 
!FpL] |����_��`��  ��  _ o      ���� 0 placeholder  ��  ` m      aa �bb  ^ ��cd
�� 
!Llic |����e��f��  ��  e o      ���� 0 theleft theLeft��  f m      ����  d ��gh
�� 
!BtMg o      ���� 0 	thebottom 	theBottomh ��ij
�� 
!FwIi o      ���� 0 thewidth theWidthj ��kl
�� 
!ExHk |����m��n��  ��  m o      ���� 0 extraheight extraHeight��  n m      ����  l ��op
�� 
!LtXo o      ���� 0 thelabel theLabelp ��q��
�� 
!MlTq |����r��s��  ��  r o      ���� 0 acceptstabs acceptsTabs��  s m      ��
�� boovfals��  Z k     btt uvu r     %wxw I     ��yz
�� .!ASuCrTfnull���     ctxty o     ���� 0 enteredtext enteredTextz ��{|
�� 
!FpL{ o    ���� 0 placeholder  | ��}~
�� 
!Lli} o   	 
���� 0 theleft theLeft~ ���
�� 
!BtM o    ���� 0 	thebottom 	theBottom� ����
�� 
!FwI� o    ���� 0 thewidth theWidth� ����
�� 
!ExH� o    ���� 0 extraheight extraHeight� �����
�� 
!MlT� o    ���� 0 acceptstabs acceptsTabs��  x J    �� ��� o    ���� 0 thefield theField� ���� o    ���� 0 thetop theTop��  v ��� r   & [��� I     ����
�� .!ASuCrLanull���     ctxt� o   & '���� 0 thelabel theLabel� ����
�� 
!Lli� o   . /���� 0 theleft theLeft� ����
�� 
!BtM� l  0 3������ [   0 3��� o   0 1���� 0 thetop theTop� m   1 2���� ��  ��  � ����
�� 
!MxW� o   4 5���� 0 thewidth theWidth� ����
�� 
!AlI� m   8 ;�
� !LaL!LlE� �~��}
�~ 
!MuL� m   > ?�|
�| boovfals�}  � J   ( -�� ��� o   ( )�{�{ 0 thelabel theLabel� ��� o   ) *�z�z 0 thetop theTop� ��y� o   * +�x�x 0 newwidth newWidth�y  � ��w� L   \ b�� J   \ a�� ��� o   \ ]�v�v 0 thefield theField� ��� o   ] ^�u�u 0 thelabel theLabel� ��t� o   ^ _�s�s 0 thetop theTop�t  �w  X ��� l     �r�q�p�r  �q  �p  � ��� l     �o���o  �  y makes label and field; if fieldLeft is less than leftInset, the label will start at leftInset, with the field following;   � ��� �   m a k e s   l a b e l   a n d   f i e l d ;   i f   f i e l d L e f t   i s   l e s s   t h a n   l e f t I n s e t ,   t h e   l a b e l   w i l l   s t a r t   a t   l e f t I n s e t ,   w i t h   t h e   f i e l d   f o l l o w i n g ;� ��� l     �n���n  � y s if fieldLeft is more than leftInset, the field will start at fieldLeft, and the label will will appear to its left   � ��� �   i f   f i e l d L e f t   i s   m o r e   t h a n   l e f t I n s e t ,   t h e   f i e l d   w i l l   s t a r t   a t   f i e l d L e f t ,   a n d   t h e   l a b e l   w i l l   w i l l   a p p e a r   t o   i t s   l e f t� ��� i  <?��� I     �m��
�m .!ASuCrLsnull���     ctxt� o      �l�l 0 enteredtext enteredText� �k��
�k 
!FpL� |�j�i��h��j  �i  � o      �g�g 0 placeholder  �h  � m      �� ���  � �f��
�f 
!Lli� |�e�d��c��e  �d  � o      �b�b 0 theleft theLeft�c  � m      �a�a  � �`��
�` 
!BtM� o      �_�_ 0 	thebottom 	theBottom� �^��
�^ 
!StW� o      �]�] 0 thewidth theWidth� �\��
�\ 
!LtX� o      �[�[ 0 thelabel theLabel� �Z��
�Z 
!FlF� o      �Y�Y 0 	fieldleft 	fieldLeft� �X��W
�X 
!MlT� |�V�U��T��V  �U  � o      �S�S 0 acceptstabs acceptsTabs�T  � m      �R
�R boovfals�W  � k     ��� ��� Z     ����Q�� B     ��� o     �P�P 0 	fieldleft 	fieldLeft� o    �O�O 0 theleft theLeft� k    o�� ��� r    3��� I     �N��
�N .!ASuCrLanull���     ctxt� o    �M�M 0 thelabel theLabel� �L��
�L 
!Lli� o    �K�K 0 theleft theLeft� �J��
�J 
!BtM� l   ��I�H� [    ��� o    �G�G 0 	thebottom 	theBottom� m    �F�F �I  �H  � �E��
�E 
!MxW� o    �D�D 0 thewidth theWidth� �C��
�C 
!AlI� m    �B
�B !LaL!LlE� �A��@
�A 
!MuL� m    �?
�? boovfals�@  � J    �� ��� o    	�>�> 0 thelabel theLabel� ��� o   	 
�=�= 0 thetop theTop� ��<� o   
 �;�; 0 newwidth newWidth�<  � ��� r   4 ;��� l  4 9��:�9� [   4 9��� [   4 7��� o   4 5�8�8 0 theleft theLeft� o   5 6�7�7 0 newwidth newWidth� m   7 8�6�6 �:  �9  � o      �5�5 0 	fieldleft 	fieldLeft� ��4� r   < o��� I     �3��
�3 .!ASuCrTfnull���     ctxt� o   < =�2�2 0 enteredtext enteredText� �1 
�1 
!FpL  o   E F�0�0 0 placeholder   �/
�/ 
!Lli o   G H�.�. 0 	fieldleft 	fieldLeft �-
�- 
!BtM o   I J�,�, 0 	thebottom 	theBottom �+
�+ 
!FwI l  M R�*�) \   M R	
	 \   M P o   M N�(�( 0 thewidth theWidth o   N O�'�' 0 newwidth newWidth
 m   P Q�&�& �*  �)   �%
�% 
!ExH m   U V�$�$   �#�"
�# 
!MlT o   Y Z�!�! 0 acceptstabs acceptsTabs�"  � J   > B  o   > ?� �  0 thefield theField � o   ? @�� 0 thetop theTop�  �4  �Q  � k   r �  r   r � I     �
� .!ASuCrLanull���     ctxt o   r s�� 0 thelabel theLabel �
� 
!Lli o   z {�� 0 theleft theLeft �
� 
!BtM l  | �� [   |  !  o   | }�� 0 	thebottom 	theBottom! m   } ~�� �  �   �"#
� 
!MxW" l  � �$��$ \   � �%&% \   � �'(' o   � ��� 0 	fieldleft 	fieldLeft( o   � ��� 0 theleft theLeft& m   � ��� �  �  # �)*
� 
!AlI) m   � ��
� !LaL!LrI* �+�
� 
!MuL+ m   � ��

�
 boovfals�   J   t y,, -.- o   t u�	�	 0 thelabel theLabel. /0/ o   u v�� 0 thetop theTop0 1�1 o   v w�� 0 newwidth newWidth�   2�2 r   � �343 I     �56
� .!ASuCrTfnull���     ctxt5 o   � ��� 0 enteredtext enteredText6 �78
� 
!FpL7 o   � ��� 0 placeholder  8 � 9:
�  
!Lli9 o   � ����� 0 	fieldleft 	fieldLeft: ��;<
�� 
!BtM; o   � ����� 0 	thebottom 	theBottom< ��=>
�� 
!FwI= l  � �?����? \   � �@A@ o   � ����� 0 thewidth theWidthA o   � ����� 0 	fieldleft 	fieldLeft��  ��  > ��BC
�� 
!ExHB m   � �����  C ��D��
�� 
!MlTD o   � ����� 0 acceptstabs acceptsTabs��  4 J   � �EE FGF o   � ����� 0 thefield theFieldG H��H o   � ����� 0 thetop theTop��  �  � IJI l  � ���KL��  K M G return theField, theLabel, the top of the field, and left of the field   L �MM �   r e t u r n   t h e F i e l d ,   t h e L a b e l ,   t h e   t o p   o f   t h e   f i e l d ,   a n d   l e f t   o f   t h e   f i e l dJ N��N L   � �OO J   � �PP QRQ o   � ����� 0 thefield theFieldR STS o   � ����� 0 thelabel theLabelT UVU o   � ����� 0 thetop theTopV W��W o   � ����� 0 	fieldleft 	fieldLeft��  ��  � XYX l     ��������  ��  ��  Y Z[Z l     ��\]��  \ 6 0 entryList is a list of names for the menu items   ] �^^ `   e n t r y L i s t   i s   a   l i s t   o f   n a m e s   f o r   t h e   m e n u   i t e m s[ _`_ i  @Caba I     ��cd
�� .!ASuCrPonull���     ****c o      ���� 0 	entrylist 	entryListd ��ef
�� 
!Llie |����g��h��  ��  g o      ���� 0 theleft theLeft��  h m      ����  f ��ij
�� 
!BtMi o      ���� 0 	thebottom 	theBottomj ��kl
�� 
!PuWk o      ���� 0 thewidth theWidthl ��m��
�� 
!MuDm |����n��o��  ��  n o      ���� 0 defaultvalue defaultValue��  o m      ���� ��  b k     Epp qrq Z    st����s =    uvu n     wxw m    ��
�� 
pclsx o     ���� 0 defaultvalue defaultValuev m    ��
�� 
longt r    yzy n    {|{ 4   	 ��}
�� 
cobj} o   
 ���� 0 defaultvalue defaultValue| o    	���� 0 	entrylist 	entryListz o      ���� 0 defaultvalue defaultValue��  ��  r ~~ Z    >������ c    ��� n   ��� I    �������� 0 ismainthread isMainThread��  ��  � o    ���� 0 nsthread NSThread� m    ��
�� 
bool� n  ! -��� I   " -������� 00 createpopupmainthread_ createPopupMainThread_� ���� J   " )�� ��� o   " #���� 0 	entrylist 	entryList� ��� o   # $���� 0 theleft theLeft� ��� o   $ %���� 0 	thebottom 	theBottom� ��� o   % &���� 0 thewidth theWidth� ���� o   & '���� 0 defaultvalue defaultValue��  ��  ��  �  f   ! "��  � n  0 >��� I   1 >������� n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_� ��� m   1 2�� ��� , c r e a t e P o p u p M a i n T h r e a d :� ��� J   2 9�� ��� o   2 3���� 0 	entrylist 	entryList� ��� o   3 4���� 0 theleft theLeft� ��� o   4 5���� 0 	thebottom 	theBottom� ��� o   5 6���� 0 thewidth theWidth� ���� o   6 7���� 0 defaultvalue defaultValue��  � ���� m   9 :��
�� boovtrue��  ��  �  f   0 1 ���� L   ? E�� o   ? D���� 0 handlerresult handlerResult��  ` ��� l     ��������  ��  ��  � ��� l     ������  �  y makes label and popup; if popupLeft is less than leftInset, the label will start at leftInset, with the popup following;   � ��� �   m a k e s   l a b e l   a n d   p o p u p ;   i f   p o p u p L e f t   i s   l e s s   t h a n   l e f t I n s e t ,   t h e   l a b e l   w i l l   s t a r t   a t   l e f t I n s e t ,   w i t h   t h e   p o p u p   f o l l o w i n g ;� ��� l     ������  � y s if popupLeft is more than leftInset, the popup will start at popupLeft, and the label will will appear to its left   � ��� �   i f   p o p u p L e f t   i s   m o r e   t h a n   l e f t I n s e t ,   t h e   p o p u p   w i l l   s t a r t   a t   p o p u p L e f t ,   a n d   t h e   l a b e l   w i l l   w i l l   a p p e a r   t o   i t s   l e f t� ��� i  DG��� I     ����
�� .!ASuCrPlnull���     ****� o      ���� 0 	entrylist 	entryList� ����
�� 
!Lli� |����������  ��  � o      ���� 0 theleft theLeft��  � m      ����  � ����
�� 
!BtM� o      ���� 0 	thebottom 	theBottom� ����
�� 
!PuW� o      ���� 0 
popupwidth 
popupWidth� ����
�� 
!MxW� o      ���� 0 thewidth theWidth� ����
�� 
!LtX� o      ���� 0 thelabel theLabel� ����
�� 
!PuL� o      ���� 0 	popupleft 	popupLeft� �����
�� 
!MuD� |����������  ��  � o      ���� 0 defaultvalue defaultValue��  � m      ���� ��  � k     ��� ��� Z     ������� B     ��� o     ���� 0 	popupleft 	popupLeft� o    ���� 0 theleft theLeft� k    _�� ��� r    3��� I     ����
�� .!ASuCrLanull���     ctxt� o    ���� 0 thelabel theLabel� ����
�� 
!Lli� o    ���� 0 theleft theLeft� ����
�� 
!BtM� l   ������ [    ��� o    ���� 0 	thebottom 	theBottom� m    ���� ��  ��  � ����
�� 
!MxW� o    ���� 0 thewidth theWidth� ����
�� 
!AlI� m    ��
�� !LaL!LlE� ���~
� 
!MuL� m    �}
�} boovfals�~  � J    �� ��� o    	�|�| 0 thelabel theLabel� ��� o   	 
�{�{ 0 thetop theTop� ��z� o   
 �y�y 0 newwidth newWidth�z  � ��� r   4 9��� l  4 7��x�w� [   4 7��� o   4 5�v�v 0 newwidth newWidth� m   5 6�u�u �x  �w  � o      �t�t 0 	popupleft 	popupLeft� ��s� r   : _��� I     �r��
�r .!ASuCrPonull���     ****� o   : ;�q�q 0 	entrylist 	entryList� �p��
�p 
!Lli� o   A B�o�o 0 	popupleft 	popupLeft� �n��
�n 
!BtM� o   C D�m�m 0 	thebottom 	theBottom� �l� 
�l 
!PuW� o   E F�k�k 0 
popupwidth 
popupWidth  �j�i
�j 
!MuD o   I J�h�h 0 defaultvalue defaultValue�i  � J   < @  o   < =�g�g 0 thepopup thePopup �f o   = >�e�e 0 thetop theTop�f  �s  ��  � k   b �  r   b �	
	 I     �d
�d .!ASuCrLanull���     ctxt o   b c�c�c 0 thelabel theLabel �b
�b 
!Lli o   j k�a�a 0 theleft theLeft �`
�` 
!BtM l  l o�_�^ [   l o o   l m�]�] 0 	thebottom 	theBottom m   m n�\�\ �_  �^   �[
�[ 
!MxW l  p u�Z�Y \   p u \   p s o   p q�X�X 0 	popupleft 	popupLeft o   q r�W�W 0 theleft theLeft m   s t�V�V �Z  �Y   �U
�U 
!AlI m   v y�T
�T !LaL!LrI �S�R
�S 
!MuL m   z {�Q
�Q boovfals�R  
 J   d i   o   d e�P�P 0 thelabel theLabel  !"! o   e f�O�O 0 thetop theTop" #�N# o   f g�M�M 0 newwidth newWidth�N   $�L$ r   � �%&% I     �K'(
�K .!ASuCrPonull���     ****' o   � ��J�J 0 	entrylist 	entryList( �I)*
�I 
!Lli) o   � ��H�H 0 	popupleft 	popupLeft* �G+,
�G 
!BtM+ o   � ��F�F 0 	thebottom 	theBottom, �E-.
�E 
!PuW- o   � ��D�D 0 
popupwidth 
popupWidth. �C/�B
�C 
!MuD/ o   � ��A�A 0 defaultvalue defaultValue�B  & J   � �00 121 o   � ��@�@ 0 thepopup thePopup2 3�?3 o   � ��>�> 0 thetop theTop�?  �L  � 4�=4 L   � �55 J   � �66 787 o   � ��<�< 0 thepopup thePopup8 9:9 o   � ��;�; 0 thelabel theLabel: ;<; o   � ��:�: 0 thetop theTop< =�9= o   � ��8�8 0 	popupleft 	popupLeft�9  �=  � >?> l     �7�6�5�7  �6  �5  ? @A@ l     �4�3�2�4  �3  �2  A BCB l     �1DE�1  D 0 * initialState is boolean for initial state   E �FF T   i n i t i a l S t a t e   i s   b o o l e a n   f o r   i n i t i a l   s t a t eC GHG i  HKIJI I     �0KL
�0 .!ASuCrCbnull���     ****K o      �/�/ 0 
checktitle 
checkTitleL �.MN
�. 
!LliM |�-�,O�+P�-  �,  O o      �*�* 0 theleft theLeft�+  P m      �)�)  N �(QR
�( 
!BtMQ o      �'�' 0 	thebottom 	theBottomR �&ST
�& 
!MxWS o      �%�% 0 thewidth theWidthT �$U�#
�$ 
!IsTU |�"�!V� W�"  �!  V o      �� 0 initialstate initialState�   W m      �
� boovfals�#  J k     2XX YZY Z     +[\�][ c     ^_^ n    	`a` I    	���� 0 ismainthread isMainThread�  �  a o     �� 0 nsthread NSThread_ m   	 
�
� 
bool\ n   bcb I    �d�� 60 createcheckboxmainthread_ createCheckboxMainThread_d e�e J    ff ghg o    �� 0 
checktitle 
checkTitleh iji o    �� 0 theleft theLeftj klk o    �� 0 	thebottom 	theBottoml mnm o    �� 0 thewidth theWidthn o�o o    �� 0 initialstate initialState�  �  �  c  f    �  ] n   +pqp I    +�r�� n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_r sts m    uu �vv 2 c r e a t e C h e c k b o x M a i n T h r e a d :t wxw J    &yy z{z o     �� 0 
checktitle 
checkTitle{ |}| o     !�� 0 theleft theLeft} ~~ o   ! "�
�
 0 	thebottom 	theBottom ��� o   " #�	�	 0 thewidth theWidth� ��� o   # $�� 0 initialstate initialState�  x ��� m   & '�
� boovtrue�  �  q  f    Z ��� L   , 2�� o   , 1�� 0 handlerresult handlerResult�  H ��� l     ��� �  �  �   � ��� l     ������  � � � makes label and checkbox; if checkboxLeft is less than leftInset, the label will start at leftInset, with the checkbox following;   � ���   m a k e s   l a b e l   a n d   c h e c k b o x ;   i f   c h e c k b o x L e f t   i s   l e s s   t h a n   l e f t I n s e t ,   t h e   l a b e l   w i l l   s t a r t   a t   l e f t I n s e t ,   w i t h   t h e   c h e c k b o x   f o l l o w i n g ;� ��� l     ������  � � | if checkboxLeft is more than leftInset, the checkbox will start at checkboxLeft, and the label will will appear to its left   � ��� �   i f   c h e c k b o x L e f t   i s   m o r e   t h a n   l e f t I n s e t ,   t h e   c h e c k b o x   w i l l   s t a r t   a t   c h e c k b o x L e f t ,   a n d   t h e   l a b e l   w i l l   w i l l   a p p e a r   t o   i t s   l e f t� ��� i  LO��� I     ����
�� .!ASuCrLcnull���     ctxt� o      ���� 0 
checktitle 
checkTitle� ����
�� 
!Lli� |����������  ��  � o      ���� 0 theleft theLeft��  � m      ����  � ����
�� 
!BtM� o      ���� 0 	thebottom 	theBottom� ����
�� 
!MxW� o      ���� 0 thewidth theWidth� ����
�� 
!LtX� o      ���� 0 thelabel theLabel� ����
�� 
!CbL� o      ���� 0 checkboxleft checkboxLeft� �����
�� 
!IsT� |����������  ��  � o      ���� 0 
checkstate 
checkState��  � m      ��
�� boovfals��  � k     ��� ��� Z     ������� B     ��� o     ���� 0 checkboxleft checkboxLeft� o    ���� 0 theleft theLeft� k    k�� ��� r    3��� I     ����
�� .!ASuCrLanull���     ctxt� o    ���� 0 thelabel theLabel� ����
�� 
!Lli� o    ���� 0 theleft theLeft� ����
�� 
!BtM� l   ������ [    ��� o    ���� 0 	thebottom 	theBottom� m    ���� ��  ��  � ����
�� 
!MxW� o    ���� 0 thewidth theWidth� ����
�� 
!AlI� m    ��
�� !LaL!LlE� �����
�� 
!MuL� m    ��
�� boovfals��  � J    �� ��� o    	���� 0 thelabel theLabel� ��� o   	 
���� 0 thetop theTop� ���� o   
 ���� 0 newwidth newWidth��  � ��� r   4 9��� l  4 7������ [   4 7��� o   4 5���� 0 newwidth newWidth� m   5 6���� ��  ��  � o      ���� 0 checkboxleft checkboxLeft� ���� r   : k��� I     ����
�� .!ASuCrCbnull���     ****� o   : ;���� 0 
checktitle 
checkTitle� ����
�� 
!Lli� o   B C���� 0 checkboxleft checkboxLeft� ����
�� 
!BtM� o   D E���� 0 	thebottom 	theBottom� ����
�� 
!MxW� l  F K������ \   F K��� \   F I��� o   F G���� 0 thewidth theWidth� o   G H���� 0 newwidth newWidth� m   I J���� ��  ��  � �����
�� 
!IsT� o   N O���� 0 
checkstate 
checkState��  � J   < A�� ��� o   < =���� 0 thecheckbox theCheckbox� ��� o   = >���� 0 thetop theTop� ���� o   > ?���� 0 thewidth theWidth��  ��  ��  � k   n ��� ��� r   n ���� I     ����
�� .!ASuCrLanull���     ctxt� o   n o���� 0 thelabel theLabel� ����
�� 
!Lli� o   v w���� 0 theleft theLeft� ����
�� 
!BtM� l  x {������ [   x {��� o   x y���� 0 	thebottom 	theBottom� m   y z���� ��  ��  � ����
�� 
!MxW� l  | ������� \   | ���� \   | ��� o   | }���� 0 checkboxleft checkboxLeft� o   } ~���� 0 theleft theLeft� m    ����� ��  ��  � ����
�� 
!AlI� m   � ���
�� !LaL!LrI� �����
�� 
!MuL� m   � ���
�� boovfals��  � J   p u�� �	 � o   p q���� 0 thelabel theLabel	  			 o   q r���� 0 thetop theTop	 	��	 o   r s���� 0 newwidth newWidth��  � 	��	 r   � �			 I     ��		
�� .!ASuCrCbnull���     ****	 o   � ����� 0 
checktitle 
checkTitle	 ��			

�� 
!Lli		 o   � ����� 0 checkboxleft checkboxLeft	
 ��		
�� 
!BtM	 o   � ����� 0 	thebottom 	theBottom	 ��		
�� 
!MxW	 l  � �	����	 \   � �			 o   � ����� 0 thewidth theWidth	 o   � ����� 0 checkboxleft checkboxLeft��  ��  	 ��	��
�� 
!IsT	 o   � ����� 0 
checkstate 
checkState��  	 J   � �		 			 o   � ����� 0 thecheckbox theCheckbox	 			 o   � ����� 0 thetop theTop	 	��	 o   � ����� 0 thewidth theWidth��  ��  � 	��	 L   � �		 J   � �		 			 o   � ����� 0 thecheckbox theCheckbox	 			 o   � ����� 0 thelabel theLabel	 	 	!	  o   � ����� 0 thetop theTop	! 	"��	" o   � ����� 0 checkboxleft checkboxLeft��  ��  � 	#	$	# l     ��������  ��  ��  	$ 	%	&	% l     ��	'	(��  	' Q K popsUp is true for a popup path control, false for a standard path control   	( �	)	) �   p o p s U p   i s   t r u e   f o r   a   p o p u p   p a t h   c o n t r o l ,   f a l s e   f o r   a   s t a n d a r d   p a t h   c o n t r o l	& 	*	+	* i  PS	,	-	, I     ��	.	/
�� .!ASuCrPcnull���     ctxt	. o      ���� 0 thepath thePath	/ �	0	1
� 
!Lli	0 |�~�}	2�|	3�~  �}  	2 o      �{�{ 0 theleft theLeft�|  	3 m      �z�z  	1 �y	4	5
�y 
!BtM	4 o      �x�x 0 	thebottom 	theBottom	5 �w	6	7
�w 
!CwI	6 o      �v�v 0 thewidth theWidth	7 �u	8�t
�u 
!PoP	8 |�s�r	9�q	:�s  �r  	9 o      �p�p 0 
popsupbool 
popsUpBool�q  	: m      �o
�o boovtrue�t  	- k     2	;	; 	<	=	< Z     +	>	?�n	@	> c     	A	B	A n    		C	D	C I    	�m�l�k�m 0 ismainthread isMainThread�l  �k  	D o     �j�j 0 nsthread NSThread	B m   	 
�i
�i 
bool	? n   	E	F	E I    �h	G�g�h <0 createpathcontrolmainthread_ createPathControlMainThread_	G 	H�f	H J    	I	I 	J	K	J o    �e�e 0 thepath thePath	K 	L	M	L o    �d�d 0 theleft theLeft	M 	N	O	N o    �c�c 0 	thebottom 	theBottom	O 	P	Q	P o    �b�b 0 thewidth theWidth	Q 	R�a	R o    �`�` 0 
popsupbool 
popsUpBool�a  �f  �g  	F  f    �n  	@ n   +	S	T	S I    +�_	U�^�_ n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_	U 	V	W	V m    	X	X �	Y	Y 8 c r e a t e P a t h C o n t r o l M a i n T h r e a d :	W 	Z	[	Z J    &	\	\ 	]	^	] o     �]�] 0 thepath thePath	^ 	_	`	_ o     !�\�\ 0 theleft theLeft	` 	a	b	a o   ! "�[�[ 0 	thebottom 	theBottom	b 	c	d	c o   " #�Z�Z 0 thewidth theWidth	d 	e�Y	e o   # $�X�X 0 
popsupbool 
popsUpBool�Y  	[ 	f�W	f m   & '�V
�V boovtrue�W  �^  	T  f    	= 	g�U	g L   , 2	h	h o   , 1�T�T 0 handlerresult handlerResult�U  	+ 	i	j	i l     �S�R�Q�S  �R  �Q  	j 	k	l	k i  TW	m	n	m I     �P	o	p
�P .!ASuCrP+null���     ctxt	o o      �O�O 0 thepath thePath	p �N	q	r
�N 
!Lli	q |�M�L	s�K	t�M  �L  	s o      �J�J 0 theleft theLeft�K  	t m      �I�I  	r �H	u	v
�H 
!BtM	u o      �G�G 0 	thebottom 	theBottom	v �F	w	x
�F 
!CwI	w o      �E�E 0 thewidth theWidth	x �D	y	z
�D 
!PoP	y |�C�B	{�A	|�C  �B  	{ o      �@�@ 0 
popsupbool 
popsUpBool�A  	| m      �?
�? boovtrue	z �>	}�=
�> 
!LtX	} o      �<�< 0 thelabel theLabel�=  	n k     Z	~	~ 		�	 r     !	�	�	� I     �;	�	�
�; .!ASuCrPcnull���     ctxt	� o     �:�: 0 thepath thePath	� �9	�	�
�9 
!Lli	� o    �8�8 0 theleft theLeft	� �7	�	�
�7 
!BtM	� o   	 
�6�6 0 	thebottom 	theBottom	� �5	�	�
�5 
!CwI	� o    �4�4 0 thewidth theWidth	� �3	��2
�3 
!PoP	� o    �1�1 0 
popsupbool 
popsUpBool�2  	� J    	�	� 	�	�	� o    �0�0  0 thepathcontrol thePathControl	� 	��/	� o    �.�. 0 thetop theTop�/  	� 	�	�	� r   " S	�	�	� I     �-	�	�
�- .!ASuCrLanull���     ctxt	� o   " #�,�, 0 thelabel theLabel	� �+	�	�
�+ 
!Lli	� o   * +�*�* 0 theleft theLeft	� �)	�	�
�) 
!BtM	� l  , /	��(�'	� [   , /	�	�	� o   , -�&�& 0 thetop theTop	� m   - .�%�% �(  �'  	� �$	�	�
�$ 
!MxW	� o   0 1�#�# 0 thewidth theWidth	� �"	�	�
�" 
!AlI	� m   2 3�!
�! !LaL!LlE	� � 	��
�  
!MuL	� m   6 7�
� boovfals�  	� J   $ )	�	� 	�	�	� o   $ %�� 0 thelabel theLabel	� 	�	�	� o   % &�� 0 thetop theTop	� 	��	� o   & '�� 0 newwidth newWidth�  	� 	��	� L   T Z	�	� J   T Y	�	� 	�	�	� o   T U��  0 thepathcontrol thePathControl	� 	�	�	� o   U V�� 0 thelabel theLabel	� 	��	� o   V W�� 0 thetop theTop�  �  	l 	�	�	� l     ����  �  �  	� 	�	�	� i  X[	�	�	� I     �	�	�
� .!ASuCrManull���     ****	� o      �� 0 listofnames listOfNames	� �	�	�
� 
!Lli	� |��	��	��  �  	� o      �� 0 theleft theLeft�  	� m      �
�
  	� �		�	�
�	 
!BtM	� o      �� 0 	thebottom 	theBottom	� �	�	�
� 
!MxW	� o      �� 0 thewidth theWidth	� �	�	�
� 
!VeR	� |��	��	��  �  	� o      �� 0 
isvertical 
isVertical�  	� m      � 
�  boovtrue	� ��	���
�� 
!MuD	� |����	���	���  ��  	� o      ���� 0 defaultvalue defaultValue��  	� m      ���� ��  	� k     4	�	� 	�	�	� Z     -	�	���	�	� c     	�	�	� n    		�	�	� I    	�������� 0 ismainthread isMainThread��  ��  	� o     ���� 0 nsthread NSThread	� m   	 
��
�� 
bool	� n   	�	�	� I    ��	����� 20 creatematrixmainthread_ createMatrixMainThread_	� 	���	� J    	�	� 	�	�	� o    ���� 0 listofnames listOfNames	� 	�	�	� o    ���� 0 theleft theLeft	� 	�	�	� o    ���� 0 	thebottom 	theBottom	� 	�	�	� o    ���� 0 thewidth theWidth	� 	�	�	� o    ���� 0 
isvertical 
isVertical	� 	���	� o    ���� 0 defaultvalue defaultValue��  ��  ��  	�  f    ��  	� n   -	�	�	� I    -��	����� n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_	� 	�	�	� m     	�	� �	�	� . c r e a t e M a t r i x M a i n T h r e a d :	� 	�	�	� J     (	�	� 	�	�	� o     !���� 0 listofnames listOfNames	� 	�	�	� o   ! "���� 0 theleft theLeft	� 	�	�	� o   " #���� 0 	thebottom 	theBottom	� 	�	�	� o   # $���� 0 thewidth theWidth	� 	�	�	� o   $ %���� 0 
isvertical 
isVertical	� 	���	� o   % &���� 0 defaultvalue defaultValue��  	� 	���	� m   ( )��
�� boovtrue��  ��  	�  f    	� 	���	� L   . 4	�	� o   . 3���� 0 handlerresult handlerResult��  	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� l     ��	�	���  	� � | makes label and matrix; if matrixLeft is less than leftInset, the label will start at leftInset, with the matrix following;   	� �	�	� �   m a k e s   l a b e l   a n d   m a t r i x ;   i f   m a t r i x L e f t   i s   l e s s   t h a n   l e f t I n s e t ,   t h e   l a b e l   w i l l   s t a r t   a t   l e f t I n s e t ,   w i t h   t h e   m a t r i x   f o l l o w i n g ;	� 
 

  l     ��

��  
 | v if matrixLeft is more than leftInset, the matrix will start at matrixLeft, and the label will will appear to its left   
 �

 �   i f   m a t r i x L e f t   i s   m o r e   t h a n   l e f t I n s e t ,   t h e   m a t r i x   w i l l   s t a r t   a t   m a t r i x L e f t ,   a n d   t h e   l a b e l   w i l l   w i l l   a p p e a r   t o   i t s   l e f t
 


 i  \_


 I     ��
	


�� .!ASuCrLmnull���     ****
	 o      ���� 0 listofnames listOfNames

 ��


�� 
!Lli
 |����
��
��  ��  
 o      ���� 0 theleft theLeft��  
 m      ����  
 ��


�� 
!BtM
 o      ���� 0 	thebottom 	theBottom
 ��


�� 
!MxW
 o      ���� 0 thewidth theWidth
 ��


�� 
!VeR
 |����
��
��  ��  
 o      ���� 0 
isvertical 
isVertical��  
 m      ��
�� boovtrue
 ��


�� 
!MxL
 o      ���� 0 
matrixleft 
matrixLeft
 ��


�� 
!LtX
 o      ���� 0 thelabel theLabel
 ��
��
�� 
!MuD
 |����
��
��  ��  
 o      ���� 0 defaultvalue defaultValue��  
 m      ���� ��  
 k     �

 

 
 Z     �
!
"��
#
! B     
$
%
$ o     ���� 0 
matrixleft 
matrixLeft
% o    ���� 0 theleft theLeft
" k    o
&
& 
'
(
' r    3
)
*
) I     ��
+
,
�� .!ASuCrLanull���     ctxt
+ o    ���� 0 thelabel theLabel
, ��
-
.
�� 
!Lli
- o    ���� 0 theleft theLeft
. ��
/
0
�� 
!BtM
/ l   
1����
1 [    
2
3
2 o    ���� 0 	thebottom 	theBottom
3 m    ���� ��  ��  
0 ��
4
5
�� 
!MxW
4 o    ���� 0 thewidth theWidth
5 ��
6
7
�� 
!AlI
6 m    ��
�� !LaL!LlE
7 ��
8��
�� 
!MuL
8 m    ��
�� boovfals��  
* J    
9
9 
:
;
: o    	���� 0 thelabel theLabel
; 
<
=
< o   	 
���� 0 thetop theTop
= 
>��
> o   
 ���� 0 newwidth newWidth��  
( 
?
@
? r   4 ;
A
B
A l  4 9
C����
C [   4 9
D
E
D [   4 7
F
G
F o   4 5���� 0 newwidth newWidth
G m   5 6���� 
E o   7 8���� 0 theleft theLeft��  ��  
B o      ���� 0 
matrixleft 
matrixLeft
@ 
H��
H r   < o
I
J
I I     ��
K
L
�� .!ASuCrManull���     ****
K o   < =���� 0 listofnames listOfNames
L ��
M
N
�� 
!Lli
M o   D E���� 0 
matrixleft 
matrixLeft
N ��
O
P
�� 
!BtM
O o   F G���� 0 	thebottom 	theBottom
P ��
Q
R
�� 
!MxW
Q l  H M
S����
S \   H M
T
U
T \   H K
V
W
V o   H I���� 0 thewidth theWidth
W o   I J���� 0 newwidth newWidth
U m   K L���� ��  ��  
R ��
X
Y
�� 
!VeR
X o   P Q���� 0 
isvertical 
isVertical
Y ��
Z��
�� 
!MuD
Z o   T U���� 0 defaultvalue defaultValue��  
J J   > C
[
[ 
\
]
\ o   > ?���� 0 	thematrix 	theMatrix
] 
^
_
^ o   ? @���� 0 thetop theTop
_ 
`��
` o   @ A���� 0 thewidth theWidth��  ��  ��  
# k   r �
a
a 
b
c
b r   r �
d
e
d I     ��
f
g
�� .!ASuCrLanull���     ctxt
f o   r s���� 0 thelabel theLabel
g ��
h
i
�� 
!Lli
h o   z {���� 0 theleft theLeft
i ��
j
k
�� 
!BtM
j l  | 
l����
l [   | 
m
n
m o   | }�� 0 	thebottom 	theBottom
n m   } ~�~�~ ��  ��  
k �}
o
p
�} 
!MxW
o l  � �
q�|�{
q \   � �
r
s
r \   � �
t
u
t o   � ��z�z 0 
matrixleft 
matrixLeft
u o   � ��y�y 0 theleft theLeft
s m   � ��x�x �|  �{  
p �w
v
w
�w 
!AlI
v m   � ��v
�v !LaL!LrI
w �u
x�t
�u 
!MuL
x m   � ��s
�s boovfals�t  
e J   t y
y
y 
z
{
z o   t u�r�r 0 thelabel theLabel
{ 
|
}
| o   u v�q�q 0 thetop theTop
} 
~�p
~ o   v w�o�o 0 newwidth newWidth�p  
c 
�n
 r   � �
�
�
� I     �m
�
�
�m .!ASuCrManull���     ****
� o   � ��l�l 0 listofnames listOfNames
� �k
�
�
�k 
!Lli
� l  � �
��j�i
� o   � ��h�h 0 
matrixleft 
matrixLeft�j  �i  
� �g
�
�
�g 
!BtM
� o   � ��f�f 0 	thebottom 	theBottom
� �e
�
�
�e 
!MxW
� l  � �
��d�c
� \   � �
�
�
� o   � ��b�b 0 thewidth theWidth
� o   � ��a�a 0 
matrixleft 
matrixLeft�d  �c  
� �`
�
�
�` 
!VeR
� o   � ��_�_ 0 
isvertical 
isVertical
� �^
��]
�^ 
!MuD
� o   � ��\�\ 0 defaultvalue defaultValue�]  
� J   � �
�
� 
�
�
� o   � ��[�[ 0 	thematrix 	theMatrix
� 
�
�
� o   � ��Z�Z 0 thetop theTop
� 
��Y
� o   � ��X�X 0 thewidth theWidth�Y  �n  
  
�
�
� n  � �
�
�
� I   � ��W
��V�W 0 	setframe_ 	setFrame_
� 
��U
� l  � �
��T�S
� n  � �
�
�
� I   � ��R
��Q�R 0 nsoffsetrect NSOffsetRect
� 
�
�
� n  � �
�
�
� I   � ��P�O�N�P 	0 frame  �O  �N  
� o   � ��M�M 0 thelabel theLabel
� 
�
�
� m   � ��L�L  
� 
��K
� \   � �
�
�
� \   � �
�
�
� o   � ��J�J 0 thetop theTop
� o   � ��I�I 0 	thebottom 	theBottom
� m   � ��H�H �K  �Q  
� m   � ��G
�G misccura�T  �S  �U  �V  
� o   � ��F�F 0 thelabel theLabel
� 
��E
� L   � �
�
� J   � �
�
� 
�
�
� o   � ��D�D 0 	thematrix 	theMatrix
� 
�
�
� o   � ��C�C 0 thelabel theLabel
� 
�
�
� o   � ��B�B 0 thetop theTop
� 
��A
� o   � ��@�@ 0 
matrixleft 
matrixLeft�A  �E  
 
�
�
� l     �?�>�=�?  �>  �=  
� 
�
�
� l     �<
�
��<  
�   makes horizontal rule   
� �
�
� ,   m a k e s   h o r i z o n t a l   r u l e
� 
�
�
� i  `c
�
�
� I     �;
�
�
�; .!ASuCrRunull���     long
� o      �:�: 0 	thebottom 	theBottom
� �9
�
�
�9 
!Lli
� |�8�7
��6
��8  �7  
� o      �5�5 0 theleft theLeft�6  
� m      �4�4  
� �3
��2
�3 
!RwI
� o      �1�1 0 thewidth theWidth�2  
� k     .
�
� 
�
�
� Z     '
�
��0
�
� c     
�
�
� n    	
�
�
� I    	�/�.�-�/ 0 ismainthread isMainThread�.  �-  
� o     �,�, 0 nsthread NSThread
� m   	 
�+
�+ 
bool
� n   
�
�
� I    �*
��)�* .0 createrulemainthread_ createRuleMainThread_
� 
��(
� J    
�
� 
�
�
� o    �'�' 0 	thebottom 	theBottom
� 
�
�
� o    �&�& 0 theleft theLeft
� 
��%
� o    �$�$ 0 thewidth theWidth�%  �(  �)  
�  f    �0  
� n   '
�
�
� I    '�#
��"�# n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_
� 
�
�
� m    
�
� �
�
� * c r e a t e R u l e M a i n T h r e a d :
� 
�
�
� J    "
�
� 
�
�
� o    �!�! 0 	thebottom 	theBottom
� 
�
�
� o    � �  0 theleft theLeft
� 
��
� o     �� 0 thewidth theWidth�  
� 
��
� m   " #�
� boovtrue�  �"  
�  f    
� 
��
� L   ( .
�
� o   ( -�� 0 handlerresult handlerResult�  
� 
�
�
� l     ����  �  �  
� 
�
�
� i  dg
�
�
� I     �
�
�
� .!ASuCrIvnull���     ctxt
� o      �� 0 	posixpath 	posixPath
� �
�
�
� 
!Lli
� |��
��
��  �  
� o      �� 0 theleft theLeft�  
� m      ��  
� �
�
�
� 
!BtM
� o      �� 0 	thebottom 	theBottom
� �
�
�
� 
!FwV
� o      �� 0 	viewwidth 	viewWidth
� �

�
�
�
 
!EvH
� o      �	�	 0 
viewheight 
viewHeight
� � 
� 
!MsC  |����  �   o      �� 0 
imagescale 
imageScale�   m      �
� !IsC!IsD ��
� 
!MsA |� �����   ��   o      ����  0 imagealignment imageAlignment��   m      ��
�� !LaL!LcE�  
� k     6 	 Z     /
��
 c      n    	 I    	�������� 0 ismainthread isMainThread��  ��   o     ���� 0 nsthread NSThread m   	 
��
�� 
bool n    I    ������ 80 createimageviewmainthread_ createImageViewMainThread_ �� J      o    ���� 0 	posixpath 	posixPath  o    ���� 0 theleft theLeft  o    ���� 0 	thebottom 	theBottom  o    ���� 0 	viewwidth 	viewWidth  o    ���� 0 
viewheight 
viewHeight  !  o    ���� 0 
imagescale 
imageScale! "��" o    ����  0 imagealignment imageAlignment��  ��  ��    f    ��   n   /#$# I     /��%���� n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_% &'& m     !(( �)) 4 c r e a t e I m a g e V i e w M a i n T h r e a d :' *+* J   ! *,, -.- o   ! "���� 0 	posixpath 	posixPath. /0/ o   " #���� 0 theleft theLeft0 121 o   # $���� 0 	thebottom 	theBottom2 343 o   $ %���� 0 	viewwidth 	viewWidth4 565 o   % &���� 0 
viewheight 
viewHeight6 787 o   & '���� 0 
imagescale 
imageScale8 9��9 o   ' (����  0 imagealignment imageAlignment��  + :��: m   * +��
�� boovtrue��  ��  $  f     	 ;��; L   0 6<< o   0 5���� 0 handlerresult handlerResult��  
� =>= l     ��������  ��  ��  > ?@? i  hkABA I      ��C���� :0 fontofcontrolsize_boldtype_ fontOfControlSize_boldType_C DED o      ���� 0 controlsize controlSizeE F��F o      ���� 0 boldtype boldType��  ��  B k     vGG HIH Z     XJKL��J =    MNM o     ���� 0 controlsize controlSizeN m    ��
�� !CsZ!CrLK r    OPO n   QRQ I    ��S���� >0 systemfontsizeforcontrolsize_ systemFontSizeForControlSize_S T��T o    ���� ,0 nsregularcontrolsize NSRegularControlSize��  ��  R o    ���� 0 nsfont NSFontP o      ���� 0 thefontsize theFontSizeL UVU =    WXW o    ���� 0 controlsize controlSizeX m    ��
�� !CsZ!CmcV YZY r    /[\[ n   -]^] I   $ -��_���� >0 systemfontsizeforcontrolsize_ systemFontSizeForControlSize__ `��` o   $ )���� &0 nsminicontrolsize NSMiniControlSize��  ��  ^ o    $���� 0 nsfont NSFont\ o      ���� 0 thefontsize theFontSizeZ aba =   2 5cdc o   2 3���� 0 controlsize controlSized m   3 4��
�� !CsZ!CsCb efe r   8 Hghg n  8 Fiji I   = F��k���� >0 systemfontsizeforcontrolsize_ systemFontSizeForControlSize_k l��l o   = B���� (0 nssmallcontrolsize NSSmallControlSize��  ��  j o   8 =���� 0 nsfont NSFonth o      ���� 0 thefontsize theFontSizef mnm =   K Nopo o   K L���� 0 controlsize controlSizep m   L M��
�� !CsZ!CrCn q��q r   Q Trsr m   Q R���� s o      ���� 0 thefontsize theFontSize��  ��  I t��t Z   Y vuv��wu o   Y Z���� 0 boldtype boldTypev L   ] hxx n  ] gyzy I   b g��{���� .0 boldsystemfontofsize_ boldSystemFontOfSize_{ |��| o   b c���� 0 thefontsize theFontSize��  ��  z o   ] b���� 0 nsfont NSFont��  w L   k v}} n  k u~~ I   p u������� &0 systemfontofsize_ systemFontOfSize_� ���� o   p q���� 0 thefontsize theFontSize��  ��   o   k p���� 0 nsfont NSFont��  @ ��� l     ��������  ��  ��  � ��� i  lo��� I      ������� B0 displayenhancedalertmainthread_ displayEnhancedAlertMainThread_� ���� o      ���� 0 thearg theArg��  ��  � k    �� ��� r     C��� c     ��� o     ���� 0 thearg theArg� m    ��
�� 
list� J      �� ��� o      ���� 0 maintext mainText� ��� o      ����  0 theexplanation theExplanation� ��� o      ���� 0 stylenum styleNum� ��� o      ���� 0 buttonslist buttonsList� ��� o      ���� "0 showsuppression showSuppression� ��� o      ���� 0 giveup giveUp� ��� o      ���� 0 thewidth theWidth� ��� o      ���� 0 	theheight 	theHeight� ���� o      ���� 0 controlslist controlsList��  � ��� r   D ]��� n  D [��� I   M [�������  0 initwithframe_ initWithFrame_� ���� J   M W�� ��� J   M Q�� ��� m   M N����  � ���� m   N O����  ��  � ���� J   Q U�� ��� o   Q R���� 0 thewidth theWidth� ���� o   R S���� 0 	theheight 	theHeight��  ��  ��  ��  � n  D M��� I   I M�������� 	0 alloc  ��  ��  � o   D I���� 0 nsview NSView� o      ���� $0 theaccessoryview theAccessoryView� ��� n  ^ d��� I   _ d������� 0 setsubviews_ setSubviews_� ���� o   _ `���� 0 controlslist controlsList��  ��  � o   ^ _���� $0 theaccessoryview theAccessoryView� ��� l  e e������  � D > reverse buttons because they get added in reverse order cf AS   � ��� |   r e v e r s e   b u t t o n s   b e c a u s e   t h e y   g e t   a d d e d   i n   r e v e r s e   o r d e r   c f   A S� ��� r   e j��� n   e h��� 1   f h��
�� 
rvse� o   e f���� 0 buttonslist buttonsList� o      �� 0 buttonslist buttonsList� ��� l  k k�~���~  �   create an alert   � ���     c r e a t e   a n   a l e r t� ��� r   k z��� n  k x��� I   t x�}�|�{�} 0 init  �|  �{  � n  k t��� I   p t�z�y�x�z 	0 alloc  �y  �x  � o   k p�w�w 0 nsalert NSAlert� o      �v�v 0 thealert theAlert� ��� l  { {�u���u  �   set up alert   � ���    s e t   u p   a l e r t� ��� O   { ���� k    ��� ��� n   ���� I   � ��t��s�t  0 setalertstyle_ setAlertStyle_� ��r� o   � ��q�q 0 stylenum styleNum�r  �s  �  g    �� ��� n  � ���� I   � ��p��o�p "0 setmessagetext_ setMessageText_� ��n� o   � ��m�m 0 maintext mainText�n  �o  �  g   � �� ��� n  � ���� I   � ��l��k�l *0 setinformativetext_ setInformativeText_� ��j� o   � ��i�i  0 theexplanation theExplanation�j  �k  �  g   � �� ��� X   � ���h�� l  � ���g�f� n  � ���� I   � ��e��d�e *0 addbuttonwithtitle_ addButtonWithTitle_� ��c� o   � ��b�b 0 anentry anEntry�c  �d  �  g   � ��g  �f  �h 0 anentry anEntry� o   � ��a�a 0 buttonslist buttonsList� ��� n  � ���� I   � ��` �_�` 80 setshowssuppressionbutton_ setShowsSuppressionButton_  �^ o   � ��]�] "0 showsuppression showSuppression�^  �_  �  g   � ��  n  � � I   � ��\�[�\ &0 setaccessoryview_ setAccessoryView_ �Z o   � ��Y�Y $0 theaccessoryview theAccessoryView�Z  �[    g   � � �X n  � �	
	 l  � ��W�V n  � � I   � ��U�T�U B0 setautorecalculateskeyviewloop_ setAutorecalculatesKeyViewLoop_ �S m   � ��R
�R boovtrue�S  �T   I   � ��Q�P�O�Q 
0 window  �P  �O  �W  �V  
  g   � ��X  � o   { |�N�N 0 thealert theAlert�  l  � ��M�M   p j if giveUp value > 0, tell the app to abort any modal event loop after that time, and thus close the panel    � �   i f   g i v e U p   v a l u e   >   0 ,   t e l l   t h e   a p p   t o   a b o r t   a n y   m o d a l   e v e n t   l o o p   a f t e r   t h a t   t i m e ,   a n d   t h u s   c l o s e   t h e   p a n e l  Z  � ��L�K ?   � � o   � ��J�J 0 giveup giveUp m   � ��I�I   n  � � I   � ��H�G�H `0 .performselector_withobject_afterdelay_inmodes_ .performSelector_withObject_afterDelay_inModes_  m   � �   �!!  a b o r t M o d a l "#" l  � �$�F�E$ m   � ��D
�D 
msng�F  �E  # %&% o   � ��C�C 0 giveup giveUp& '�B' J   � �(( )�A) o   � ��@�@ 20 nsmodalpanelrunloopmode NSModalPanelRunLoopMode�A  �B  �G   o   � ��?�? 0 nsapp NSApp�L  �K   *+* r   � �,-, n  � �./. I   � ��>�=�<�> 0 runmodal runModal�=  �<  / o   � ��;�; 0 thealert theAlert- n     010 o   � ��:�: 0 
returncode 
returnCode1  f   � �+ 2�92 r   �343 o   � ��8�8 0 thealert theAlert4 n     565 o   � �7�7 0 handlerresult handlerResult6  f   � ��9  � 787 l     �6�5�4�6  �5  �4  8 9:9 i  ps;<; I      �3=�2�3 D0  prepareenhancedwindowmainthread_  prepareEnhancedWindowMainThread_= >�1> o      �0�0 0 thearg theArg�1  �2  < k    p?? @A@ r     CBCB c     DED o     �/�/ 0 thearg theArgE m    �.
�. 
listC J      FF GHG o      �-�- 0 windowtitle windowTitleH IJI o      �,�, 0 thewidth theWidthJ KLK o      �+�+ 0 	theheight 	theHeightL MNM o      �*�* 0 controlslist controlsListN OPO o      �)�) 0 giveup giveUpP QRQ o      �(�( 0 defaultfield defaultFieldR STS o      �'�' 0 initposition initPositionT UVU o      �&�&  0 cancelleftflag cancelLeftFlagV W�%W o      �$�$ 0 
allbuttons 
allButtons�%  A XYX r   D OZ[Z [   D M\]\ o   D E�#�# 0 thewidth theWidth] ]   E L^_^ o   E J�"�" $0 accviewsideinset accViewSideInset_ m   J K�!�! [ o      � �  0 windowwidth windowWidthY `a` l  P P�bc�  b   position buttons   c �dd "   p o s i t i o n   b u t t o n sa efe r   P Yghg \   P Wiji o   P Q�� 0 windowwidth windowWidthj o   Q V�� "0 buttonsideinset buttonSideInseth o      �� 0 
buttonleft 
buttonLeftf klk X   Z �m�nm k   l �oo pqp r   l srsr n  l qtut I   m q���� 	0 frame  �  �  u o   l m�� 0 abutton aButtons o      �� 0 theframe theFrameq vwv Z   t �xy�zx =  t y{|{ n   t w}~} m   u w�
� 
pcls~ o   t u�� 0 theframe theFrame| m   w x�
� 
recoy r   | �� n   | ���� o    ��� 	0 width  � n   | ��� o   } �� 0 size  � o   | }�� 0 theframe theFrame� o      �� 0 buttonwidth buttonWidth�  z r   � ���� n   � ���� 4   � ���
� 
cobj� m   � ��� � n   � ���� 4   � ���
� 
cobj� m   � ��
�
 � o   � ��	�	 0 theframe theFrame� o      �� 0 buttonwidth buttonWidthw ��� r   � ���� \   � ���� o   � ��� 0 
buttonleft 
buttonLeft� o   � ��� 0 buttonwidth buttonWidth� o      �� 0 
buttonleft 
buttonLeft� ��� l  � ����� n  � ���� I   � ���� � "0 setframeorigin_ setFrameOrigin_� ���� J   � ��� ��� o   � ����� 0 
buttonleft 
buttonLeft� ���� o   � ����� 0 buttonyvalue buttonYValue��  ��  �   � o   � ����� 0 abutton aButton�  �  �  � 0 abutton aButtonn l  ] `������ n   ] `��� 1   ^ `��
�� 
rvse� o   ] ^���� 0 
allbuttons 
allButtons��  ��  l ��� l  � �������  � + % reposition first button if necessary   � ��� J   r e p o s i t i o n   f i r s t   b u t t o n   i f   n e c e s s a r y� ��� Z  � �������� F   � ���� o   � �����  0 cancelleftflag cancelLeftFlag� =  � ���� n  � ���� I   � ��������� 0 tag  ��  ��  � l  � ������� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 
allbuttons 
allButtons��  ��  � o   � ����� .0 nsmodalresponsecancel NSModalResponseCancel� n  � ���� I   � �������� "0 setframeorigin_ setFrameOrigin_� ���� J   � ��� ��� o   � ����� "0 buttonsideinset buttonSideInset� ���� o   � ����� 0 buttonyvalue buttonYValue��  ��  ��  � l  � ������� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 
allbuttons 
allButtons��  ��  ��  ��  � ��� l  � �������  � $  set up window and add buttons   � ��� <   s e t   u p   w i n d o w   a n d   a d d   b u t t o n s� ��� r   ���� n  �	��� I   �	������� \0 ,initwithcontentrect_stylemask_backing_defer_ ,initWithContentRect_styleMask_backing_defer_� ��� J   � ��� ��� J   � ��� ��� m   � �����  � ���� m   � �����  ��  � ���� J   � ��� ��� o   � ����� 0 windowwidth windowWidth� ���� [   � ���� [   � ���� o   � ����� 0 	theheight 	theHeight� o   � ����� 0 accviewyvalue accViewYValue� o   � ����� 0 accviewtopgap accViewTopGap��  ��  � ��� o   � ����� (0 nstitledwindowmask NSTitledWindowMask� ��� o   ����� 00 nsbackingstorebuffered NSBackingStoreBuffered� ���� m  ��
�� boovtrue��  ��  � n  � ���� I   � ��������� 	0 alloc  ��  ��  � o   � ����� 0 nswindow NSWindow� o      ���� 0 	thewindow 	theWindow� ��� n ��� I  ������� 0 	setlevel_ 	setLevel_� ���� o  ���� 20 nsmodalpanelwindowlevel NSModalPanelWindowLevel��  ��  � o  ���� 0 	thewindow 	theWindow� ��� r   ��� n ��� I  �������� 0 contentview contentView��  ��  � o  ���� 0 	thewindow 	theWindow� o      ���� "0 thiscontentview thisContentView� ��� n !)��� I  $)������� 0 setsubviews_ setSubviews_� ���� o  $%���� 0 
allbuttons 
allButtons��  ��  � o  !$���� "0 thiscontentview thisContentView� ��� l **������  � = 7 set up accessory view, add controls, and add to window   � ��� n   s e t   u p   a c c e s s o r y   v i e w ,   a d d   c o n t r o l s ,   a n d   a d d   t o   w i n d o w� ��� r  *M��� n *I� � I  3I������  0 initwithframe_ initWithFrame_ �� J  3E  J  3?  o  38���� $0 accviewsideinset accViewSideInset 	��	 o  8=���� 0 accviewyvalue accViewYValue��   
��
 J  ?C  o  ?@���� 0 thewidth theWidth �� o  @A���� 0 	theheight 	theHeight��  ��  ��  ��    n *3 I  /3�������� 	0 alloc  ��  ��   o  */���� 0 nsview NSView� o      ���� $0 theaccessoryview theAccessoryView�  n NV I  QV������ 0 setsubviews_ setSubviews_ �� o  QR���� 0 controlslist controlsList��  ��   o  NQ���� $0 theaccessoryview theAccessoryView  n Wa I  Za������ 0 addsubview_ addSubview_ �� o  Z]���� $0 theaccessoryview theAccessoryView��  ��   o  WZ���� "0 thiscontentview thisContentView  n bh  I  ch��!���� B0 setautorecalculateskeyviewloop_ setAutorecalculatesKeyViewLoop_! "��" m  cd��
�� boovtrue��  ��    o  bc���� 0 	thewindow 	theWindow #��# r  ip$%$ o  ij���� 0 	thewindow 	theWindow% n     &'& o  ko���� 0 handlerresult handlerResult'  f  jk��  : ()( l     ��������  ��  ��  ) *+* i  tw,-, I      ��.���� B0 showthewindowandwaitmainthread_ showTheWindowAndWaitMainThread_. /��/ o      ���� 0 thearg theArg��  ��  - k    S00 121 r     '343 c     565 o     ���� 0 thearg theArg6 m    ��
�� 
list4 J      77 898 o      ���� 0 	thewindow 	theWindow9 :;: o      ���� 0 defaultfield defaultField; <=< o      ���� 0 giveup giveUp= >?> o      ���� 0 initposition initPosition? @��@ o      ���� 0 windowtitle windowTitle��  2 ABA l  ( (��CD��  C 9 3 set first responder if necessary, then show window   D �EE f   s e t   f i r s t   r e s p o n d e r   i f   n e c e s s a r y ,   t h e n   s h o w   w i n d o wB FGF Z  ( 8HI����H >  ( +JKJ o   ( )���� 0 defaultfield defaultFieldK m   ) *��
�� 
msngI n  . 4LML I   / 4��N���� *0 makefirstresponder_ makeFirstResponder_N O��O o   / 0���� 0 defaultfield defaultField��  ��  M o   . /���� 0 	thewindow 	theWindow��  ��  G PQP l  9 9�RS�  R #  position window if necessary   S �TT :   p o s i t i o n   w i n d o w   i f   n e c e s s a r yQ UVU r   9 >WXW c   9 <YZY o   9 :�~�~ 0 initposition initPositionZ m   : ;�}
�} 
listX o      �|�| 0 initposition initPositionV [\[ Z   ? �]^�{_] =   ? C`a` o   ? @�z�z 0 initposition initPositiona J   @ B�y�y  ^ n  F Kbcb I   G K�x�w�v�x 
0 center  �w  �v  c o   F G�u�u 0 	thewindow 	theWindow�{  _ k   N �dd efe r   N ]ghg n  N [iji I   W [�t�s�r�t 	0 frame  �s  �r  j n  N Wklk I   S W�q�p�o�q 0 
mainscreen 
mainScreen�p  �o  l o   N S�n�n 0 nsscreen NSScreenh o      �m�m 0 screenframe screenFramef mnm Z   ^ �op�lqo =  ^ crsr n   ^ atut m   _ a�k
�k 
pclsu o   ^ _�j�j 0 screenframe screenFrames m   a b�i
�i 
recop r   f vvwv n   f ixyx o   g i�h�h 0 size  y o   f g�g�g 0 screenframe screenFramew K      zz �f{|�f 	0 width  { o      �e�e 0 screenwidth screenWidth| �d}�c�d 
0 height  } o      �b�b 0 screenheight screenHeight�c  �l  q r   y �~~ n   y }��� 4   z }�a�
�a 
cobj� m   { |�`�` � o   y z�_�_ 0 screenframe screenFrame J      �� ��� o      �^�^ 0 screenwidth screenWidth� ��]� o      �\�\ 0 screenheight screenHeight�]  n ��� r   � ���� \   � ���� o   � ��[�[ 0 screenheight screenHeight� l  � ���Z�Y� n   � ���� 4   � ��X�
�X 
cobj� m   � ��W�W � o   � ��V�V 0 initposition initPosition�Z  �Y  � o      �U�U 0 they theY� ��� r   � ���� n  � ���� I   � ��T�S�R�T 	0 frame  �S  �R  � o   � ��Q�Q 0 	thewindow 	theWindow� o      �P�P 0 windowframe windowFrame� ��� Z   � ����O�� =  � ���� n   � ���� m   � ��N
�N 
pcls� o   � ��M�M 0 windowframe windowFrame� m   � ��L
�L 
reco� r   � ���� J   � ��� ��� n   � ���� 4   � ��K�
�K 
cobj� m   � ��J�J � o   � ��I�I 0 initposition initPosition� ��H� \   � ���� o   � ��G�G 0 they theY� l  � ���F�E� n   � ���� o   � ��D�D 
0 height  � n   � ���� o   � ��C�C 0 size  � o   � ��B�B 0 windowframe windowFrame�F  �E  �H  � n      ��� o   � ��A�A 
0 origin  � o   � ��@�@ 0 windowframe windowFrame�O  � r   � ���� J   � ��� ��� n   � ���� 4   � ��?�
�? 
cobj� m   � ��>�> � o   � ��=�= 0 initposition initPosition� ��<� \   � ���� o   � ��;�; 0 they theY� l  � ���:�9� n   � ���� 4   � ��8�
�8 
cobj� m   � ��7�7 � n   � ���� 4   � ��6�
�6 
cobj� m   � ��5�5 � o   � ��4�4 0 windowframe windowFrame�:  �9  �<  � n      ��� 4   � ��3�
�3 
cobj� m   � ��2�2 � o   � ��1�1 0 windowframe windowFrame� ��� n  � ���� I   � ��0��/�0 &0 setframe_display_ setFrame_display_� ��� o   � ��.�. 0 windowframe windowFrame� ��-� m   � ��,
�, boovtrue�-  �/  � o   � ��+�+ 0 	thewindow 	theWindow� ��*� l  � ����� n  � ���� I   � ��)��(�) 0 orderfront_ orderFront_� ��'�  f   � ��'  �(  � o   � ��&�& 0 	thewindow 	theWindow� - ' must be visible or it will be centered   � ��� N   m u s t   b e   v i s i b l e   o r   i t   w i l l   b e   c e n t e r e d�*  \ ��� n  � ���� I   � ��%��$�% 0 	settitle_ 	setTitle_� ��#� o   � ��"�" 0 windowtitle windowTitle�#  �$  � o   � ��!�! 0 	thewindow 	theWindow� ��� l  � �� ���   � < 6 set give up timer if required, then show window modal   � ��� l   s e t   g i v e   u p   t i m e r   i f   r e q u i r e d ,   t h e n   s h o w   w i n d o w   m o d a l� ��� Z   ������ ?   � ���� c   � ���� o   � ��� 0 giveup giveUp� m   � ��
� 
long� m   � ���  � n  ���� I   ����� `0 .performselector_withobject_afterdelay_inmodes_ .performSelector_withObject_afterDelay_inModes_� ��� m   � ��� ���  a b o r t M o d a l� ��� l  � ����� m   � ��
� 
msng�  �  � ��� o   � ��� 0 giveup giveUp� ��� J   � �� ��� o   � ��� 20 nsmodalpanelrunloopmode NSModalPanelRunLoopMode�  �  �  � o   � ��� 0 nsapp NSApp�  �  � ��� r  	��� n 	��� I  � �� (0 runmodalforwindow_ runModalForWindow_  � o  �� 0 	thewindow 	theWindow�  �  � o  	�� 0 nsapp NSApp� n      o  �� 0 
returncode 
returnCode  f  �  Z  L�
�	 F  3	 ?  !

 c   o  �� 0 giveup giveUp m  �
� 
long m   ��  	 > $/ o  $)�� 0 
returncode 
returnCode o  ).�� ,0 nsmodalresponseabort NSModalResponseAbort n 6H I  ;H��� t0 8cancelpreviousperformrequestswithtarget_selector_object_ 8cancelPreviousPerformRequestsWithTarget_selector_object_  l ;@��  o  ;@���� 0 nsapp NSApp�  �     m  @C �  a b o r t M o d a l �� l CD���� m  CD��
�� 
msng��  ��  ��  �   o  6;���� 0 nsobject NSObject�
  �	    l MM����     close window    �      c l o s e   w i n d o w !��! n MS"#" I  NS��$���� 0 	orderout_ 	orderOut_$ %��%  f  NO��  ��  # o  MN���� 0 	thewindow 	theWindow��  + &'& l     ��������  ��  ��  ' ()( i  x{*+* I      ��,���� 00 createlabelmainthread_ createLabelMainThread_, -��- o      ���� 0 thearg theArg��  ��  + k    �.. /0/ r     <121 c     343 o     ���� 0 thearg theArg4 m    ��
�� 
list2 J      55 676 o      ���� 0 labelstring labelString7 898 o      ���� 0 theleft theLeft9 :;: o      ���� 0 	thebottom 	theBottom; <=< o      ���� 0 maxwidth maxWidth= >?> o      ���� 0 	alignment  ? @A@ o      ���� 0 	wrapsbool 	wrapsBoolA BCB o      ���� 0 controlsize controlSizeC D��D o      ���� 0 boldtype boldType��  0 EFE l  = =��GH��  G + % create label, set size and make font   H �II J   c r e a t e   l a b e l ,   s e t   s i z e   a n d   m a k e   f o n tF JKJ r   = VLML l  = TN����N n  = TOPO I   F T��Q����  0 initwithframe_ initWithFrame_Q R��R J   F PSS TUT J   F JVV WXW o   F G���� 0 theleft theLeftX Y��Y o   G H���� 0 	thebottom 	theBottom��  U Z��Z J   J N[[ \]\ o   J K���� 0 maxwidth maxWidth] ^��^ m   K L���� ��  ��  ��  ��  P n  = F_`_ I   B F�������� 	0 alloc  ��  ��  ` o   = B���� 0 nstextfield NSTextField��  ��  M o      ���� 0 thelabel theLabelK aba r   W `cdc n  W ^efe I   X ^��g���� :0 fontofcontrolsize_boldtype_ fontOfControlSize_boldType_g hih o   X Y���� 0 controlsize controlSizei j��j o   Y Z���� 0 boldtype boldType��  ��  f  f   W Xd o      ���� 0 thefont theFontb klk l  a a��mn��  m   format label   n �oo    f o r m a t   l a b e ll pqp Z   a �rstur G   a lvwv =   a dxyx o   a b���� 0 	alignment  y m   b c��
�� !LaL!LrIw C  g jz{z o   g h���� 0 	alignment  { m   h i|| �}}  rs n  o y~~ I   p y������� 0 setalignment_ setAlignment_� ���� o   p u���� ,0 nsrighttextalignment NSRightTextAlignment��  ��   o   o p���� 0 thelabel theLabelt ��� G   | ���� =   | ��� o   | }���� 0 	alignment  � m   } ~��
�� !LaL!LcE� C  � ���� o   � ����� 0 	alignment  � m   � ��� ���  c� ���� n  � ���� I   � �������� 0 setalignment_ setAlignment_� ���� o   � ����� .0 nscentertextalignment NSCenterTextAlignment��  ��  � o   � ����� 0 thelabel theLabel��  u n  � ���� I   � �������� 0 setalignment_ setAlignment_� ���� o   � ����� *0 nslefttextalignment NSLeftTextAlignment��  ��  � o   � ����� 0 thelabel theLabelq ��� O   � ���� k   � ��� ��� n  � ���� I   � �������� 0 setfont_ setFont_� ���� o   � ����� 0 thefont theFont��  ��  �  g   � �� ��� n  � ���� I   � �������� :0 setpreferredmaxlayoutwidth_ setPreferredMaxLayoutWidth_� ���� o   � ����� 0 maxwidth maxWidth��  ��  �  g   � �� ��� l  � ������� n  � ���� I   � �������� "0 setstringvalue_ setStringValue_� ���� o   � ����� 0 labelstring labelString��  ��  �  g   � ���  ��  � ��� l  � ������� n  � ���� I   � �������� 0 seteditable_ setEditable_� ���� m   � ���
�� boovfals��  ��  �  g   � ���  ��  � ��� l  � ������� n  � ���� I   � ��������  0 setselectable_ setSelectable_� ���� m   � ���
�� boovtrue��  ��  �  g   � ���  ��  � ��� l  � ������� n  � ���� I   � �������� 0 setbordered_ setBordered_� ���� m   � ���
�� boovfals��  ��  �  g   � ���  ��  � ��� l  � ������� n  � ���� I   � �������� *0 setdrawsbackground_ setDrawsBackground_� ���� m   � ���
�� boovfals��  ��  �  g   � ���  ��  � ���� n  � ���� l  � ������� n  � ���� I   � �������� 0 	setwraps_ 	setWraps_� ���� o   � ����� 0 	wrapsbool 	wrapsBool��  ��  � I   � ��������� 0 cell  ��  ��  ��  ��  �  g   � ���  � o   � ����� 0 thelabel theLabel� ��� l  � �������  �   size label   � ���    s i z e   l a b e l� ��� n  � ���� I   � ������� 0 setframesize_ setFrameSize_� ��~� l  � ���}�|� n  � ���� I   � ��{�z�y�{ 0 fittingsize fittingSize�z  �y  � o   � ��x�x 0 thelabel theLabel�}  �|  �~  �  � o   � ��w�w 0 thelabel theLabel� ��� l  � ��v���v  �   set alignment   � ���    s e t   a l i g n m e n t� ��� r   � ���� n  � ���� I   � ��u�t�s�u 	0 frame  �t  �s  � o   � ��r�r 0 thelabel theLabel� o      �q�q 0 theframe theFrame� ��� Z   �0���p�� =  ���� n   � ���� m   � ��o
�o 
pcls� o   � ��n�n 0 theframe theFrame� m   � �m
�m 
reco� r  ��� n 	��� o  	�l�l 0 size  � o  �k�k 0 theframe theFrame� K      �� �j���j 	0 width  � o      �i�i 0 newwidth newWidth� �h��g�h 
0 height  � o      �f�f 0 	theheight 	theHeight�g  �p  � r  0��� n  !��� 4  !�e�
�e 
cobj� m   �d�d � o  �c�c 0 theframe theFrame� J          o      �b�b 0 newwidth newWidth �a o      �`�` 0 	theheight 	theHeight�a  �  Z  1s	 G  1>

 =  14 o  12�_�_ 0 	alignment   m  23�^
�^ !LaL!LrI C 7< o  78�]�] 0 	alignment   m  8; �  r r  AK J  AI  \  AF [  AD o  AB�\�\ 0 theleft theLeft o  BC�[�[ 0 maxwidth maxWidth o  DE�Z�Z 0 newwidth newWidth �Y o  FG�X�X 0 	thebottom 	theBottom�Y   o      �W�W 0 	theorigin 	theOrigin  G  N[ =  NQ !  o  NO�V�V 0 	alignment  ! m  OP�U
�U !LaL!LcE C TY"#" o  TU�T�T 0 	alignment  # m  UX$$ �%%  c &�S& r  ^j'(' J  ^h)) *+* l ^e,�R�Q, [  ^e-.- o  ^_�P�P 0 theleft theLeft. ^  _d/0/ l _b1�O�N1 \  _b232 o  _`�M�M 0 maxwidth maxWidth3 o  `a�L�L 0 newwidth newWidth�O  �N  0 m  bc�K�K �R  �Q  + 4�J4 o  ef�I�I 0 	thebottom 	theBottom�J  ( o      �H�H 0 	theorigin 	theOrigin�S  	 r  ms565 J  mq77 898 o  mn�G�G 0 theleft theLeft9 :�F: o  no�E�E 0 	thebottom 	theBottom�F  6 o      �D�D 0 	theorigin 	theOrigin ;<; n tz=>= I  uz�C?�B�C "0 setframeorigin_ setFrameOrigin_? @�A@ o  uv�@�@ 0 	theorigin 	theOrigin�A  �B  > o  tu�?�? 0 thelabel theLabel< ABA l {{�>CD�>  C ; 5 return theLabel, the top of the label, and its width   D �EE j   r e t u r n   t h e L a b e l ,   t h e   t o p   o f   t h e   l a b e l ,   a n d   i t s   w i d t hB F�=F r  {�GHG J  {�II JKJ o  {|�<�< 0 thelabel theLabelK LML [  |NON o  |}�;�; 0 	thebottom 	theBottomO o  }~�:�: 0 	theheight 	theHeightM P�9P o  ��8�8 0 newwidth newWidth�9  H n     QRQ o  ���7�7 0 handlerresult handlerResultR  f  ���=  ) STS l     �6�5�4�6  �5  �4  T UVU i  |WXW I      �3Y�2�3 00 createfieldmainthread_ createFieldMainThread_Y Z�1Z o      �0�0 0 thearg theArg�1  �2  X k     �[[ \]\ r     5^_^ c     `a` o     �/�/ 0 thearg theArga m    �.
�. 
list_ J      bb cdc o      �-�- 0 enteredtext enteredTextd efe o      �,�, 0 placeholder  f ghg o      �+�+ 0 theleft theLefth iji o      �*�* 0 	thebottom 	theBottomj klk o      �)�) 0 thewidth theWidthl mnm o      �(�( 0 extraheight extraHeightn o�'o o      �&�& 0 acceptstabs acceptsTabs�'  ] pqp r   6 =rsr [   6 ;tut [   6 9vwv o   6 7�%�% 0 	thebottom 	theBottomw m   7 8�$�$ u o   9 :�#�# 0 extraheight extraHeights o      �"�" 0 thetop theTopq xyx r   > Yz{z l  > W|�!� | n  > W}~} I   G W���  0 initwithframe_ initWithFrame_ ��� J   G S�� ��� J   G K�� ��� o   G H�� 0 theleft theLeft� ��� o   H I�� 0 	thebottom 	theBottom�  � ��� J   K Q�� ��� o   K L�� 0 thewidth theWidth� ��� \   L O��� o   L M�� 0 thetop theTop� o   M N�� 0 	thebottom 	theBottom�  �  �  �  ~ n  > G��� I   C G���� 	0 alloc  �  �  � o   > C�� 0 nstextfield NSTextField�!  �   { o      �� 0 thefield theFieldy ��� O   Z ���� k   ^ ��� ��� l  ^ d���� n  ^ d��� I   _ d���� 0 seteditable_ setEditable_� ��� m   _ `�

�
 boovtrue�  �  �  g   ^ _�  �  � ��� l  e k��	�� n  e k��� I   f k���� 0 setbezeled_ setBezeled_� ��� m   f g�
� boovtrue�  �  �  g   e f�	  �  � ��� n  l v��� l  m v���� n  m v��� I   q v��� � .0 setplaceholderstring_ setPlaceholderString_� ���� o   q r���� 0 placeholder  ��  �   � I   m q�������� 0 cell  ��  ��  �  �  �  g   l m� ��� Z  w �������� ?   w z��� o   w x���� 0 extraheight extraHeight� m   x y����  � n  } ���� l  ~ ������� n  ~ ���� I   � �������� 0 	setwraps_ 	setWraps_� ���� m   � ���
�� boovtrue��  ��  � I   ~ ��������� 0 cell  ��  ��  ��  ��  �  g   } ~��  ��  � ��� n  � ���� I   � �������� "0 setstringvalue_ setStringValue_� ���� o   � ����� 0 enteredtext enteredText��  ��  �  g   � �� ���� Z  � �������� o   � ����� 0 acceptstabs acceptsTabs� n  � ���� I   � �������� 0 setdelegate_ setDelegate_� ����  f   � ���  ��  �  g   � ���  ��  ��  � o   Z [���� 0 thefield theField� ��� l  � �������  � , & return theField, the top of the field   � ��� L   r e t u r n   t h e F i e l d ,   t h e   t o p   o f   t h e   f i e l d� ���� r   � ���� J   � ��� ��� o   � ����� 0 thefield theField� ���� o   � ����� 0 thetop theTop��  � n     ��� o   � ����� 0 handlerresult handlerResult�  f   � ���  V ��� l     ��������  ��  ��  � ��� i  ����� I      ������� <0 createsecurefieldmainthread_ createSecureFieldMainThread_� ���� o      ���� 0 thearg theArg��  ��  � k     ~�� ��� r     '��� c     ��� o     ���� 0 thearg theArg� m    ��
�� 
list� J      �� ��� o      ���� 0 enteredtext enteredText� ��� o      ���� 0 placeholder  � ��� o      ���� 0 theleft theLeft� ��� o      ���� 0 	thebottom 	theBottom� ���� o      ���� 0 thewidth theWidth��  � ��� r   ( -��� [   ( +��� o   ( )���� 0 	thebottom 	theBottom� m   ) *���� � o      ���� 0 thetop theTop� ��� r   . I��� l  . G������ n  . G��� I   7 G�������  0 initwithframe_ initWithFrame_� ���� J   7 C�� ��� J   7 ;    o   7 8���� 0 theleft theLeft �� o   8 9���� 0 	thebottom 	theBottom��  � �� J   ; A  o   ; <���� 0 thewidth theWidth �� \   < ?	
	 o   < =���� 0 thetop theTop
 o   = >���� 0 	thebottom 	theBottom��  ��  ��  ��  � n  . 7 I   3 7�������� 	0 alloc  ��  ��   o   . 3���� &0 nssecuretextfield NSSecureTextField��  ��  � o      ���� 0 thefield theField�  O   J u k   N t  l  N T���� n  N T I   O T������ 0 seteditable_ setEditable_ �� m   O P��
�� boovtrue��  ��    g   N O��  ��    l  U [���� n  U [ I   V [������ 0 setbezeled_ setBezeled_ �� m   V W��
�� boovtrue��  ��    g   U V��  ��    !  n  \ f"#" l  ] f$����$ n  ] f%&% I   a f��'���� 0 	setwraps_ 	setWraps_' (��( m   a b��
�� boovfals��  ��  & I   ] a�������� 0 cell  ��  ��  ��  ��  #  g   \ ]! )*) n  g m+,+ I   h m��-���� .0 setplaceholderstring_ setPlaceholderString_- .��. o   h i���� 0 placeholder  ��  ��  ,  g   g h* /��/ n  n t010 I   o t��2���� "0 setstringvalue_ setStringValue_2 3��3 o   o p���� 0 enteredtext enteredText��  ��  1  g   n o��   o   J K���� 0 thefield theField 454 l  v v��67��  6 , & return theField, the top of the field   7 �88 L   r e t u r n   t h e F i e l d ,   t h e   t o p   o f   t h e   f i e l d5 9��9 r   v ~:;: J   v z<< =>= o   v w���� 0 thefield theField> ?��? o   w x���� 0 thetop theTop��  ; n     @A@ o   { }���� 0 handlerresult handlerResultA  f   z {��  � BCB l     ��������  ��  ��  C DED i  ��FGF I      �H�� 00 createpopupmainthread_ createPopupMainThread_H I�I o      �� 0 thearg theArg�  �  G k     [JJ KLK r     'MNM c     OPO o     �� 0 thearg theArgP m    �
� 
listN J      QQ RSR o      �� 0 	entrylist 	entryListS TUT o      �� 0 theleft theLeftU VWV o      �� 0 	thebottom 	theBottomW XYX o      �� 0 thewidth theWidthY Z�Z o      �� 0 defaultvalue defaultValue�  L [\[ r   ( B]^] n  ( @_`_ I   1 @�a�� 40 initwithframe_pullsdown_ initWithFrame_pullsDown_a bcb J   1 ;dd efe J   1 5gg hih o   1 2�� 0 theleft theLefti j�j o   2 3�� 0 	thebottom 	theBottom�  f k�~k J   5 9ll mnm o   5 6�}�} 0 thewidth theWidthn o�|o m   6 7�{�{ �|  �~  c p�zp m   ; <�y
�y boovfals�z  �  ` n  ( 1qrq I   - 1�x�w�v�x 	0 alloc  �w  �v  r o   ( -�u�u 0 nspopupbutton NSPopUpButton^ o      �t�t 0 thepopup thePopup\ sts n  C Iuvu I   D I�sw�r�s *0 additemswithtitles_ addItemsWithTitles_w x�qx o   D E�p�p 0 	entrylist 	entryList�q  �r  v o   C D�o�o 0 thepopup thePopupt yzy n  J P{|{ I   K P�n}�m�n ,0 selectitemwithtitle_ selectItemWithTitle_} ~�l~ o   K L�k�k 0 defaultvalue defaultValue�l  �m  | o   J K�j�j 0 thepopup thePopupz �i r   Q [��� J   Q W�� ��� o   Q R�h�h 0 thepopup thePopup� ��g� [   R U��� o   R S�f�f 0 	thebottom 	theBottom� m   S T�e�e �g  � n     ��� o   X Z�d�d 0 handlerresult handlerResult�  f   W X�i  E ��� l     �c�b�a�c  �b  �a  � ��� i  ����� I      �`��_�` 60 createcheckboxmainthread_ createCheckboxMainThread_� ��^� o      �]�] 0 thearg theArg�^  �_  � k     ��� ��� r     '��� c     ��� o     �\�\ 0 thearg theArg� m    �[
�[ 
list� J      �� ��� o      �Z�Z 0 
checktitle 
checkTitle� ��� o      �Y�Y 0 theleft theLeft� ��� o      �X�X 0 	thebottom 	theBottom� ��� o      �W�W 0 thewidth theWidth� ��V� o      �U�U 0 initialstate initialState�V  � ��� r   ( A��� n  ( ?��� I   1 ?�T��S�T  0 initwithframe_ initWithFrame_� ��R� J   1 ;�� ��� J   1 5�� ��� o   1 2�Q�Q 0 theleft theLeft� ��P� o   2 3�O�O 0 	thebottom 	theBottom�P  � ��N� J   5 9�� ��� o   5 6�M�M 0 thewidth theWidth� ��L� m   6 7�K�K �L  �N  �R  �S  � n  ( 1��� I   - 1�J�I�H�J 	0 alloc  �I  �H  � o   ( -�G�G 0 nsbutton NSButton� o      �F�F 0 thecheckbox theCheckbox� ��� r   B K��� n  B I��� I   C I�E��D�E :0 fontofcontrolsize_boldtype_ fontOfControlSize_boldType_� ��� m   C D�C
�C !CsZ!CrL� ��B� m   D E�A
�A boovfals�B  �D  �  f   B C� o      �@�@ 0 thefont theFont� ��� O   L p��� k   P o�� ��� n  P Z��� I   Q Z�?��>�?  0 setbuttontype_ setButtonType_� ��=� o   Q V�<�<  0 nsswitchbutton NSSwitchButton�=  �>  �  g   P Q� ��� n  [ a��� I   \ a�;��:�; 0 	settitle_ 	setTitle_� ��9� o   \ ]�8�8 0 
checktitle 
checkTitle�9  �:  �  g   [ \� ��� n  b h��� I   c h�7��6�7 0 	setstate_ 	setState_� ��5� o   c d�4�4 0 initialstate initialState�5  �6  �  g   b c� ��3� n  i o��� I   j o�2��1�2 0 setfont_ setFont_� ��0� o   j k�/�/ 0 thefont theFont�0  �1  �  g   i j�3  � o   L M�.�. 0 thecheckbox theCheckbox� ��� r   q ~��� c   q |��� n  q z��� I   v z�-�,�+�- 0 ismainthread isMainThread�,  �+  � o   q v�*�* 0 nsthread NSThread� m   z {�)
�) 
bool� o      �(�( 0 ismain isMain� ��� n   ���� I   � ��'��&�' 0 setframesize_ setFrameSize_� ��%� l  � ���$�#� n  � ���� I   � ��"�!� �" 0 fittingsize fittingSize�!  �   � o   � ��� 0 thecheckbox theCheckbox�$  �#  �%  �&  � o    ��� 0 thecheckbox theCheckbox� ��� r   � ���� n  � ���� I   � ����� 	0 frame  �  �  � o   � ��� 0 thecheckbox theCheckbox� o      �� 0 theframe theFrame� ��� Z   � ������ =  � ���� n   � ���� m   � ��
� 
pcls� o   � ��� 0 theframe theFrame� m   � ��
� 
reco� r   � �� � n   � � o   � ��� 	0 width   n   � � o   � ��� 0 size   o   � ��� 0 theframe theFrame  o      �� 0 thewidth theWidth�  � r   � � n   � � 4   � ��	
� 
cobj	 m   � ���  n   � �

 4   � ��
� 
cobj m   � ���  o   � ��� 0 theframe theFrame o      �� 0 thewidth theWidth�  l  � ��
�
   @ : return theCheckbox, the top of theCheckbox, and its width    � t   r e t u r n   t h e C h e c k b o x ,   t h e   t o p   o f   t h e C h e c k b o x ,   a n d   i t s   w i d t h �	 r   � � J   � �  o   � ��� 0 thecheckbox theCheckbox  [   � � o   � ��� 0 	thebottom 	theBottom m   � ���  � o   � ��� 0 thewidth theWidth�   n      o   � ��� 0 handlerresult handlerResult  f   � ��	  �   l     ��� �  �  �     !"! i  ��#$# I      ��%���� <0 createpathcontrolmainthread_ createPathControlMainThread_% &��& o      ���� 0 thearg theArg��  ��  $ k     �'' ()( r     '*+* c     ,-, o     ���� 0 thearg theArg- m    ��
�� 
list+ J      .. /0/ o      ���� 0 thepath thePath0 121 o      ���� 0 theleft theLeft2 343 o      ���� 0 	thebottom 	theBottom4 565 o      ���� 0 thewidth theWidth6 7��7 o      ���� 0 
popsupbool 
popsUpBool��  ) 898 r   ( 4:;: n  ( 2<=< I   - 2��>���� $0 fileurlwithpath_ fileURLWithPath_> ?��? o   - .���� 0 thepath thePath��  ��  = o   ( -���� 	0 NSURL  ; o      ���� 0 annsurl anNSURL9 @A@ Z   5 �BC��DB o   5 6���� 0 
popsupbool 
popsUpBoolC k   9 cEE FGF r   9 RHIH n  9 PJKJ I   B P��L����  0 initwithframe_ initWithFrame_L M��M J   B LNN OPO J   B FQQ RSR o   B C���� 0 theleft theLeftS T��T o   C D���� 0 	thebottom 	theBottom��  P U��U J   F JVV WXW o   F G���� 0 thewidth theWidthX Y��Y m   G H���� ��  ��  ��  ��  K n  9 BZ[Z I   > B�������� 	0 alloc  ��  ��  [ o   9 >���� 0 nspathcontrol NSPathControlI o      ����  0 thepathcontrol thePathControlG \]\ n  S ]^_^ I   T ]��`���� 0 setpathstyle_ setPathStyle_` a��a o   T Y���� $0 nspathstylepopup NSPathStylePopUp��  ��  _ o   S T����  0 thepathcontrol thePathControl] b��b r   ^ ccdc [   ^ aefe o   ^ _���� 0 	thebottom 	theBottomf m   _ `���� d o      ���� 0 thetop theTop��  ��  D k   f �gg hih r   f jkj n  f }lml I   o }��n����  0 initwithframe_ initWithFrame_n o��o J   o ypp qrq J   o sss tut o   o p���� 0 theleft theLeftu v��v o   p q���� 0 	thebottom 	theBottom��  r w��w J   s wxx yzy o   s t���� 0 thewidth theWidthz {��{ m   t u���� ��  ��  ��  ��  m n  f o|}| I   k o�������� 	0 alloc  ��  ��  } o   f k���� 0 nspathcontrol NSPathControlk o      ����  0 thepathcontrol thePathControli ~~ n  � ���� I   � �������� 0 setpathstyle_ setPathStyle_� ���� o   � ����� *0 nspathstylestandard NSPathStyleStandard��  ��  � o   � �����  0 thepathcontrol thePathControl ��� r   � ���� [   � ���� o   � ��� 0 	thebottom 	theBottom� m   � ��� � o      �� 0 thetop theTop�  A ��� n  � ���� I   � ����� 0 seturl_ setURL_� ��� o   � ��� 0 annsurl anNSURL�  �  � o   � ���  0 thepathcontrol thePathControl� ��� r   � ���� J   � ��� ��� o   � ���  0 thepathcontrol thePathControl� ��� o   � ��� 0 thetop theTop�  � n     ��� o   � ��� 0 handlerresult handlerResult�  f   � ��  " ��� l     ����  �  �  � ��� i  ����� I      ���� 20 creatematrixmainthread_ createMatrixMainThread_� ��� o      �� 0 thearg theArg�  �  � k    ��� ��� r     .��� c     ��� o     �� 0 thearg theArg� m    �
� 
list� J      �� ��� o      �� 0 listofnames listOfNames� ��� o      �� 0 theleft theLeft� ��� o      �� 0 	thebottom 	theBottom� ��� o      �� 0 thewidth theWidth� ��� o      �� 0 
isvertical 
isVertical� ��� o      �� 0 defaultvalue defaultValue�  � ��� Z  / A����� =  / 4��� n   / 2��� m   0 2�
� 
pcls� o   / 0�� 0 defaultvalue defaultValue� m   2 3�
� 
long� r   7 =��� n   7 ;��� 4   8 ;��
� 
cobj� o   9 :�� 0 defaultvalue defaultValue� o   7 8�� 0 listofnames listOfNames� o      �� 0 defaultvalue defaultValue�  �  � ��� r   B I��� I  B G���
� .corecnte****       ****� o   B C�� 0 listofnames listOfNames�  � o      �� 0 thecount theCount� ��� Z   J _����� o   J K�� 0 
isvertical 
isVertical� k   N U�� ��� r   N Q��� o   N O�� 0 thecount theCount� o      �� 0 rowcount rowCount� ��� r   R U��� m   R S�� � o      �� 0 colcount colCount�  �  � k   X _�� ��� r   X [��� o   X Y�� 0 thecount theCount� o      �� 0 colcount colCount� ��� r   \ _��� m   \ ]�� � o      �� 0 rowcount rowCount�  � ��� l  ` k���� r   ` k��� [   ` i��� ]   ` c��� o   ` a�� 0 rowcount rowCount� m   a b�� � ]   c h��� l  c f���� \   c f��� o   c d�� 0 rowcount rowCount� m   d e�� �  �  � m   f g�� � o      �� 0 thedepth theDepth� ( " 18 pts per button + 2 pts between   � ��� D   1 8   p t s   p e r   b u t t o n   +   2   p t s   b e t w e e n� ��� r   l ���� n  l ���� I   u ����� x0 :initwithframe_mode_cellclass_numberofrows_numberofcolumns_ :initWithFrame_mode_cellClass_numberOfRows_numberOfColumns_� ��� J   u �� ��� J   u y�� ��� o   u v�~�~ 0 theleft theLeft� ��}� o   v w�|�| 0 	thebottom 	theBottom�}  � ��{� J   y }�� ��� o   y z�z�z 0 thewidth theWidth� ��y� o   z {�x�x 0 thedepth theDepth�y  �{  �    o    ��w�w &0 nsradiomodematrix NSRadioModeMatrix  l  � ��v�u o   � ��t�t 0 nsbuttoncell NSButtonCell�v  �u    o   � ��s�s 0 rowcount rowCount �r o   � ��q�q 0 colcount colCount�r  �  � n  l u	 I   q u�p�o�n�p 	0 alloc  �o  �n  	 o   l q�m�m 0 nsmatrix NSMatrix� o      �l�l 0 	thematrix 	theMatrix� 

 n  � � I   � ��k�j�i�k $0 deselectallcells deselectAllCells�j  �i   o   � ��h�h 0 	thematrix 	theMatrix  r   � � n  � � I   � ��g�f�g :0 fontofcontrolsize_boldtype_ fontOfControlSize_boldType_  m   � ��e
�e !CsZ!CrL �d m   � ��c
�c boovfals�d  �f    f   � � o      �b�b 0 thefont theFont  r   � � c   � � n  � � I   � ��a�`�_�a 	0 cells  �`  �_   o   � ��^�^ 0 	thematrix 	theMatrix m   � ��]
�] 
list o      �\�\ 0 thecells theCells  !  Y   �
"�[#$�Z" k   �%% &'& l  � �(�Y�X( n  � �)*) I   � ��W+�V�W  0 setbuttontype_ setButtonType_+ ,�U, o   � ��T�T 0 nsradiobutton NSRadioButton�U  �V  * l  � �-�S�R- n   � �./. 4   � ��Q0
�Q 
cobj0 o   � ��P�P 0 i  / o   � ��O�O 0 thecells theCells�S  �R  �Y  �X  ' 121 l  � �3�N�M3 n  � �454 I   � ��L6�K�L 0 	settitle_ 	setTitle_6 7�J7 l  � �8�I�H8 n   � �9:9 4   � ��G;
�G 
cobj; o   � ��F�F 0 i  : o   � ��E�E 0 listofnames listOfNames�I  �H  �J  �K  5 l  � �<�D�C< n   � �=>= 4   � ��B?
�B 
cobj? o   � ��A�A 0 i  > o   � ��@�@ 0 thecells theCells�D  �C  �N  �M  2 @A@ Z   � �BC�?�>B =   � �DED n   � �FGF 4   � ��=H
�= 
cobjH o   � ��<�< 0 i  G o   � ��;�; 0 listofnames listOfNamesE o   � ��:�: 0 defaultvalue defaultValueC Z   � �IJ�9KI o   � ��8�8 0 
isvertical 
isVerticalJ l  � �L�7�6L n  � �MNM I   � ��5O�4�5 20 selectcellatrow_column_ selectCellAtRow_column_O PQP l  � �R�3�2R \   � �STS o   � ��1�1 0 i  T m   � ��0�0 �3  �2  Q U�/U m   � ��.�.  �/  �4  N o   � ��-�- 0 	thematrix 	theMatrix�7  �6  �9  K l  � �V�,�+V n  � �WXW I   � ��*Y�)�* 20 selectcellatrow_column_ selectCellAtRow_column_Y Z[Z m   � ��(�(  [ \�'\ l  � �]�&�%] \   � �^_^ o   � ��$�$ 0 i  _ m   � ��#�# �&  �%  �'  �)  X o   � ��"�" 0 	thematrix 	theMatrix�,  �+  �?  �>  A `�!` l  �a� �a n  �bcb I   �d�� 0 setfont_ setFont_d e�e o   �� 0 thefont theFont�  �  c l  � f��f n   � ghg 4   � �i
� 
cobji o   � ��� 0 i  h o   � ��� 0 thecells theCells�  �  �   �  �!  �[ 0 i  # m   � ��� $ I  � ��j�
� .corecnte****       ****j o   � ��� 0 thecells theCells�  �Z  ! klk n mnm I  �o�� ,0 setintercellspacing_ setIntercellSpacing_o p�p J  qq rsr m  �� s t�t m  �� �  �  �  n o  �� 0 	thematrix 	theMatrixl uvu n wxw I  �
y�	�
 <0 setautorecalculatescellsize_ setAutorecalculatesCellSize_y z�z m  �
� boovtrue�  �	  x o  �� 0 	thematrix 	theMatrixv {|{ n $}~} I  $��� (0 setautosizescells_ setAutosizesCells_ ��� m   �
� boovtrue�  �  ~ o  �� 0 	thematrix 	theMatrix| ��� r  %4��� c  %2��� n %.��� I  *.� �����  0 ismainthread isMainThread��  ��  � o  %*���� 0 nsthread NSThread� m  .1��
�� 
bool� o      ���� 0 ismain isMain� ��� n 5:��� I  6:�������� 0 sizetocells sizeToCells��  ��  � o  56���� 0 	thematrix 	theMatrix� ��� r  ;D��� n ;@��� I  <@�������� 	0 frame  ��  ��  � o  ;<���� 0 	thematrix 	theMatrix� o      ���� 0 theframe theFrame� ��� Z  Ep������ = EN��� n  EJ��� m  HJ��
�� 
pcls� o  EH���� 0 theframe theFrame� m  JM��
�� 
reco� r  Q`��� n  Q\��� o  X\���� 	0 width  � n  QX��� o  TX���� 0 size  � o  QT���� 0 theframe theFrame� o      ���� 0 newwidth newWidth��  � r  cp��� n  cl��� 4  il���
�� 
cobj� m  jk���� � n  ci��� 4  fi���
�� 
cobj� m  gh���� � o  cf���� 0 theframe theFrame� o      ���� 0 newwidth newWidth� ��� n q|��� I  r|������� 0 setframesize_ setFrameSize_� ���� J  rx�� ��� o  ru���� 0 newwidth newWidth� ���� o  uv���� 0 thedepth theDepth��  ��  ��  � o  qr���� 0 	thematrix 	theMatrix� ���� r  }���� J  }��� ��� o  }~���� 0 	thematrix 	theMatrix� ��� [  ~���� o  ~���� 0 	thebottom 	theBottom� o  ����� 0 thedepth theDepth� ���� o  ������ 0 newwidth newWidth��  � n     ��� o  ������ 0 handlerresult handlerResult�  f  ����  � ��� l     ��������  ��  ��  � ��� i  ����� I      ������� .0 createrulemainthread_ createRuleMainThread_� ���� o      ���� 0 thearg theArg��  ��  � k     d�� ��� r     ��� c     ��� o     ���� 0 thearg theArg� m    ��
�� 
list� J      �� ��� o      ���� 0 	thebottom 	theBottom� ��� o      ���� 0 theleft theLeft� ���� o      ���� 0 thewidth theWidth��  � ��� r    3��� n   1��� I   # 1�������  0 initwithframe_ initWithFrame_� ���� J   # -�� ��� J   # '�� ��� o   # $���� 0 theleft theLeft� ���� o   $ %���� 0 	thebottom 	theBottom��  � ���� J   ' +�� ��� o   ' (���� 0 thewidth theWidth� ���� m   ( )�� ��  ��  ��  ��  � n   #��� I    #���� 	0 alloc  �  �  � o    �� 0 nsbox NSBox� o      �� 0 therule theRule� ��� O   4 Y��� k   8 X�� ��� n  8 B��� I   9 B���� 0 setboxtype_ setBoxType_� ��� o   9 >��  0 nsboxseparator NSBoxSeparator�  �  �  g   8 9� ��� n  C M��� I   D M���� &0 settitleposition_ setTitlePosition_� ��� o   D I�� 0 	nsnotitle 	NSNoTitle�  �  �  g   C D� ��� n  N X��� I   O X� ��  0 setbordertype_ setBorderType_  � o   O T�� 0 nslineborder NSLineBorder�  �  �  g   N O�  � o   4 5�� 0 therule theRule� � r   Z d J   Z `  o   Z [�� 0 therule theRule � [   [ ^	
	 o   [ \�� 0 	thebottom 	theBottom
 m   \ ]�� �   n      o   a c�� 0 handlerresult handlerResult  f   ` a�  �  l     ����  �  �    i  �� I      ��� 80 createimageviewmainthread_ createImageViewMainThread_ � o      �� 0 thearg theArg�  �   k      r     5 c      o     �� 0 thearg theArg m    �
� 
list J        o      �� 0 	posixpath 	posixPath   o      �� 0 theleft theLeft  !"! o      �� 0 	thebottom 	theBottom" #$# o      �� 0 	viewwidth 	viewWidth$ %&% o      �� 0 
viewheight 
viewHeight& '(' o      �� 0 
imagescale 
imageScale( )�) o      ��  0 imagealignment imageAlignment�   *+* r   6 F,-, n  6 D./. I   ? D�0�� 20 initwithcontentsoffile_ initWithContentsOfFile_0 1�1 o   ? @�� 0 	posixpath 	posixPath�  �  / n  6 ?232 I   ; ?���� 	0 alloc  �  �  3 o   6 ;�� 0 nsimage NSImage- o      �� 0 theimage theImage+ 454 Z  G W67��6 =  G J898 o   G H�� 0 theimage theImage9 m   H I�
� 
msng7 R   M S�:�
� .ascrerr ****      � ****: b   O R;<; m   O P== �>> 0 N o   v a l i d   i m a g e   f o u n d   a t  < o   P Q�� 0 	posixpath 	posixPath�  �  �  5 ?@? r   X qABA n  X oCDC I   a o�E��  0 initwithframe_ initWithFrame_E F�F J   a kGG HIH J   a eJJ KLK o   a b�� 0 theleft theLeftL M�M o   b c�� 0 	thebottom 	theBottom�  I N�~N J   e iOO PQP o   e f�}�} 0 	viewwidth 	viewWidthQ R�|R o   f g�{�{ 0 
viewheight 
viewHeight�|  �~  �  �  D n  X aSTS I   ] a�z�y�x�z 	0 alloc  �y  �x  T o   X ]�w�w 0 nsimageview NSImageViewB o      �v�v 0 	imageview 	imageView@ UVU n  r xWXW I   s x�uY�t�u 0 	setimage_ 	setImage_Y Z�sZ o   s t�r�r 0 theimage theImage�s  �t  X o   r s�q�q 0 	imageview 	imageViewV [\[ r   y �]^] J   y �__ `a` m   y z�p
�p !LaL!LcEa bcb m   z {�o
�o !LiL!LcEc ded m   { |�n
�n !LiL!LtLe fgf m   | }�m
�m !LiL!LtRg hih m   } ~�l
�l !LaL!LlEi jkj m   ~ ��k
�k !LiL!LbLk lml m   � ��j
�j !LiL!LbRm non m   � ��i
�i !LaL!LrIo p�hp m   � ��g
�g !LiL!LbB�h  ^ o      �f�f 0 thealignments theAlignments\ qrq Y   � �s�etu�ds Z   � �vw�c�bv =   � �xyx n   � �z{z 4   � ��a|
�a 
cobj| o   � ��`�` 0 i  { o   � ��_�_ 0 thealignments theAlignmentsy o   � ��^�^  0 imagealignment imageAlignmentw k   � �}} ~~ l  � ���]�\� n  � ���� I   � ��[��Z�[ (0 setimagealignment_ setImageAlignment_� ��Y� l  � ���X�W� \   � ���� o   � ��V�V 0 i  � m   � ��U�U �X  �W  �Y  �Z  � o   � ��T�T 0 	imageview 	imageView�]  �\   ��S�  S   � ��S  �c  �b  �e 0 i  t m   � ��R�R u I  � ��Q��P
�Q .corecnte****       ****� o   � ��O�O 0 thealignments theAlignments�P  �d  r ��� r   � ���� J   � ��� ��� m   � ��N
�N !IsC!IsD� ��� m   � ��M
�M !IsC!IsF� ��� m   � ��L
�L !IsC!IsN� ��K� m   � ��J
�J !IsC!IsP�K  � o      �I�I 0 	thescales 	theScales� ��� Y   � ���H���G� Z   � ����F�E� =   � ���� n   � ���� 4   � ��D�
�D 
cobj� o   � ��C�C 0 i  � o   � ��B�B 0 	thescales 	theScales� o   � ��A�A 0 
imagescale 
imageScale� k   � ��� ��� l  � ���@�?� n  � ���� I   � ��>��=�> $0 setimagescaling_ setImageScaling_� ��<� l  � ���;�:� \   � ���� o   � ��9�9 0 i  � m   � ��8�8 �;  �:  �<  �=  � o   � ��7�7 0 	imageview 	imageView�@  �?  � ��6�  S   � ��6  �F  �E  �H 0 i  � m   � ��5�5 � I  � ��4��3
�4 .corecnte****       ****� o   � ��2�2 0 	thescales 	theScales�3  �G  � ��1� r   ���� J   � ��� ��� o   � ��0�0 0 	imageview 	imageView� ��/� [   � ���� o   � ��.�. 0 	thebottom 	theBottom� o   � ��-�- 0 
viewheight 
viewHeight�/  � n     ��� o   ��,�, 0 handlerresult handlerResult�  f   � ��1   ��� l     �+�*�)�+  �*  �)  � ��� i  ����� I      �(��'�( <0 createbuttonsviewmainthread_ createButtonsViewMainThread_� ��&� o      �%�% 0 thearg theArg�&  �'  � k    )�� ��� r     '��� c     ��� o     �$�$ 0 thearg theArg� m    �#
�# 
list� J      �� ��� o      �"�" 0 
buttonlist 
buttonList� ��� o      �!�!  0 buttonkeyslist buttonKeysList� ��� o      � �  0 equalwidths equalWidths� ��� o      �� 0 cancelindex cancelIndex� ��� o      �� 0 okindex okIndex�  � ��� s   ( 0��� o   ( -�� (0 minimumbuttonwidth minimumButtonWidth� o      ��  0 minbuttonwidth minButtonWidth� ��� r   1 8��� I  1 6���
� .corecnte****       ****� o   1 2�� 0 
buttonlist 
buttonList�  � o      �� 0 buttoncount buttonCount� ��� r   9 @��� I  9 >���
� .corecnte****       ****� o   9 :��  0 buttonkeyslist buttonKeysList�  � o      �� "0 buttonkeyscount buttonKeysCount� ��� l  A E���� r   A E��� J   A C��  � o      �� 0 
allbuttons 
allButtons�   to hold list   � ���    t o   h o l d   l i s t� ��� l  F F����  �  create buttons   � ���  c r e a t e   b u t t o n s� ��� r   F I��� m   F G��  � o      �� "0 minaccviewwidth minAccViewWidth� ��� Y   J������� k   T��� ��� r   T q��� l  T o���� n  T o��� I   ] o�
 �	�
  0 initwithframe_ initWithFrame_  � J   ] k  J   ] e  m   ] ^��   � o   ^ c�� 0 buttonyvalue buttonYValue�   	�	 J   e i

  o   e f��  0 minbuttonwidth minButtonWidth � m   f g��  �  �  �  �	  � n  T ] I   Y ]� �����  	0 alloc  ��  ��   o   T Y���� 0 nsbutton NSButton�  �  � o      ���� 0 
thisbutton 
thisButton�  l  r |���� n  r | I   s |������  0 setbuttontype_ setButtonType_ �� o   s x���� 20 nsmomentarypushinbutton NSMomentaryPushInButton��  ��   o   r s���� 0 
thisbutton 
thisButton��  ��    l  } ����� n  } � I   ~ �������  0 setbezelstyle_ setBezelStyle_ �� o   ~ ����� *0 nsroundedbezelstyle NSRoundedBezelStyle��  ��   o   } ~���� 0 
thisbutton 
thisButton��  ��    l  � � ����  n  � �!"! I   � ���#���� &0 setimageposition_ setImagePosition_# $��$ o   � ����� 0 	nsnoimage 	NSNoImage��  ��  " o   � ����� 0 
thisbutton 
thisButton��  ��   %&% l  � �'����' n  � �()( I   � ���*���� 0 settag_ setTag_* +��+ o   � ����� 0 i  ��  ��  ) o   � ����� 0 
thisbutton 
thisButton��  ��  & ,-, l  � �.����. n  � �/0/ I   � ���1���� 0 	settitle_ 	setTitle_1 2��2 l  � �3����3 n   � �454 4   � ���6
�� 
cobj6 o   � ����� 0 i  5 o   � ����� 0 
buttonlist 
buttonList��  ��  ��  ��  0 o   � ����� 0 
thisbutton 
thisButton��  ��  - 787 l  � �9����9 n  � �:;: I   � ���<���� 0 
settarget_ 
setTarget_< =��=  f   � ���  ��  ; o   � ����� 0 
thisbutton 
thisButton��  ��  8 >?> l  � �@����@ n  � �ABA I   � ���C���� 0 
setaction_ 
setAction_C D��D m   � �EE �FF  c l o s e T h e W i n d o w :��  ��  B o   � ����� 0 
thisbutton 
thisButton��  ��  ? GHG r   � �IJI [   � �KLK \   � �MNM o   � ����� 0 buttoncount buttonCountN o   � ����� 0 i  L m   � ����� J o      ����  0 asbuttonnumber asButtonNumberH OPO Z   �AQRS��Q G   � �TUT =   � �VWV o   � ����� 0 i  W o   � ����� 0 cancelindex cancelIndexU =   � �XYX n   � �Z[Z 4   � ���\
�� 
cobj\ o   � ����� 0 i  [ o   � ��� 0 
buttonlist 
buttonListY o   � ��� 0 cancelindex cancelIndexR l  � �]^_] k   � �`` aba l  � �c��c n  � �ded I   � ��f�� &0 setkeyequivalent_ setKeyEquivalent_f g�g l  � �h��h 5   � ��i�
� 
cha i m   � ��� 
� kfrmID  �  �  �  �  e o   � ��� 0 
thisbutton 
thisButton�  �  b j�j l  � �k��k n  � �lml I   � ��n�� 0 settag_ setTag_n o�o o   � ��� .0 nsmodalresponsecancel NSModalResponseCancel�  �  m o   � ��� 0 
thisbutton 
thisButton�  �  �  ^   make esc the shortcut   _ �pp ,   m a k e   e s c   t h e   s h o r t c u tS qrq G   � �sts =   � �uvu o   � ��� 0 i  v o   � ��� 0 okindex okIndext =   � �wxw n   � �yzy 4   � ��{
� 
cobj{ o   � ��� 0 i  z o   � ��� 0 
buttonlist 
buttonListx o   � ��� 0 okindex okIndexr |}| l  �~�~ l  ����� n  ���� I   ����� &0 setkeyequivalent_ setKeyEquivalent_� ��� o   ��
� 
ret �  �  � o   � ��� 0 
thisbutton 
thisButton�  �   %  make return/enter the shortcut   � ��� >   m a k e   r e t u r n / e n t e r   t h e   s h o r t c u t} ��� F  	��� B  	��� o  	
�� 0 i  � o  
�� "0 buttonkeyscount buttonKeysCount� ?  ��� n  ��� 1  �
� 
leng� n  ��� 4  ��
� 
cobj� o  �� 0 i  � o  ��  0 buttonkeyslist buttonKeysList� m  ��  � ��� l  =���� k   =�� ��� r   +��� n   )��� 4  $)��
� 
cha � m  '(�� � n   $��� 4  !$��
� 
cobj� o  "#�� 0 i  � o   !��  0 buttonkeyslist buttonKeysList� o      �� 0 thekey theKey� ��� l ,2���� n ,2��� I  -2���� &0 setkeyequivalent_ setKeyEquivalent_� ��� o  -.�� 0 thekey theKey�  �  � o  ,-�� 0 
thisbutton 
thisButton�  �  � ��� l 3=���� n 3=��� I  4=���� >0 setkeyequivalentmodifiermask_ setKeyEquivalentModifierMask_� ��� o  49�� $0 nscommandkeymask NSCommandKeyMask�  �  � o  34�� 0 
thisbutton 
thisButton�  �  �  �   add shortcut   � ���    a d d   s h o r t c u t�  ��  P ��� l BB����  �   resize to fit   � ���    r e s i z e   t o   f i t� ��� l BL���~� n BL��� I  CL�}��|�} 0 setframesize_ setFrameSize_� ��{� l CH��z�y� n CH��� I  DH�x�w�v�x 0 fittingsize fittingSize�w  �v  � o  CD�u�u 0 
thisbutton 
thisButton�z  �y  �{  �|  � o  BC�t�t 0 
thisbutton 
thisButton�  �~  � ��� r  MQ��� o  MN�s�s 0 
thisbutton 
thisButton� n      ���  :  OP� o  NO�r�r 0 
allbuttons 
allButtons� ��� l RR�q���q  � + % keep track of width of widest button   � ��� J   k e e p   t r a c k   o f   w i d t h   o f   w i d e s t   b u t t o n� ��� r  RY��� n RW��� I  SW�p�o�n�p 	0 frame  �o  �n  � o  RS�m�m 0 
thisbutton 
thisButton� o      �l�l 0 theframe theFrame� ��� Z  Z����k�� = Zc��� n  Z_��� m  [_�j
�j 
pcls� o  Z[�i�i 0 theframe theFrame� m  _b�h
�h 
reco� k  f��� ��� r  fs��� n  fo��� o  ko�g�g 	0 width  � n  fk��� o  gk�f�f 0 size  � o  fg�e�e 0 theframe theFrame� o      �d�d 0 	thiswidth 	thisWidth� ��c� r  t���� n  t}��� o  y}�b�b 
0 height  � n  ty��� o  uy�a�a 0 size  � o  tu�`�` 0 theframe theFrame� o      �_�_ 0 buttonheight buttonHeight�c  �k  � k  ���� ��� r  ����� n  ����� 4  ���^�
�^ 
cobj� m  ���]�] � n  ����� 4  ���\�
�\ 
cobj� m  ���[�[ � o  ���Z�Z 0 theframe theFrame� o      �Y�Y 0 	thiswidth 	thisWidth� ��X� r  ����� n  ����� 4  ���W�
�W 
cobj� m  ���V�V � n  ����� 4  ���U�
�U 
cobj� m  ���T�T � o  ���S�S 0 theframe theFrame� o      �R�R 0 buttonheight buttonHeight�X  � ��� Z  �� �Q�P  F  �� H  �� o  ���O�O 0 equalwidths equalWidths A  �� o  ���N�N 0 	thiswidth 	thisWidth o  ���M�M (0 minimumbuttonwidth minimumButtonWidth k  �� 	 r  ��

 o  ���L�L (0 minimumbuttonwidth minimumButtonWidth o      �K�K 0 	thiswidth 	thisWidth	 �J l ���I�H n �� I  ���G�F�G 0 setframesize_ setFrameSize_ �E J  ��  o  ���D�D 0 	thiswidth 	thisWidth �C o  ���B�B 0 buttonheight buttonHeight�C  �E  �F   o  ���A�A 0 
thisbutton 
thisButton�I  �H  �J  �Q  �P  �  r  �� [  �� o  ���@�@ "0 minaccviewwidth minAccViewWidth o  ���?�? 0 	thiswidth 	thisWidth o      �>�> "0 minaccviewwidth minAccViewWidth �= Z ���<�; ?  ��  o  ���:�: 0 	thiswidth 	thisWidth  o  ���9�9  0 minbuttonwidth minButtonWidth r  ��!"! o  ���8�8 0 	thiswidth 	thisWidth" o      �7�7  0 minbuttonwidth minButtonWidth�<  �;  �=  � 0 i  � o   M N�6�6 0 buttoncount buttonCount� m   N O�5�5 � m   O P�4�4��� #$# Z  �%&�3�2% o  ���1�1 0 equalwidths equalWidths& k  �'' ()( l ���0*+�0  * 1 + resize them all to the size of the biggest   + �,, V   r e s i z e   t h e m   a l l   t o   t h e   s i z e   o f   t h e   b i g g e s t) -.- X  �/�/0/ l 1�.�-1 n 232 I  �,4�+�, 0 setframesize_ setFrameSize_4 5�*5 J  66 787 o  �)�)  0 minbuttonwidth minButtonWidth8 9�(9 o  	�'�' 0 buttonheight buttonHeight�(  �*  �+  3 o  �&�& 0 abutton aButton�.  �-  �/ 0 abutton aButton0 o  ���%�% 0 
allbuttons 
allButtons. :�$: r  ;<; ]  =>= o  �#�# 0 buttoncount buttonCount> o  �"�"  0 minbuttonwidth minButtonWidth< o      �!�! "0 minaccviewwidth minAccViewWidth�$  �3  �2  $ ?� ? r  )@A@ J  #BB CDC o   �� 0 
allbuttons 
allButtonsD E�E o   !�� "0 minaccviewwidth minAccViewWidth�  A n     FGF o  $(�� 0 handlerresult handlerResultG  f  #$�   � HIH l     ����  �  �  I JKJ i  ��LML I      �N�� "0 closethewindow_ closeTheWindow_N O�O o      �� 0 	thebutton 	theButton�  �  M n    PQP I    �R�� (0 stopmodalwithcode_ stopModalWithCode_R S�S l   
T��T n   
UVU I    
���� 0 tag  �  �  V o    �� 0 	thebutton 	theButton�  �  �  �  Q l    W��
W o     �	�	 0 nsapp NSApp�  �
  K XYX l     ����  �  �  Y Z[Z l     �\]�  \ Y S text field delegate methods so designated fields accept tab, enter and return keys   ] �^^ �   t e x t   f i e l d   d e l e g a t e   m e t h o d s   s o   d e s i g n a t e d   f i e l d s   a c c e p t   t a b ,   e n t e r   a n d   r e t u r n   k e y s[ _`_ i  ��aba I      �c�� N0 %control_textview_docommandbyselector_ %control_textView_doCommandBySelector_c ded o      �� 0 
thecontrol 
theControle fgf o      �� 0 thetextview theTextViewg h� h o      ���� 0 thesel theSel�   �  b k     (ii jkj Z     %lmn��l =     opo o     ���� 0 thesel theSelp m    qq �rr  i n s e r t N e w l i n e :m k    ss tut n   vwv I    ��x���� F0 !insertnewlineignoringfieldeditor_ !insertNewlineIgnoringFieldEditor_x y��y  f    ��  ��  w o    ���� 0 thetextview theTextViewu z��z L    {{ m    ��
�� boovtrue��  n |}| =    ~~ o    ���� 0 thesel theSel m    �� ���  i n s e r t T a b :} ���� k    !�� ��� n   ��� I    ������� >0 inserttabignoringfieldeditor_ insertTabIgnoringFieldEditor_� ����  f    ��  ��  � o    ���� 0 thetextview theTextView� ���� L    !�� m     ��
�� boovtrue��  ��  ��  k ���� L   & (�� m   & '��
�� boovfals��  ` ���� l     ��������  ��  ��  ��       a��������������������������������������������������������������������������������������������������������������������������������������  � _����������������������������������������������������������������������������������������������~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g
�� 
pimr�� 0 
nsoffstate 
NSOffState�� N0 %nsstringdrawinguseslinefragmentorigin %NSStringDrawingUsesLineFragmentOrigin�� 0 	nsnoimage 	NSNoImage�� (0 nssmallcontrolsize NSSmallControlSize�� 20 nsmodalpanelwindowlevel NSModalPanelWindowLevel�  0 nsswitchbutton NSSwitchButton� .0 nsmodalresponsecancel NSModalResponseCancel�  0 nsboxseparator NSBoxSeparator� 0 nsradiobutton NSRadioButton� *0 nsroundedbezelstyle NSRoundedBezelStyle� 20 nsmomentarypushinbutton NSMomentaryPushInButton� 0 	nsonstate 	NSOnState� &0 nsradiomodematrix NSRadioModeMatrix� 00 nsbackingstorebuffered NSBackingStoreBuffered� *0 nspathstylestandard NSPathStyleStandard� $0 nscommandkeymask NSCommandKeyMask� ,0 nsmodalresponseabort NSModalResponseAbort� *0 nslefttextalignment NSLeftTextAlignment� 0 	nsnotitle 	NSNoTitle� ,0 nsregularcontrolsize NSRegularControlSize� .0 nscentertextalignment NSCenterTextAlignment� $0 nspathstylepopup NSPathStylePopUp� ,0 nsrighttextalignment NSRightTextAlignment� 0 nslineborder NSLineBorder� &0 nsminicontrolsize NSMiniControlSize� (0 nstitledwindowmask NSTitledWindowMask� 0 nsimage NSImage� 0 nsimageview NSImageView� 0 nsmatrix NSMatrix� 0 nspathcontrol NSPathControl� 0 nspopupbutton NSPopUpButton� 0 nsfont NSFont� 20 nsmodalpanelrunloopmode NSModalPanelRunLoopMode� 0 nsview NSView� 0 nsapp NSApp� 0 nsbox NSBox� 0 nswindow NSWindow� 0 nsbuttoncell NSButtonCell� 0 nsobject NSObject� 0 nstextfield NSTextField� 0 nsstring NSString� 	0 NSURL  � 0 nsscreen NSScreen� 0 nsalert NSAlert� 0 nsbutton NSButton� *0 nsfontattributename NSFontAttributeName� 0 nsthread NSThread� 0 nsdictionary NSDictionary� (0 nsattributedstring NSAttributedString� &0 nssecuretextfield NSSecureTextField� "0 buttonsideinset buttonSideInset� 0 buttonyvalue buttonYValue� $0 accviewsideinset accViewSideInset�� 0 accviewyvalue accViewYValue�� 0 accviewtopgap accViewTopGap�� (0 minimumbuttonwidth minimumButtonWidth�� 0 
returncode 
returnCode�� 0 handlerresult handlerResult
�� .!AScDiEwnull���     ctxt
�� .!ASc!CbSnull���     ****
�� .!AScDiEanull���     ****
�� .!ASuCrLanull���     ctxt
�� .!ASuMlWdnull���     ****
�� .!ASuMlDpnull���     ctxt
�� .!ASuCrTfnull���     ctxt
�� .!ASuCrSfnull���     ctxt
�� .!ASuCrLfnull���     ctxt
�� .!ASuCrLsnull���     ctxt
�� .!ASuCrPonull���     ****
� .!ASuCrPlnull���     ****
�~ .!ASuCrCbnull���     ****
�} .!ASuCrLcnull���     ctxt
�| .!ASuCrPcnull���     ctxt
�{ .!ASuCrP+null���     ctxt
�z .!ASuCrManull���     ****
�y .!ASuCrLmnull���     ****
�x .!ASuCrRunull���     long
�w .!ASuCrIvnull���     ctxt�v :0 fontofcontrolsize_boldtype_ fontOfControlSize_boldType_�u B0 displayenhancedalertmainthread_ displayEnhancedAlertMainThread_�t D0  prepareenhancedwindowmainthread_  prepareEnhancedWindowMainThread_�s B0 showthewindowandwaitmainthread_ showTheWindowAndWaitMainThread_�r 00 createlabelmainthread_ createLabelMainThread_�q 00 createfieldmainthread_ createFieldMainThread_�p <0 createsecurefieldmainthread_ createSecureFieldMainThread_�o 00 createpopupmainthread_ createPopupMainThread_�n 60 createcheckboxmainthread_ createCheckboxMainThread_�m <0 createpathcontrolmainthread_ createPathControlMainThread_�l 20 creatematrixmainthread_ createMatrixMainThread_�k .0 createrulemainthread_ createRuleMainThread_�j 80 createimageviewmainthread_ createImageViewMainThread_�i <0 createbuttonsviewmainthread_ createButtonsViewMainThread_�h "0 closethewindow_ closeTheWindow_�g N0 %control_textview_docommandbyselector_ %control_textView_doCommandBySelector_� �f��f �  ������ �e '�d
�e 
vers�d  � �c��b
�c 
cobj� ��   �a
�a 
osax�b  � �`��_
�` 
cobj� ��   �^ 0
�^ 
frmk�_  � �]��\
�] 
cobj� ��   �[ 6
�[ 
frmk�\  � �Z��Y
�Z 
cobj� ��   �X ?
�X 
frmk�Y  ��  �� ��  �� �� �� ��  �� �� �� �� �� ��  �� ��  ��    �����  ��  ��  �� �� �� �� �� �� � �� �W�V
�W misccura�V 0 nsimage NSImage� �� �U�T
�U misccura�T 0 nsimageview NSImageView� �� �S�R
�S misccura�R 0 nsmatrix NSMatrix� �� �Q�P
�Q misccura�P 0 nspathcontrol NSPathControl� �� �O�N
�O misccura�N 0 nspopupbutton NSPopUpButton� �� �M�L
�M misccura�L 0 nsfont NSFont� �� �K�J
�K misccura�J 20 nsmodalpanelrunloopmode NSModalPanelRunLoopMode� �� �I�H
�I misccura�H 0 nsview NSView� �� �G�F
�G misccura�F 0 nsapp NSApp� �� �E�D
�E misccura�D 0 nsbox NSBox� �� �C�B
�C misccura�B 0 nswindow NSWindow� �� �A�@
�A misccura�@ 0 nsbuttoncell NSButtonCell� �� �?�>
�? misccura�> 0 nsobject NSObject� �� �=�<
�= misccura�< 0 nstextfield NSTextField� �� �;�:
�; misccura�: 0 nsstring NSString� �� �9�8
�9 misccura�8 	0 NSURL  � �� �7�6
�7 misccura�6 0 nsscreen NSScreen� �� �5�4
�5 misccura�4 0 nsalert NSAlert� �� �3�2
�3 misccura�2 0 nsbutton NSButton� �� �1�0
�1 misccura�0 *0 nsfontattributename NSFontAttributeName� �� �/�.
�/ misccura�. 0 nsthread NSThread� �� �-�,
�- misccura�, 0 nsdictionary NSDictionary� �� �+�*
�+ misccura�* (0 nsattributedstring NSAttributedString� �� �)�(
�) misccura�( &0 nssecuretextfield NSSecureTextField�� �� �� �� 2�� �� Q
�� 
msng
�� 
msng� �'g�&�%���$
�' .!AScDiEwnull���     ctxt�& 0 windowtitle windowTitle�% �#�"�
�# 
!AvW�" 0 thewidth theWidth� �!� �
�! 
!AvH�  0 	theheight 	theHeight� ���
� 
!AvC� 0 controlslist controlsList� ���
� 
givu� {���� 0 giveup giveUp�  �  � ���
� 
!AcF� {���� 0 defaultfield defaultField�  
� 
msng� ���
� 
!AiP� {���� 0 initposition initPosition�  �  � ���
� 
!AvL� {����  0 cancelleftflag cancelLeftFlag�  
� boovtrue� ���
� 
btns� 0 
allbuttons 
allButtons�  � �
�	��������� ���������
 0 windowtitle windowTitle�	 0 thewidth theWidth� 0 	theheight 	theHeight� 0 controlslist controlsList� 0 giveup giveUp� 0 defaultfield defaultField� 0 initposition initPosition�  0 cancelleftflag cancelLeftFlag� 0 
allbuttons 
allButtons� 0 theerror theError�  0 	thewindow 	theWindow�� 0 buttonnumber buttonNumber�� 0 
buttonname 
buttonName��  0 controlresults controlResults�� 0 acontrol aControl�  ������������������������ ��4��������������������������������
�� misccura
�� 
msng�� (0 aeinteractwithuser AEInteractWithUser
�� 
errn�� 0 ismainthread isMainThread
�� 
bool�� 	�� D0  prepareenhancedwindowmainthread_  prepareEnhancedWindowMainThread_�� �� B0 showthewindowandwaitmainthread_ showTheWindowAndWaitMainThread_�� n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_����
�� 
cobj�� 	0 title  
�� 
ctxt
�� 
kocl
�� .corecnte****       ****��  0 iskindofclass_ isKindOfClass_�� 0 stringvalue stringValue�� 0 setdelegate_ setDelegate_�� *0 titleofselecteditem titleOfSelectedItem�� 	0 state  �� 0 URL  �� 0 path  �� 0 selectedcell selectedCell�� 	0 image  �� 0 name  �� 0 
returncode 
returnCode�$��i��m+ E�O�j )�l�Y hOb  /j+ �& *)����������vk+ Ob  :E�O)������vk+ 
Y +)렡��������vem+ Ob  :E�O)�������vem+ O�Ec  :Ob  9E�O�b    )��lhY hO�b    �E�Y �a �/j+ a &E�OjvE�O �[a a l kh �b  (k+ �& �j+ a &�6FO��k+ Y ��b  k+ �& �j+ a &�6FY ��b  -k+ �& �j+ �&�6FY l�b  k+ �& �j+ j+ a &�6FY J�b  k+ �& �j+ j+ a &�6FY (�b  k+ �& �j+ j+ a &�6FY �6F[OY�1O�)a ,FO��lv� ������� ��
�� .!ASc!CbSnull���     ****�� 0 
buttonlist 
buttonList�� ��
�� 
!btK {��������  0 buttonkeyslist buttonKeysList��  ��   ��
�� 
!beQ {�������� 0 equalwidths equalWidths��  
�� boovfals ��
�� 
dflt {�������� 0 okindex okIndex��  ��   ����
�� 
cbtn {�������� 0 cancelindex cancelIndex��  ��  ��    ������������ 0 
buttonlist 
buttonList��  0 buttonkeyslist buttonKeysList�� 0 equalwidths equalWidths�� 0 okindex okIndex�� 0 cancelindex cancelIndex ������������ 0 ismainthread isMainThread
�� 
bool�� �� <0 createbuttonsviewmainthread_ createButtonsViewMainThread_�� n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_�� 3b  /j+  �& )������vk+ Y )䠡����vem+ Ob  :� ��4��	
�
�� .!AScDiEanull���     ****� 0 maintext mainText� ��
� 
mesS�  0 theexplanation theExplanation �
� 
as A {���� 0 	styletype 	styleType�  
� !AtP*nfA ��
� 
btns� 0 buttonslist buttonsList �
� 
!suP {���� "0 showsuppression showSuppression�  
� boovfals �
� 
givu {���� 0 giveup giveUp�  �   ��
� 
!AvW� 0 thewidth theWidth ��
� 
!AvH� 0 	theheight 	theHeight ���
� 
!AvC� 0 controlslist controlsList�  	 ������������������ 0 maintext mainText�  0 theexplanation theExplanation� 0 	styletype 	styleType� 0 buttonslist buttonsList� "0 showsuppression showSuppression� 0 giveup giveUp� 0 thewidth theWidth� 0 	theheight 	theHeight� 0 controlslist controlsList� 0 stylenum styleNum� 0 theerror theError� 0 thealert theAlert� "0 suppressedstate suppressedState� 0 buttonnumber buttonNumber� 0 
buttonname 
buttonName�  0 controlresults controlResults� 0 acontrol aControl
 "������x��������������������~�}�|�{�z�y�x�w
� !AtP*riT
� !AtP*arN
� misccura
� 
msng� (0 aeinteractwithuser AEInteractWithUser
� 
errn� 0 ismainthread isMainThread
� 
bool� 	� B0 displayenhancedalertmainthread_ displayEnhancedAlertMainThread_� n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_� t0 8cancelpreviousperformrequestswithtarget_selector_object_ 8cancelPreviousPerformRequestsWithTarget_selector_object_� &0 suppressionbutton suppressionButton� 	0 state  ��
� 
rvse
� 
cobj
� 
kocl
� .corecnte****       ****�  0 iskindofclass_ isKindOfClass_� 0 stringvalue stringValue
� 
ctxt�~ *0 titleofselecteditem titleOfSelectedItem�} 0 URL  �| 0 path  �{ 0 selectedcell selectedCell�z 	0 title  �y 	0 image  �x 0 name  �w 0 
returncode 
returnCode���  lE�Y ��  jE�Y kE�O�i��m+ E�O�j )�l�Y hOb  /j+ �& )����������vk+ 
Y )렡��������vem+ O�j	 b  9b  �& b  'b  #��m+ Y hOb  :E�O�Ec  :O�j+ j+ �&E�Ob  9a #kE�O�j  
a E�Y �a ,a �/E�OjvE�O �[a a l kh ] b  (k+ �& ] j+ a &�6FY �] b  k+ �& ] j+ a &�6FY �] b  -k+ �& ] j+ �&�6FY x] b  k+ �& ] j+ j+ a &�6FY R] b  k+ �& ] j+ j+ a &�6FY ,] b  k+ �& ] j+ j+  a &�6FY �6F[OY� O�)a !,FO���mv� �v��u�t�s
�v .!ASuCrLanull���     ctxt�u 0 labelstring labelString�t �r
�r 
!Lli {�q�p�o�q 0 theleft theLeft�p  �o   �n�m
�n 
!BtM�m 0 	thebottom 	theBottom �l�k
�l 
!MxW�k 0 maxwidth maxWidth �j
�j 
!AlI {�i�h�g�i 0 	alignment  �h  
�g !LaL!LlE �f
�f 
!MuL {�e�d�c�e 0 	wrapsbool 	wrapsBool�d  
�c boovtrue �b 
�b 
!MuS {�a�`�_�a 0 controlsize controlSize�`  
�_ !CsZ!CrL  �^!�]
�^ 
!MuB! {�\�[�Z�\ 0 boldtype boldType�[  
�Z boovfals�]   �Y�X�W�V�U�T�S�R�Y 0 labelstring labelString�X 0 theleft theLeft�W 0 	thebottom 	theBottom�V 0 maxwidth maxWidth�U 0 	alignment  �T 0 	wrapsbool 	wrapsBool�S 0 controlsize controlSize�R 0 boldtype boldType �Q�P�O�N��M�Q 0 ismainthread isMainThread
�P 
bool�O �N 00 createlabelmainthread_ createLabelMainThread_�M n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_�s 9b  /j+  �& )���������vk+ Y )䠡�������vem+ Ob  :� �L
�K�J"#�I
�L .!ASuMlWdnull���     ****�K 0 listoflabels listOfLabels�J �H$%
�H 
!MuS$ {�G�F�E�G 0 controlsize controlSize�F  
�E !CsZ!CrL% �D&�C
�D 
!MuB& {�B�A�@�B 0 boldtype boldType�A  
�@ boovfals�C  " 	�?�>�=�<�;�:�9�8�7�? 0 listoflabels listOfLabels�> 0 controlsize controlSize�= 0 boldtype boldType�< 0 thefont theFont�; 0 theatts theAtts�: 0 maxwidth maxWidth�9 0 labelstring labelString�8 0 	thestring 	theString�7 0 newwidth newWidth# 	�6�5�4�3�2�1�0�/U�6 :0 fontofcontrolsize_boldtype_ fontOfControlSize_boldType_�5 <0 dictionarywithobject_forkey_ dictionaryWithObject_forKey_
�4 
kocl
�3 
cobj
�2 .corecnte****       ****�1 &0 stringwithstring_ stringWithString_�0 *0 sizewithattributes_ sizeWithAttributes_�/ 	0 width  �I `)��l+  E�Ob  0�b  .l+ E�OjE�O 9�[��l kh b  )�k+ E�O��k+ �,E�O�� �E�Y h[OY��O��� �.\�-�,'(�+
�. .!ASuMlDpnull���     ctxt�- 0 	labeltext 	labelText�, �*�))
�* 
!MxW�) 0 maxwidth maxWidth) �(*+
�( 
!MuS* {�'�&�%�' 0 controlsize controlSize�&  
�% !CsZ!CrL+ �$,�#
�$ 
!MuB, {�"�!� �" 0 boldtype boldType�!  
�  boovfals�#  ' ��������� 0 	labeltext 	labelText� 0 maxwidth maxWidth� 0 controlsize controlSize� 0 boldtype boldType� 0 thefont theFont� 0 theatts theAtts� 0 theframe theFrame� 0 	theheight 	theHeight( 
����������� :0 fontofcontrolsize_boldtype_ fontOfControlSize_boldType_� <0 dictionarywithobject_forkey_ dictionaryWithObject_forKey_� &0 stringwithstring_ stringWithString_��� T0 (boundingrectwithsize_options_attributes_ (boundingRectWithSize_options_attributes_
� 
pcls
� 
reco� 0 size  � 
0 height  
� 
cobj�+ \)��l+  E�Ob  0�b  .l+ E�Ob  )�k+ E�O���lvb  �m+ E�O��,�  ��,�,E�Y ��l/�l/E�O�k� ����-.�

� .!ASuCrTfnull���     ctxt� 0 enteredtext enteredText� �	/0
�	 
!FpL/ {���� 0 placeholder  �  0 �12
� 
!Lli1 {���� 0 theleft theLeft�  �  2 ��3
� 
!BtM� 0 	thebottom 	theBottom3 � ��4
�  
!FwI�� 0 thewidth theWidth4 ��56
�� 
!ExH5 {�������� 0 extraheight extraHeight��  ��  6 ��7��
�� 
!MlT7 {�������� 0 acceptstabs acceptsTabs��  
�� boovfals��  - ���������������� 0 enteredtext enteredText�� 0 placeholder  �� 0 theleft theLeft�� 0 	thebottom 	theBottom�� 0 thewidth theWidth�� 0 extraheight extraHeight�� 0 acceptstabs acceptsTabs. ������������� 0 ismainthread isMainThread
�� 
bool�� �� 00 createfieldmainthread_ createFieldMainThread_�� n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_�
 7b  /j+  �& )��������vk+ Y )䠡������vem+ Ob  :� ������89��
�� .!ASuCrSfnull���     ctxt�� 0 enteredtext enteredText�� ��:;
�� 
!FpL: {������ 0 placeholder  ��  ; ��<=
�� 
!Lli< {�������� 0 theleft theLeft��  ��  = ����>
�� 
!BtM�� 0 	thebottom 	theBottom> ������
�� 
!FwI�� 0 thewidth theWidth��  8 ������������ 0 enteredtext enteredText�� 0 placeholder  �� 0 theleft theLeft�� 0 	thebottom 	theBottom�� 0 thewidth theWidth9 ��������?���� 0 ismainthread isMainThread
�� 
bool�� �� <0 createsecurefieldmainthread_ createSecureFieldMainThread_�� n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_�� 3b  /j+  �& )������vk+ Y )䠡����vem+ Ob  :� ��Z����?@��
�� .!ASuCrLfnull���     ctxt�� 0 enteredtext enteredText�� ��AB
�� 
!FpLA {����a�� 0 placeholder  ��  B ��CD
�� 
!LliC {�������� 0 theleft theLeft��  ��  D ����E
�� 
!BtM�� 0 	thebottom 	theBottomE ����F
�� 
!FwI�� 0 thewidth theWidthF ��GH
�� 
!ExHG {���� 0 extraheight extraHeight�  �  H ��I
� 
!LtX� 0 thelabel theLabelI �J�
� 
!MlTJ {���� 0 acceptstabs acceptsTabs�  
� boovfals�  ? ������������ 0 enteredtext enteredText� 0 placeholder  � 0 theleft theLeft� 0 	thebottom 	theBottom� 0 thewidth theWidth� 0 extraheight extraHeight� 0 thelabel theLabel� 0 acceptstabs acceptsTabs� 0 thefield theField� 0 thetop theTop� 0 newwidth newWidth@ ���������������������
� 
Krtn� 0 thefield theField� 0 thetop theTop
� 
!FpL
� 
!Lli
� 
!BtM
� 
!FwI
� 
!ExH
� 
!MlT� 
� .!ASuCrTfnull���     ctxt
� 
cobj� 0 thelabel theLabel� 0 newwidth newWidth� 
� 
!MxW
� 
!AlI
� !LaL!LlE
� 
!MuL� 
� .!ASuCrLanull���     ctxt�� c����lv������� 
E[�k/E�Z[�l/E�ZO�����mv����a a a fa  E[�k/E�Z[�l/E�Z[�m/E�ZO���mv� ����KL�
� .!ASuCrLsnull���     ctxt� 0 enteredtext enteredText� �MN
� 
!FpLM {���� 0 placeholder  �  N �OP
� 
!LliO {���� 0 theleft theLeft�  �  P ��Q
� 
!BtM� 0 	thebottom 	theBottomQ ��R
� 
!StW� 0 thewidth theWidthR ��S
� 
!LtX� 0 thelabel theLabelS ��T
� 
!FlF� 0 	fieldleft 	fieldLeftT �U�
� 
!MlTU {���~� 0 acceptstabs acceptsTabs�  
�~ boovfals�  K �}�|�{�z�y�x�w�v�u�t�s�} 0 enteredtext enteredText�| 0 placeholder  �{ 0 theleft theLeft�z 0 	thebottom 	theBottom�y 0 thewidth theWidth�x 0 thelabel theLabel�w 0 	fieldleft 	fieldLeft�v 0 acceptstabs acceptsTabs�u 0 thetop theTop�t 0 newwidth newWidth�s 0 thefield theFieldL �r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\
�r 
Krtn�q 0 thelabel theLabel�p 0 thetop theTop�o 0 newwidth newWidth
�n 
!Lli
�m 
!BtM�l 
�k 
!MxW
�j 
!AlI
�i !LaL!LlE
�h 
!MuL�g 
�f .!ASuCrLanull���     ctxt
�e 
cobj�d �c 0 thefield theField
�b 
!FpL
�a 
!FwI
�` 
!ExH
�_ 
!MlT�^ 
�] .!ASuCrTfnull���     ctxt
�\ !LaL!LrI� ঢ n�����mv�������f� E[�k/E�Z[�l/E�Z[�m/E�ZO���E�O����lva ���a ���a ja �a  E[�k/E�Z[�l/E�ZY g�����mv���禢��a �f� E[�k/E�Z[�l/E�Z[�m/E�ZO����lva ���a ��a ja �a  E[�k/E�Z[�l/E�ZO�����v� �[b�Z�YVW�X
�[ .!ASuCrPonull���     ****�Z 0 	entrylist 	entryList�Y �WXY
�W 
!LliX {�V�U�T�V 0 theleft theLeft�U  �T  Y �S�RZ
�S 
!BtM�R 0 	thebottom 	theBottomZ �Q�P[
�Q 
!PuW�P 0 thewidth theWidth[ �O\�N
�O 
!MuD\ {�M�L�K�M 0 defaultvalue defaultValue�L  �K �N  V �J�I�H�G�F�J 0 	entrylist 	entryList�I 0 theleft theLeft�H 0 	thebottom 	theBottom�G 0 thewidth theWidth�F 0 defaultvalue defaultValueW 	�E�D�C�B�A�@�?��>
�E 
pcls
�D 
long
�C 
cobj�B 0 ismainthread isMainThread
�A 
bool�@ �? 00 createpopupmainthread_ createPopupMainThread_�> n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_�X F��,�  ��/E�Y hOb  /j+ �& )������vk+ Y )砡����vem+ Ob  :� �=��<�;]^�:
�= .!ASuCrPlnull���     ****�< 0 	entrylist 	entryList�; �9_`
�9 
!Lli_ {�8�7�6�8 0 theleft theLeft�7  �6  ` �5�4a
�5 
!BtM�4 0 	thebottom 	theBottoma �3�2b
�3 
!PuW�2 0 
popupwidth 
popupWidthb �1�0c
�1 
!MxW�0 0 thewidth theWidthc �/�.d
�/ 
!LtX�. 0 thelabel theLabeld �-�,e
�- 
!PuL�, 0 	popupleft 	popupLefte �+f�*
�+ 
!MuDf {�)�(�'�) 0 defaultvalue defaultValue�(  �' �*  ] �&�%�$�#�"�!� �����& 0 	entrylist 	entryList�% 0 theleft theLeft�$ 0 	thebottom 	theBottom�# 0 
popupwidth 
popupWidth�" 0 thewidth theWidth�! 0 thelabel theLabel�  0 	popupleft 	popupLeft� 0 defaultvalue defaultValue� 0 thetop theTop� 0 newwidth newWidth� 0 thepopup thePopup^ ������������������
�	��
� 
Krtn� 0 thelabel theLabel� 0 thetop theTop� 0 newwidth newWidth
� 
!Lli
� 
!BtM� 
� 
!MxW
� 
!AlI
� !LaL!LlE
� 
!MuL� 
� .!ASuCrLanull���     ctxt
� 
cobj� 0 thepopup thePopup
� 
!PuW
� 
!MuD�
 

�	 .!ASuCrPonull���     ****
� !LaL!LrI� �: Ʀ� ^�����mv�������f� E[�k/E�Z[�l/E�Z[�m/E�ZO��E�O����lv���a �a  E[�k/E�Z[�l/E�ZY [�����mv���禡��a �f� E[�k/E�Z[�l/E�Z[�m/E�ZO����lv���a �a  E[�k/E�Z[�l/E�ZO����a v� �J��gh�
� .!ASuCrCbnull���     ****� 0 
checktitle 
checkTitle� �ij
� 
!Llii {�� ��� 0 theleft theLeft�   ��  j ����k
�� 
!BtM�� 0 	thebottom 	theBottomk ����l
�� 
!MxW�� 0 thewidth theWidthl ��m��
�� 
!IsTm {�������� 0 initialstate initialState��  
�� boovfals��  g ������������ 0 
checktitle 
checkTitle�� 0 theleft theLeft�� 0 	thebottom 	theBottom�� 0 thewidth theWidth�� 0 initialstate initialStateh ��������u���� 0 ismainthread isMainThread
�� 
bool�� �� 60 createcheckboxmainthread_ createCheckboxMainThread_�� n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_� 3b  /j+  �& )������vk+ Y )䠡����vem+ Ob  :� �������no��
�� .!ASuCrLcnull���     ctxt�� 0 
checktitle 
checkTitle�� ��pq
�� 
!Llip {�������� 0 theleft theLeft��  ��  q ����r
�� 
!BtM�� 0 	thebottom 	theBottomr ����s
�� 
!MxW�� 0 thewidth theWidths ����t
�� 
!LtX�� 0 thelabel theLabelt ����u
�� 
!CbL�� 0 checkboxleft checkboxLeftu ��v��
�� 
!IsTv {�������� 0 
checkstate 
checkState��  
�� boovfals��  n 
���������������������� 0 
checktitle 
checkTitle�� 0 theleft theLeft�� 0 	thebottom 	theBottom�� 0 thewidth theWidth�� 0 thelabel theLabel�� 0 checkboxleft checkboxLeft�� 0 
checkstate 
checkState�� 0 thetop theTop�� 0 newwidth newWidth�� 0 thecheckbox theCheckboxo ������������������������������������������
�� 
Krtn�� 0 thelabel theLabel�� 0 thetop theTop�� 0 newwidth newWidth
�� 
!Lli
�� 
!BtM
�� 
!MxW
�� 
!AlI
�� !LaL!LlE
�� 
!MuL�� 
�� .!ASuCrLanull���     ctxt
�� 
cobj�� �� 0 thecheckbox theCheckbox�� 0 thewidth theWidth
�� 
!IsT�� 

�� .!ASuCrCbnull���     ****
�� !LaL!LrI�� �� ܥ� j�����mv��l����f� E[�k/E�Z[�l/E�Z[�m/E�ZO��E�O�����mv��棨�a �a  E[�k/E�Z[�l/E�Z[�m/E�ZY e�����mv��l楡��a �f� E[�k/E�Z[�l/E�Z[�m/E�ZO�����mv��棥a �a  E[�k/E�Z[�l/E�Z[�m/E�ZO����a v� ��	-����wx��
�� .!ASuCrPcnull���     ctxt�� 0 thepath thePath�� ��yz
�� 
!Lliy {�������� 0 theleft theLeft��  ��  z ����{
�� 
!BtM�� 0 	thebottom 	theBottom{ ����|
�� 
!CwI�� 0 thewidth theWidth| ��}��
�� 
!PoP} {�������� 0 
popsupbool 
popsUpBool��  
�� boovtrue��  w ������������ 0 thepath thePath�� 0 theleft theLeft�� 0 	thebottom 	theBottom�� 0 thewidth theWidth�� 0 
popsupbool 
popsUpBoolx ������	X��� 0 ismainthread isMainThread
�� 
bool� � <0 createpathcontrolmainthread_ createPathControlMainThread_� n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_�� 3b  /j+  �& )������vk+ Y )䠡����vem+ Ob  :� �	n��~�
� .!ASuCrP+null���     ctxt� 0 thepath thePath� ���
� 
!Lli� {���� 0 theleft theLeft�  �  � ���
� 
!BtM� 0 	thebottom 	theBottom� ���
� 
!CwI� 0 thewidth theWidth� ���
� 
!PoP� {���� 0 
popsupbool 
popsUpBool�  
� boovtrue� ���
� 
!LtX� 0 thelabel theLabel�  ~ 	���������� 0 thepath thePath� 0 theleft theLeft� 0 	thebottom 	theBottom� 0 thewidth theWidth� 0 
popsupbool 
popsUpBool� 0 thelabel theLabel�  0 thepathcontrol thePathControl� 0 thetop theTop� 0 newwidth newWidth ���~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n
� 
Krtn�  0 thepathcontrol thePathControl�~ 0 thetop theTop
�} 
!Lli
�| 
!BtM
�{ 
!CwI
�z 
!PoP�y 

�x .!ASuCrPcnull���     ctxt
�w 
cobj�v 0 thelabel theLabel�u 0 newwidth newWidth�t 
�s 
!MxW
�r 
!AlI
�q !LaL!LlE
�p 
!MuL�o 
�n .!ASuCrLanull���     ctxt� [����lv����� E[�k/E�Z[�l/E�ZO�����mv�������a fa  E[�k/E�Z[�l/E�Z[�m/E�ZO���mv� �m	��l�k���j
�m .!ASuCrManull���     ****�l 0 listofnames listOfNames�k �i��
�i 
!Lli� {�h�g�f�h 0 theleft theLeft�g  �f  � �e�d�
�e 
!BtM�d 0 	thebottom 	theBottom� �c�b�
�c 
!MxW�b 0 thewidth theWidth� �a��
�a 
!VeR� {�`�_�^�` 0 
isvertical 
isVertical�_  
�^ boovtrue� �]��\
�] 
!MuD� {�[�Z�Y�[ 0 defaultvalue defaultValue�Z  �Y �\  � �X�W�V�U�T�S�X 0 listofnames listOfNames�W 0 theleft theLeft�V 0 	thebottom 	theBottom�U 0 thewidth theWidth�T 0 
isvertical 
isVertical�S 0 defaultvalue defaultValue� �R�Q�P�O	��N�R 0 ismainthread isMainThread
�Q 
bool�P �O 20 creatematrixmainthread_ createMatrixMainThread_�N n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_�j 5b  /j+  �& )�������vk+ Y )䠡�����vem+ Ob  :� �M
�L�K���J
�M .!ASuCrLmnull���     ****�L 0 listofnames listOfNames�K �I��
�I 
!Lli� {�H�G�F�H 0 theleft theLeft�G  �F  � �E�D�
�E 
!BtM�D 0 	thebottom 	theBottom� �C�B�
�C 
!MxW�B 0 thewidth theWidth� �A��
�A 
!VeR� {�@�?�>�@ 0 
isvertical 
isVertical�?  
�> boovtrue� �=�<�
�= 
!MxL�< 0 
matrixleft 
matrixLeft� �;�:�
�; 
!LtX�: 0 thelabel theLabel� �9��8
�9 
!MuD� {�7�6�5�7 0 defaultvalue defaultValue�6  �5 �8  � �4�3�2�1�0�/�.�-�,�+�*�4 0 listofnames listOfNames�3 0 theleft theLeft�2 0 	thebottom 	theBottom�1 0 thewidth theWidth�0 0 
isvertical 
isVertical�/ 0 
matrixleft 
matrixLeft�. 0 thelabel theLabel�- 0 defaultvalue defaultValue�, 0 thetop theTop�+ 0 newwidth newWidth�* 0 	thematrix 	theMatrix� �)�(�'�&�%�$�#�"�!� ����������������
�) 
Krtn�( 0 thelabel theLabel�' 0 thetop theTop�& 0 newwidth newWidth
�% 
!Lli
�$ 
!BtM
�# 
!MxW
�" 
!AlI
�! !LaL!LlE
�  
!MuL� 
� .!ASuCrLanull���     ctxt
� 
cobj� � 0 	thematrix 	theMatrix� 0 thewidth theWidth
� 
!VeR
� 
!MuD
� .!ASuCrManull���     ****
� !LaL!LrI
� misccura� 	0 frame  � � 0 nsoffsetrect NSOffsetRect� 0 	setframe_ 	setFrame_� �J ��� n�����mv��l����f� E[�k/E�Z[�l/E�Z[�m/E�ZO���E�O�����mv��棩�a �a �� E[�k/E�Z[�l/E�Z[�m/E�ZY g�����mv��l楡��a �f� E[�k/E�Z[�l/E�Z[�m/E�ZO�����mv��棥a �a �� E[�k/E�Z[�l/E�Z[�m/E�ZO�a �j+ j��a m+ k+ O����a v� �
������
� .!ASuCrRunull���     long� 0 	thebottom 	theBottom� ���
� 
!Lli� {�
�	��
 0 theleft theLeft�	  �  � ���
� 
!RwI� 0 thewidth theWidth�  � ���� 0 	thebottom 	theBottom� 0 theleft theLeft� 0 thewidth theWidth� �� ��
���� 0 ismainthread isMainThread
�  
bool�� .0 createrulemainthread_ createRuleMainThread_�� n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_� /b  /j+  �& )���mvk+ Y )㠡�mvem+ Ob  :� ��
���������
�� .!ASuCrIvnull���     ctxt�� 0 	posixpath 	posixPath�� ����
�� 
!Lli� {�������� 0 theleft theLeft��  ��  � �����
�� 
!BtM�� 0 	thebottom 	theBottom� �����
�� 
!FwV�� 0 	viewwidth 	viewWidth� �����
�� 
!EvH�� 0 
viewheight 
viewHeight� ����
�� 
!MsC� {�������� 0 
imagescale 
imageScale��  
�� !IsC!IsD� �����
�� 
!MsA� {��������  0 imagealignment imageAlignment��  
�� !LaL!LcE��  � ���������������� 0 	posixpath 	posixPath�� 0 theleft theLeft�� 0 	thebottom 	theBottom�� 0 	viewwidth 	viewWidth�� 0 
viewheight 
viewHeight�� 0 
imagescale 
imageScale��  0 imagealignment imageAlignment� ��������(���� 0 ismainthread isMainThread
�� 
bool�� �� 80 createimageviewmainthread_ createImageViewMainThread_�� n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_�� 7b  /j+  �& )��������vk+ Y )䠡������vem+ Ob  :� ��B���������� :0 fontofcontrolsize_boldtype_ fontOfControlSize_boldType_�� ����� �  ������ 0 controlsize controlSize�� 0 boldtype boldType��  � �������� 0 controlsize controlSize�� 0 boldtype boldType�� 0 thefontsize theFontSize� ����������������
�� !CsZ!CrL�� >0 systemfontsizeforcontrolsize_ systemFontSizeForControlSize_
�� !CsZ!Cmc
�� !CsZ!CsC
�� !CsZ!CrC�� �� .0 boldsystemfontofsize_ boldSystemFontOfSize_�� &0 systemfontofsize_ systemFontOfSize_�� w��  b   b  k+ E�Y A��  b   b  k+ E�Y (��  b   b  k+ E�Y ��  �E�Y hO� b   �k+ Y b   �k+ � ������������� B0 displayenhancedalertmainthread_ displayEnhancedAlertMainThread_�� ����� �  ���� 0 thearg theArg��  � ������������������ 0 thearg theArg�� 0 maintext mainText��  0 theexplanation theExplanation� 0 stylenum styleNum� 0 buttonslist buttonsList� "0 showsuppression showSuppression� 0 giveup giveUp� 0 thewidth theWidth� 0 	theheight 	theHeight� 0 controlslist controlsList� $0 theaccessoryview theAccessoryView� 0 thealert theAlert� 0 anentry anEntry� ����������������������� �����
� 
list
� 
cobj� � � � � � 	� 	0 alloc  �  0 initwithframe_ initWithFrame_� 0 setsubviews_ setSubviews_
� 
rvse� 0 init  �  0 setalertstyle_ setAlertStyle_� "0 setmessagetext_ setMessageText_� *0 setinformativetext_ setInformativeText_
� 
kocl
� .corecnte****       ****� *0 addbuttonwithtitle_ addButtonWithTitle_� 80 setshowssuppressionbutton_ setShowsSuppressionButton_� &0 setaccessoryview_ setAccessoryView_� 
0 window  � B0 setautorecalculateskeyviewloop_ setAutorecalculatesKeyViewLoop_
� 
msng� `0 .performselector_withobject_afterdelay_inmodes_ .performSelector_withObject_afterDelay_inModes_� 0 runmodal runModal� 0 
returncode 
returnCode� 0 handlerresult handlerResult����&E[�k/E�Z[�l/E�Z[�m/E�Z[��/E�Z[��/E�Z[��/E�Z[��/E�Z[��/E�Z[��/E�ZOb  "j+ jjlv��lvlvk+ 	E�O��k+ 
O��,E�Ob  ,j+ j+ E�O� M*�k+ O*�k+ O*�k+ O �[a �l kh *�k+ [OY��O*�k+ O*�k+ O*j+ ek+ UO�j b  #a a �b  !kv�+ Y hO�j+ )a ,FO�)a ,F� �<������ D0  prepareenhancedwindowmainthread_  prepareEnhancedWindowMainThread_� ��� �  �� 0 thearg theArg�  � ������������������� 0 thearg theArg� 0 windowtitle windowTitle� 0 thewidth theWidth� 0 	theheight 	theHeight� 0 controlslist controlsList� 0 giveup giveUp� 0 defaultfield defaultField� 0 initposition initPosition�  0 cancelleftflag cancelLeftFlag� 0 
allbuttons 
allButtons� 0 windowwidth windowWidth� 0 
buttonleft 
buttonLeft� 0 abutton aButton� 0 theframe theFrame� 0 buttonwidth buttonWidth� 0 	thewindow 	theWindow� "0 thiscontentview thisContentView� $0 theaccessoryview theAccessoryView� ����~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f
� 
list
� 
cobj� �~ �} �| �{ �z 	
�y 
rvse
�x 
kocl
�w .corecnte****       ****�v 	0 frame  
�u 
pcls
�t 
reco�s 0 size  �r 	0 width  �q "0 setframeorigin_ setFrameOrigin_�p 0 tag  
�o 
bool�n 	0 alloc  �m \0 ,initwithcontentrect_stylemask_backing_defer_ ,initWithContentRect_styleMask_backing_defer_�l 0 	setlevel_ 	setLevel_�k 0 contentview contentView�j 0 setsubviews_ setSubviews_�i  0 initwithframe_ initWithFrame_�h 0 addsubview_ addSubview_�g B0 setautorecalculateskeyviewloop_ setAutorecalculatesKeyViewLoop_�f 0 handlerresult handlerResult�q��&E[�k/E�Z[�l/E�Z[�m/E�Z[��/E�Z[��/E�Z[��/E�Z[��/E�Z[��/E�Z[��/E�ZO�b  5l E�O�b  3E�O M��,[��l 
kh �j+ E�O��,�  ��,�,E�Y ��l/�k/E�O��E�O��b  4lvk+ [OY��O�	 ��k/j+ b   a & ��k/b  3b  4lvk+ Y hOb  %j+ jjlv��b  6b  7lvlvb  b  e�+ E�O�b  k+ O�j+ E^ O] �k+ Ob  "j+ b  5b  6lv��lvlvk+ E^ O] �k+ O] ] k+ O�ek+ O�)a ,F� �e-�d�c���b�e B0 showthewindowandwaitmainthread_ showTheWindowAndWaitMainThread_�d �a��a �  �`�` 0 thearg theArg�c  � �_�^�]�\�[�Z�Y�X�W�V�U�_ 0 thearg theArg�^ 0 	thewindow 	theWindow�] 0 defaultfield defaultField�\ 0 giveup giveUp�[ 0 initposition initPosition�Z 0 windowtitle windowTitle�Y 0 screenframe screenFrame�X 0 screenwidth screenWidth�W 0 screenheight screenHeight�V 0 they theY�U 0 windowframe windowFrame� �T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B��A�@�?�>�=�<
�T 
list
�S 
cobj�R �Q 
�P 
msng�O *0 makefirstresponder_ makeFirstResponder_�N 
0 center  �M 0 
mainscreen 
mainScreen�L 	0 frame  
�K 
pcls
�J 
reco�I 0 size  �H 	0 width  �G 
0 height  �F 
0 origin  �E &0 setframe_display_ setFrame_display_�D 0 orderfront_ orderFront_�C 0 	settitle_ 	setTitle_
�B 
long�A `0 .performselector_withobject_afterdelay_inmodes_ .performSelector_withObject_afterDelay_inModes_�@ (0 runmodalforwindow_ runModalForWindow_�? 0 
returncode 
returnCode
�> 
bool�= t0 8cancelpreviousperformrequestswithtarget_selector_object_ 8cancelPreviousPerformRequestsWithTarget_selector_object_�< 0 	orderout_ 	orderOut_�bT��&E[�k/E�Z[�l/E�Z[�m/E�Z[��/E�Z[��/E�ZO�� ��k+ Y hO��&E�O�jv  
�j+ Y �b  +j+ j+ E�O��,�  ��,E[�,E�Z[�,E�ZY ��l/E[�k/E�Z[�l/E�ZO���l/E�O�j+ E�O��,�  ��k/���,�,lv��,FY ��k/���l/�l/lv��k/FO��el+ O�)k+ O��k+ O�a &j b  #a �b  !kv�+ Y hOb  #�k+ )a ,FO�a &j	 b  9b  a & b  'b  #a �m+ Y hO�)k+ � �;+�:�9���8�; 00 createlabelmainthread_ createLabelMainThread_�: �7��7 �  �6�6 0 thearg theArg�9  � �5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�5 0 thearg theArg�4 0 labelstring labelString�3 0 theleft theLeft�2 0 	thebottom 	theBottom�1 0 maxwidth maxWidth�0 0 	alignment  �/ 0 	wrapsbool 	wrapsBool�. 0 controlsize controlSize�- 0 boldtype boldType�, 0 thelabel theLabel�+ 0 thefont theFont�* 0 theframe theFrame�) 0 newwidth newWidth�( 0 	theheight 	theHeight�' 0 	theorigin 	theOrigin� &�&�%�$�#�"�!� �����|������������������
�	��$��
�& 
list
�% 
cobj�$ �# �" �! �  � 	0 alloc  � �  0 initwithframe_ initWithFrame_� :0 fontofcontrolsize_boldtype_ fontOfControlSize_boldType_
� !LaL!LrI
� 
bool� 0 setalignment_ setAlignment_
� !LaL!LcE� 0 setfont_ setFont_� :0 setpreferredmaxlayoutwidth_ setPreferredMaxLayoutWidth_� "0 setstringvalue_ setStringValue_� 0 seteditable_ setEditable_�  0 setselectable_ setSelectable_� 0 setbordered_ setBordered_� *0 setdrawsbackground_ setDrawsBackground_� 0 cell  � 0 	setwraps_ 	setWraps_� 0 fittingsize fittingSize� 0 setframesize_ setFrameSize_� 	0 frame  
� 
pcls
�
 
reco�	 0 size  � 	0 width  � 
0 height  � "0 setframeorigin_ setFrameOrigin_� 0 handlerresult handlerResult�8���&E[�k/E�Z[�l/E�Z[�m/E�Z[��/E�Z[��/E�Z[��/E�Z[��/E�Z[��/E�ZOb  (j+ ��lv��lvlvk+ 	E�O)��l+ 
E�O�� 
 ���& �b  k+ Y )�� 
 	�a �& �b  k+ Y �b  k+ O� =*�k+ O*�k+ O*�k+ O*fk+ O*ek+ O*fk+ O*fk+ O*j+ �k+ UO��j+ k+ O�j+ E�O�a ,a   �a ,E[a  ,E�Z[a !,E�ZY ��l/E[�k/E�Z[�l/E�ZO�� 
 	�a "�& ����lvE�Y '�� 
 	�a #�& ���l!�lvE�Y ��lvE�O��k+ $O����mv)a %,F� �X������ 00 createfieldmainthread_ createFieldMainThread_� � ��  �  ���� 0 thearg theArg�  � 
���������������������� 0 thearg theArg�� 0 enteredtext enteredText�� 0 placeholder  �� 0 theleft theLeft�� 0 	thebottom 	theBottom�� 0 thewidth theWidth�� 0 extraheight extraHeight�� 0 acceptstabs acceptsTabs�� 0 thetop theTop�� 0 thefield theField� ����������������������������������
�� 
list
�� 
cobj�� �� �� �� �� �� 	0 alloc  ��  0 initwithframe_ initWithFrame_�� 0 seteditable_ setEditable_�� 0 setbezeled_ setBezeled_�� 0 cell  �� .0 setplaceholderstring_ setPlaceholderString_�� 0 	setwraps_ 	setWraps_�� "0 setstringvalue_ setStringValue_�� 0 setdelegate_ setDelegate_�� 0 handlerresult handlerResult� ���&E[�k/E�Z[�l/E�Z[�m/E�Z[��/E�Z[��/E�Z[��/E�Z[��/E�ZO���E�Ob  (j+ ��lv���lvlvk+ E�O� E*ek+ 	O*ek+ 
O*j+ �k+ O�j *j+ ek+ Y hO*�k+ O� *)k+ Y hUO��lv)a ,F� ������������� <0 createsecurefieldmainthread_ createSecureFieldMainThread_�� ����� �  ���� 0 thearg theArg��  � ������������������ 0 thearg theArg�� 0 enteredtext enteredText�� 0 placeholder  �� 0 theleft theLeft�� 0 	thebottom 	theBottom�� 0 thewidth theWidth�� 0 thetop theTop�� 0 thefield theField� ����������������������������
�� 
list
�� 
cobj�� �� �� �� 	0 alloc  ��  0 initwithframe_ initWithFrame_�� 0 seteditable_ setEditable_�� 0 setbezeled_ setBezeled_�� 0 cell  �� 0 	setwraps_ 	setWraps_�� .0 setplaceholderstring_ setPlaceholderString_�� "0 setstringvalue_ setStringValue_�� 0 handlerresult handlerResult�� ��&E[�k/E�Z[�l/E�Z[�m/E�Z[��/E�Z[��/E�ZO��E�Ob  2j+ ��lv���lvlvk+ E�O� (*ek+ O*ek+ O*j+ 	fk+ 
O*�k+ O*�k+ UO��lv)�,F� ��G���������� 00 createpopupmainthread_ createPopupMainThread_�� ����� �  ���� 0 thearg theArg��  � ����������� 0 thearg theArg�� 0 	entrylist 	entryList� 0 theleft theLeft� 0 	thebottom 	theBottom� 0 thewidth theWidth� 0 defaultvalue defaultValue� 0 thepopup thePopup� 
����������
� 
list
� 
cobj� � � 	0 alloc  � � 40 initwithframe_pullsdown_ initWithFrame_pullsDown_� *0 additemswithtitles_ addItemsWithTitles_� ,0 selectitemwithtitle_ selectItemWithTitle_� 0 handlerresult handlerResult�� \��&E[�k/E�Z[�l/E�Z[�m/E�Z[��/E�Z[��/E�ZOb  j+ ��lv��lvlvfl+ E�O��k+ O��k+ O���lv)�,F� �������� 60 createcheckboxmainthread_ createCheckboxMainThread_� ��� �  �� 0 thearg theArg�  � 
����������� 0 thearg theArg� 0 
checktitle 
checkTitle� 0 theleft theLeft� 0 	thebottom 	theBottom� 0 thewidth theWidth� 0 initialstate initialState� 0 thecheckbox theCheckbox� 0 thefont theFont� 0 ismain isMain� 0 theframe theFrame� �����������������������
� 
list
� 
cobj� � � 	0 alloc  � �  0 initwithframe_ initWithFrame_
� !CsZ!CrL� :0 fontofcontrolsize_boldtype_ fontOfControlSize_boldType_�  0 setbuttontype_ setButtonType_� 0 	settitle_ 	setTitle_� 0 	setstate_ 	setState_� 0 setfont_ setFont_� 0 ismainthread isMainThread
� 
bool� 0 fittingsize fittingSize� 0 setframesize_ setFrameSize_� 	0 frame  
� 
pcls
� 
reco� 0 size  � 	0 width  � 0 handlerresult handlerResult� Ġ�&E[�k/E�Z[�l/E�Z[�m/E�Z[��/E�Z[��/E�ZOb  -j+ ��lv��lvlvk+ E�O)�fl+ E�O� !*b  k+ 	O*�k+ 
O*�k+ O*�k+ UOb  /j+ �&E�O��j+ k+ O�j+ E�O�a ,a   �a ,a ,E�Y ��l/�k/E�O����mv)a ,F� �$������ <0 createpathcontrolmainthread_ createPathControlMainThread_� ��� �  �� 0 thearg theArg�  � 	������~�}�|�{� 0 thearg theArg� 0 thepath thePath� 0 theleft theLeft� 0 	thebottom 	theBottom� 0 thewidth theWidth�~ 0 
popsupbool 
popsUpBool�} 0 annsurl anNSURL�|  0 thepathcontrol thePathControl�{ 0 thetop theTop� �z�y�x�w�v�u�t�s�r�q�p�o
�z 
list
�y 
cobj�x �w �v $0 fileurlwithpath_ fileURLWithPath_�u 	0 alloc  �t �s  0 initwithframe_ initWithFrame_�r 0 setpathstyle_ setPathStyle_�q �p 0 seturl_ setURL_�o 0 handlerresult handlerResult� ���&E[�k/E�Z[�l/E�Z[�m/E�Z[��/E�Z[��/E�ZOb  *�k+ E�O� /b  j+ ��lv��lvlvk+ E�O�b  k+ O��E�Y ,b  j+ ��lv��lvlvk+ E�O�b  k+ O��E�O��k+ 
O��lv)�,F� �n��m�l���k�n 20 creatematrixmainthread_ createMatrixMainThread_�m �j��j �  �i�i 0 thearg theArg�l  � �h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�h 0 thearg theArg�g 0 listofnames listOfNames�f 0 theleft theLeft�e 0 	thebottom 	theBottom�d 0 thewidth theWidth�c 0 
isvertical 
isVertical�b 0 defaultvalue defaultValue�a 0 thecount theCount�` 0 rowcount rowCount�_ 0 colcount colCount�^ 0 thedepth theDepth�] 0 	thematrix 	theMatrix�\ 0 thefont theFont�[ 0 thecells theCells�Z 0 i  �Y 0 ismain isMain�X 0 theframe theFrame�W 0 newwidth newWidth�  �V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7
�V 
list
�U 
cobj�T �S �R 
�Q 
pcls
�P 
long
�O .corecnte****       ****�N �M 	0 alloc  �L x0 :initwithframe_mode_cellclass_numberofrows_numberofcolumns_ :initWithFrame_mode_cellClass_numberOfRows_numberOfColumns_�K $0 deselectallcells deselectAllCells
�J !CsZ!CrL�I :0 fontofcontrolsize_boldtype_ fontOfControlSize_boldType_�H 	0 cells  �G  0 setbuttontype_ setButtonType_�F 0 	settitle_ 	setTitle_�E 20 selectcellatrow_column_ selectCellAtRow_column_�D 0 setfont_ setFont_�C �B ,0 setintercellspacing_ setIntercellSpacing_�A <0 setautorecalculatescellsize_ setAutorecalculatesCellSize_�@ (0 setautosizescells_ setAutosizesCells_�? 0 ismainthread isMainThread
�> 
bool�= 0 sizetocells sizeToCells�< 	0 frame  
�; 
reco�: 0 size  �9 	0 width  �8 0 setframesize_ setFrameSize_�7 0 handlerresult handlerResult�k���&E[�k/E�Z[�l/E�Z[�m/E�Z[��/E�Z[��/E�Z[��/E�ZO��,�  ��/E�Y hO�j E�O� �E�OkE�Y 	�E�OkE�O�� �kl E�Ob  j+ 	��lv��lvlvb  b  &���+ 
E�O�j+ O)�fl+ E�O�j+ �&E�O ]k�j kh ��/b  	k+ O��/��/k+ O��/�  � ��kjl+ Y �j�kl+ Y hO��/�k+ [OY��O�a llvk+ O�ek+ O�ek+ Ob  /j+ a &E�O�j+ O�j+ E^ O] �,a   ] a ,a ,E^ Y ] �l/�k/E^ O�] �lvk+ O���] mv)a ,F� �6��5�4���3�6 .0 createrulemainthread_ createRuleMainThread_�5 �2��2 �  �1�1 0 thearg theArg�4  � �0�/�.�-�,�0 0 thearg theArg�/ 0 	thebottom 	theBottom�. 0 theleft theLeft�- 0 thewidth theWidth�, 0 therule theRule� �+�*�)�(�'�&�%�$
�+ 
list
�* 
cobj�) 	0 alloc  �(  0 initwithframe_ initWithFrame_�' 0 setboxtype_ setBoxType_�& &0 settitleposition_ setTitlePosition_�%  0 setbordertype_ setBorderType_�$ 0 handlerresult handlerResult�3 e��&E[�k/E�Z[�l/E�Z[�m/E�ZOb  $j+ ��lv�klvlvk+ E�O� "*b  k+ O*b  k+ O*b  k+ UO��klv)�,F� �#�"�!��� �# 80 createimageviewmainthread_ createImageViewMainThread_�" ��� �  �� 0 thearg theArg�!  � �������������� 0 thearg theArg� 0 	posixpath 	posixPath� 0 theleft theLeft� 0 	thebottom 	theBottom� 0 	viewwidth 	viewWidth� 0 
viewheight 
viewHeight� 0 
imagescale 
imageScale�  0 imagealignment imageAlignment� 0 theimage theImage� 0 	imageview 	imageView� 0 thealignments theAlignments� 0 i  � 0 	thescales 	theScales� �������
�	�=�������� ����������������������
� 
list
� 
cobj� � � � �
 	0 alloc  �	 20 initwithcontentsoffile_ initWithContentsOfFile_
� 
msng�  0 initwithframe_ initWithFrame_� 0 	setimage_ 	setImage_
� !LaL!LcE
� !LiL!LtL
� !LiL!LtR
� !LaL!LlE
� !LiL!LbL
�  !LiL!LbR
�� !LaL!LrI
�� !LiL!LbB�� 	
�� .corecnte****       ****�� (0 setimagealignment_ setImageAlignment_
�� !IsC!IsD
�� !IsC!IsF
�� !IsC!IsN
�� !IsC!IsP�� $0 setimagescaling_ setImageScaling_�� 0 handlerresult handlerResult� ��&E[�k/E�Z[�l/E�Z[�m/E�Z[��/E�Z[��/E�Z[��/E�Z[��/E�ZOb  j+ �k+ E�O��  )j�%Y hOb  j+ ��lv��lvlvk+ 
E�O��k+ O�����a a a a a vE�O )k�j kh ��/�  ��kk+ OY h[OY��Oa a a a �vE�O )k�j kh ��/�  ��kk+ OY h[OY��O���lv)a ,F� ������������� <0 createbuttonsviewmainthread_ createButtonsViewMainThread_�� ����� �  ���� 0 thearg theArg��  � ���������������������������������������� 0 thearg theArg�� 0 
buttonlist 
buttonList��  0 buttonkeyslist buttonKeysList�� 0 equalwidths equalWidths�� 0 cancelindex cancelIndex�� 0 okindex okIndex��  0 minbuttonwidth minButtonWidth�� 0 buttoncount buttonCount�� "0 buttonkeyscount buttonKeysCount�� 0 
allbuttons 
allButtons�� "0 minaccviewwidth minAccViewWidth�� 0 i  �� 0 
thisbutton 
thisButton��  0 asbuttonnumber asButtonNumber�� 0 thekey theKey�� 0 theframe theFrame�� 0 	thiswidth 	thisWidth�� 0 buttonheight buttonHeight�� 0 abutton aButton� "����������������������������E���������������������������������
�� 
list
�� 
cobj�� �� 
�� .corecnte****       ****�� 	0 alloc  ��  ��  0 initwithframe_ initWithFrame_��  0 setbuttontype_ setButtonType_��  0 setbezelstyle_ setBezelStyle_�� &0 setimageposition_ setImagePosition_�� 0 settag_ setTag_�� 0 	settitle_ 	setTitle_�� 0 
settarget_ 
setTarget_�� 0 
setaction_ 
setAction_
�� 
bool
�� 
cha �� 
�� kfrmID  �� &0 setkeyequivalent_ setKeyEquivalent_
�� 
ret 
�� 
leng�� >0 setkeyequivalentmodifiermask_ setKeyEquivalentModifierMask_�� 0 fittingsize fittingSize�� 0 setframesize_ setFrameSize_�� 	0 frame  
�� 
pcls
�� 
reco� 0 size  � 	0 width  � 
0 height  
� 
kocl� 0 handlerresult handlerResult��*��&E[�k/E�Z[�l/E�Z[�m/E�Z[��/E�Z[��/E�ZOb  8EQ�O�j E�O�j E�OjvE�OjE�O��kih b  -j+ jb  4lv��lvlvk+ E�O�b  k+ O�b  
k+ 	O�b  k+ 
O��k+ O���/k+ O�)k+ O��k+ O��kE�O�� 
 ��/� a &  �)a a a 0k+ O�b  k+ Y X�� 
 ��/� a & �_ k+ Y :��	 ��/a ,ja & "��/a k/E�O��k+ O�b  k+ Y hO��j+ k+ O��5FO�j+ E�O�a ,a    �a ,a ,E^ O�a ,a ,E^ Y ��l/�k/E^ O��l/�l/E^ O�	 ] b  8a & b  8E^ O�] ] lvk+ Y hO�] E�O] � 
] E�Y h[OY�hO� / #�[a  �l kh ] �] lvk+ [OY��O�� E�Y hO��lv)a !,F� �M������ "0 closethewindow_ closeTheWindow_� ��� �  �� 0 	thebutton 	theButton�  � �� 0 	thebutton 	theButton� ��� 0 tag  � (0 stopmodalwithcode_ stopModalWithCode_� b  #�j+  k+ � �b������ N0 %control_textview_docommandbyselector_ %control_textView_doCommandBySelector_� ��� �  ���� 0 
thecontrol 
theControl� 0 thetextview theTextView� 0 thesel theSel�  � ���� 0 
thecontrol 
theControl� 0 thetextview theTextView� 0 thesel theSel� q���� F0 !insertnewlineignoringfieldeditor_ !insertNewlineIgnoringFieldEditor_� >0 inserttabignoringfieldeditor_ insertTabIgnoringFieldEditor_� )��  �)k+ OeY ��  �)k+ OeY hOf ascr  ��ޭ