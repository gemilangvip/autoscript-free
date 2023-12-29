#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY��� n��t0�����������b��  �p `*=d�L�������ډyi�G�����N�yK��;gْ��o�����o�=�[n�z�wJeE��=�7s�Rڭ�nN�Ֆ�ݮ��3�+�UI_gv̶�.���oy*�D�l�u��%F&���!�!�{L��?S$���?T�L�&������ ("i�)�5?F���=A��@@ 22i�  M�4I��6S���T�� h� �   hj$M52��#)�jh�S�ښi��4mL�12h4z��   �D Ъ�M*~?E4�L��$mOЦd� � f�=A"B F�1 4�i�?ShԞ�JdƦ����F�h4 ��ՒBUE$4hD �"(��r�}H1�)�����!��+���U�W�Ҿ����1��]Д#�_�69|��}�������ۧ\v$&�c�N�kg��ÂQL���f�1��[Kx�;�Hf[�o\+���r��5� �ʵ�d��u��±%�����a�ę=�)\�8��c���}���=�~'���2��z�i��񰰬�����u�����G�7�-�J���ps�Ũ(�1�X��0&�i��Ѓz�N�*��J��cn����ݍ�b�k����ϸ)W��1kμ����Pqj�gP$_�O7Yvnz�����m�="gv}N�X��2e-����7e'��1�h^6U~��9ڎ͞_�eu�Ler��sTXIAi�`�"r�k�2�l�Y�1\��|x�In0��AK\E�#�w8l~I�����Z��W"Y�p�)�
��>�7��v*���x�S1]�n}�ߒJ�m�~���x�Z��k0��X/$�a��{2��7h��]�D�l�K�Z��~�5g�vt1͆�c࣋O$]�,�m�j�k�6K���}�W����Vfeٙ�"�x2�F#M���|YykMp�H%�9o�l�U�~?\����U������H�΂G9�[���˩~"�JW}EeA��@�="��US�⽟l��nM�,*$����<�;�`����d^\��.�Cd��J'
�/�e��UL�sybD�֤�%V���,�~�[S�1u�V���d�4��+��,o��Fʠ�i��d�`c���n뺥�bku<���g���0
16!��$��޳�w�ۦ2�����r��������ؾ��?e��������wo饈
�ڋ�\�ҫ�3sCi��li��Y1�#�E��-e\n��'�ѷ��L�B~=a�)05�r�ҩ�s��0�h����sx:jl�̾v��t(�A��l6���sh��ʳ6.�_�.��
�P�&�X���0�0�MUaU�VXv�qK�,�{3��H&6_=�Uw�]��|�Y}e�G"�k���(������[h���K/]�F�K�:L�>��a6�������`_�^�r:9�V2{�� +)�SˉB��G�V8�'y<q�(QTj*�)j�6�~>���;GQ���'�mVkcZ|��!��ɽ�_D.��x[#a�6�����~{?z!�Ì�"�OO�n�/�%]���o~�-�Ӝ�!j��8��:������ݴ-u�ں�<X�z�����ۚ��ߍ���Sqq>>�s繲S�2�Pa������8�oKu'x�Y˶&R�Ɖn��y�cΆK��4w��i)Qu����#���\�=/5_&g9��@�h�7Y��}Y:!��z����֦y����^aK�⪴VT�� ]
ړ�-7�+"���끟A����,�5�Q�Hc�'Q!�l�޲��7�n�͹m/S�&�� k1�
�9ϑ�;�W����:.�`7\�(eUN���S�q� ĺ��>8�µA���аt�T�P������6���M��	cp���,����-���[�-XM^�k��W쾃��,�ۂ
�C�n���
�- *�a|�*%�$���L��_ް@K^���r\�"߄��s@�k� $͈��ԅ�	�q0��j��DaU�`ؔ��Kx��3�2
���o�;:��e�}���aڪ^�� �7x����l>���`3�|��:�f�BA WV.����c���y©fM0dvʓ!u��lo8�w�v̨Ű����e�hi�}tᄠQOZ��۲�j~��ƽ^Gr����t�5s�^L��,�sM\��$O����sR�[��z�;��^m乎��1�J>v駫X�bO����n��'%O���.^�ٓ�KW�֮�uu��G�_.XZ�q�}=��!l>8�I"H$6��iL��1��we���#� �.� �UY��+�2��%$���-�IHΊ���
�0�=��F~��Αd^ԩAl���D)9��1��N��4]6ʩA����C��Q`�}�̯��3	�wALps9 lru�@�!�k�(��]���ʆM�<Z��ALD��q��9gp�!��P弗媐C]��F�[D�|�z��Z2��(j���Px�  �@V������T����Ԉ�`@��<���yH�wu�o�ݔ���D>y���|F&_���&�Ol ��%Gّ4�|�����H�"�KX�L��3 B�{�b:m��C����ʑCC�Q�g�F�<ߨ� ���l?�T��>�^%�H��:Kg�TE��o o���O��e�?(G�)Rk�\>��Oyo+�V��Vx}�����s�	X\	�1�(��Tk%��nˮ%��~���]�+��J�Q!@uU�Q�p	!f�6�\�� �ƒU!�
$$XzĆ�3�NX��eI�D!�6����q���ď�M��ECHq��r0k��-I�K_/3�%�)�T�<�4��ľ�ʵN�R$�(T:�
��;US��6t�RhS|D�0�h�.�n�sTʒR�4�w��D�*�qǗ���ʔ������$}*x����R԰ x��k/��\$n@����\P>��2�{�A�_pn����UYP�b���I �;��)�4A�czI�L+��-�R�ߺNr���ԍ����$@�hތz�u�w�W�<�8�B�E�ݡk�Y���#��$�a���vGFe���ŋ���H%�B�#hB�)H���Ȣ�b�@Y6�7����y���ҳ�����l�e��u�Y�yS}�v�k��*1���E����:�
Vܒl-T�
)8\k�������Ǐ��Nya�n��94�����LMu��G�æ#���t��I�v)h	�Rj[�#u���tJ���-�D�86�~��sJ�ivhߐH��S�T��Ķ�5n(�N��'e@��V�E���MՆnIp�"��!$~wNRT+;��њ���.3����!I�uo:<�e�FfT{��ή'�q����-����)�v�SY���R��=�`͢E��[0�)����.L�Sxwm�ؕ�.�#\�]Lk�_��q���тrB!�!`&��P]�]p�&eL�+�K���褹r�E,.�䘶|�j� �Ю����J�Ke�?�VBC�5����jh:&�x�;�%R1��KSv"�r�!A���������@�?��}�x���m�^_9��Ԃ�K�h�e���b?��������,�Uᐆb�O�{�k������e���cZ�G��3![��~����>��8���f��f�d_��5��#d��"�?p���F���V�
��]�h�ე��R���K���S6�r��$R)*N�B��"�F1"��Q�"���4Ϲ�p�kD;з�|2��A#����Bq���T�FL]W�'��O�C�h�-`�air���^�oWg�y+�k`�S����t�s*t�H�=mt�v�r��ʕ$Ƥ<�����c��O����;��/Y�ĢG�1 W&�1������p=�|<Ĩ���SMr�o�!��~��^��+]��� �?
/����p̍��U��VP7Ȱ ��VW�#���k�}%:��,�t�q��*�ZG��"���l����uÄg�	L�z}���jy5�cѨ∖ǌEb�h�A�I��Ψ�|dAطywE|��m�9���&7�YIO�;d<.�T��~q���ʉ��,�K���b�ȴ����)��45zxF�
I1�Z2H��P�����4�"�ANA����R�,�8�>�F�(E����G��шh\�<{1�D��\���i)v�c��9��#��Y�$���b<k:�À��4���B�6Zu��I�r]��~�0�����B�"f�e�����g	|�I�\L�v�!v)�����������+q�P��䟗yV}++���Z��v��U�F���ƚlݔ������l�P�S�1'PI<`e4.L��[�w��&g{��Du���9Mo�j��7���-���x�l<z)31_$��)��筸�����2���e}�R�.�ުd�D�:�(%��i&��U��wh"�CAQ��m1:dP�J�za�*��8�P��&�=�C�B���"�h�H��R���>��OR��bhQ��A������q3�����5��|���A$��'�����%66{lF$j+�xܝ�9E������Xm�0`��G�Y]m}������� �1 ��)-i���J��O�B�_I�1�L]'�`��J�o��Zk�[�����N ���2�/e �rt��@o���3�QC!DgȈvt�����(�fCJ�w�����͐b���^��ӹ˕U"I���"�$0�Z�·��/]��otx�3����w����35yH���������<�QS������$	�$���T<��R\��<N�f|�`��'FJ� h���X^�G݆�-��X�ڄ����02`���~���A�hJ1>b���M�k�-`�xC8��v����G �h���"�H�M�4��K���hc,���i�?�f���lI���2X �G(���]u��F�6�lj�ĉ�~�/��T��*T`2�U��SjP��|5�笕�6�._��A�ETˎX`�5��UL�]��#C�HX�Z4p�+�:~#�:-J�{/R�)挌��6n�zR����2d�u�- �T�עK%�^0Azm�{��R��7����D���Uv��8�# ����+1�f�� e�i�<,SW��H�J؏R�Be��/-|���p������k�q��q��Aш�
sk}�A$НMgҷ�ˠ�DF�Ӧ�z�4Ch��GB�B�K�*�jR�z����nؗ�"vhA����2*�KY��YUw��<�	�sx\mSX��Ƶ�%1�ǲ�N�$���gPP/K࡯
���el�tV�K�DK��������(uM�AD��oD��LFH�A�}%-�O�}Eu,�����WN�;�{5�u�v�眕ؕOG�\���K.uFV�+P�a��6�2�D��^�A	E�m����C�}��oQ�-p]
�saNA��Jŝ�h`R�la+j�/ �x�(ԃ��
����S|o��W�)j�.&m���1�)Xk4��~�Uڋ�2T�f`�,D!P|Z��&��Mb�,hq������|���΁�"���nO�T�$�a���+��+o��6Ho���e,��@,��dEVK\�n�iZ� �4$�VX�Ͳ��l����*bSq�Y���=���5b����B[�s 
H���b*d�Sp^FOY����1�	�"lX���K��5|�[�Ү����Xt�<ǁ��˙4�Q�˺��.C���H b���L���A�m��jE���=$�e�ЉǊ`��ɿ� ���ŌB�S�}�:XG�C�(WB�T��cH�]y�T۰Є�U��Qo������<Ĉ�/p�0շ�+��2U�j#E�αD+�e �e��ʤ���z��{�9���8Q�i�z�P��%�m��yiH&S�*�0�8�+}���ǥ���F۱�ٓ�7I	�
�I��"��;��� ��\�\G�$�OW��P�:�S���^�nh��Be�HgZZH�c<crcM6OĄ�&��g��wҪ����#Eujg)�@i¦��'������o��3b �
ϧt"cj�&�ا=5���`u�>iY�a�o �bz���zr�mA*���5�8ɼ�{��Y!U�.��7҂%C�u�١�~��`!�}���J�qs�zh
,����U#�Y�N�� m6ۼ½��F�c`�s�s̠"kA�u�Ꞃ��Ԃ�`Sĉ�*s�����\����7��x��끐Ah�7I*�Ly��q�R��Sir��T@����J����hH"i��B�rAQ�"���6	�1�>`���s���P��u�:g��'�$�� ���Ƿت�����6�І���4.��Ax�&F�!u3,�D4��oI		HE	 �F�A}T���ޝ�B8���
�j�U-R]�A��a9W�Ɲ ۰�vq:��뎲�D
+6�`�Y�КM� x�z�si>
/6j�[��K�r��S��_���ћ�(ڄb`̮��@�9� 3.4���Y0�\Z
u�,� cc�B,ʨD0��QI�J�l�Y�(IA
,*�$�n�q-E��(^\����K�a�;T�o�C�����T����X0��0TRs0)F�B@SᏴ�q�r��Rq2 w�����4$c�v�%5@�D.�*���G1����HD�b��ti��u3t�6����a�$I��쐕��{ph���&��6�®�v���G1@�:�qfxv�FUn��9���}#;\�|�G��L�g�M�+c�rh�a���e	R-zz~n��b��H�N����p���C�w{DG�#���'7	��S��ɇ�>�ۆ��Uk�^h|�Wh<x2a��
f!�O�<��r\y ��g�5�A�0iN�͇�~G_��2�"�z&%bR�k�]Q���ey]Q���Yf�+4��Q-�[[�4�Z�!x&�"�U 0���P�̝�]� )0�1Q�U%QB+���0� ^,��hJ

