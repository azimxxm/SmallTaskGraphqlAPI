// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public protocol SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == SmallTaskAPI.SchemaMetadata {}

public protocol InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == SmallTaskAPI.SchemaMetadata {}

public protocol MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == SmallTaskAPI.SchemaMetadata {}

public protocol MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == SmallTaskAPI.SchemaMetadata {}

public enum SchemaMetadata: ApolloAPI.SchemaMetadata {
  public static let configuration: any ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

  public static func objectType(forTypename typename: String) -> ApolloAPI.Object? {
    switch typename {
    case "Query": return SmallTaskAPI.Objects.Query
    case "FilmsConnection": return SmallTaskAPI.Objects.FilmsConnection
    case "Film": return SmallTaskAPI.Objects.Film
    case "Person": return SmallTaskAPI.Objects.Person
    case "Planet": return SmallTaskAPI.Objects.Planet
    case "Species": return SmallTaskAPI.Objects.Species
    case "Starship": return SmallTaskAPI.Objects.Starship
    case "Vehicle": return SmallTaskAPI.Objects.Vehicle
    case "FilmCharactersConnection": return SmallTaskAPI.Objects.FilmCharactersConnection
    default: return nil
    }
  }
}

public enum Objects {}
public enum Interfaces {}
public enum Unions {}
