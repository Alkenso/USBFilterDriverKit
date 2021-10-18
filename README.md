# USBFilterDriverKit
USB Filter solution for macOS 10.15 Catalina - 12.0 Monterey and newer

## Features
- hot interception of USB devices (once inserted)
- supports both USB Device and USB Interface based blocking
- obtain large set of parameters of USB (vendorId, productId, manufacturer, serial number, class, subclass and more)
- if blocked, device does not appear in macOS in any place
- works with any USB devices: Flash Drives (Mass Storage), Audio/Video devices, CD/DVD Roms, Bluetooth / WiFi adapters and many more
- read-only restriction of USB Flash Drive is possible, but should be implemented as another component (discussable)

## Collaboration and pricing
I'm opened to proposals of integration USB Filter solution into your product. Feel free to reach me at wl9pa2@gmail.com for futher details.

# Demo is better than 1000 words:
https://user-images.githubusercontent.com/8972879/136985764-87af2200-ae4c-4df5-bef0-ab2460cb4633.mp4

# Tech details

USB Filter is Swift Framework + DriverKit Driver (dext) and works as replacement of old-style Kernel Extensions with same functionality.

It is very simple and straighforward in use 
```
let service = USBFilterService()
service.requestHandler = { (request: USBFilterRequest, reply: @escaping (Bool) -> Void) in
    // Handle the request. 
    // Invoke reply with resolution (allow/deny).
}
service.start(queue: .main)
```

More details of USBFilterRequest are placed in corresponding file USBFilterRequest.swift


Tags: USB Filter BigSur Monterey, USB Filter DEXT DriverKit Driver DeviceControl
