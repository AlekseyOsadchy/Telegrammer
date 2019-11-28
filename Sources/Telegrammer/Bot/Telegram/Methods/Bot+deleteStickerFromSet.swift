// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.



public extension Bot {

    /// Parameters container struct for `deleteStickerFromSet` method
    struct DeleteStickerFromSetParams: JSONEncodable {

        /// File identifier of the sticker
        var sticker: String

        /// Custom keys for coding/decoding `DeleteStickerFromSetParams` struct
        enum CodingKeys: String, CodingKey {
            case sticker = "sticker"
        }

        public init(sticker: String) {
            self.sticker = sticker
        }
    }

    /**
     Use this method to delete a sticker from a set created by the bot. Returns True on success.

     SeeAlso Telegram Bot API Reference:
     [DeleteStickerFromSetParams](https://core.telegram.org/bots/api#deletestickerfromset)
     
     - Parameters:
         - params: Parameters container, see `DeleteStickerFromSetParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Bool` type
     */
    @discardableResult
    func deleteStickerFromSet(params: DeleteStickerFromSetParams) throws -> Future<Bool> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try client
            .request(endpoint: "deleteStickerFromSet", body: body, headers: headers)
            .flatMapThrowing { (container) -> Bool in
                return try self.processContainer(container)
        }
    }
}
