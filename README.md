# backtalk

![](urban-decay.png)

```
tar -x -f buildroot-2021.11.tar.gz

patch -p1 -d buildroot-2021.11 < v3-9-9-package-asterisk-add-optional-dependency-to-libpjsip.patch

pushd buildroot-2021.11
make BR2_EXTERNAL=../backtalk-br2-external backtalk_defconfig
make BR2_EXTERNAL=../backtalk-br2-external
popd

echo "[general]" > rtp.conf
echo "stunaddr=stun1.l.google.com:19302" >> rtp.conf

virt-copy-in -a buildroot-2021.11/output/images/sdcard.img wg0.conf rtp.conf /boot

=> buildroot-2021.11/output/images/sdcard.img
```
