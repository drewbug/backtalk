# backtalk

```
tar -x -f buildroot-2019.08.3.tar.gz

pushd buildroot-2019.08.3
make HOSTCC=gcc-9 BR2_EXTERNAL=../backtalk-br2-external backtalk_defconfig
make HOSTCC=gcc-9 BR2_EXTERNAL=../backtalk-br2-external
popd

=> buildroot-2019.08.3/output/images/sdcard.img
```
