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
BZh91AY&SY"�D  T��}�sF�� ?���  D  � P @s����XI)O�='�cjjmOHi�1	��d����S�M4d h@4 �4�&C 0L  ���z�I��16��M�����Ij������OD�L��������
��iPL
C�03��U}n�]��<y#��BpR{�fff�O�#�yn2�����`Zt�}�7�C>r���e5])�eAL�����VC79;��333gp�c�YdPug���1�렪���g-�{���j,2�c�v��Gx�~���]�����?ã�$[y�^@����#�~��}E�űL�i��Wg��i�
s_��NUUv&���%���� �C����̔4�7Bbp(��ȴ�",���ٸG�,E1��Q�T�l��5䪪���[,�)!�z�
�)ȎaM�1j�JC�����bt�i��%�4ЏL���50IO�StfZ�D�)X`��|$p[F4�X�؈�DT焖��[�#eȊ۪��gE#�*J�)�ڐ3��a����%YJ-�@h����G��G��؄"�<Xxˬ���.�p� D%,