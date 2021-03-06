// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/**
 This object represents a chat photo.

 SeeAlso Telegram Bot API Reference:
 [ChatPhoto](https://core.telegram.org/bots/api#chatphoto)
 */
public final class ChatPhoto: Codable {

    /// Custom keys for coding/decoding `ChatPhoto` struct
    enum CodingKeys: String, CodingKey {
        case smallFileId = "small_file_id"
        case bigFileId = "big_file_id"
    }

    /// File identifier of small (160x160) chat photo. This file_id can be used only for photo download and only for as long as the photo is not changed.
    public var smallFileId: String

    /// File identifier of big (640x640) chat photo. This file_id can be used only for photo download and only for as long as the photo is not changed.
    public var bigFileId: String


    public init (smallFileId: String, bigFileId: String) {
        self.smallFileId = smallFileId
        self.bigFileId = bigFileId
    }
}
