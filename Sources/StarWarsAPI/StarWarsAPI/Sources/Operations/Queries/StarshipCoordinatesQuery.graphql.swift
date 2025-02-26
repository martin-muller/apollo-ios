// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class StarshipCoordinatesQuery: GraphQLQuery {
  public static let operationName: String = "StarshipCoordinates"
  public static let document: ApolloAPI.DocumentType = .automaticallyPersisted(
    operationIdentifier: "8dd77d4bc7494c184606da092a665a7c2ca3c2a3f14d3b23fa5e469e207b3406",
    definition: .init(
      #"""
      query StarshipCoordinates($coordinates: [[Float!]!]) {
        starshipCoordinates(coordinates: $coordinates) {
          __typename
          name
          coordinates
          length
        }
      }
      """#
    ))

  public var coordinates: GraphQLNullable<[[Double]]>

  public init(coordinates: GraphQLNullable<[[Double]]>) {
    self.coordinates = coordinates
  }

  public var __variables: Variables? { ["coordinates": coordinates] }

  public struct Data: StarWarsAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("starshipCoordinates", StarshipCoordinates?.self, arguments: ["coordinates": .variable("coordinates")]),
    ] }

    public var starshipCoordinates: StarshipCoordinates? { __data["starshipCoordinates"] }

    public init(
      starshipCoordinates: StarshipCoordinates? = nil
    ) {
      self.init(_dataDict: DataDict(
        data: [
          "__typename": StarWarsAPI.Objects.Query.typename,
          "starshipCoordinates": starshipCoordinates._fieldData,
        ],
        fulfilledFragments: [
          ObjectIdentifier(Self.self)
        ]
      ))
    }

    /// StarshipCoordinates
    ///
    /// Parent Type: `Starship`
    public struct StarshipCoordinates: StarWarsAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.Starship }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("name", String.self),
        .field("coordinates", [[Double]]?.self),
        .field("length", Double?.self),
      ] }

      /// The name of the starship
      public var name: String { __data["name"] }
      public var coordinates: [[Double]]? { __data["coordinates"] }
      /// Length of the starship, along the longest axis
      public var length: Double? { __data["length"] }

      public init(
        name: String,
        coordinates: [[Double]]? = nil,
        length: Double? = nil
      ) {
        self.init(_dataDict: DataDict(
          data: [
            "__typename": StarWarsAPI.Objects.Starship.typename,
            "name": name,
            "coordinates": coordinates,
            "length": length,
          ],
          fulfilledFragments: [
            ObjectIdentifier(Self.self)
          ]
        ))
      }
    }
  }
}
