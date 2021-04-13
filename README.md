# backtalk

```
tar -x -f buildroot-2019.11.3.tar.gz

pushd buildroot-2019.11.3
make BR2_EXTERNAL=../backtalk-br2-external backtalk_defconfig
make BR2_EXTERNAL=../backtalk-br2-external
popd

=> buildroot-2019.11.3/output/images/sdcard.img
```
