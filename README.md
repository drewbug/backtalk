# backtalk

![](urban-decay.png)

```
tar -x -f buildroot-2021.02.1.tar.gz

pushd buildroot-2021.02.1
make BR2_EXTERNAL=../backtalk-br2-external backtalk_defconfig
make BR2_EXTERNAL=../backtalk-br2-external
popd

virt-copy-in -a buildroot-2021.02.1/output/images/sdcard.img wg0.conf /boot

=> buildroot-2021.02.1/output/images/sdcard.img
```
