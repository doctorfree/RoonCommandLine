FasdUAS 1.101.10   ��   ��    k             l     ��  ��    C =  This sample shows how to build a reasonably complex dialog.     � 	 	 z     T h i s   s a m p l e   s h o w s   h o w   t o   b u i l d   a   r e a s o n a b l y   c o m p l e x   d i a l o g .   
  
 l     ��������  ��  ��        l     ��  ��    H B Dialog Toolkit Plus.scptd should be in ~/Library/Script Libraries     �   �   D i a l o g   T o o l k i t   P l u s . s c p t d   s h o u l d   b e   i n   ~ / L i b r a r y / S c r i p t   L i b r a r i e s      x     ��  ��    1      ��
�� 
ascr  �� ��
�� 
minv  m         �    2 . 4��        x    �� ����    2  	 ��
�� 
osax��        x    "��  ��    4  ���� 
�� 
scpt  m  ��     � ! ! & D i a l o g   T o o l k i t   P l u s  �� "��
�� 
minv " m       # # � $ $ 
 1 . 1 . 0��     % & % l     ��������  ��  ��   &  ' ( ' l     )���� ) r      * + * m     ����� + o      ���� 0 accviewwidth accViewWidth��  ��   (  , - , l   , .���� . r    , / 0 / I      1 2 3 1 z�� 
�� .!ASc!CbSnull���     **** 2 J     4 4  5 6 5 m     7 7 � 8 8  C a n c e l 6  9�� 9 m     : : � ; ;  O K��   3 �� < =
�� 
dflt < m    ����  = �� >��
�� 
btns > m    ���� ��   0 J     ? ?  @ A @ o    ���� 0 
thebuttons 
theButtons A  B�� B o    ���� 0 minwidth minWidth��  ��  ��   -  C D C l  - : E F G E Z  - : H I���� H ?   - 0 J K J o   - .���� 0 minwidth minWidth K o   . /���� 0 accviewwidth accViewWidth I r   3 6 L M L o   3 4���� 0 minwidth minWidth M o      ���� 0 accviewwidth accViewWidth��  ��   F   make sure buttons fit    G � N N ,   m a k e   s u r e   b u t t o n s   f i t D  O P O l  ; � Q���� Q r   ; � R S R I      T U V T z�� 
�� .!ASuCrLfnull���     ctxt U m   B C W W � X X   V �� Y Z
�� 
!FpL Y m   R U [ [ � \ \ 4 E x t r a   i n s t r u c t i o n s   g o   h e r e Z �� ] ^
�� 
!BtM ] m   X Y����   ^ �� _ `
�� 
!FwI _ o   \ ]���� 0 accviewwidth accViewWidth ` �� a b
�� 
!ExH a m   ` c���� < b �� c d
�� 
!LtX c m   f i e e � f f  I n s t r u c t i o n s d �� g��
�� 
!MlT g m   l m��
�� boovtrue��   S J   D O h h  i j i o   D G���� &0 instructionsfield instructionsField j  k l k o   G J���� &0 instructionslabel instructionsLabel l  m�� m o   J M���� 0 thetop theTop��  ��  ��   P  n o n l  �  p���� p r   �  q r q I      s t u s z�� 
�� .!ASuCrLsnull���     ctxt t l  � � v���� v n   � � w x w 1   � ���
�� 
sisn x l  � � y���� y I  � �������
�� .sysosigtsirr   ��� null��  ��  ��  ��  ��  ��   u �� z {
�� 
!FpL z m   � � | | � } }  Y o u r   n a m e { �� ~ 
�� 
!BtM ~ l  � � ����� � [   � � � � � o   � ����� 0 thetop theTop � m   � ����� ��  ��    �� � �
�� 
!StW � o   � ����� 0 accviewwidth accViewWidth � �� � �
�� 
!LtX � m   � � � � � � �  O p e r a t o r : � �� ���
�� 
!FlF � m   � �����  ��   r J   � � � �  � � � o   � ����� 0 operatorfield operatorField �  � � � o   � ����� 0 operatorlabel operatorLabel �  � � � o   � ����� 0 thetop theTop �  ��� � o   � ����� 0 	fieldleft 	fieldLeft��  ��  ��   o  � � � l 8 ����� � r  8 � � � I      � � � � z�� 
�� .!ASuCrRunull���     long � l 
 ����� � [  
 � � � o  
���� 0 thetop theTop � m  ���� ��  ��   � �� ���
�� 
!RwI � o  ���� 0 accviewwidth accViewWidth��   � J   � �  � � � o  ���� 0 therule theRule �  ��� � o  ���� 0 thetop theTop��  ��  ��   �  � � � l 9� ����� � r  9� � � � I      � � � � z�� 
�� .!ASuCrP+null���     ctxt � l BM ����� � n  BM � � � 1  IM��
�� 
psxp � l BI ����� � I BI�� ���
�� .earsffdralis        afdr � m  BE��
�� afdrdocs��  ��  ��  ��  ��   � �� � �
�� 
!BtM � l \c ����� � [  \c � � � o  \_���� 0 thetop theTop � m  _b���� ��  ��   � �� � �
�� 
!CwI � o  fg���� 0 accviewwidth accViewWidth � �� ���
�� 
!LtX � m  jm � � � � � : C h o o s e   o r   d r a g   t h e   f i l e   h e r e :��   � J  NY � �  � � � o  NQ����  0 thepathcontrol thePathControl �  � � � o  QT���� 0 	pathlabel 	pathLabel �  ��� � o  TW���� 0 thetop theTop��  ��  ��   �  � � � l �� ����� � r  �� � � � I      � � � � z�� 
�� .!ASuCrCbnull���     **** � m  �� � � � � �  O n e   s i d e   o n l y � � � �
� 
!BtM � l �� ��~�} � [  �� � � � o  ���|�| 0 thetop theTop � m  ���{�{ �~  �}   � �z ��y
�z 
!MxW � \  �� � � � ^  �� � � � o  ���x�x 0 accviewwidth accViewWidth � m  ���w�w  � m  ���v�v �y   � J  �� � �  � � � o  ���u�u 0 thecheckbox theCheckbox �  � � � o  ���t�t 0 	unusedtop 	unusedTop �  ��s � o  ���r�r 0 newwidth newWidth�s  ��  ��   �  � � � l �< ��q�p � r  �< � � � I      � � � � z�o 
�o .!ASuCrCbnull���     **** � m  �� � � � � �  M i r r o r   i m a g e � �n � �
�n 
!BtM � l � ��m�l � [  � � � � o  ���k�k 0 thetop theTop � m  � �j�j �m  �l   � �i � �
�i 
!MxW � \   � � � ^   � � � o  �h�h 0 accviewwidth accViewWidth � m  �g�g  � m  
�f�f  � �e � �
�e 
!Lli � [   � � � ^   � � � o  �d�d 0 accviewwidth accViewWidth � m  �c�c  � m  �b�b  � �a ��`
�a 
!IsT � m  �_
�_ boovtrue�`   � J  �� � �  � � � o  ���^�^  0 secondcheckbox secondCheckbox �  � � � o  ���]�] 0 thetop theTop �  ��\ � o  ���[�[ 0 newwidth newWidth�\  �q  �p   �  � � � l =� ��Z�Y � r  =� � � � I        z�X 
�X .!ASuCrPlnull���     **** J  FQ  m  FI �  R e d 	 m  IL

 � 
 G r e e n	 �W m  LO �  B l u e�W   �V
�V 
!BtM l `g�U�T [  `g o  `c�S�S 0 thetop theTop m  cf�R�R �U  �T   �Q
�Q 
!PuW m  jm�P�P d �O
�O 
!MxW o  pq�N�N 0 accviewwidth accViewWidth �M
�M 
!LtX m  tw �  J o b   i s   f o r : �L
�L 
!PuL m  z}�K�K F �J�I
�J 
!MuD m  ���H�H �I   � J  R]  !  o  RU�G�G 0 
colorpopup 
colorPopup! "#" o  UX�F�F 0 
popuplabel 
popupLabel# $�E$ o  X[�D�D 0 thetop theTop�E  �Z  �Y   � %&% l �'()' r  �*+* I     ,-., z�C 
�C .!ASuCrLmnull���     ****- J  ��// 010 m  ��22 �33  P r e s s   11 454 m  ��66 �77  P r e s s   25 8�B8 m  ��99 �::  P r e s s   3�B  . �A;<
�A 
!BtM; l ��=�@�?= [  ��>?> o  ���>�> 0 thetop theTop? m  ���=�= �@  �?  < �<@A
�< 
!MxW@ o  ���;�; 0 accviewwidth accViewWidthA �:BC
�: 
!MxLB m  ���9�9 FC �8DE
�8 
!LtXD m  ��FF �GG  J o b   i s   f o r :E �7H�6
�7 
!MuDH m  ��II �JJ  P r e s s   2�6  + J  ��KK LML o  ���5�5 0 	jobmatrix 	jobMatrixM NON o  ���4�4 0 matrixlabel matrixLabelO PQP o  ���3�3 0 thetop theTopQ R�2R o  ���1�1 0 
matrixleft 
matrixLeft�2  ( ! without arranged vertically   ) �SS 6 w i t h o u t   a r r a n g e d   v e r t i c a l l y& TUT l fV�0�/V r  fWXW I     YZ[Y z�. 
�. .!ASuCrLanull���     ctxtZ m  "%\\ �]] � T h i s   i s   a   l a r g e ,   b o l d ,   u g l y   l a b e l   a n d   i t   r u n s   a c r o s s   t h e   t o p   o f   t h e   d i a l o g ,   c e n t e r e d   a n d   w r a p p i n g   l i n e s   i f   n e c e s s a r y[ �-^_
�- 
!BtM^ [  18`a` o  14�,�, 0 thetop theTopa m  47�+�+ _ �*bc
�* 
!MxWb o  ;<�)�) 0 accviewwidth accViewWidthc �(de
�( 
!MuSd m  ?Bff z�' 
�' !CsZ!CrCe �&gh
�& 
!AlIg m  EHii z�% 
�% !LaL!LcEh �$j�#
�$ 
!MuBj m  KL�"
�" boovtrue�#  X J  &.kk lml o  &)�!�! 0 	boldlabel 	boldLabelm n� n o  ),�� 0 thetop theTop�   �0  �/  U opo l g�q��q r  g�rsr J  g�tt uvu o  gj�� &0 instructionsfield instructionsFieldv wxw o  jm�� &0 instructionslabel instructionsLabelx yzy o  mp�� 0 operatorfield operatorFieldz {|{ o  ps�� 0 operatorlabel operatorLabel| }~} o  sv�� 0 therule theRule~ � o  vy��  0 thepathcontrol thePathControl� ��� o  y|�� 0 	pathlabel 	pathLabel� ��� o  |�� 0 thecheckbox theCheckbox� ��� o  ���  0 secondcheckbox secondCheckbox� ��� o  ���� 0 
colorpopup 
colorPopup� ��� o  ���� 0 
popuplabel 
popupLabel� ��� o  ���� 0 	jobmatrix 	jobMatrix� ��� o  ���� 0 matrixlabel matrixLabel� ��� o  ���� 0 	boldlabel 	boldLabel�  s o      �� 0 allcontrols allControls�  �  p ��� l ������ r  ����� I     ���� z�
 
�
 .!AScDiEwnull���     ctxt� m  ���� ���  C o m p l e x   s a m p l e� �	��
�	 
!AvW� o  ���� 0 accviewwidth accViewWidth� ���
� 
!AvH� o  ���� 0 thetop theTop� ���
� 
!AvC� o  ���� 0 allcontrols allControls� ���
� 
btns� o  ���� 0 
thebuttons 
theButtons� ���
� 
!AcF� o  ��� �  &0 instructionsfield instructionsField� �����
�� 
!AvL� m  ����
�� boovtrue��  � J  ���� ��� o  ������ 0 
buttonname 
buttonName� ���� o  ������ "0 controlsresults controlsResults��  �  �  � ���� l     ��������  ��  ��  ��       �������  � ����
�� 
pimr
�� .aevtoappnull  �   � ****� ����� �  ���� �� ��
�� 
vers��  � �����
�� 
cobj� ��   ��
�� 
osax��  � ����
�� 
cobj� ��   ��  
�� 
scpt� �� #��
�� 
vers��  � �����������
�� .aevtoappnull  �   � ****� k    ���  '��  ,��  C��  O��  n��  ���  ���  ���  ���  ��� %�� T�� o�� �����  ��  ��  �  � s������   7 :����������������   W�������� [���������� e������  ������������ |���� �������  ������  ������������ ���   �����������   ���������  
����������������  269��������FI��  \������������������  ���������������������� 0 accviewwidth accViewWidth
�� 
scpt
�� 
Krtn�� 0 
thebuttons 
theButtons�� 0 minwidth minWidth
�� 
dflt
�� 
btns�� 
�� .!ASc!CbSnull���     ****
�� 
cobj�� &0 instructionsfield instructionsField�� &0 instructionslabel instructionsLabel�� 0 thetop theTop
�� 
!FpL
�� 
!BtM
�� 
!FwI
�� 
!ExH�� <
�� 
!LtX
�� 
!MlT�� 
�� .!ASuCrLfnull���     ctxt
�� .sysosigtsirr   ��� null
�� 
sisn�� 0 operatorfield operatorField�� 0 operatorlabel operatorLabel�� 0 	fieldleft 	fieldLeft�� �� 
�� 
!StW
�� 
!FlF�� 
�� .!ASuCrLsnull���     ctxt�� 0 therule theRule
�� 
!RwI
�� .!ASuCrRunull���     long
�� afdrdocs
�� .earsffdralis        afdr
�� 
psxp��  0 thepathcontrol thePathControl�� 0 	pathlabel 	pathLabel
�� 
!CwI
�� .!ASuCrP+null���     ctxt�� 0 thecheckbox theCheckbox�� 0 	unusedtop 	unusedTop�� 0 newwidth newWidth
�� 
!MxW
�� .!ASuCrCbnull���     ****��  0 secondcheckbox secondCheckbox
�� 
!Lli
�� 
!IsT�� 
�� 0 
colorpopup 
colorPopup�� 0 
popuplabel 
popupLabel
�� 
!PuW�� d
�� 
!PuL�� F
�� 
!MuD
�� .!ASuCrPlnull���     ****�� 0 	jobmatrix 	jobMatrix�� 0 matrixlabel matrixLabel�� 0 
matrixleft 
matrixLeft
�� 
!MxL
�� .!ASuCrLmnull���     ****�� 0 	boldlabel 	boldLabel�� 
�� 
!MuS
�� !CsZ!CrC
�� 
!AlI
�� !LaL!LcE
�� 
!MuB
�� .!ASuCrLanull���     ctxt�� 0 allcontrols allControls�� 0 
buttonname 
buttonName�� "0 controlsresults controlsResults
�� 
!AvW
�� 
!AvH
�� 
!AvC
�� 
!AcF
�� 
!AvL
�� .!AScDiEwnull���     ctxt����E�O)��/ ��lv���lv�k�l� UE[�k/E�Z[�l/E�ZO�� �E�Y hO)��/ 3��a a a mva a a ja �a a a a a ea  UE[�k/E` Z[�l/E` Z[�m/E` ZO)�a / @*j a  ,�a !a "a a #a $va a %a _ a &a '�a a (a )ja * +UE[�k/E` !Z[�l/E` "Z[�m/E` Z[�a $/E` #ZO)�a ,/ _ a *�a -a lva .�a $ /UE[�k/E` -Z[�l/E` ZO)�a 0/ 3a 1j 2a 3,�a 4a 5a mva _ a *a 6�a a 7a & 8UE[�k/E` 4Z[�l/E` 5Z[�m/E` ZO)�a 9/ )a :�a ;a <a =mva _ a &a >�l!a &� ?UE[�k/E` ;Z[�l/E` <Z[�m/E` =ZO)�a @/ 9a A�a Ba a =mva _ a &a >�l!a &a C�l!a &a Dea E ?UE[�k/E` BZ[�l/E` Z[�m/E` =ZO)�a F/ Ca Ga Ha Imv�a Ja Ka mva _ a &a La Ma >�a a Na Oa Pa Qla  RUE[�k/E` JZ[�l/E` KZ[�m/E` ZO)�a S/ Da Ta Ua Vmv�a Wa Xa a Ya $va _ a &a >�a Za Pa a [a Qa \a * ]UE[�k/E` WZ[�l/E` XZ[�m/E` Z[�a $/E` YZO)�a ^/ 2a _�a `a lva _ a aa >�a ba ca da ea fea * gUE[�k/E` `Z[�l/E` ZO_ _ _ !_ "_ -_ 4_ 5_ ;_ B_ J_ K_ W_ X_ `a vE` hO)�a i/ 0a j�a ka llva m�a n_ a o_ h��a p_ a qea  rUE[�k/E` kZ[�l/E` lZascr  ��ޭ