FasdUAS 1.101.10   ��   ��    k             l     ��  ��    � | This will delete all your downloaded music for specific conditions (Play count, Last Played Date, and if they are unplayed)     � 	 	 �   T h i s   w i l l   d e l e t e   a l l   y o u r   d o w n l o a d e d   m u s i c   f o r   s p e c i f i c   c o n d i t i o n s   ( P l a y   c o u n t ,   L a s t   P l a y e d   D a t e ,   a n d   i f   t h e y   a r e   u n p l a y e d )   
  
 l     ��  ��    r l For more functionality, just copy and paste "delete (every track whose _________", by using the dictionary.     �   �   F o r   m o r e   f u n c t i o n a l i t y ,   j u s t   c o p y   a n d   p a s t e   " d e l e t e   ( e v e r y   t r a c k   w h o s e   _ _ _ _ _ _ _ _ _ " ,   b y   u s i n g   t h e   d i c t i o n a r y .      l     ��������  ��  ��        l     ��������  ��  ��     ��  l    ����  O        O       k          l   ��  ��    k eI advise you to preview what might be deleted from your storage before running! Use the below syntax!     �   � I   a d v i s e   y o u   t o   p r e v i e w   w h a t   m i g h t   b e   d e l e t e d   f r o m   y o u r   s t o r a g e   b e f o r e   r u n n i n g !   U s e   t h e   b e l o w   s y n t a x !       l   �� ! "��   ! 7 1I.E get name of every track whose unplayed = true    " � # # b I . E   g e t   n a m e   o f   e v e r y   t r a c k   w h o s e   u n p l a y e d   =   t r u e    $ % $ l   ��������  ��  ��   %  & ' & l   �� ( )��   ( . (You can also just hard code everything.     ) � * * P Y o u   c a n   a l s o   j u s t   h a r d   c o d e   e v e r y t h i n g .   '  + , + I   �� - .
