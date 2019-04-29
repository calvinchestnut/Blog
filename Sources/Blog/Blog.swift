import Foundation

final class Post: Codable {
    var id: Int?

    var author: String
    var contactURL: String
    var avatarURL: String

    var posted: TimeInterval
    var modified: TimeInterval

    var title: String?
    var body: String?

    var tags: [String]

    // Expects an absolute url
    var image: String?
    var imageAltText: String?

    init?(id: Int? = nil,
          author: String = "Calvin Chestnut",
          contactURL: String = "https://twitter.com/iCalvin",
          avatarURL: String = "https://icalvin.dev/img/avatar.JPG",
          posted: Date = Date(),
          modified: Date? = nil,
          title: String? = nil,
          body: String? = nil,
          tags: [String] = [],
          image: String? = nil,
          imageAltText: String? = nil) {
        guard body != nil || title != nil || image != nil
            else { return nil }
        self.id = id

        self.author = author
        self.contactURL = contactURL
        self.avatarURL = avatarURL

        self.posted = posted.timeIntervalSince1970
        self.modified = modified?.timeIntervalSince1970 ?? posted.timeIntervalSince1970

        self.title = title
        self.body = body

        self.tags = tags

        self.image = image
        self.imageAltText = imageAltText
    }
}
