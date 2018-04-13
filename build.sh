APK_PATH="bin/JustTrustMe.apk"
./gradlew assembleRelease && cp app/build/outputs/apk/app-release-unsigned.apk $APK_PATH && signapk $APK_PATH

#adb install -r bin/AndroidVTS.apk

# zipalign -v -p 4 JustTrustMe4-release-unsigned.apk JustTrustMe4-release-unsigned-aligned.apk
# jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore ~/.android/debug.keystore -out JustTrustMe4-signed.apk JustTrustMe4-unsigned-aligned.apk androiddebugkey
