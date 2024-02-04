import { JTDDataType } from "npm:ajv@8.12.0/dist/jtd"

import version0_40_2 from "https://raw.githubusercontent.com/jesseduffield/lazygit/1a035db4c817ac07cd59f0f2aa4e1efd1a9b75b6/schema/config.json" with { type: "json" }
import latestBleedingEdge from "https://raw.githubusercontent.com/jesseduffield/lazygit/master/schema/config.json" with { type: "json" }

// When importing, typescript knows the full type for the json at compile time.
//
// JTDDataType converts the type of the schema to a typescript type that
// contains the properties in the schema.
type Version0_40_2Schema = JTDDataType<typeof version0_40_2>
type LatestBleedingEdgeSchema = JTDDataType<typeof latestBleedingEdge>
type KnownSchemaVersion = Version0_40_2Schema | LatestBleedingEdgeSchema

type Theme<Schema extends KnownSchemaVersion> = {
  theme: Partial<Schema["gui"]["theme"]>
}

export type Version0_40_2 = Theme<Version0_40_2Schema>
export type LatestBleedingEdge = Theme<LatestBleedingEdgeSchema>
