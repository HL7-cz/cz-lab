{% include variable-definitions.md %}

Tato stránka uvádí logické modely HL7 FHIR používané k reprezentaci Laboratorní zprávy.

<div style="margin: 1.5rem 0 2rem; padding: 1.25rem 1rem; background: linear-gradient(180deg, #f8fbff 0%, #eef5fb 100%); border: 1px solid #d7e6f2; border-radius: 14px;">

{% include img.html img="log-model-cs.png" caption="Obrázek 1: Přehled logického modelu laboratorní zprávy" width="100%" %}

</div>

{% sql {
  "query" : "SELECT name AS Name, title AS Title, Type, Description, Web FROM Resources WHERE Type='StructureDefinition' AND Name LIKE 'LogCz%' ORDER BY Title",
  "class" : "lines",
  "columns" : [
    { "name" : "Title"      , "type" : "link"     , "source" : "Name", "target" : "Web"},
    { "name" : "Name"       , "type" : "markdown" , "source" : "Title" },
    { "name" : "Description", "type" : "markdown" , "source" : "Description"}
  ]
} %}