�� .sysodlogaskr        TEXT - m     / / � 0 0 ^ H o w   d o   y o u   w a n t   t o   c l e a n   y o u r   d o w n l o a d e d   M u s i c ? . �� 1 2
�� 
btns 1 J     3 3  4 5 4 m     6 6 � 7 7 F D e l e t e   a n y   t r a c k s   t h a t   a r e   U n p l a y e d 5  8 9 8 m     : : � ; ; B D e l e t e   t r a c k s   b y   t h e i r   p l a y   c o u n t 9  <�� < m     = = � > > N D e l e t e   t r a c k s   b y   t h e i r   l a s t   p l a y e d   d a t e��   2 �� ?��
�� 
dflt ? m    ���� ��   ,  @ A @ r     B C B l    D���� D n     E F E 1    ��
�� 
bhit F l    G���� G 1    ��
�� 
rslt��  ��  ��  ��   C l      H���� H o      ���� 0 button_pressed  ��  ��   A  I J I Z    K L M N K =   " O P O l     Q���� Q o     ���� 0 button_pressed  ��  ��   P m     ! R R � S S F D e l e t e   a n y   t r a c k s   t h a t   a r e   U n p l a y e d L k   % N T T  U V U I  % 7�� W��
�� .coredelonull���     obj  W l  % 3 X���� X 6  % 3 Y Z Y 2   % (��
�� 
cTrk Z =   ) 2 [ \ [ 1   * .��
�� 
pUnp \ m   / 1��
�� boovtrue��  ��  ��   V  ] ^ ] I  8 L�� _��
�� .coredelonull���     obj  _ l  8 H `���� ` 6  8 H a b a 2   8 =��
�� 
cShT b =   > G c d c 1   ? C��
�� 
pUnp d m   D F��
�� boovtrue��  ��  ��   ^  e�� e l  M M��������  ��  ��  ��   M  f g f =  Q V h i h l  Q R j���� j o   Q R���� 0 button_pressed  ��  ��   i m   R U k k � l l B D e l e t e   t r a c k s   b y   t h e i r   p l a y   c o u n t g  m n m k   Y � o o  p q p I  Y p�� r s
�� .sysodlogaskr        TEXT r m   Y \ t t � u u N W h a t   s h o u l d   t h e i r   m i n i m u m   p l a y   c o u n t   b e s �� v w
�� 
dtxt v m   _ b x x � y y  2 w �� z {
�� 
btns z J   c h | |  }�� } m   c f ~ ~ �    C o n t i n u e��   { �� ���
�� 
dflt � m   i j���� ��   q  � � � r   q z � � � l  q v ����� � n   q v � � � 1   r v��
�� 
ttxt � l  q r ����� � 1   q r��
�� 
rslt��  ��  ��  ��   � l      ����� � o      ���� 0 countentered countEntered��  ��   �  � � � I  { ��� ���
�� .coredelonull���     obj  � l  { � ����� � 6  { � � � � 2   { ~��
�� 
cTrk � A   � � � � 1   � ���
�� 
pPlC � l  � � ����� � o   � ����� 0 countentered countEntered��  ��  ��  ��  ��   �  � � � I  � ��� ���
�� .coredelonull���     obj  � l  � � ����� � 6  � � � � � 2   � ���
�� 
cShT � A  � � � � � 1   � ���
�� 
pPlC � l  � � ����� � o   � ����� 0 countentered countEntered��  ��  ��  ��  ��   �  ��� � l  � ���������  ��  ��  ��   n  � � � =  � � � � � l  � � ����� � o   � ����� 0 button_pressed  ��  ��   � m   � � � � � � � N D e l e t e   t r a c k s   b y   t h e i r   l a s t   p l a y e d   d a t e �  ��� � k   � � �  � � � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � \ W h a t   s h o u l d   t h e i r   m i n i m u m   l a s t   P l a y e d   D a t e   b e ? � �� � �
�� 
dtxt � m   � � � � � � � N T u e s d a y ,   J a n u a r y   1 ,   2 0 1 9   a t   1 2 : 0 0 : 0 0   A M � �� � �
�� 
btns � J   � � � �  ��� � m   � � � � � � �  C o n t i n u e��   � �� ���
�� 
dflt � m   � ����� ��   �  � � � r   � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
ttxt � l  � � ����� � 1   � ���
�� 
rslt��  ��  ��  ��   � l      ����� � o      ���� 0 dateentered dateEntered��  ��   �  � � � I  � ��� ���
�� .coredelonull���     obj  � l  � � ����� � 6  � � � � � 2   � ���
�� 
cTrk � A  � � � � � 1   � ���
�� 
pPlD � 4   � ��� �
�� 
ldt  � o   � ����� 0 dateentered dateEntered��  ��  ��   �  � � � I  ��� ���
�� .coredelonull���     obj  � l  � ����� � 6  � � � � 2   � ���
�� 
cShT � A  � � � � 1   � ��
� 
pPlD � 4   � �~ �
�~ 
ldt  � o   � ��}�} 0 dateentered dateEntered��  ��  ��   �  ��| � l �{�z�y�{  �z  �y  �|  ��   N I �x ��w
�x .sysodlogaskr        TEXT � m   � � � � �  E r r o r !�w   J  ��v � l �u�t�s�u  �t  �s  �v    4    �r �
�r 
cSrc � m    �q�q   m      � ��                                                                                      @ alis    ,  Macintosh HD                   BD ����	Music.app                                                      ����            ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��  ��  ��  ��       �p � ��p   � �o
�o .aevtoappnull  �   � **** � �n ��m�l � ��k
�n .aevtoappnull  �   � **** � k     � �  �j�j  �m  �l   �   � $ ��i /�h 6 : =�g�f�e�d�c�b R�a ��`�_�^ k t�] x ~�\�[�Z�Y � � � ��X�W�V �
�i 
cSrc
�h 
btns
�g 
dflt�f 
�e .sysodlogaskr        TEXT
�d 
rslt
�c 
bhit�b 0 button_pressed  
�a 
cTrk �  
�` 
pUnp
�_ .coredelonull���     obj 
�^ 
cShT
�] 
dtxt�\ 
�[ 
ttxt�Z 0 countentered countEntered
�Y 
pPlC�X 0 dateentered dateEntered
�W 
pPlD
�V 
ldt �k�*�k/�����mv�k� 	O��,E�O��  .*�-�[a ,\Ze81j O*a -�[a ,\Ze81j OPY ��a   Ta a a �a kv�ka  	O�a ,E` O*�-�[a ,\Z_ <1j O*a -�[a ,\Z_ <1j OPY i�a   Za a a �a kv�ka  	O�a ,E`  O*�-�[a !,\a "_  /<1j O*a -�[a !,\a "_  /<1j OPY 	a #j 	OPUUascr  ��ޭ