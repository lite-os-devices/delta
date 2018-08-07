echo "cd OpenDelta dir"
cd ../packages/apps/OpenDelta/jni
gcc -o zipadjust zipadjust.c zipadjust_run.c -lz
gcc -o dedelta xdelta3-3.0.7/xdelta3.c delta.c delta_run.c
cd xdelta3-3.0.7
sh configure
make
cd ../../../../../delta
echo "Start copy"
cp ../packages/apps/OpenDelta/server/MinSignAPK.java ./
cp ../packages/apps/OpenDelta/server/minsignapk.jar ./
cp ../packages/apps/OpenDelta/jni/zipadjust ./
cp ../packages/apps/OpenDelta/jni/dedelta ./
cp ../packages/apps/OpenDelta/jni/xdelta3-3.0.7/xdelta3 ./
