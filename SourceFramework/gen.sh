FRAMEWORK=SourceFramework

BUILD=build
FRAMEWORK_PATH=$FRAMEWORK.framework

# iOS
rm -Rf $FRAMEWORK/$BUILD
rm -f $FRAMEWORK.framework.tar.gz

xcodebuild archive -project $FRAMEWORK.xcodeproj -scheme $FRAMEWORK -sdk iphoneos SYMROOT=$BUILD
xcodebuild build -project $FRAMEWORK.xcodeproj -target $FRAMEWORK -sdk iphonesimulator SYMROOT=$BUILD

cp -RL $FRAMEWORK/$BUILD/Release-iphoneos $FRAMEWORK/$BUILD/Release-universal
cp -RL $FRAMEWORK/$BUILD/Release-iphonesimulator/$FRAMEWORK_PATH/Modules/$FRAMEWORK.swiftmodule/* $FRAMEWORK/$BUILD/Release-universal/$FRAMEWORK_PATH/Modules/$FRAMEWORK.swiftmodule

lipo -create $FRAMEWORK/$BUILD/Release-iphoneos/$FRAMEWORK_PATH/$FRAMEWORK $FRAMEWORK/$BUILD/Release-iphonesimulator/$FRAMEWORK_PATH/$FRAMEWORK -output $FRAMEWORK/$BUILD/Release-universal/$FRAMEWORK_PATH/$FRAMEWORK

#tar -czv -C $FRAMEWORK/$BUILD/Release-universal -f $FRAMEWORK.tar.gz $FRAMEWORK_PATH $FRAMEWORK_PATH.dSYM