$�#!���T7�	�ܭЭX�%B)
ȜA%�T�Xw�9*0�yF�%�F�����M�H�E�0�j�k'��y��Y��b�VD ?�tkz����b��
Lq�m����P$�1����"���eb@��$*�J�o�K
ҽ��!j�U,��6�A�K��(
�^���F�Ĕɤb��g!��I�D�&X���*s;@��$��k+�V���G�SUhGaq�#C%wk(���w���.$#&PVb��ihi���{`<6�^��ZQ���7�[ 5 ó���ST����0Բ�`���Pߙ��Z	~èM�,���H#T�o}�����$N6U�G��R��^2
�+���@Eۋ@&D҃�g�}�N�I��BɆ�Z]��O��m~n X�{]<=���C��,nNjP��Vo(^���o��	 (�2�Z�V7"���[%����T��V�̣�.0+݅Hַ[(r�Q:�3�WWz*���i?&\5�_>*[s�>��%�[��B ]�-��r\wpqͽCE��+%m+��g�
�������i�>_nV���P�Z,V
7w��w���}+2)���U!�떄c�bd$.-qW��T��<�<
�.p�!&�TT �j��Fܲ�a����.�B֪��}�2�K�
� V4>p@���H�
wB����inj�0���@��PP�ͤ�R�C�\�k
�h)�|3�}4�'�l&|�*ϳp��F��-B/����EhG����|~ȩ<�n�I���MC�╶¥z�|�	l@q8R��"a\�B�BD���gm��%(�(r�_�.�7?,Cq�$!��06^|7�x{��9�(��	��% rt�L��T
(��7$z�I,�u *��v���I�odZ���2LvE�j��n�G���RB��1ye�s�.Mx=4*!يQ!�d-r\�et�Ե=t���� ��P��h66CTDS�P�S2#!h��D
ldR�C`�k�� �0.��nI[9ӗ��T��2�V���`Aɕ�.��Y�B���љR�h/h�[����a�u�C���A38��R�th%YT\�*��%��4�(���_�y*͌���~��O�Ŧt��@Ϙ��L�'���.j� �"�m����
։�-�+m-Y�TG���\w`�óY�Hn��yD��R����!�HZ6�iS5"9�3D��zc��N�u�������L
��{K	���	DAcC��N<J�$\���8� ���ҕz�u9,%%�����[rꌩ	���t���"�N"E�$�ؚ&hE��@�����lA���QD���QP��Z�j���-�1a��n�7*�d7G](�Y@&����(��Y^T����Pq�E��%u"AD&<�'xD@ʡ��/t�Yɨ`C2�]��r��1,'p����e���1�L�"�@��Ѱ�f�ĭ��UK�X)dV0�dA�4�4*!{f�L�)aA����Sz�P/WZ D4*&� z@���K�����2��c[M ��2�Yd[�K�1:��砣�e���� �24�i̐�P�,i��{(�,t�W��}�`c�LD�����ټ�u�A��Т�L( �ĵ;5[�5���;�H[���T��޺�W�+�ߴ��0����V����6!�oP�6!. �I�1�7�D���gBj>�E������'[œ��N��S{�,�{nm�����9]��'Y<�����kҚިG�u��9n�I���M}�%�ѡX��L�N��y�֩���܏[A�:�-Uj�jӰ�U�L��1��M��k��%�u�k�OE·�9����`����ڲ�J�֬�<5 Iΐ��sE�c�^�Ӱ`n7��yDX(ȡ�J\晁c���*1,]y�[��nܝ��f��邌�5i��i����Jg�����pUP�^R�Z@�w�޲`���4�'9��-�R��ʥ�`�fC��b2CK�']�\*���J�F�62(B	e(�2����Әj,�Pҽd�R|�($�:�4�BA��v/�N�tq����FU�?�	@!���@_��Ҁ��g�Ш]�8;<��ڦ�A��]�U=-B�CV����UU�|��/đP�g"��Ǿ��_$c��?��?�����DO��1�F)����w�?�������A0X}(@���w$S�	
�N�0