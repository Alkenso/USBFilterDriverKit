import Foundation


public class USBFilterService {
    /// Handler to log errors from USBFilter module.
    public static var errorHandler: ((Error) -> Void)?
    
    /// When started, all USB filter requests came into this handler.
    /// - Parameters:
    ///     - request: Request containing information about USB Device or Interface to be filtered;
    ///     - response: Reply block that responds to filtering request.
    public var requestHandler: ((_ request: USBFilterRequest, _ response: @escaping (_ allow: Bool) -> Void) -> Void)?
    
    /// Starts the service. `requestHandler` will be invoked on the queue.
    public func start(queue: DispatchQueue)
    
    /// Invalidates the service. Requests will not come anymore. Do not start again after invalidation.
    public func invalidate()
}
