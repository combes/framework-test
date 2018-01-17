# framework-test

## Description

Attempting to include a third-party library into a new framework on iOS.

Structure:  iOS application < Custom Framework < Third-Party Library

This is the error that occurs when building and running on a device...

dyld: Library not loaded: @rpath/Kingfisher.framework/Kingfisher
Referenced from: /private/var/containers/Bundle/Application/E0B8F308-FCA9-4406-B659-37252AFDAC2D/SourceExample.app/Frameworks/SourceFramework.framework/SourceFramework
Reason: no suitable image found.  Did find:
/private/var/containers/Bundle/Application/E0B8F308-FCA9-4406-B659-37252AFDAC2D/SourceExample.app/Frameworks/SourceFramework.framework/Frameworks/Kingfisher.framework/Kingfisher: required code signature missing for '/private/var/containers/Bundle/Application/E0B8F308-FCA9-4406-B659-37252AFDAC2D/SourceExample.app/Frameworks/SourceFramework.framework/Frameworks/Kingfisher.framework/Kingfisher'

## Steps

1. Clone repository
2. Open project
3. Select SourceExample Project > SourceExample Target > Signing and set the Team to yours
4. Conenct an iPhone
5. Build and Run on device
6. Observe crash due to above issue
