import Foundation


public struct USBFilterRequest {
    /// Information about USB Device or Interface
    public var info: USBInfo
    
    /// Request initial time
    public var time: Date
    
    /// Deadline for request to be responded.
    /// If not responded before deadline, the USB is automatically allowed.
    public var deadline: Date
}

public enum USBInfo: Equatable, Codable {
    case interface(Interface)
    case device(Device)
    
    public struct Interface: Equatable, Codable {
        public var bInterfaceNumber: UInt8
        public var bAlternateSetting: UInt8
        public var bNumEndpoints: UInt8
        public var bInterfaceClass: UInt8
        public var bInterfaceSubClass: UInt8
        public var bInterfaceProtocol: UInt8
        public var iInterface: String
    }
    
    public struct Device: Equatable, Codable {
        public var bcdUSB: UInt16
        public var bDeviceClass: UInt8
        public var bDeviceSubClass: UInt8
        public var bDeviceProtocol: UInt8
        public var bMaxPacketSize0: UInt8
        public var idVendor: UInt16
        public var idProduct: UInt16
        public var bcdDevice: UInt16
        public var bNumConfigurations: UInt8
        public var iManufacturer: String
        public var iProduct: String
        public var iSerialNumber: String
    }
}


// MARK: Classes (from https://www.usb.org/defined-class-codes)

public enum USBInterfaceClass: UInt8 {
    case audio = 0x01
    case communicationDeviceControl = 0x02
    case HID = 0x03
    case physical = 0x05
    case image = 0x06
    case printer = 0x07
    case massStorage = 0x08
    case communicationDeviceData = 0x0A
    case smartCard = 0x0B
    case contentSecurity = 0x0D
    case video = 0x0E
    case personalHealthcare = 0x0F
    case audioVideo = 0x10
    case usbTypeCBridge = 0x12
    case diagnostic = 0xDC
    case wirelessController = 0xE0
    case miscellaneous = 0xEF
    case applicationSpecific = 0xFE
}

public enum USBDeviceClass: UInt8 {
    case useInterface = 0x00
    case communicationDeviceControl = 0x02
    case hub = 0x09
    case billboardDevice = 0x11
    case diagnostic = 0xDC
    case miscellaneous = 0xEF
    case vendorSpecific = 0xFF
}
