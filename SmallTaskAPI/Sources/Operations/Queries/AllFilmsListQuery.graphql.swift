// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class AllFilmsListQuery: GraphQLQuery {
  public static let operationName: String = "AllFilmsList"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query AllFilmsList { allFilms { __typename films { __typename id title director releaseDate episodeID openingCrawl characterConnection { __typename characters { __typename name id birthYear gender } } } } }"#
    ))

  public init() {}

  public struct Data: SmallTaskAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { SmallTaskAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("allFilms", AllFilms?.self),
    ] }

    public var allFilms: AllFilms? { __data["allFilms"] }

    /// AllFilms
    ///
    /// Parent Type: `FilmsConnection`
    public struct AllFilms: SmallTaskAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { SmallTaskAPI.Objects.FilmsConnection }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("films", [Film?]?.self),
      ] }

      /// A list of all of the objects returned in the connection. This is a convenience
      /// field provided for quickly exploring the API; rather than querying for
      /// "{ edges { node } }" when no edge data is needed, this field can be be used
      /// instead. Note that when clients like Relay need to fetch the "cursor" field on
      /// the edge to enable efficient pagination, this shortcut cannot be used, and the
      /// full "{ edges { node } }" version should be used instead.
      public var films: [Film?]? { __data["films"] }

      /// AllFilms.Film
      ///
      /// Parent Type: `Film`
      public struct Film: SmallTaskAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: any ApolloAPI.ParentType { SmallTaskAPI.Objects.Film }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", SmallTaskAPI.ID.self),
          .field("title", String?.self),
          .field("director", String?.self),
          .field("releaseDate", String?.self),
          .field("episodeID", Int?.self),
          .field("openingCrawl", String?.self),
          .field("characterConnection", CharacterConnection?.self),
        ] }

        /// The ID of an object
        public var id: SmallTaskAPI.ID { __data["id"] }
        /// The title of this film.
        public var title: String? { __data["title"] }
        /// The name of the director of this film.
        public var director: String? { __data["director"] }
        /// The ISO 8601 date format of film release at original creator country.
        public var releaseDate: String? { __data["releaseDate"] }
        /// The episode number of this film.
        public var episodeID: Int? { __data["episodeID"] }
        /// The opening paragraphs at the beginning of this film.
        public var openingCrawl: String? { __data["openingCrawl"] }
        public var characterConnection: CharacterConnection? { __data["characterConnection"] }

        /// AllFilms.Film.CharacterConnection
        ///
        /// Parent Type: `FilmCharactersConnection`
        public struct CharacterConnection: SmallTaskAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: any ApolloAPI.ParentType { SmallTaskAPI.Objects.FilmCharactersConnection }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("characters", [Character?]?.self),
          ] }

          /// A list of all of the objects returned in the connection. This is a convenience
          /// field provided for quickly exploring the API; rather than querying for
          /// "{ edges { node } }" when no edge data is needed, this field can be be used
          /// instead. Note that when clients like Relay need to fetch the "cursor" field on
          /// the edge to enable efficient pagination, this shortcut cannot be used, and the
          /// full "{ edges { node } }" version should be used instead.
          public var characters: [Character?]? { __data["characters"] }

          /// AllFilms.Film.CharacterConnection.Character
          ///
          /// Parent Type: `Person`
          public struct Character: SmallTaskAPI.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: any ApolloAPI.ParentType { SmallTaskAPI.Objects.Person }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("name", String?.self),
              .field("id", SmallTaskAPI.ID.self),
              .field("birthYear", String?.self),
              .field("gender", String?.self),
            ] }

            /// The name of this person.
            public var name: String? { __data["name"] }
            /// The ID of an object
            public var id: SmallTaskAPI.ID { __data["id"] }
            /// The birth year of the person, using the in-universe standard of BBY or ABY -
            /// Before the Battle of Yavin or After the Battle of Yavin. The Battle of Yavin is
            /// a battle that occurs at the end of Star Wars episode IV: A New Hope.
            public var birthYear: String? { __data["birthYear"] }
            /// The gender of this person. Either "Male", "Female" or "unknown",
            /// "n/a" if the person does not have a gender.
            public var gender: String? { __data["gender"] }
          }
        }
      }
    }
  }
}
