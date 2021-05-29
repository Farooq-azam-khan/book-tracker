module WorldMapTypes exposing (worldMapDecoder, WorldMap)
import Json.Decode
import Json.Encode


-- Required packages:
-- * elm/json


type alias WorldMap =
    { arcs : List (List (List Int))
    , bbox : List Bbox
    , objects : Objects
    , transform : Transform
    , type_ : String
    }


type alias Objects =
    { countries : ObjectsCountries
    , land : ObjectsLand
    }


type alias ObjectsCountries =
    { geometries : List ObjectsCountriesGeometries
    , type_ : String
    }


type ObjectsCountriesGeometries
    = ObjectsCountriesGeometries0 ObjectsCountriesGeometriesAlias100
    | ObjectsCountriesGeometries1 ObjectsCountriesGeometriesAlias101
    | ObjectsCountriesGeometries2 ObjectsCountriesGeometriesAlias102
    | ObjectsCountriesGeometries3 ObjectsCountriesGeometriesAlias103
    | ObjectsCountriesGeometries4 ObjectsCountriesGeometriesAlias104
    | ObjectsCountriesGeometries5 ObjectsCountriesGeometriesAlias105
    | ObjectsCountriesGeometries6 ObjectsCountriesGeometriesAlias106
    | ObjectsCountriesGeometries7 ObjectsCountriesGeometriesAlias107
    | ObjectsCountriesGeometries8 ObjectsCountriesGeometriesAlias108
    | ObjectsCountriesGeometries9 ObjectsCountriesGeometriesAlias109
    | ObjectsCountriesGeometries10 ObjectsCountriesGeometriesAlias110
    | ObjectsCountriesGeometries11 ObjectsCountriesGeometriesAlias111
    | ObjectsCountriesGeometries12 ObjectsCountriesGeometriesAlias112
    | ObjectsCountriesGeometries13 ObjectsCountriesGeometriesAlias113
    | ObjectsCountriesGeometries14 ObjectsCountriesGeometriesAlias114
    | ObjectsCountriesGeometries15 ObjectsCountriesGeometriesAlias115
    | ObjectsCountriesGeometries16 ObjectsCountriesGeometriesAlias116
    | ObjectsCountriesGeometries17 ObjectsCountriesGeometriesAlias117
    | ObjectsCountriesGeometries18 ObjectsCountriesGeometriesAlias118
    | ObjectsCountriesGeometries19 ObjectsCountriesGeometriesAlias119
    | ObjectsCountriesGeometries20 ObjectsCountriesGeometriesAlias120
    | ObjectsCountriesGeometries21 ObjectsCountriesGeometriesAlias121
    | ObjectsCountriesGeometries22 ObjectsCountriesGeometriesAlias122
    | ObjectsCountriesGeometries23 ObjectsCountriesGeometriesAlias123
    | ObjectsCountriesGeometries24 ObjectsCountriesGeometriesAlias124
    | ObjectsCountriesGeometries25 ObjectsCountriesGeometriesAlias125
    | ObjectsCountriesGeometries26 ObjectsCountriesGeometriesAlias126
    | ObjectsCountriesGeometries27 ObjectsCountriesGeometriesAlias127
    | ObjectsCountriesGeometries28 ObjectsCountriesGeometriesAlias128
    | ObjectsCountriesGeometries29 ObjectsCountriesGeometriesAlias129
    | ObjectsCountriesGeometries30 ObjectsCountriesGeometriesAlias130
    | ObjectsCountriesGeometries31 ObjectsCountriesGeometriesAlias131
    | ObjectsCountriesGeometries32 ObjectsCountriesGeometriesAlias132
    | ObjectsCountriesGeometries33 ObjectsCountriesGeometriesAlias133
    | ObjectsCountriesGeometries34 ObjectsCountriesGeometriesAlias134
    | ObjectsCountriesGeometries35 ObjectsCountriesGeometriesAlias135
    | ObjectsCountriesGeometries36 ObjectsCountriesGeometriesAlias136
    | ObjectsCountriesGeometries37 ObjectsCountriesGeometriesAlias137
    | ObjectsCountriesGeometries38 ObjectsCountriesGeometriesAlias138
    | ObjectsCountriesGeometries39 ObjectsCountriesGeometriesAlias139
    | ObjectsCountriesGeometries40 ObjectsCountriesGeometriesAlias140
    | ObjectsCountriesGeometries41 ObjectsCountriesGeometriesAlias141
    | ObjectsCountriesGeometries42 ObjectsCountriesGeometriesAlias142
    | ObjectsCountriesGeometries43 ObjectsCountriesGeometriesAlias143
    | ObjectsCountriesGeometries44 ObjectsCountriesGeometriesAlias144
    | ObjectsCountriesGeometries45 ObjectsCountriesGeometriesAlias145
    | ObjectsCountriesGeometries46 ObjectsCountriesGeometriesAlias146
    | ObjectsCountriesGeometries47 ObjectsCountriesGeometriesAlias147
    | ObjectsCountriesGeometries48 ObjectsCountriesGeometriesAlias148
    | ObjectsCountriesGeometries49 ObjectsCountriesGeometriesAlias149
    | ObjectsCountriesGeometries50 ObjectsCountriesGeometriesAlias150
    | ObjectsCountriesGeometries51 ObjectsCountriesGeometriesAlias151
    | ObjectsCountriesGeometries52 ObjectsCountriesGeometriesAlias152
    | ObjectsCountriesGeometries53 ObjectsCountriesGeometriesAlias153
    | ObjectsCountriesGeometries54 ObjectsCountriesGeometriesAlias154
    | ObjectsCountriesGeometries55 ObjectsCountriesGeometriesAlias155
    | ObjectsCountriesGeometries56 ObjectsCountriesGeometriesAlias156
    | ObjectsCountriesGeometries57 ObjectsCountriesGeometriesAlias157
    | ObjectsCountriesGeometries58 ObjectsCountriesGeometriesAlias158
    | ObjectsCountriesGeometries59 ObjectsCountriesGeometriesAlias159
    | ObjectsCountriesGeometries60 ObjectsCountriesGeometriesAlias160
    | ObjectsCountriesGeometries61 ObjectsCountriesGeometriesAlias161
    | ObjectsCountriesGeometries62 ObjectsCountriesGeometriesAlias162
    | ObjectsCountriesGeometries63 ObjectsCountriesGeometriesAlias163
    | ObjectsCountriesGeometries64 ObjectsCountriesGeometriesAlias164
    | ObjectsCountriesGeometries65 ObjectsCountriesGeometriesAlias165
    | ObjectsCountriesGeometries66 ObjectsCountriesGeometriesAlias166
    | ObjectsCountriesGeometries67 ObjectsCountriesGeometriesAlias167
    | ObjectsCountriesGeometries68 ObjectsCountriesGeometriesAlias168
    | ObjectsCountriesGeometries69 ObjectsCountriesGeometriesAlias169
    | ObjectsCountriesGeometries70 ObjectsCountriesGeometriesAlias17
    | ObjectsCountriesGeometries71 ObjectsCountriesGeometriesAlias170
    | ObjectsCountriesGeometries72 ObjectsCountriesGeometriesAlias171
    | ObjectsCountriesGeometries73 ObjectsCountriesGeometriesAlias172
    | ObjectsCountriesGeometries74 ObjectsCountriesGeometriesAlias173
    | ObjectsCountriesGeometries75 ObjectsCountriesGeometriesAlias174
    | ObjectsCountriesGeometries76 ObjectsCountriesGeometriesAlias175
    | ObjectsCountriesGeometries77 ObjectsCountriesGeometriesAlias176
    | ObjectsCountriesGeometries78 ObjectsCountriesGeometriesAlias18
    | ObjectsCountriesGeometries79 ObjectsCountriesGeometriesAlias19
    | ObjectsCountriesGeometries80 ObjectsCountriesGeometriesAlias20
    | ObjectsCountriesGeometries81 ObjectsCountriesGeometriesAlias21
    | ObjectsCountriesGeometries82 ObjectsCountriesGeometriesAlias22
    | ObjectsCountriesGeometries83 ObjectsCountriesGeometriesAlias23
    | ObjectsCountriesGeometries84 ObjectsCountriesGeometriesAlias24
    | ObjectsCountriesGeometries85 ObjectsCountriesGeometriesAlias25
    | ObjectsCountriesGeometries86 ObjectsCountriesGeometriesAlias26
    | ObjectsCountriesGeometries87 ObjectsCountriesGeometriesAlias27
    | ObjectsCountriesGeometries88 ObjectsCountriesGeometriesAlias28
    | ObjectsCountriesGeometries89 ObjectsCountriesGeometriesAlias29
    | ObjectsCountriesGeometries90 ObjectsCountriesGeometriesAlias30
    | ObjectsCountriesGeometries91 ObjectsCountriesGeometriesAlias31
    | ObjectsCountriesGeometries92 ObjectsCountriesGeometriesAlias32
    | ObjectsCountriesGeometries93 ObjectsCountriesGeometriesAlias33
    | ObjectsCountriesGeometries94 ObjectsCountriesGeometriesAlias34
    | ObjectsCountriesGeometries95 ObjectsCountriesGeometriesAlias35
    | ObjectsCountriesGeometries96 ObjectsCountriesGeometriesAlias36
    | ObjectsCountriesGeometries97 ObjectsCountriesGeometriesAlias37
    | ObjectsCountriesGeometries98 ObjectsCountriesGeometriesAlias38
    | ObjectsCountriesGeometries99 ObjectsCountriesGeometriesAlias39
    | ObjectsCountriesGeometries100 ObjectsCountriesGeometriesAlias40
    | ObjectsCountriesGeometries101 ObjectsCountriesGeometriesAlias41
    | ObjectsCountriesGeometries102 ObjectsCountriesGeometriesAlias42
    | ObjectsCountriesGeometries103 ObjectsCountriesGeometriesAlias43
    | ObjectsCountriesGeometries104 ObjectsCountriesGeometriesAlias44
    | ObjectsCountriesGeometries105 ObjectsCountriesGeometriesAlias45
    | ObjectsCountriesGeometries106 ObjectsCountriesGeometriesAlias46
    | ObjectsCountriesGeometries107 ObjectsCountriesGeometriesAlias47
    | ObjectsCountriesGeometries108 ObjectsCountriesGeometriesAlias48
    | ObjectsCountriesGeometries109 ObjectsCountriesGeometriesAlias49
    | ObjectsCountriesGeometries110 ObjectsCountriesGeometriesAlias50
    | ObjectsCountriesGeometries111 ObjectsCountriesGeometriesAlias51
    | ObjectsCountriesGeometries112 ObjectsCountriesGeometriesAlias52
    | ObjectsCountriesGeometries113 ObjectsCountriesGeometriesAlias53
    | ObjectsCountriesGeometries114 ObjectsCountriesGeometriesAlias54
    | ObjectsCountriesGeometries115 ObjectsCountriesGeometriesAlias55
    | ObjectsCountriesGeometries116 ObjectsCountriesGeometriesAlias56
    | ObjectsCountriesGeometries117 ObjectsCountriesGeometriesAlias57
    | ObjectsCountriesGeometries118 ObjectsCountriesGeometriesAlias58
    | ObjectsCountriesGeometries119 ObjectsCountriesGeometriesAlias59
    | ObjectsCountriesGeometries120 ObjectsCountriesGeometriesAlias60
    | ObjectsCountriesGeometries121 ObjectsCountriesGeometriesAlias61
    | ObjectsCountriesGeometries122 ObjectsCountriesGeometriesAlias62
    | ObjectsCountriesGeometries123 ObjectsCountriesGeometriesAlias63
    | ObjectsCountriesGeometries124 ObjectsCountriesGeometriesAlias64
    | ObjectsCountriesGeometries125 ObjectsCountriesGeometriesAlias65
    | ObjectsCountriesGeometries126 ObjectsCountriesGeometriesAlias66
    | ObjectsCountriesGeometries127 ObjectsCountriesGeometriesAlias67
    | ObjectsCountriesGeometries128 ObjectsCountriesGeometriesAlias68
    | ObjectsCountriesGeometries129 ObjectsCountriesGeometriesAlias69
    | ObjectsCountriesGeometries130 ObjectsCountriesGeometriesAlias70
    | ObjectsCountriesGeometries131 ObjectsCountriesGeometriesAlias71
    | ObjectsCountriesGeometries132 ObjectsCountriesGeometriesAlias72
    | ObjectsCountriesGeometries133 ObjectsCountriesGeometriesAlias73
    | ObjectsCountriesGeometries134 ObjectsCountriesGeometriesAlias74
    | ObjectsCountriesGeometries135 ObjectsCountriesGeometriesAlias75
    | ObjectsCountriesGeometries136 ObjectsCountriesGeometriesAlias76
    | ObjectsCountriesGeometries137 ObjectsCountriesGeometriesAlias77
    | ObjectsCountriesGeometries138 ObjectsCountriesGeometriesAlias78
    | ObjectsCountriesGeometries139 ObjectsCountriesGeometriesAlias79
    | ObjectsCountriesGeometries140 ObjectsCountriesGeometriesAlias80
    | ObjectsCountriesGeometries141 ObjectsCountriesGeometriesAlias81
    | ObjectsCountriesGeometries142 ObjectsCountriesGeometriesAlias82
    | ObjectsCountriesGeometries143 ObjectsCountriesGeometriesAlias83
    | ObjectsCountriesGeometries144 ObjectsCountriesGeometriesAlias84
    | ObjectsCountriesGeometries145 ObjectsCountriesGeometriesAlias85
    | ObjectsCountriesGeometries146 ObjectsCountriesGeometriesAlias86
    | ObjectsCountriesGeometries147 ObjectsCountriesGeometriesAlias87
    | ObjectsCountriesGeometries148 ObjectsCountriesGeometriesAlias88
    | ObjectsCountriesGeometries149 ObjectsCountriesGeometriesAlias89
    | ObjectsCountriesGeometries150 ObjectsCountriesGeometriesAlias90
    | ObjectsCountriesGeometries151 ObjectsCountriesGeometriesAlias91
    | ObjectsCountriesGeometries152 ObjectsCountriesGeometriesAlias92
    | ObjectsCountriesGeometries153 ObjectsCountriesGeometriesAlias93
    | ObjectsCountriesGeometries154 ObjectsCountriesGeometriesAlias94
    | ObjectsCountriesGeometries155 ObjectsCountriesGeometriesAlias95
    | ObjectsCountriesGeometries156 ObjectsCountriesGeometriesAlias96
    | ObjectsCountriesGeometries157 ObjectsCountriesGeometriesAlias97
    | ObjectsCountriesGeometries158 ObjectsCountriesGeometriesAlias98
    | ObjectsCountriesGeometries159 ObjectsCountriesGeometriesAlias99
    | ObjectsCountriesGeometries160 ObjectsCountriesGeometriesChunk
    | ObjectsCountriesGeometries161 ObjectsCountriesGeometriesConstituent
    | ObjectsCountriesGeometries162 ObjectsCountriesGeometriesDoodad
    | ObjectsCountriesGeometries163 ObjectsCountriesGeometriesEntity
    | ObjectsCountriesGeometries164 ObjectsCountriesGeometriesGadget
    | ObjectsCountriesGeometries165 ObjectsCountriesGeometriesGizmo
    | ObjectsCountriesGeometries166 ObjectsCountriesGeometriesInstance
    | ObjectsCountriesGeometries167 ObjectsCountriesGeometriesItem
    | ObjectsCountriesGeometries168 ObjectsCountriesGeometriesObject
    | ObjectsCountriesGeometries169 ObjectsCountriesGeometriesPart
    | ObjectsCountriesGeometries170 ObjectsCountriesGeometriesPiece
    | ObjectsCountriesGeometries171 ObjectsCountriesGeometriesSpecimen
    | ObjectsCountriesGeometries172 ObjectsCountriesGeometriesThing
    | ObjectsCountriesGeometries173 ObjectsCountriesGeometriesThingamajig
    | ObjectsCountriesGeometries174 ObjectsCountriesGeometriesThingy
    | ObjectsCountriesGeometries175 ObjectsCountriesGeometriesWhatsit
    | ObjectsCountriesGeometries176 ObjectsCountriesGeometriesWidget


type alias ObjectsCountriesGeometriesObject =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesItem =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesEntity =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesThing =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesInstance =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesConstituent =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesSpecimen =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesGadget =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesWidget =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesGizmo =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesPart =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesChunk =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesPiece =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesThingy =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesThingamajig =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesWhatsit =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesDoodad =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias17 =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias18 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias19 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias20 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias21 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias22 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias23 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias24 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias25 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias26 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias27 =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias28 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias29 =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias30 =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias31 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias32 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias33 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias34 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias35 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias36 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias37 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias38 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias39 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias40 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias41 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias42 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias43 =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias44 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias45 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias46 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias47 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias48 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias49 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias50 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias51 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias52 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias53 =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias54 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias55 =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias56 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias57 =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias58 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias59 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias60 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias61 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias62 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias63 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias64 =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias65 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias66 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias67 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias68 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias69 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias70 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias71 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias72 =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias73 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias74 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias75 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias76 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias77 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias78 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias79 =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias80 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias81 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias82 =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias83 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias84 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias85 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias86 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias87 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias88 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias89 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias90 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias91 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias92 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias93 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias94 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias95 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias96 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias97 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias98 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias99 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias100 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias101 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias102 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias103 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias104 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias105 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias106 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias107 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias108 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias109 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias110 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias111 =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias112 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias113 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias114 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias115 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias116 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias117 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias118 =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias119 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias120 =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias121 =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias122 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias123 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias124 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias125 =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias126 =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias127 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias128 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias129 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias130 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias131 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias132 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias133 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias134 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias135 =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias136 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias137 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias138 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias139 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias140 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias141 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias142 =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias143 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias144 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias145 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias146 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias147 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias148 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias149 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias150 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias151 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias152 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias153 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias154 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias155 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias156 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias157 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias158 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias159 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias160 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias161 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias162 =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias163 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias164 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias165 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias166 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias167 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias168 =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias169 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias170 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias171 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias172 =
    { arcs : List (List (List Int))
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias173 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias174 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias175 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsCountriesGeometriesAlias176 =
    { arcs : List (List Int)
    , id : String
    , type_ : String
    }


type alias ObjectsLand =
    { geometries : List ObjectsLandGeometriesObject
    , type_ : String
    }


type alias ObjectsLandGeometriesObject =
    { arcs : List (List (List Int))
    , type_ : String
    }


type Bbox
    = Bbox0 Float
    | Bbox1 Int


type alias Transform =
    { scale : List Float
    , translate : List TransformTranslate
    }


type TransformTranslate
    = TransformTranslate0 Float
    | TransformTranslate1 Int


worldMapDecoder : Json.Decode.Decoder WorldMap
worldMapDecoder = 
    Json.Decode.map5 WorldMap
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "bbox" bboxDecoder)
        (Json.Decode.field "objects" objectsDecoder)
        (Json.Decode.field "transform" transformDecoder)
        (Json.Decode.field "type" Json.Decode.string)


objectsDecoder : Json.Decode.Decoder Objects
objectsDecoder = 
    Json.Decode.map2 Objects
        (Json.Decode.field "countries" objectsCountriesDecoder)
        (Json.Decode.field "land" objectsLandDecoder)


objectsCountriesDecoder : Json.Decode.Decoder ObjectsCountries
objectsCountriesDecoder = 
    Json.Decode.map2 ObjectsCountries
        (Json.Decode.field "geometries" objectsCountriesGeometriesDecoder)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesDecoder : Json.Decode.Decoder (List ObjectsCountriesGeometries)
objectsCountriesGeometriesDecoder = 
    Json.Decode.list objectsCountriesGeometriesMemberDecoder


objectsCountriesGeometriesMemberDecoder : Json.Decode.Decoder ObjectsCountriesGeometries
objectsCountriesGeometriesMemberDecoder = 
    Json.Decode.oneOf
        [ Json.Decode.map ObjectsCountriesGeometries0 <| objectsCountriesGeometriesAlias100Decoder
        , Json.Decode.map ObjectsCountriesGeometries1 <| objectsCountriesGeometriesAlias101Decoder
        , Json.Decode.map ObjectsCountriesGeometries2 <| objectsCountriesGeometriesAlias102Decoder
        , Json.Decode.map ObjectsCountriesGeometries3 <| objectsCountriesGeometriesAlias103Decoder
        , Json.Decode.map ObjectsCountriesGeometries4 <| objectsCountriesGeometriesAlias104Decoder
        , Json.Decode.map ObjectsCountriesGeometries5 <| objectsCountriesGeometriesAlias105Decoder
        , Json.Decode.map ObjectsCountriesGeometries6 <| objectsCountriesGeometriesAlias106Decoder
        , Json.Decode.map ObjectsCountriesGeometries7 <| objectsCountriesGeometriesAlias107Decoder
        , Json.Decode.map ObjectsCountriesGeometries8 <| objectsCountriesGeometriesAlias108Decoder
        , Json.Decode.map ObjectsCountriesGeometries9 <| objectsCountriesGeometriesAlias109Decoder
        , Json.Decode.map ObjectsCountriesGeometries10 <| objectsCountriesGeometriesAlias110Decoder
        , Json.Decode.map ObjectsCountriesGeometries11 <| objectsCountriesGeometriesAlias111Decoder
        , Json.Decode.map ObjectsCountriesGeometries12 <| objectsCountriesGeometriesAlias112Decoder
        , Json.Decode.map ObjectsCountriesGeometries13 <| objectsCountriesGeometriesAlias113Decoder
        , Json.Decode.map ObjectsCountriesGeometries14 <| objectsCountriesGeometriesAlias114Decoder
        , Json.Decode.map ObjectsCountriesGeometries15 <| objectsCountriesGeometriesAlias115Decoder
        , Json.Decode.map ObjectsCountriesGeometries16 <| objectsCountriesGeometriesAlias116Decoder
        , Json.Decode.map ObjectsCountriesGeometries17 <| objectsCountriesGeometriesAlias117Decoder
        , Json.Decode.map ObjectsCountriesGeometries18 <| objectsCountriesGeometriesAlias118Decoder
        , Json.Decode.map ObjectsCountriesGeometries19 <| objectsCountriesGeometriesAlias119Decoder
        , Json.Decode.map ObjectsCountriesGeometries20 <| objectsCountriesGeometriesAlias120Decoder
        , Json.Decode.map ObjectsCountriesGeometries21 <| objectsCountriesGeometriesAlias121Decoder
        , Json.Decode.map ObjectsCountriesGeometries22 <| objectsCountriesGeometriesAlias122Decoder
        , Json.Decode.map ObjectsCountriesGeometries23 <| objectsCountriesGeometriesAlias123Decoder
        , Json.Decode.map ObjectsCountriesGeometries24 <| objectsCountriesGeometriesAlias124Decoder
        , Json.Decode.map ObjectsCountriesGeometries25 <| objectsCountriesGeometriesAlias125Decoder
        , Json.Decode.map ObjectsCountriesGeometries26 <| objectsCountriesGeometriesAlias126Decoder
        , Json.Decode.map ObjectsCountriesGeometries27 <| objectsCountriesGeometriesAlias127Decoder
        , Json.Decode.map ObjectsCountriesGeometries28 <| objectsCountriesGeometriesAlias128Decoder
        , Json.Decode.map ObjectsCountriesGeometries29 <| objectsCountriesGeometriesAlias129Decoder
        , Json.Decode.map ObjectsCountriesGeometries30 <| objectsCountriesGeometriesAlias130Decoder
        , Json.Decode.map ObjectsCountriesGeometries31 <| objectsCountriesGeometriesAlias131Decoder
        , Json.Decode.map ObjectsCountriesGeometries32 <| objectsCountriesGeometriesAlias132Decoder
        , Json.Decode.map ObjectsCountriesGeometries33 <| objectsCountriesGeometriesAlias133Decoder
        , Json.Decode.map ObjectsCountriesGeometries34 <| objectsCountriesGeometriesAlias134Decoder
        , Json.Decode.map ObjectsCountriesGeometries35 <| objectsCountriesGeometriesAlias135Decoder
        , Json.Decode.map ObjectsCountriesGeometries36 <| objectsCountriesGeometriesAlias136Decoder
        , Json.Decode.map ObjectsCountriesGeometries37 <| objectsCountriesGeometriesAlias137Decoder
        , Json.Decode.map ObjectsCountriesGeometries38 <| objectsCountriesGeometriesAlias138Decoder
        , Json.Decode.map ObjectsCountriesGeometries39 <| objectsCountriesGeometriesAlias139Decoder
        , Json.Decode.map ObjectsCountriesGeometries40 <| objectsCountriesGeometriesAlias140Decoder
        , Json.Decode.map ObjectsCountriesGeometries41 <| objectsCountriesGeometriesAlias141Decoder
        , Json.Decode.map ObjectsCountriesGeometries42 <| objectsCountriesGeometriesAlias142Decoder
        , Json.Decode.map ObjectsCountriesGeometries43 <| objectsCountriesGeometriesAlias143Decoder
        , Json.Decode.map ObjectsCountriesGeometries44 <| objectsCountriesGeometriesAlias144Decoder
        , Json.Decode.map ObjectsCountriesGeometries45 <| objectsCountriesGeometriesAlias145Decoder
        , Json.Decode.map ObjectsCountriesGeometries46 <| objectsCountriesGeometriesAlias146Decoder
        , Json.Decode.map ObjectsCountriesGeometries47 <| objectsCountriesGeometriesAlias147Decoder
        , Json.Decode.map ObjectsCountriesGeometries48 <| objectsCountriesGeometriesAlias148Decoder
        , Json.Decode.map ObjectsCountriesGeometries49 <| objectsCountriesGeometriesAlias149Decoder
        , Json.Decode.map ObjectsCountriesGeometries50 <| objectsCountriesGeometriesAlias150Decoder
        , Json.Decode.map ObjectsCountriesGeometries51 <| objectsCountriesGeometriesAlias151Decoder
        , Json.Decode.map ObjectsCountriesGeometries52 <| objectsCountriesGeometriesAlias152Decoder
        , Json.Decode.map ObjectsCountriesGeometries53 <| objectsCountriesGeometriesAlias153Decoder
        , Json.Decode.map ObjectsCountriesGeometries54 <| objectsCountriesGeometriesAlias154Decoder
        , Json.Decode.map ObjectsCountriesGeometries55 <| objectsCountriesGeometriesAlias155Decoder
        , Json.Decode.map ObjectsCountriesGeometries56 <| objectsCountriesGeometriesAlias156Decoder
        , Json.Decode.map ObjectsCountriesGeometries57 <| objectsCountriesGeometriesAlias157Decoder
        , Json.Decode.map ObjectsCountriesGeometries58 <| objectsCountriesGeometriesAlias158Decoder
        , Json.Decode.map ObjectsCountriesGeometries59 <| objectsCountriesGeometriesAlias159Decoder
        , Json.Decode.map ObjectsCountriesGeometries60 <| objectsCountriesGeometriesAlias160Decoder
        , Json.Decode.map ObjectsCountriesGeometries61 <| objectsCountriesGeometriesAlias161Decoder
        , Json.Decode.map ObjectsCountriesGeometries62 <| objectsCountriesGeometriesAlias162Decoder
        , Json.Decode.map ObjectsCountriesGeometries63 <| objectsCountriesGeometriesAlias163Decoder
        , Json.Decode.map ObjectsCountriesGeometries64 <| objectsCountriesGeometriesAlias164Decoder
        , Json.Decode.map ObjectsCountriesGeometries65 <| objectsCountriesGeometriesAlias165Decoder
        , Json.Decode.map ObjectsCountriesGeometries66 <| objectsCountriesGeometriesAlias166Decoder
        , Json.Decode.map ObjectsCountriesGeometries67 <| objectsCountriesGeometriesAlias167Decoder
        , Json.Decode.map ObjectsCountriesGeometries68 <| objectsCountriesGeometriesAlias168Decoder
        , Json.Decode.map ObjectsCountriesGeometries69 <| objectsCountriesGeometriesAlias169Decoder
        , Json.Decode.map ObjectsCountriesGeometries70 <| objectsCountriesGeometriesAlias17Decoder
        , Json.Decode.map ObjectsCountriesGeometries71 <| objectsCountriesGeometriesAlias170Decoder
        , Json.Decode.map ObjectsCountriesGeometries72 <| objectsCountriesGeometriesAlias171Decoder
        , Json.Decode.map ObjectsCountriesGeometries73 <| objectsCountriesGeometriesAlias172Decoder
        , Json.Decode.map ObjectsCountriesGeometries74 <| objectsCountriesGeometriesAlias173Decoder
        , Json.Decode.map ObjectsCountriesGeometries75 <| objectsCountriesGeometriesAlias174Decoder
        , Json.Decode.map ObjectsCountriesGeometries76 <| objectsCountriesGeometriesAlias175Decoder
        , Json.Decode.map ObjectsCountriesGeometries77 <| objectsCountriesGeometriesAlias176Decoder
        , Json.Decode.map ObjectsCountriesGeometries78 <| objectsCountriesGeometriesAlias18Decoder
        , Json.Decode.map ObjectsCountriesGeometries79 <| objectsCountriesGeometriesAlias19Decoder
        , Json.Decode.map ObjectsCountriesGeometries80 <| objectsCountriesGeometriesAlias20Decoder
        , Json.Decode.map ObjectsCountriesGeometries81 <| objectsCountriesGeometriesAlias21Decoder
        , Json.Decode.map ObjectsCountriesGeometries82 <| objectsCountriesGeometriesAlias22Decoder
        , Json.Decode.map ObjectsCountriesGeometries83 <| objectsCountriesGeometriesAlias23Decoder
        , Json.Decode.map ObjectsCountriesGeometries84 <| objectsCountriesGeometriesAlias24Decoder
        , Json.Decode.map ObjectsCountriesGeometries85 <| objectsCountriesGeometriesAlias25Decoder
        , Json.Decode.map ObjectsCountriesGeometries86 <| objectsCountriesGeometriesAlias26Decoder
        , Json.Decode.map ObjectsCountriesGeometries87 <| objectsCountriesGeometriesAlias27Decoder
        , Json.Decode.map ObjectsCountriesGeometries88 <| objectsCountriesGeometriesAlias28Decoder
        , Json.Decode.map ObjectsCountriesGeometries89 <| objectsCountriesGeometriesAlias29Decoder
        , Json.Decode.map ObjectsCountriesGeometries90 <| objectsCountriesGeometriesAlias30Decoder
        , Json.Decode.map ObjectsCountriesGeometries91 <| objectsCountriesGeometriesAlias31Decoder
        , Json.Decode.map ObjectsCountriesGeometries92 <| objectsCountriesGeometriesAlias32Decoder
        , Json.Decode.map ObjectsCountriesGeometries93 <| objectsCountriesGeometriesAlias33Decoder
        , Json.Decode.map ObjectsCountriesGeometries94 <| objectsCountriesGeometriesAlias34Decoder
        , Json.Decode.map ObjectsCountriesGeometries95 <| objectsCountriesGeometriesAlias35Decoder
        , Json.Decode.map ObjectsCountriesGeometries96 <| objectsCountriesGeometriesAlias36Decoder
        , Json.Decode.map ObjectsCountriesGeometries97 <| objectsCountriesGeometriesAlias37Decoder
        , Json.Decode.map ObjectsCountriesGeometries98 <| objectsCountriesGeometriesAlias38Decoder
        , Json.Decode.map ObjectsCountriesGeometries99 <| objectsCountriesGeometriesAlias39Decoder
        , Json.Decode.map ObjectsCountriesGeometries100 <| objectsCountriesGeometriesAlias40Decoder
        , Json.Decode.map ObjectsCountriesGeometries101 <| objectsCountriesGeometriesAlias41Decoder
        , Json.Decode.map ObjectsCountriesGeometries102 <| objectsCountriesGeometriesAlias42Decoder
        , Json.Decode.map ObjectsCountriesGeometries103 <| objectsCountriesGeometriesAlias43Decoder
        , Json.Decode.map ObjectsCountriesGeometries104 <| objectsCountriesGeometriesAlias44Decoder
        , Json.Decode.map ObjectsCountriesGeometries105 <| objectsCountriesGeometriesAlias45Decoder
        , Json.Decode.map ObjectsCountriesGeometries106 <| objectsCountriesGeometriesAlias46Decoder
        , Json.Decode.map ObjectsCountriesGeometries107 <| objectsCountriesGeometriesAlias47Decoder
        , Json.Decode.map ObjectsCountriesGeometries108 <| objectsCountriesGeometriesAlias48Decoder
        , Json.Decode.map ObjectsCountriesGeometries109 <| objectsCountriesGeometriesAlias49Decoder
        , Json.Decode.map ObjectsCountriesGeometries110 <| objectsCountriesGeometriesAlias50Decoder
        , Json.Decode.map ObjectsCountriesGeometries111 <| objectsCountriesGeometriesAlias51Decoder
        , Json.Decode.map ObjectsCountriesGeometries112 <| objectsCountriesGeometriesAlias52Decoder
        , Json.Decode.map ObjectsCountriesGeometries113 <| objectsCountriesGeometriesAlias53Decoder
        , Json.Decode.map ObjectsCountriesGeometries114 <| objectsCountriesGeometriesAlias54Decoder
        , Json.Decode.map ObjectsCountriesGeometries115 <| objectsCountriesGeometriesAlias55Decoder
        , Json.Decode.map ObjectsCountriesGeometries116 <| objectsCountriesGeometriesAlias56Decoder
        , Json.Decode.map ObjectsCountriesGeometries117 <| objectsCountriesGeometriesAlias57Decoder
        , Json.Decode.map ObjectsCountriesGeometries118 <| objectsCountriesGeometriesAlias58Decoder
        , Json.Decode.map ObjectsCountriesGeometries119 <| objectsCountriesGeometriesAlias59Decoder
        , Json.Decode.map ObjectsCountriesGeometries120 <| objectsCountriesGeometriesAlias60Decoder
        , Json.Decode.map ObjectsCountriesGeometries121 <| objectsCountriesGeometriesAlias61Decoder
        , Json.Decode.map ObjectsCountriesGeometries122 <| objectsCountriesGeometriesAlias62Decoder
        , Json.Decode.map ObjectsCountriesGeometries123 <| objectsCountriesGeometriesAlias63Decoder
        , Json.Decode.map ObjectsCountriesGeometries124 <| objectsCountriesGeometriesAlias64Decoder
        , Json.Decode.map ObjectsCountriesGeometries125 <| objectsCountriesGeometriesAlias65Decoder
        , Json.Decode.map ObjectsCountriesGeometries126 <| objectsCountriesGeometriesAlias66Decoder
        , Json.Decode.map ObjectsCountriesGeometries127 <| objectsCountriesGeometriesAlias67Decoder
        , Json.Decode.map ObjectsCountriesGeometries128 <| objectsCountriesGeometriesAlias68Decoder
        , Json.Decode.map ObjectsCountriesGeometries129 <| objectsCountriesGeometriesAlias69Decoder
        , Json.Decode.map ObjectsCountriesGeometries130 <| objectsCountriesGeometriesAlias70Decoder
        , Json.Decode.map ObjectsCountriesGeometries131 <| objectsCountriesGeometriesAlias71Decoder
        , Json.Decode.map ObjectsCountriesGeometries132 <| objectsCountriesGeometriesAlias72Decoder
        , Json.Decode.map ObjectsCountriesGeometries133 <| objectsCountriesGeometriesAlias73Decoder
        , Json.Decode.map ObjectsCountriesGeometries134 <| objectsCountriesGeometriesAlias74Decoder
        , Json.Decode.map ObjectsCountriesGeometries135 <| objectsCountriesGeometriesAlias75Decoder
        , Json.Decode.map ObjectsCountriesGeometries136 <| objectsCountriesGeometriesAlias76Decoder
        , Json.Decode.map ObjectsCountriesGeometries137 <| objectsCountriesGeometriesAlias77Decoder
        , Json.Decode.map ObjectsCountriesGeometries138 <| objectsCountriesGeometriesAlias78Decoder
        , Json.Decode.map ObjectsCountriesGeometries139 <| objectsCountriesGeometriesAlias79Decoder
        , Json.Decode.map ObjectsCountriesGeometries140 <| objectsCountriesGeometriesAlias80Decoder
        , Json.Decode.map ObjectsCountriesGeometries141 <| objectsCountriesGeometriesAlias81Decoder
        , Json.Decode.map ObjectsCountriesGeometries142 <| objectsCountriesGeometriesAlias82Decoder
        , Json.Decode.map ObjectsCountriesGeometries143 <| objectsCountriesGeometriesAlias83Decoder
        , Json.Decode.map ObjectsCountriesGeometries144 <| objectsCountriesGeometriesAlias84Decoder
        , Json.Decode.map ObjectsCountriesGeometries145 <| objectsCountriesGeometriesAlias85Decoder
        , Json.Decode.map ObjectsCountriesGeometries146 <| objectsCountriesGeometriesAlias86Decoder
        , Json.Decode.map ObjectsCountriesGeometries147 <| objectsCountriesGeometriesAlias87Decoder
        , Json.Decode.map ObjectsCountriesGeometries148 <| objectsCountriesGeometriesAlias88Decoder
        , Json.Decode.map ObjectsCountriesGeometries149 <| objectsCountriesGeometriesAlias89Decoder
        , Json.Decode.map ObjectsCountriesGeometries150 <| objectsCountriesGeometriesAlias90Decoder
        , Json.Decode.map ObjectsCountriesGeometries151 <| objectsCountriesGeometriesAlias91Decoder
        , Json.Decode.map ObjectsCountriesGeometries152 <| objectsCountriesGeometriesAlias92Decoder
        , Json.Decode.map ObjectsCountriesGeometries153 <| objectsCountriesGeometriesAlias93Decoder
        , Json.Decode.map ObjectsCountriesGeometries154 <| objectsCountriesGeometriesAlias94Decoder
        , Json.Decode.map ObjectsCountriesGeometries155 <| objectsCountriesGeometriesAlias95Decoder
        , Json.Decode.map ObjectsCountriesGeometries156 <| objectsCountriesGeometriesAlias96Decoder
        , Json.Decode.map ObjectsCountriesGeometries157 <| objectsCountriesGeometriesAlias97Decoder
        , Json.Decode.map ObjectsCountriesGeometries158 <| objectsCountriesGeometriesAlias98Decoder
        , Json.Decode.map ObjectsCountriesGeometries159 <| objectsCountriesGeometriesAlias99Decoder
        , Json.Decode.map ObjectsCountriesGeometries160 <| objectsCountriesGeometriesChunkDecoder
        , Json.Decode.map ObjectsCountriesGeometries161 <| objectsCountriesGeometriesConstituentDecoder
        , Json.Decode.map ObjectsCountriesGeometries162 <| objectsCountriesGeometriesDoodadDecoder
        , Json.Decode.map ObjectsCountriesGeometries163 <| objectsCountriesGeometriesEntityDecoder
        , Json.Decode.map ObjectsCountriesGeometries164 <| objectsCountriesGeometriesGadgetDecoder
        , Json.Decode.map ObjectsCountriesGeometries165 <| objectsCountriesGeometriesGizmoDecoder
        , Json.Decode.map ObjectsCountriesGeometries166 <| objectsCountriesGeometriesInstanceDecoder
        , Json.Decode.map ObjectsCountriesGeometries167 <| objectsCountriesGeometriesItemDecoder
        , Json.Decode.map ObjectsCountriesGeometries168 <| objectsCountriesGeometriesObjectDecoder
        , Json.Decode.map ObjectsCountriesGeometries169 <| objectsCountriesGeometriesPartDecoder
        , Json.Decode.map ObjectsCountriesGeometries170 <| objectsCountriesGeometriesPieceDecoder
        , Json.Decode.map ObjectsCountriesGeometries171 <| objectsCountriesGeometriesSpecimenDecoder
        , Json.Decode.map ObjectsCountriesGeometries172 <| objectsCountriesGeometriesThingDecoder
        , Json.Decode.map ObjectsCountriesGeometries173 <| objectsCountriesGeometriesThingamajigDecoder
        , Json.Decode.map ObjectsCountriesGeometries174 <| objectsCountriesGeometriesThingyDecoder
        , Json.Decode.map ObjectsCountriesGeometries175 <| objectsCountriesGeometriesWhatsitDecoder
        , Json.Decode.map ObjectsCountriesGeometries176 <| objectsCountriesGeometriesWidgetDecoder
        ]


objectsCountriesGeometriesObjectDecoder : Json.Decode.Decoder ObjectsCountriesGeometriesObject
objectsCountriesGeometriesObjectDecoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesObject
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesObjectArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesObjectArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesObjectArcsMemberDecoder


objectsCountriesGeometriesObjectArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesObjectArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesItemDecoder : Json.Decode.Decoder ObjectsCountriesGeometriesItem
objectsCountriesGeometriesItemDecoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesItem
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesItemArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesItemArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesItemArcsMemberDecoder


objectsCountriesGeometriesItemArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesItemArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesItemArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesItemArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesItemArcsObjectMemberDecoder


objectsCountriesGeometriesItemArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesItemArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesItemArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesItemArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesItemArcsItemMemberDecoder


objectsCountriesGeometriesItemArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesItemArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesEntityDecoder : Json.Decode.Decoder ObjectsCountriesGeometriesEntity
objectsCountriesGeometriesEntityDecoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesEntity
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesEntityArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesEntityArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesEntityArcsMemberDecoder


objectsCountriesGeometriesEntityArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesEntityArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesThingDecoder : Json.Decode.Decoder ObjectsCountriesGeometriesThing
objectsCountriesGeometriesThingDecoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesThing
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesThingArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesThingArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesThingArcsMemberDecoder


objectsCountriesGeometriesThingArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesThingArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesInstanceDecoder : Json.Decode.Decoder ObjectsCountriesGeometriesInstance
objectsCountriesGeometriesInstanceDecoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesInstance
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesInstanceArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesInstanceArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesInstanceArcsMemberDecoder


objectsCountriesGeometriesInstanceArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesInstanceArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesInstanceArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesInstanceArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesInstanceArcsObjectMemberDecoder


objectsCountriesGeometriesInstanceArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesInstanceArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesInstanceArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesInstanceArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesInstanceArcsItemMemberDecoder


objectsCountriesGeometriesInstanceArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesInstanceArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesConstituentDecoder : Json.Decode.Decoder ObjectsCountriesGeometriesConstituent
objectsCountriesGeometriesConstituentDecoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesConstituent
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesConstituentArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesConstituentArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesConstituentArcsMemberDecoder


objectsCountriesGeometriesConstituentArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesConstituentArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesSpecimenDecoder : Json.Decode.Decoder ObjectsCountriesGeometriesSpecimen
objectsCountriesGeometriesSpecimenDecoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesSpecimen
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesSpecimenArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesSpecimenArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesSpecimenArcsMemberDecoder


objectsCountriesGeometriesSpecimenArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesSpecimenArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesSpecimenArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesSpecimenArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesSpecimenArcsObjectMemberDecoder


objectsCountriesGeometriesSpecimenArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesSpecimenArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesSpecimenArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesSpecimenArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesSpecimenArcsItemMemberDecoder


objectsCountriesGeometriesSpecimenArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesSpecimenArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesSpecimenArcsEntityDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesSpecimenArcsEntityDecoder = 
    Json.Decode.list objectsCountriesGeometriesSpecimenArcsEntityMemberDecoder


objectsCountriesGeometriesSpecimenArcsEntityMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesSpecimenArcsEntityMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesSpecimenArcsThingDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesSpecimenArcsThingDecoder = 
    Json.Decode.list objectsCountriesGeometriesSpecimenArcsThingMemberDecoder


objectsCountriesGeometriesSpecimenArcsThingMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesSpecimenArcsThingMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesSpecimenArcsInstanceDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesSpecimenArcsInstanceDecoder = 
    Json.Decode.list objectsCountriesGeometriesSpecimenArcsInstanceMemberDecoder


objectsCountriesGeometriesSpecimenArcsInstanceMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesSpecimenArcsInstanceMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesSpecimenArcsConstituentDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesSpecimenArcsConstituentDecoder = 
    Json.Decode.list objectsCountriesGeometriesSpecimenArcsConstituentMemberDecoder


objectsCountriesGeometriesSpecimenArcsConstituentMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesSpecimenArcsConstituentMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesSpecimenArcsSpecimenDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesSpecimenArcsSpecimenDecoder = 
    Json.Decode.list objectsCountriesGeometriesSpecimenArcsSpecimenMemberDecoder


objectsCountriesGeometriesSpecimenArcsSpecimenMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesSpecimenArcsSpecimenMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesSpecimenArcsGadgetDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesSpecimenArcsGadgetDecoder = 
    Json.Decode.list objectsCountriesGeometriesSpecimenArcsGadgetMemberDecoder


objectsCountriesGeometriesSpecimenArcsGadgetMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesSpecimenArcsGadgetMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesGadgetDecoder : Json.Decode.Decoder ObjectsCountriesGeometriesGadget
objectsCountriesGeometriesGadgetDecoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesGadget
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesGadgetArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesGadgetArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesGadgetArcsMemberDecoder


objectsCountriesGeometriesGadgetArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesGadgetArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesWidgetDecoder : Json.Decode.Decoder ObjectsCountriesGeometriesWidget
objectsCountriesGeometriesWidgetDecoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesWidget
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesWidgetArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesWidgetArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesWidgetArcsMemberDecoder


objectsCountriesGeometriesWidgetArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesWidgetArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesWidgetArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesWidgetArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesWidgetArcsObjectMemberDecoder


objectsCountriesGeometriesWidgetArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesWidgetArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesWidgetArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesWidgetArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesWidgetArcsItemMemberDecoder


objectsCountriesGeometriesWidgetArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesWidgetArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesGizmoDecoder : Json.Decode.Decoder ObjectsCountriesGeometriesGizmo
objectsCountriesGeometriesGizmoDecoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesGizmo
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesGizmoArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesGizmoArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesGizmoArcsMemberDecoder


objectsCountriesGeometriesGizmoArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesGizmoArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesPartDecoder : Json.Decode.Decoder ObjectsCountriesGeometriesPart
objectsCountriesGeometriesPartDecoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesPart
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesPartArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesPartArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesPartArcsMemberDecoder


objectsCountriesGeometriesPartArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesPartArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesPartArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesPartArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesPartArcsObjectMemberDecoder


objectsCountriesGeometriesPartArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesPartArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesPartArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesPartArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesPartArcsItemMemberDecoder


objectsCountriesGeometriesPartArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesPartArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesChunkDecoder : Json.Decode.Decoder ObjectsCountriesGeometriesChunk
objectsCountriesGeometriesChunkDecoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesChunk
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesChunkArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesChunkArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesChunkArcsMemberDecoder


objectsCountriesGeometriesChunkArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesChunkArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesPieceDecoder : Json.Decode.Decoder ObjectsCountriesGeometriesPiece
objectsCountriesGeometriesPieceDecoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesPiece
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesPieceArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesPieceArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesPieceArcsMemberDecoder


objectsCountriesGeometriesPieceArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesPieceArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesThingyDecoder : Json.Decode.Decoder ObjectsCountriesGeometriesThingy
objectsCountriesGeometriesThingyDecoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesThingy
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesThingyArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesThingyArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesThingyArcsMemberDecoder


objectsCountriesGeometriesThingyArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesThingyArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesThingamajigDecoder : Json.Decode.Decoder ObjectsCountriesGeometriesThingamajig
objectsCountriesGeometriesThingamajigDecoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesThingamajig
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesThingamajigArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesThingamajigArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesThingamajigArcsMemberDecoder


objectsCountriesGeometriesThingamajigArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesThingamajigArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesWhatsitDecoder : Json.Decode.Decoder ObjectsCountriesGeometriesWhatsit
objectsCountriesGeometriesWhatsitDecoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesWhatsit
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesWhatsitArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesWhatsitArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesWhatsitArcsMemberDecoder


objectsCountriesGeometriesWhatsitArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesWhatsitArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesDoodadDecoder : Json.Decode.Decoder ObjectsCountriesGeometriesDoodad
objectsCountriesGeometriesDoodadDecoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesDoodad
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesDoodadArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesDoodadArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesDoodadArcsMemberDecoder


objectsCountriesGeometriesDoodadArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesDoodadArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias17Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias17
objectsCountriesGeometriesAlias17Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias17
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias17ArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesAlias17ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias17ArcsMemberDecoder


objectsCountriesGeometriesAlias17ArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias17ArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesAlias17ArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias17ArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias17ArcsObjectMemberDecoder


objectsCountriesGeometriesAlias17ArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias17ArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias17ArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias17ArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias17ArcsItemMemberDecoder


objectsCountriesGeometriesAlias17ArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias17ArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias17ArcsEntityDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias17ArcsEntityDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias17ArcsEntityMemberDecoder


objectsCountriesGeometriesAlias17ArcsEntityMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias17ArcsEntityMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias18Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias18
objectsCountriesGeometriesAlias18Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias18
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias18ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias18ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias18ArcsMemberDecoder


objectsCountriesGeometriesAlias18ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias18ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias19Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias19
objectsCountriesGeometriesAlias19Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias19
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias19ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias19ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias19ArcsMemberDecoder


objectsCountriesGeometriesAlias19ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias19ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias20Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias20
objectsCountriesGeometriesAlias20Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias20
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias20ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias20ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias20ArcsMemberDecoder


objectsCountriesGeometriesAlias20ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias20ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias21Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias21
objectsCountriesGeometriesAlias21Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias21
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias21ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias21ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias21ArcsMemberDecoder


objectsCountriesGeometriesAlias21ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias21ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias22Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias22
objectsCountriesGeometriesAlias22Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias22
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias22ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias22ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias22ArcsMemberDecoder


objectsCountriesGeometriesAlias22ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias22ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias23Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias23
objectsCountriesGeometriesAlias23Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias23
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias23ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias23ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias23ArcsMemberDecoder


objectsCountriesGeometriesAlias23ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias23ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias24Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias24
objectsCountriesGeometriesAlias24Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias24
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias24ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias24ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias24ArcsMemberDecoder


objectsCountriesGeometriesAlias24ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias24ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias25Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias25
objectsCountriesGeometriesAlias25Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias25
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias25ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias25ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias25ArcsMemberDecoder


objectsCountriesGeometriesAlias25ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias25ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias26Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias26
objectsCountriesGeometriesAlias26Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias26
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias26ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias26ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias26ArcsMemberDecoder


objectsCountriesGeometriesAlias26ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias26ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias27
objectsCountriesGeometriesAlias27Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias27
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias27ArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesAlias27ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsMemberDecoder


objectsCountriesGeometriesAlias27ArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesAlias27ArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsObjectMemberDecoder


objectsCountriesGeometriesAlias27ArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsItemMemberDecoder


objectsCountriesGeometriesAlias27ArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsEntityDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsEntityDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsEntityMemberDecoder


objectsCountriesGeometriesAlias27ArcsEntityMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsEntityMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsThingDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsThingDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsThingMemberDecoder


objectsCountriesGeometriesAlias27ArcsThingMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsThingMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsInstanceDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsInstanceDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsInstanceMemberDecoder


objectsCountriesGeometriesAlias27ArcsInstanceMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsInstanceMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsConstituentDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsConstituentDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsConstituentMemberDecoder


objectsCountriesGeometriesAlias27ArcsConstituentMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsConstituentMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsSpecimenDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsSpecimenDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsSpecimenMemberDecoder


objectsCountriesGeometriesAlias27ArcsSpecimenMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsSpecimenMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsGadgetDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsGadgetDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsGadgetMemberDecoder


objectsCountriesGeometriesAlias27ArcsGadgetMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsGadgetMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsWidgetDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsWidgetDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsWidgetMemberDecoder


objectsCountriesGeometriesAlias27ArcsWidgetMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsWidgetMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsGizmoDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsGizmoDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsGizmoMemberDecoder


objectsCountriesGeometriesAlias27ArcsGizmoMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsGizmoMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsPartDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsPartDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsPartMemberDecoder


objectsCountriesGeometriesAlias27ArcsPartMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsPartMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsChunkDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsChunkDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsChunkMemberDecoder


objectsCountriesGeometriesAlias27ArcsChunkMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsChunkMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsPieceDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsPieceDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsPieceMemberDecoder


objectsCountriesGeometriesAlias27ArcsPieceMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsPieceMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsThingyDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsThingyDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsThingyMemberDecoder


objectsCountriesGeometriesAlias27ArcsThingyMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsThingyMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsThingamajigDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsThingamajigDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsThingamajigMemberDecoder


objectsCountriesGeometriesAlias27ArcsThingamajigMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsThingamajigMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsWhatsitDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsWhatsitDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsWhatsitMemberDecoder


objectsCountriesGeometriesAlias27ArcsWhatsitMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsWhatsitMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsDoodadDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsDoodadDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsDoodadMemberDecoder


objectsCountriesGeometriesAlias27ArcsDoodadMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsDoodadMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsAlias17Decoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsAlias17Decoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsAlias17MemberDecoder


objectsCountriesGeometriesAlias27ArcsAlias17MemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsAlias17MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsAlias18Decoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsAlias18Decoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsAlias18MemberDecoder


objectsCountriesGeometriesAlias27ArcsAlias18MemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsAlias18MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsAlias19Decoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsAlias19Decoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsAlias19MemberDecoder


objectsCountriesGeometriesAlias27ArcsAlias19MemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsAlias19MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsAlias20Decoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsAlias20Decoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsAlias20MemberDecoder


objectsCountriesGeometriesAlias27ArcsAlias20MemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsAlias20MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsAlias21Decoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsAlias21Decoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsAlias21MemberDecoder


objectsCountriesGeometriesAlias27ArcsAlias21MemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsAlias21MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsAlias22Decoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsAlias22Decoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsAlias22MemberDecoder


objectsCountriesGeometriesAlias27ArcsAlias22MemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsAlias22MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsAlias23Decoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsAlias23Decoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsAlias23MemberDecoder


objectsCountriesGeometriesAlias27ArcsAlias23MemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsAlias23MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsAlias24Decoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsAlias24Decoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsAlias24MemberDecoder


objectsCountriesGeometriesAlias27ArcsAlias24MemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsAlias24MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsAlias25Decoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsAlias25Decoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsAlias25MemberDecoder


objectsCountriesGeometriesAlias27ArcsAlias25MemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsAlias25MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsAlias26Decoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsAlias26Decoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsAlias26MemberDecoder


objectsCountriesGeometriesAlias27ArcsAlias26MemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsAlias26MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsAlias27Decoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsAlias27Decoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsAlias27MemberDecoder


objectsCountriesGeometriesAlias27ArcsAlias27MemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsAlias27MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsAlias28Decoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsAlias28Decoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsAlias28MemberDecoder


objectsCountriesGeometriesAlias27ArcsAlias28MemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsAlias28MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias27ArcsAlias29Decoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias27ArcsAlias29Decoder = 
    Json.Decode.list objectsCountriesGeometriesAlias27ArcsAlias29MemberDecoder


objectsCountriesGeometriesAlias27ArcsAlias29MemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias27ArcsAlias29MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias28Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias28
objectsCountriesGeometriesAlias28Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias28
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias28ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias28ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias28ArcsMemberDecoder


objectsCountriesGeometriesAlias28ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias28ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias29Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias29
objectsCountriesGeometriesAlias29Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias29
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias29ArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesAlias29ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias29ArcsMemberDecoder


objectsCountriesGeometriesAlias29ArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias29ArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesAlias29ArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias29ArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias29ArcsObjectMemberDecoder


objectsCountriesGeometriesAlias29ArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias29ArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias29ArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias29ArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias29ArcsItemMemberDecoder


objectsCountriesGeometriesAlias29ArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias29ArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias30Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias30
objectsCountriesGeometriesAlias30Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias30
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias30ArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesAlias30ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias30ArcsMemberDecoder


objectsCountriesGeometriesAlias30ArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias30ArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesAlias30ArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias30ArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias30ArcsObjectMemberDecoder


objectsCountriesGeometriesAlias30ArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias30ArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias30ArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias30ArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias30ArcsItemMemberDecoder


objectsCountriesGeometriesAlias30ArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias30ArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias31Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias31
objectsCountriesGeometriesAlias31Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias31
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias31ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias31ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias31ArcsMemberDecoder


objectsCountriesGeometriesAlias31ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias31ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias32Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias32
objectsCountriesGeometriesAlias32Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias32
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias32ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias32ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias32ArcsMemberDecoder


objectsCountriesGeometriesAlias32ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias32ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias33Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias33
objectsCountriesGeometriesAlias33Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias33
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias33ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias33ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias33ArcsMemberDecoder


objectsCountriesGeometriesAlias33ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias33ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias34Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias34
objectsCountriesGeometriesAlias34Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias34
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias34ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias34ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias34ArcsMemberDecoder


objectsCountriesGeometriesAlias34ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias34ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias35Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias35
objectsCountriesGeometriesAlias35Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias35
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias35ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias35ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias35ArcsMemberDecoder


objectsCountriesGeometriesAlias35ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias35ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias36Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias36
objectsCountriesGeometriesAlias36Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias36
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias36ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias36ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias36ArcsMemberDecoder


objectsCountriesGeometriesAlias36ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias36ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias37Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias37
objectsCountriesGeometriesAlias37Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias37
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias37ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias37ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias37ArcsMemberDecoder


objectsCountriesGeometriesAlias37ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias37ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias38Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias38
objectsCountriesGeometriesAlias38Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias38
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias38ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias38ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias38ArcsMemberDecoder


objectsCountriesGeometriesAlias38ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias38ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias39Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias39
objectsCountriesGeometriesAlias39Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias39
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias39ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias39ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias39ArcsMemberDecoder


objectsCountriesGeometriesAlias39ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias39ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias40Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias40
objectsCountriesGeometriesAlias40Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias40
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias40ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias40ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias40ArcsMemberDecoder


objectsCountriesGeometriesAlias40ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias40ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias41Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias41
objectsCountriesGeometriesAlias41Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias41
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias41ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias41ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias41ArcsMemberDecoder


objectsCountriesGeometriesAlias41ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias41ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias42Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias42
objectsCountriesGeometriesAlias42Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias42
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias42ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias42ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias42ArcsMemberDecoder


objectsCountriesGeometriesAlias42ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias42ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias43Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias43
objectsCountriesGeometriesAlias43Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias43
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias43ArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesAlias43ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias43ArcsMemberDecoder


objectsCountriesGeometriesAlias43ArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias43ArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesAlias43ArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias43ArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias43ArcsObjectMemberDecoder


objectsCountriesGeometriesAlias43ArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias43ArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias43ArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias43ArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias43ArcsItemMemberDecoder


objectsCountriesGeometriesAlias43ArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias43ArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias44Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias44
objectsCountriesGeometriesAlias44Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias44
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias44ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias44ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias44ArcsMemberDecoder


objectsCountriesGeometriesAlias44ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias44ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias45Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias45
objectsCountriesGeometriesAlias45Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias45
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias45ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias45ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias45ArcsMemberDecoder


objectsCountriesGeometriesAlias45ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias45ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias46Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias46
objectsCountriesGeometriesAlias46Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias46
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias46ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias46ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias46ArcsMemberDecoder


objectsCountriesGeometriesAlias46ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias46ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias47Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias47
objectsCountriesGeometriesAlias47Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias47
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias47ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias47ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias47ArcsMemberDecoder


objectsCountriesGeometriesAlias47ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias47ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias48Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias48
objectsCountriesGeometriesAlias48Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias48
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias48ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias48ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias48ArcsMemberDecoder


objectsCountriesGeometriesAlias48ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias48ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias49Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias49
objectsCountriesGeometriesAlias49Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias49
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias49ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias49ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias49ArcsMemberDecoder


objectsCountriesGeometriesAlias49ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias49ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias50Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias50
objectsCountriesGeometriesAlias50Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias50
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias50ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias50ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias50ArcsMemberDecoder


objectsCountriesGeometriesAlias50ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias50ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias51Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias51
objectsCountriesGeometriesAlias51Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias51
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias51ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias51ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias51ArcsMemberDecoder


objectsCountriesGeometriesAlias51ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias51ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias52Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias52
objectsCountriesGeometriesAlias52Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias52
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias52ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias52ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias52ArcsMemberDecoder


objectsCountriesGeometriesAlias52ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias52ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias53Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias53
objectsCountriesGeometriesAlias53Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias53
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias53ArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesAlias53ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias53ArcsMemberDecoder


objectsCountriesGeometriesAlias53ArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias53ArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesAlias53ArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias53ArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias53ArcsObjectMemberDecoder


objectsCountriesGeometriesAlias53ArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias53ArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias53ArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias53ArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias53ArcsItemMemberDecoder


objectsCountriesGeometriesAlias53ArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias53ArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias54Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias54
objectsCountriesGeometriesAlias54Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias54
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias54ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias54ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias54ArcsMemberDecoder


objectsCountriesGeometriesAlias54ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias54ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias55Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias55
objectsCountriesGeometriesAlias55Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias55
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias55ArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesAlias55ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias55ArcsMemberDecoder


objectsCountriesGeometriesAlias55ArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias55ArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesAlias55ArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias55ArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias55ArcsObjectMemberDecoder


objectsCountriesGeometriesAlias55ArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias55ArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias55ArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias55ArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias55ArcsItemMemberDecoder


objectsCountriesGeometriesAlias55ArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias55ArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias55ArcsEntityDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias55ArcsEntityDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias55ArcsEntityMemberDecoder


objectsCountriesGeometriesAlias55ArcsEntityMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias55ArcsEntityMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias56Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias56
objectsCountriesGeometriesAlias56Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias56
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias56ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias56ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias56ArcsMemberDecoder


objectsCountriesGeometriesAlias56ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias56ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias57Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias57
objectsCountriesGeometriesAlias57Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias57
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias57ArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesAlias57ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias57ArcsMemberDecoder


objectsCountriesGeometriesAlias57ArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias57ArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesAlias57ArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias57ArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias57ArcsObjectMemberDecoder


objectsCountriesGeometriesAlias57ArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias57ArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias57ArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias57ArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias57ArcsItemMemberDecoder


objectsCountriesGeometriesAlias57ArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias57ArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias58Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias58
objectsCountriesGeometriesAlias58Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias58
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias58ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias58ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias58ArcsMemberDecoder


objectsCountriesGeometriesAlias58ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias58ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias59Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias59
objectsCountriesGeometriesAlias59Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias59
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias59ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias59ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias59ArcsMemberDecoder


objectsCountriesGeometriesAlias59ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias59ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias60Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias60
objectsCountriesGeometriesAlias60Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias60
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias60ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias60ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias60ArcsMemberDecoder


objectsCountriesGeometriesAlias60ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias60ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias61Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias61
objectsCountriesGeometriesAlias61Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias61
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias61ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias61ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias61ArcsMemberDecoder


objectsCountriesGeometriesAlias61ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias61ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias62Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias62
objectsCountriesGeometriesAlias62Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias62
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias62ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias62ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias62ArcsMemberDecoder


objectsCountriesGeometriesAlias62ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias62ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias63Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias63
objectsCountriesGeometriesAlias63Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias63
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias63ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias63ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias63ArcsMemberDecoder


objectsCountriesGeometriesAlias63ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias63ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias64Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias64
objectsCountriesGeometriesAlias64Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias64
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias64ArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesAlias64ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias64ArcsMemberDecoder


objectsCountriesGeometriesAlias64ArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias64ArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesAlias64ArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias64ArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias64ArcsObjectMemberDecoder


objectsCountriesGeometriesAlias64ArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias64ArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias64ArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias64ArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias64ArcsItemMemberDecoder


objectsCountriesGeometriesAlias64ArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias64ArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias65Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias65
objectsCountriesGeometriesAlias65Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias65
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias65ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias65ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias65ArcsMemberDecoder


objectsCountriesGeometriesAlias65ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias65ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias66Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias66
objectsCountriesGeometriesAlias66Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias66
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias66ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias66ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias66ArcsMemberDecoder


objectsCountriesGeometriesAlias66ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias66ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias67Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias67
objectsCountriesGeometriesAlias67Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias67
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias67ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias67ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias67ArcsMemberDecoder


objectsCountriesGeometriesAlias67ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias67ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias68Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias68
objectsCountriesGeometriesAlias68Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias68
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias68ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias68ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias68ArcsMemberDecoder


objectsCountriesGeometriesAlias68ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias68ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias69Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias69
objectsCountriesGeometriesAlias69Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias69
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias69ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias69ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias69ArcsMemberDecoder


objectsCountriesGeometriesAlias69ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias69ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias70Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias70
objectsCountriesGeometriesAlias70Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias70
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias70ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias70ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias70ArcsMemberDecoder


objectsCountriesGeometriesAlias70ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias70ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias71Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias71
objectsCountriesGeometriesAlias71Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias71
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias71ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias71ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias71ArcsMemberDecoder


objectsCountriesGeometriesAlias71ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias71ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias72Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias72
objectsCountriesGeometriesAlias72Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias72
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias72ArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesAlias72ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias72ArcsMemberDecoder


objectsCountriesGeometriesAlias72ArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias72ArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesAlias72ArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias72ArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias72ArcsObjectMemberDecoder


objectsCountriesGeometriesAlias72ArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias72ArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias72ArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias72ArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias72ArcsItemMemberDecoder


objectsCountriesGeometriesAlias72ArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias72ArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias72ArcsEntityDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias72ArcsEntityDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias72ArcsEntityMemberDecoder


objectsCountriesGeometriesAlias72ArcsEntityMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias72ArcsEntityMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias72ArcsThingDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias72ArcsThingDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias72ArcsThingMemberDecoder


objectsCountriesGeometriesAlias72ArcsThingMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias72ArcsThingMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias72ArcsInstanceDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias72ArcsInstanceDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias72ArcsInstanceMemberDecoder


objectsCountriesGeometriesAlias72ArcsInstanceMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias72ArcsInstanceMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias72ArcsConstituentDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias72ArcsConstituentDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias72ArcsConstituentMemberDecoder


objectsCountriesGeometriesAlias72ArcsConstituentMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias72ArcsConstituentMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias72ArcsSpecimenDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias72ArcsSpecimenDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias72ArcsSpecimenMemberDecoder


objectsCountriesGeometriesAlias72ArcsSpecimenMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias72ArcsSpecimenMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias72ArcsGadgetDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias72ArcsGadgetDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias72ArcsGadgetMemberDecoder


objectsCountriesGeometriesAlias72ArcsGadgetMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias72ArcsGadgetMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias72ArcsWidgetDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias72ArcsWidgetDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias72ArcsWidgetMemberDecoder


objectsCountriesGeometriesAlias72ArcsWidgetMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias72ArcsWidgetMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias72ArcsGizmoDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias72ArcsGizmoDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias72ArcsGizmoMemberDecoder


objectsCountriesGeometriesAlias72ArcsGizmoMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias72ArcsGizmoMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias72ArcsPartDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias72ArcsPartDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias72ArcsPartMemberDecoder


objectsCountriesGeometriesAlias72ArcsPartMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias72ArcsPartMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias72ArcsChunkDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias72ArcsChunkDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias72ArcsChunkMemberDecoder


objectsCountriesGeometriesAlias72ArcsChunkMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias72ArcsChunkMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias72ArcsPieceDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias72ArcsPieceDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias72ArcsPieceMemberDecoder


objectsCountriesGeometriesAlias72ArcsPieceMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias72ArcsPieceMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias73Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias73
objectsCountriesGeometriesAlias73Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias73
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias73ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias73ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias73ArcsMemberDecoder


objectsCountriesGeometriesAlias73ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias73ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias74Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias74
objectsCountriesGeometriesAlias74Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias74
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias74ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias74ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias74ArcsMemberDecoder


objectsCountriesGeometriesAlias74ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias74ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias75Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias75
objectsCountriesGeometriesAlias75Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias75
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias75ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias75ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias75ArcsMemberDecoder


objectsCountriesGeometriesAlias75ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias75ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias76Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias76
objectsCountriesGeometriesAlias76Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias76
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias76ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias76ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias76ArcsMemberDecoder


objectsCountriesGeometriesAlias76ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias76ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias77Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias77
objectsCountriesGeometriesAlias77Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias77
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias77ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias77ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias77ArcsMemberDecoder


objectsCountriesGeometriesAlias77ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias77ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias78Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias78
objectsCountriesGeometriesAlias78Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias78
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias78ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias78ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias78ArcsMemberDecoder


objectsCountriesGeometriesAlias78ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias78ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias79Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias79
objectsCountriesGeometriesAlias79Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias79
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias79ArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesAlias79ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias79ArcsMemberDecoder


objectsCountriesGeometriesAlias79ArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias79ArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesAlias79ArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias79ArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias79ArcsObjectMemberDecoder


objectsCountriesGeometriesAlias79ArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias79ArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias79ArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias79ArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias79ArcsItemMemberDecoder


objectsCountriesGeometriesAlias79ArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias79ArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias79ArcsEntityDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias79ArcsEntityDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias79ArcsEntityMemberDecoder


objectsCountriesGeometriesAlias79ArcsEntityMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias79ArcsEntityMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias80Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias80
objectsCountriesGeometriesAlias80Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias80
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias80ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias80ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias80ArcsMemberDecoder


objectsCountriesGeometriesAlias80ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias80ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias81Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias81
objectsCountriesGeometriesAlias81Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias81
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias81ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias81ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias81ArcsMemberDecoder


objectsCountriesGeometriesAlias81ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias81ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias82Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias82
objectsCountriesGeometriesAlias82Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias82
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias82ArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesAlias82ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias82ArcsMemberDecoder


objectsCountriesGeometriesAlias82ArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias82ArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesAlias82ArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias82ArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias82ArcsObjectMemberDecoder


objectsCountriesGeometriesAlias82ArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias82ArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias82ArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias82ArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias82ArcsItemMemberDecoder


objectsCountriesGeometriesAlias82ArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias82ArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias82ArcsEntityDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias82ArcsEntityDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias82ArcsEntityMemberDecoder


objectsCountriesGeometriesAlias82ArcsEntityMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias82ArcsEntityMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias83Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias83
objectsCountriesGeometriesAlias83Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias83
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias83ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias83ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias83ArcsMemberDecoder


objectsCountriesGeometriesAlias83ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias83ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias84Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias84
objectsCountriesGeometriesAlias84Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias84
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias84ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias84ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias84ArcsMemberDecoder


objectsCountriesGeometriesAlias84ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias84ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias85Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias85
objectsCountriesGeometriesAlias85Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias85
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias85ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias85ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias85ArcsMemberDecoder


objectsCountriesGeometriesAlias85ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias85ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias86Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias86
objectsCountriesGeometriesAlias86Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias86
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias86ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias86ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias86ArcsMemberDecoder


objectsCountriesGeometriesAlias86ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias86ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias87Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias87
objectsCountriesGeometriesAlias87Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias87
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias87ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias87ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias87ArcsMemberDecoder


objectsCountriesGeometriesAlias87ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias87ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias88Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias88
objectsCountriesGeometriesAlias88Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias88
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias88ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias88ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias88ArcsMemberDecoder


objectsCountriesGeometriesAlias88ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias88ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias89Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias89
objectsCountriesGeometriesAlias89Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias89
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias89ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias89ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias89ArcsMemberDecoder


objectsCountriesGeometriesAlias89ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias89ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias90Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias90
objectsCountriesGeometriesAlias90Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias90
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias90ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias90ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias90ArcsMemberDecoder


objectsCountriesGeometriesAlias90ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias90ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias91Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias91
objectsCountriesGeometriesAlias91Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias91
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias91ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias91ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias91ArcsMemberDecoder


objectsCountriesGeometriesAlias91ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias91ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias92Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias92
objectsCountriesGeometriesAlias92Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias92
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias92ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias92ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias92ArcsMemberDecoder


objectsCountriesGeometriesAlias92ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias92ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias93Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias93
objectsCountriesGeometriesAlias93Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias93
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias93ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias93ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias93ArcsMemberDecoder


objectsCountriesGeometriesAlias93ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias93ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias94Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias94
objectsCountriesGeometriesAlias94Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias94
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias94ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias94ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias94ArcsMemberDecoder


objectsCountriesGeometriesAlias94ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias94ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias95Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias95
objectsCountriesGeometriesAlias95Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias95
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias95ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias95ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias95ArcsMemberDecoder


objectsCountriesGeometriesAlias95ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias95ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias96Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias96
objectsCountriesGeometriesAlias96Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias96
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias96ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias96ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias96ArcsMemberDecoder


objectsCountriesGeometriesAlias96ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias96ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias97Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias97
objectsCountriesGeometriesAlias97Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias97
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias97ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias97ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias97ArcsMemberDecoder


objectsCountriesGeometriesAlias97ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias97ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias98Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias98
objectsCountriesGeometriesAlias98Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias98
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias98ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias98ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias98ArcsMemberDecoder


objectsCountriesGeometriesAlias98ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias98ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias99Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias99
objectsCountriesGeometriesAlias99Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias99
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias99ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias99ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias99ArcsMemberDecoder


objectsCountriesGeometriesAlias99ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias99ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias100Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias100
objectsCountriesGeometriesAlias100Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias100
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias100ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias100ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias100ArcsMemberDecoder


objectsCountriesGeometriesAlias100ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias100ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias101Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias101
objectsCountriesGeometriesAlias101Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias101
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias101ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias101ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias101ArcsMemberDecoder


objectsCountriesGeometriesAlias101ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias101ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias102Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias102
objectsCountriesGeometriesAlias102Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias102
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias102ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias102ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias102ArcsMemberDecoder


objectsCountriesGeometriesAlias102ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias102ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias103Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias103
objectsCountriesGeometriesAlias103Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias103
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias103ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias103ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias103ArcsMemberDecoder


objectsCountriesGeometriesAlias103ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias103ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias104Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias104
objectsCountriesGeometriesAlias104Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias104
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias104ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias104ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias104ArcsMemberDecoder


objectsCountriesGeometriesAlias104ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias104ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias105Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias105
objectsCountriesGeometriesAlias105Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias105
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias105ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias105ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias105ArcsMemberDecoder


objectsCountriesGeometriesAlias105ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias105ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias106Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias106
objectsCountriesGeometriesAlias106Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias106
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias106ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias106ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias106ArcsMemberDecoder


objectsCountriesGeometriesAlias106ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias106ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias107Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias107
objectsCountriesGeometriesAlias107Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias107
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias107ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias107ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias107ArcsMemberDecoder


objectsCountriesGeometriesAlias107ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias107ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias108Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias108
objectsCountriesGeometriesAlias108Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias108
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias108ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias108ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias108ArcsMemberDecoder


objectsCountriesGeometriesAlias108ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias108ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias109Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias109
objectsCountriesGeometriesAlias109Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias109
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias109ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias109ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias109ArcsMemberDecoder


objectsCountriesGeometriesAlias109ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias109ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias110Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias110
objectsCountriesGeometriesAlias110Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias110
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias110ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias110ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias110ArcsMemberDecoder


objectsCountriesGeometriesAlias110ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias110ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias111Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias111
objectsCountriesGeometriesAlias111Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias111
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias111ArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesAlias111ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias111ArcsMemberDecoder


objectsCountriesGeometriesAlias111ArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias111ArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesAlias111ArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias111ArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias111ArcsObjectMemberDecoder


objectsCountriesGeometriesAlias111ArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias111ArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias111ArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias111ArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias111ArcsItemMemberDecoder


objectsCountriesGeometriesAlias111ArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias111ArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias112Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias112
objectsCountriesGeometriesAlias112Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias112
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias112ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias112ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias112ArcsMemberDecoder


objectsCountriesGeometriesAlias112ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias112ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias113Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias113
objectsCountriesGeometriesAlias113Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias113
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias113ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias113ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias113ArcsMemberDecoder


objectsCountriesGeometriesAlias113ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias113ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias114Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias114
objectsCountriesGeometriesAlias114Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias114
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias114ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias114ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias114ArcsMemberDecoder


objectsCountriesGeometriesAlias114ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias114ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias115Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias115
objectsCountriesGeometriesAlias115Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias115
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias115ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias115ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias115ArcsMemberDecoder


objectsCountriesGeometriesAlias115ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias115ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias116Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias116
objectsCountriesGeometriesAlias116Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias116
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias116ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias116ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias116ArcsMemberDecoder


objectsCountriesGeometriesAlias116ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias116ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias117Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias117
objectsCountriesGeometriesAlias117Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias117
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias117ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias117ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias117ArcsMemberDecoder


objectsCountriesGeometriesAlias117ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias117ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias118Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias118
objectsCountriesGeometriesAlias118Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias118
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias118ArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesAlias118ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias118ArcsMemberDecoder


objectsCountriesGeometriesAlias118ArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias118ArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesAlias118ArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias118ArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias118ArcsObjectMemberDecoder


objectsCountriesGeometriesAlias118ArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias118ArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias118ArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias118ArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias118ArcsItemMemberDecoder


objectsCountriesGeometriesAlias118ArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias118ArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias118ArcsEntityDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias118ArcsEntityDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias118ArcsEntityMemberDecoder


objectsCountriesGeometriesAlias118ArcsEntityMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias118ArcsEntityMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias118ArcsThingDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias118ArcsThingDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias118ArcsThingMemberDecoder


objectsCountriesGeometriesAlias118ArcsThingMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias118ArcsThingMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias119Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias119
objectsCountriesGeometriesAlias119Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias119
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias119ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias119ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias119ArcsMemberDecoder


objectsCountriesGeometriesAlias119ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias119ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias120Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias120
objectsCountriesGeometriesAlias120Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias120
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias120ArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesAlias120ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias120ArcsMemberDecoder


objectsCountriesGeometriesAlias120ArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias120ArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesAlias120ArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias120ArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias120ArcsObjectMemberDecoder


objectsCountriesGeometriesAlias120ArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias120ArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias120ArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias120ArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias120ArcsItemMemberDecoder


objectsCountriesGeometriesAlias120ArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias120ArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias121Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias121
objectsCountriesGeometriesAlias121Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias121
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias121ArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesAlias121ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias121ArcsMemberDecoder


objectsCountriesGeometriesAlias121ArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias121ArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesAlias121ArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias121ArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias121ArcsObjectMemberDecoder


objectsCountriesGeometriesAlias121ArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias121ArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias121ArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias121ArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias121ArcsItemMemberDecoder


objectsCountriesGeometriesAlias121ArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias121ArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias122Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias122
objectsCountriesGeometriesAlias122Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias122
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias122ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias122ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias122ArcsMemberDecoder


objectsCountriesGeometriesAlias122ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias122ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias123Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias123
objectsCountriesGeometriesAlias123Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias123
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias123ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias123ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias123ArcsMemberDecoder


objectsCountriesGeometriesAlias123ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias123ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias124Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias124
objectsCountriesGeometriesAlias124Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias124
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias124ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias124ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias124ArcsMemberDecoder


objectsCountriesGeometriesAlias124ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias124ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias125Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias125
objectsCountriesGeometriesAlias125Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias125
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias125ArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesAlias125ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias125ArcsMemberDecoder


objectsCountriesGeometriesAlias125ArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias125ArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesAlias125ArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias125ArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias125ArcsObjectMemberDecoder


objectsCountriesGeometriesAlias125ArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias125ArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias125ArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias125ArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias125ArcsItemMemberDecoder


objectsCountriesGeometriesAlias125ArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias125ArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias125ArcsEntityDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias125ArcsEntityDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias125ArcsEntityMemberDecoder


objectsCountriesGeometriesAlias125ArcsEntityMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias125ArcsEntityMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias125ArcsThingDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias125ArcsThingDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias125ArcsThingMemberDecoder


objectsCountriesGeometriesAlias125ArcsThingMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias125ArcsThingMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias125ArcsInstanceDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias125ArcsInstanceDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias125ArcsInstanceMemberDecoder


objectsCountriesGeometriesAlias125ArcsInstanceMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias125ArcsInstanceMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias125ArcsConstituentDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias125ArcsConstituentDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias125ArcsConstituentMemberDecoder


objectsCountriesGeometriesAlias125ArcsConstituentMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias125ArcsConstituentMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias125ArcsSpecimenDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias125ArcsSpecimenDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias125ArcsSpecimenMemberDecoder


objectsCountriesGeometriesAlias125ArcsSpecimenMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias125ArcsSpecimenMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias126Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias126
objectsCountriesGeometriesAlias126Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias126
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias126ArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesAlias126ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias126ArcsMemberDecoder


objectsCountriesGeometriesAlias126ArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias126ArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesAlias126ArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias126ArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias126ArcsObjectMemberDecoder


objectsCountriesGeometriesAlias126ArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias126ArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias126ArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias126ArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias126ArcsItemMemberDecoder


objectsCountriesGeometriesAlias126ArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias126ArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias126ArcsEntityDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias126ArcsEntityDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias126ArcsEntityMemberDecoder


objectsCountriesGeometriesAlias126ArcsEntityMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias126ArcsEntityMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias126ArcsThingDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias126ArcsThingDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias126ArcsThingMemberDecoder


objectsCountriesGeometriesAlias126ArcsThingMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias126ArcsThingMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias127Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias127
objectsCountriesGeometriesAlias127Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias127
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias127ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias127ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias127ArcsMemberDecoder


objectsCountriesGeometriesAlias127ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias127ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias128Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias128
objectsCountriesGeometriesAlias128Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias128
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias128ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias128ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias128ArcsMemberDecoder


objectsCountriesGeometriesAlias128ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias128ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias129Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias129
objectsCountriesGeometriesAlias129Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias129
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias129ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias129ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias129ArcsMemberDecoder


objectsCountriesGeometriesAlias129ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias129ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias130Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias130
objectsCountriesGeometriesAlias130Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias130
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias130ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias130ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias130ArcsMemberDecoder


objectsCountriesGeometriesAlias130ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias130ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias131Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias131
objectsCountriesGeometriesAlias131Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias131
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias131ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias131ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias131ArcsMemberDecoder


objectsCountriesGeometriesAlias131ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias131ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias132Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias132
objectsCountriesGeometriesAlias132Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias132
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias132ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias132ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias132ArcsMemberDecoder


objectsCountriesGeometriesAlias132ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias132ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias133Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias133
objectsCountriesGeometriesAlias133Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias133
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias133ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias133ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias133ArcsMemberDecoder


objectsCountriesGeometriesAlias133ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias133ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias134Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias134
objectsCountriesGeometriesAlias134Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias134
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias134ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias134ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias134ArcsMemberDecoder


objectsCountriesGeometriesAlias134ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias134ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias135Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias135
objectsCountriesGeometriesAlias135Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias135
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias135ArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesAlias135ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias135ArcsMemberDecoder


objectsCountriesGeometriesAlias135ArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias135ArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesAlias135ArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias135ArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias135ArcsObjectMemberDecoder


objectsCountriesGeometriesAlias135ArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias135ArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias135ArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias135ArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias135ArcsItemMemberDecoder


objectsCountriesGeometriesAlias135ArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias135ArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias135ArcsEntityDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias135ArcsEntityDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias135ArcsEntityMemberDecoder


objectsCountriesGeometriesAlias135ArcsEntityMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias135ArcsEntityMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias135ArcsThingDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias135ArcsThingDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias135ArcsThingMemberDecoder


objectsCountriesGeometriesAlias135ArcsThingMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias135ArcsThingMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias135ArcsInstanceDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias135ArcsInstanceDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias135ArcsInstanceMemberDecoder


objectsCountriesGeometriesAlias135ArcsInstanceMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias135ArcsInstanceMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias135ArcsConstituentDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias135ArcsConstituentDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias135ArcsConstituentMemberDecoder


objectsCountriesGeometriesAlias135ArcsConstituentMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias135ArcsConstituentMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias135ArcsSpecimenDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias135ArcsSpecimenDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias135ArcsSpecimenMemberDecoder


objectsCountriesGeometriesAlias135ArcsSpecimenMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias135ArcsSpecimenMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias135ArcsGadgetDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias135ArcsGadgetDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias135ArcsGadgetMemberDecoder


objectsCountriesGeometriesAlias135ArcsGadgetMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias135ArcsGadgetMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias135ArcsWidgetDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias135ArcsWidgetDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias135ArcsWidgetMemberDecoder


objectsCountriesGeometriesAlias135ArcsWidgetMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias135ArcsWidgetMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias135ArcsGizmoDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias135ArcsGizmoDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias135ArcsGizmoMemberDecoder


objectsCountriesGeometriesAlias135ArcsGizmoMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias135ArcsGizmoMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias135ArcsPartDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias135ArcsPartDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias135ArcsPartMemberDecoder


objectsCountriesGeometriesAlias135ArcsPartMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias135ArcsPartMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias136Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias136
objectsCountriesGeometriesAlias136Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias136
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias136ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias136ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias136ArcsMemberDecoder


objectsCountriesGeometriesAlias136ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias136ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias137Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias137
objectsCountriesGeometriesAlias137Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias137
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias137ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias137ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias137ArcsMemberDecoder


objectsCountriesGeometriesAlias137ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias137ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias138Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias138
objectsCountriesGeometriesAlias138Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias138
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias138ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias138ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias138ArcsMemberDecoder


objectsCountriesGeometriesAlias138ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias138ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias139Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias139
objectsCountriesGeometriesAlias139Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias139
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias139ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias139ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias139ArcsMemberDecoder


objectsCountriesGeometriesAlias139ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias139ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias140Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias140
objectsCountriesGeometriesAlias140Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias140
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias140ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias140ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias140ArcsMemberDecoder


objectsCountriesGeometriesAlias140ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias140ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias141Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias141
objectsCountriesGeometriesAlias141Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias141
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias141ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias141ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias141ArcsMemberDecoder


objectsCountriesGeometriesAlias141ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias141ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias142Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias142
objectsCountriesGeometriesAlias142Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias142
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias142ArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesAlias142ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias142ArcsMemberDecoder


objectsCountriesGeometriesAlias142ArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias142ArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesAlias142ArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias142ArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias142ArcsObjectMemberDecoder


objectsCountriesGeometriesAlias142ArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias142ArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias142ArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias142ArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias142ArcsItemMemberDecoder


objectsCountriesGeometriesAlias142ArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias142ArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias142ArcsEntityDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias142ArcsEntityDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias142ArcsEntityMemberDecoder


objectsCountriesGeometriesAlias142ArcsEntityMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias142ArcsEntityMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias142ArcsThingDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias142ArcsThingDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias142ArcsThingMemberDecoder


objectsCountriesGeometriesAlias142ArcsThingMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias142ArcsThingMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias142ArcsInstanceDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias142ArcsInstanceDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias142ArcsInstanceMemberDecoder


objectsCountriesGeometriesAlias142ArcsInstanceMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias142ArcsInstanceMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias143Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias143
objectsCountriesGeometriesAlias143Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias143
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias143ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias143ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias143ArcsMemberDecoder


objectsCountriesGeometriesAlias143ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias143ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias144Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias144
objectsCountriesGeometriesAlias144Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias144
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias144ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias144ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias144ArcsMemberDecoder


objectsCountriesGeometriesAlias144ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias144ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias145Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias145
objectsCountriesGeometriesAlias145Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias145
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias145ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias145ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias145ArcsMemberDecoder


objectsCountriesGeometriesAlias145ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias145ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias146Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias146
objectsCountriesGeometriesAlias146Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias146
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias146ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias146ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias146ArcsMemberDecoder


objectsCountriesGeometriesAlias146ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias146ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias147Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias147
objectsCountriesGeometriesAlias147Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias147
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias147ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias147ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias147ArcsMemberDecoder


objectsCountriesGeometriesAlias147ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias147ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias148Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias148
objectsCountriesGeometriesAlias148Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias148
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias148ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias148ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias148ArcsMemberDecoder


objectsCountriesGeometriesAlias148ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias148ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias149Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias149
objectsCountriesGeometriesAlias149Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias149
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias149ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias149ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias149ArcsMemberDecoder


objectsCountriesGeometriesAlias149ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias149ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias150Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias150
objectsCountriesGeometriesAlias150Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias150
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias150ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias150ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias150ArcsMemberDecoder


objectsCountriesGeometriesAlias150ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias150ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias151Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias151
objectsCountriesGeometriesAlias151Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias151
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias151ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias151ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias151ArcsMemberDecoder


objectsCountriesGeometriesAlias151ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias151ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias152Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias152
objectsCountriesGeometriesAlias152Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias152
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias152ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias152ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias152ArcsMemberDecoder


objectsCountriesGeometriesAlias152ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias152ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias153Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias153
objectsCountriesGeometriesAlias153Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias153
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias153ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias153ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias153ArcsMemberDecoder


objectsCountriesGeometriesAlias153ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias153ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias154Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias154
objectsCountriesGeometriesAlias154Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias154
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias154ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias154ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias154ArcsMemberDecoder


objectsCountriesGeometriesAlias154ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias154ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias155Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias155
objectsCountriesGeometriesAlias155Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias155
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias155ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias155ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias155ArcsMemberDecoder


objectsCountriesGeometriesAlias155ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias155ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias156Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias156
objectsCountriesGeometriesAlias156Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias156
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias156ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias156ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias156ArcsMemberDecoder


objectsCountriesGeometriesAlias156ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias156ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias157Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias157
objectsCountriesGeometriesAlias157Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias157
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias157ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias157ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias157ArcsMemberDecoder


objectsCountriesGeometriesAlias157ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias157ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias158Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias158
objectsCountriesGeometriesAlias158Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias158
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias158ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias158ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias158ArcsMemberDecoder


objectsCountriesGeometriesAlias158ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias158ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias159Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias159
objectsCountriesGeometriesAlias159Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias159
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias159ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias159ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias159ArcsMemberDecoder


objectsCountriesGeometriesAlias159ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias159ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias160Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias160
objectsCountriesGeometriesAlias160Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias160
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias160ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias160ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias160ArcsMemberDecoder


objectsCountriesGeometriesAlias160ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias160ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias161Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias161
objectsCountriesGeometriesAlias161Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias161
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias161ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias161ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias161ArcsMemberDecoder


objectsCountriesGeometriesAlias161ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias161ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias162Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias162
objectsCountriesGeometriesAlias162Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias162
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias162ArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesAlias162ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias162ArcsMemberDecoder


objectsCountriesGeometriesAlias162ArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias162ArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesAlias162ArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias162ArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias162ArcsObjectMemberDecoder


objectsCountriesGeometriesAlias162ArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias162ArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias162ArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias162ArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias162ArcsItemMemberDecoder


objectsCountriesGeometriesAlias162ArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias162ArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias163Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias163
objectsCountriesGeometriesAlias163Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias163
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias163ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias163ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias163ArcsMemberDecoder


objectsCountriesGeometriesAlias163ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias163ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias164Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias164
objectsCountriesGeometriesAlias164Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias164
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias164ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias164ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias164ArcsMemberDecoder


objectsCountriesGeometriesAlias164ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias164ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias165Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias165
objectsCountriesGeometriesAlias165Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias165
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias165ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias165ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias165ArcsMemberDecoder


objectsCountriesGeometriesAlias165ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias165ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias166Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias166
objectsCountriesGeometriesAlias166Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias166
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias166ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias166ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias166ArcsMemberDecoder


objectsCountriesGeometriesAlias166ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias166ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias167Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias167
objectsCountriesGeometriesAlias167Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias167
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias167ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias167ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias167ArcsMemberDecoder


objectsCountriesGeometriesAlias167ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias167ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias168Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias168
objectsCountriesGeometriesAlias168Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias168
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias168ArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesAlias168ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias168ArcsMemberDecoder


objectsCountriesGeometriesAlias168ArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias168ArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesAlias168ArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias168ArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias168ArcsObjectMemberDecoder


objectsCountriesGeometriesAlias168ArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias168ArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias168ArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias168ArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias168ArcsItemMemberDecoder


objectsCountriesGeometriesAlias168ArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias168ArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias168ArcsEntityDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias168ArcsEntityDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias168ArcsEntityMemberDecoder


objectsCountriesGeometriesAlias168ArcsEntityMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias168ArcsEntityMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias168ArcsThingDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias168ArcsThingDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias168ArcsThingMemberDecoder


objectsCountriesGeometriesAlias168ArcsThingMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias168ArcsThingMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias168ArcsInstanceDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias168ArcsInstanceDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias168ArcsInstanceMemberDecoder


objectsCountriesGeometriesAlias168ArcsInstanceMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias168ArcsInstanceMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias168ArcsConstituentDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias168ArcsConstituentDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias168ArcsConstituentMemberDecoder


objectsCountriesGeometriesAlias168ArcsConstituentMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias168ArcsConstituentMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias168ArcsSpecimenDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias168ArcsSpecimenDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias168ArcsSpecimenMemberDecoder


objectsCountriesGeometriesAlias168ArcsSpecimenMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias168ArcsSpecimenMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias168ArcsGadgetDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias168ArcsGadgetDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias168ArcsGadgetMemberDecoder


objectsCountriesGeometriesAlias168ArcsGadgetMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias168ArcsGadgetMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias168ArcsWidgetDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias168ArcsWidgetDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias168ArcsWidgetMemberDecoder


objectsCountriesGeometriesAlias168ArcsWidgetMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias168ArcsWidgetMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias168ArcsGizmoDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias168ArcsGizmoDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias168ArcsGizmoMemberDecoder


objectsCountriesGeometriesAlias168ArcsGizmoMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias168ArcsGizmoMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias169Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias169
objectsCountriesGeometriesAlias169Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias169
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias169ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias169ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias169ArcsMemberDecoder


objectsCountriesGeometriesAlias169ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias169ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias170Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias170
objectsCountriesGeometriesAlias170Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias170
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias170ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias170ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias170ArcsMemberDecoder


objectsCountriesGeometriesAlias170ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias170ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias171Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias171
objectsCountriesGeometriesAlias171Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias171
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias171ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias171ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias171ArcsMemberDecoder


objectsCountriesGeometriesAlias171ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias171ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias172Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias172
objectsCountriesGeometriesAlias172Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias172
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias172ArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsCountriesGeometriesAlias172ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias172ArcsMemberDecoder


objectsCountriesGeometriesAlias172ArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias172ArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsCountriesGeometriesAlias172ArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias172ArcsObjectDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias172ArcsObjectMemberDecoder


objectsCountriesGeometriesAlias172ArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias172ArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias172ArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias172ArcsItemDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias172ArcsItemMemberDecoder


objectsCountriesGeometriesAlias172ArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias172ArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias173Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias173
objectsCountriesGeometriesAlias173Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias173
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias173ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias173ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias173ArcsMemberDecoder


objectsCountriesGeometriesAlias173ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias173ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias174Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias174
objectsCountriesGeometriesAlias174Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias174
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias174ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias174ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias174ArcsMemberDecoder


objectsCountriesGeometriesAlias174ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias174ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias175Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias175
objectsCountriesGeometriesAlias175Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias175
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias175ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias175ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias175ArcsMemberDecoder


objectsCountriesGeometriesAlias175ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias175ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsCountriesGeometriesAlias176Decoder : Json.Decode.Decoder ObjectsCountriesGeometriesAlias176
objectsCountriesGeometriesAlias176Decoder = 
    Json.Decode.map3 ObjectsCountriesGeometriesAlias176
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list Json.Decode.int))
        (Json.Decode.field "id" Json.Decode.string)
        (Json.Decode.field "type" Json.Decode.string)


objectsCountriesGeometriesAlias176ArcsDecoder : Json.Decode.Decoder (List (List Int))
objectsCountriesGeometriesAlias176ArcsDecoder = 
    Json.Decode.list objectsCountriesGeometriesAlias176ArcsMemberDecoder


objectsCountriesGeometriesAlias176ArcsMemberDecoder : Json.Decode.Decoder (List Int)
objectsCountriesGeometriesAlias176ArcsMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandDecoder : Json.Decode.Decoder ObjectsLand
objectsLandDecoder = 
    Json.Decode.map2 ObjectsLand
        (Json.Decode.field "geometries" <| Json.Decode.list objectsLandGeometriesObjectDecoder)
        (Json.Decode.field "type" Json.Decode.string)


objectsLandGeometriesDecoder : Json.Decode.Decoder (List ObjectsLandGeometriesObject)
objectsLandGeometriesDecoder = 
    Json.Decode.list objectsLandGeometriesMemberDecoder


objectsLandGeometriesMemberDecoder : Json.Decode.Decoder ObjectsLandGeometriesObject
objectsLandGeometriesMemberDecoder = 
    objectsLandGeometriesObjectDecoder


objectsLandGeometriesObjectDecoder : Json.Decode.Decoder ObjectsLandGeometriesObject
objectsLandGeometriesObjectDecoder = 
    Json.Decode.map2 ObjectsLandGeometriesObject
        (Json.Decode.field "arcs" <| Json.Decode.list (Json.Decode.list (Json.Decode.list Json.Decode.int)))
        (Json.Decode.field "type" Json.Decode.string)


objectsLandGeometriesObjectArcsDecoder : Json.Decode.Decoder (List (List (List Int)))
objectsLandGeometriesObjectArcsDecoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsMemberDecoder


objectsLandGeometriesObjectArcsMemberDecoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


objectsLandGeometriesObjectArcsObjectDecoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsObjectDecoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsObjectMemberDecoder


objectsLandGeometriesObjectArcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsItemDecoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsItemDecoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsItemMemberDecoder


objectsLandGeometriesObjectArcsItemMemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsEntityDecoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsEntityDecoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsEntityMemberDecoder


objectsLandGeometriesObjectArcsEntityMemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsEntityMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsThingDecoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsThingDecoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsThingMemberDecoder


objectsLandGeometriesObjectArcsThingMemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsThingMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsInstanceDecoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsInstanceDecoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsInstanceMemberDecoder


objectsLandGeometriesObjectArcsInstanceMemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsInstanceMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsConstituentDecoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsConstituentDecoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsConstituentMemberDecoder


objectsLandGeometriesObjectArcsConstituentMemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsConstituentMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsSpecimenDecoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsSpecimenDecoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsSpecimenMemberDecoder


objectsLandGeometriesObjectArcsSpecimenMemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsSpecimenMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsGadgetDecoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsGadgetDecoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsGadgetMemberDecoder


objectsLandGeometriesObjectArcsGadgetMemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsGadgetMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsWidgetDecoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsWidgetDecoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsWidgetMemberDecoder


objectsLandGeometriesObjectArcsWidgetMemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsWidgetMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsGizmoDecoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsGizmoDecoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsGizmoMemberDecoder


objectsLandGeometriesObjectArcsGizmoMemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsGizmoMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsPartDecoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsPartDecoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsPartMemberDecoder


objectsLandGeometriesObjectArcsPartMemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsPartMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsChunkDecoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsChunkDecoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsChunkMemberDecoder


objectsLandGeometriesObjectArcsChunkMemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsChunkMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsPieceDecoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsPieceDecoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsPieceMemberDecoder


objectsLandGeometriesObjectArcsPieceMemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsPieceMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsThingyDecoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsThingyDecoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsThingyMemberDecoder


objectsLandGeometriesObjectArcsThingyMemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsThingyMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsThingamajigDecoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsThingamajigDecoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsThingamajigMemberDecoder


objectsLandGeometriesObjectArcsThingamajigMemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsThingamajigMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsWhatsitDecoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsWhatsitDecoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsWhatsitMemberDecoder


objectsLandGeometriesObjectArcsWhatsitMemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsWhatsitMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsDoodadDecoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsDoodadDecoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsDoodadMemberDecoder


objectsLandGeometriesObjectArcsDoodadMemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsDoodadMemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias17Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias17Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias17MemberDecoder


objectsLandGeometriesObjectArcsAlias17MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias17MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias18Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias18Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias18MemberDecoder


objectsLandGeometriesObjectArcsAlias18MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias18MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias19Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias19Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias19MemberDecoder


objectsLandGeometriesObjectArcsAlias19MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias19MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias20Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias20Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias20MemberDecoder


objectsLandGeometriesObjectArcsAlias20MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias20MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias21Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias21Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias21MemberDecoder


objectsLandGeometriesObjectArcsAlias21MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias21MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias22Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias22Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias22MemberDecoder


objectsLandGeometriesObjectArcsAlias22MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias22MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias23Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias23Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias23MemberDecoder


objectsLandGeometriesObjectArcsAlias23MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias23MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias24Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias24Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias24MemberDecoder


objectsLandGeometriesObjectArcsAlias24MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias24MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias25Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias25Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias25MemberDecoder


objectsLandGeometriesObjectArcsAlias25MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias25MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias26Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias26Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias26MemberDecoder


objectsLandGeometriesObjectArcsAlias26MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias26MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias27Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias27Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias27MemberDecoder


objectsLandGeometriesObjectArcsAlias27MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias27MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias28Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias28Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias28MemberDecoder


objectsLandGeometriesObjectArcsAlias28MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias28MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias29Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias29Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias29MemberDecoder


objectsLandGeometriesObjectArcsAlias29MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias29MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias30Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias30Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias30MemberDecoder


objectsLandGeometriesObjectArcsAlias30MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias30MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias31Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias31Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias31MemberDecoder


objectsLandGeometriesObjectArcsAlias31MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias31MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias32Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias32Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias32MemberDecoder


objectsLandGeometriesObjectArcsAlias32MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias32MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias33Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias33Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias33MemberDecoder


objectsLandGeometriesObjectArcsAlias33MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias33MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias34Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias34Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias34MemberDecoder


objectsLandGeometriesObjectArcsAlias34MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias34MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias35Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias35Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias35MemberDecoder


objectsLandGeometriesObjectArcsAlias35MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias35MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias36Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias36Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias36MemberDecoder


objectsLandGeometriesObjectArcsAlias36MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias36MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias37Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias37Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias37MemberDecoder


objectsLandGeometriesObjectArcsAlias37MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias37MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias38Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias38Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias38MemberDecoder


objectsLandGeometriesObjectArcsAlias38MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias38MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias39Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias39Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias39MemberDecoder


objectsLandGeometriesObjectArcsAlias39MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias39MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias40Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias40Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias40MemberDecoder


objectsLandGeometriesObjectArcsAlias40MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias40MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias41Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias41Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias41MemberDecoder


objectsLandGeometriesObjectArcsAlias41MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias41MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias42Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias42Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias42MemberDecoder


objectsLandGeometriesObjectArcsAlias42MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias42MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias43Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias43Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias43MemberDecoder


objectsLandGeometriesObjectArcsAlias43MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias43MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias44Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias44Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias44MemberDecoder


objectsLandGeometriesObjectArcsAlias44MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias44MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias45Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias45Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias45MemberDecoder


objectsLandGeometriesObjectArcsAlias45MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias45MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias46Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias46Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias46MemberDecoder


objectsLandGeometriesObjectArcsAlias46MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias46MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias47Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias47Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias47MemberDecoder


objectsLandGeometriesObjectArcsAlias47MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias47MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias48Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias48Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias48MemberDecoder


objectsLandGeometriesObjectArcsAlias48MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias48MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias49Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias49Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias49MemberDecoder


objectsLandGeometriesObjectArcsAlias49MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias49MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias50Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias50Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias50MemberDecoder


objectsLandGeometriesObjectArcsAlias50MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias50MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias51Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias51Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias51MemberDecoder


objectsLandGeometriesObjectArcsAlias51MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias51MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias52Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias52Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias52MemberDecoder


objectsLandGeometriesObjectArcsAlias52MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias52MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias53Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias53Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias53MemberDecoder


objectsLandGeometriesObjectArcsAlias53MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias53MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias54Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias54Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias54MemberDecoder


objectsLandGeometriesObjectArcsAlias54MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias54MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias55Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias55Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias55MemberDecoder


objectsLandGeometriesObjectArcsAlias55MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias55MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias56Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias56Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias56MemberDecoder


objectsLandGeometriesObjectArcsAlias56MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias56MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias57Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias57Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias57MemberDecoder


objectsLandGeometriesObjectArcsAlias57MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias57MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias58Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias58Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias58MemberDecoder


objectsLandGeometriesObjectArcsAlias58MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias58MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias59Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias59Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias59MemberDecoder


objectsLandGeometriesObjectArcsAlias59MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias59MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias60Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias60Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias60MemberDecoder


objectsLandGeometriesObjectArcsAlias60MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias60MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias61Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias61Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias61MemberDecoder


objectsLandGeometriesObjectArcsAlias61MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias61MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias62Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias62Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias62MemberDecoder


objectsLandGeometriesObjectArcsAlias62MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias62MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias63Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias63Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias63MemberDecoder


objectsLandGeometriesObjectArcsAlias63MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias63MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias64Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias64Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias64MemberDecoder


objectsLandGeometriesObjectArcsAlias64MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias64MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias65Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias65Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias65MemberDecoder


objectsLandGeometriesObjectArcsAlias65MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias65MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias66Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias66Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias66MemberDecoder


objectsLandGeometriesObjectArcsAlias66MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias66MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias67Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias67Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias67MemberDecoder


objectsLandGeometriesObjectArcsAlias67MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias67MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias68Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias68Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias68MemberDecoder


objectsLandGeometriesObjectArcsAlias68MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias68MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias69Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias69Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias69MemberDecoder


objectsLandGeometriesObjectArcsAlias69MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias69MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias70Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias70Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias70MemberDecoder


objectsLandGeometriesObjectArcsAlias70MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias70MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias71Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias71Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias71MemberDecoder


objectsLandGeometriesObjectArcsAlias71MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias71MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias72Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias72Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias72MemberDecoder


objectsLandGeometriesObjectArcsAlias72MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias72MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias73Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias73Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias73MemberDecoder


objectsLandGeometriesObjectArcsAlias73MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias73MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias74Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias74Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias74MemberDecoder


objectsLandGeometriesObjectArcsAlias74MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias74MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias75Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias75Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias75MemberDecoder


objectsLandGeometriesObjectArcsAlias75MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias75MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias76Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias76Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias76MemberDecoder


objectsLandGeometriesObjectArcsAlias76MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias76MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias77Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias77Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias77MemberDecoder


objectsLandGeometriesObjectArcsAlias77MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias77MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias78Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias78Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias78MemberDecoder


objectsLandGeometriesObjectArcsAlias78MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias78MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias79Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias79Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias79MemberDecoder


objectsLandGeometriesObjectArcsAlias79MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias79MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias80Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias80Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias80MemberDecoder


objectsLandGeometriesObjectArcsAlias80MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias80MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias81Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias81Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias81MemberDecoder


objectsLandGeometriesObjectArcsAlias81MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias81MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias82Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias82Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias82MemberDecoder


objectsLandGeometriesObjectArcsAlias82MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias82MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias83Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias83Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias83MemberDecoder


objectsLandGeometriesObjectArcsAlias83MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias83MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias84Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias84Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias84MemberDecoder


objectsLandGeometriesObjectArcsAlias84MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias84MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias85Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias85Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias85MemberDecoder


objectsLandGeometriesObjectArcsAlias85MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias85MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias86Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias86Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias86MemberDecoder


objectsLandGeometriesObjectArcsAlias86MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias86MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias87Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias87Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias87MemberDecoder


objectsLandGeometriesObjectArcsAlias87MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias87MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias88Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias88Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias88MemberDecoder


objectsLandGeometriesObjectArcsAlias88MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias88MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias89Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias89Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias89MemberDecoder


objectsLandGeometriesObjectArcsAlias89MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias89MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias90Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias90Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias90MemberDecoder


objectsLandGeometriesObjectArcsAlias90MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias90MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias91Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias91Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias91MemberDecoder


objectsLandGeometriesObjectArcsAlias91MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias91MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias92Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias92Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias92MemberDecoder


objectsLandGeometriesObjectArcsAlias92MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias92MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias93Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias93Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias93MemberDecoder


objectsLandGeometriesObjectArcsAlias93MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias93MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias94Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias94Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias94MemberDecoder


objectsLandGeometriesObjectArcsAlias94MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias94MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias95Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias95Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias95MemberDecoder


objectsLandGeometriesObjectArcsAlias95MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias95MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias96Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias96Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias96MemberDecoder


objectsLandGeometriesObjectArcsAlias96MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias96MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias97Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias97Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias97MemberDecoder


objectsLandGeometriesObjectArcsAlias97MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias97MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias98Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias98Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias98MemberDecoder


objectsLandGeometriesObjectArcsAlias98MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias98MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias99Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias99Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias99MemberDecoder


objectsLandGeometriesObjectArcsAlias99MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias99MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias100Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias100Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias100MemberDecoder


objectsLandGeometriesObjectArcsAlias100MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias100MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias101Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias101Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias101MemberDecoder


objectsLandGeometriesObjectArcsAlias101MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias101MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias102Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias102Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias102MemberDecoder


objectsLandGeometriesObjectArcsAlias102MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias102MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias103Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias103Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias103MemberDecoder


objectsLandGeometriesObjectArcsAlias103MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias103MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias104Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias104Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias104MemberDecoder


objectsLandGeometriesObjectArcsAlias104MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias104MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias105Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias105Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias105MemberDecoder


objectsLandGeometriesObjectArcsAlias105MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias105MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias106Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias106Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias106MemberDecoder


objectsLandGeometriesObjectArcsAlias106MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias106MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias107Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias107Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias107MemberDecoder


objectsLandGeometriesObjectArcsAlias107MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias107MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias108Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias108Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias108MemberDecoder


objectsLandGeometriesObjectArcsAlias108MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias108MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias109Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias109Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias109MemberDecoder


objectsLandGeometriesObjectArcsAlias109MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias109MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias110Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias110Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias110MemberDecoder


objectsLandGeometriesObjectArcsAlias110MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias110MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias111Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias111Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias111MemberDecoder


objectsLandGeometriesObjectArcsAlias111MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias111MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias112Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias112Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias112MemberDecoder


objectsLandGeometriesObjectArcsAlias112MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias112MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias113Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias113Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias113MemberDecoder


objectsLandGeometriesObjectArcsAlias113MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias113MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias114Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias114Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias114MemberDecoder


objectsLandGeometriesObjectArcsAlias114MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias114MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias115Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias115Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias115MemberDecoder


objectsLandGeometriesObjectArcsAlias115MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias115MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias116Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias116Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias116MemberDecoder


objectsLandGeometriesObjectArcsAlias116MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias116MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias117Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias117Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias117MemberDecoder


objectsLandGeometriesObjectArcsAlias117MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias117MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias118Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias118Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias118MemberDecoder


objectsLandGeometriesObjectArcsAlias118MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias118MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias119Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias119Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias119MemberDecoder


objectsLandGeometriesObjectArcsAlias119MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias119MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias120Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias120Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias120MemberDecoder


objectsLandGeometriesObjectArcsAlias120MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias120MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias121Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias121Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias121MemberDecoder


objectsLandGeometriesObjectArcsAlias121MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias121MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias122Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias122Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias122MemberDecoder


objectsLandGeometriesObjectArcsAlias122MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias122MemberDecoder = 
    Json.Decode.list Json.Decode.int


objectsLandGeometriesObjectArcsAlias123Decoder : Json.Decode.Decoder (List (List Int))
objectsLandGeometriesObjectArcsAlias123Decoder = 
    Json.Decode.list objectsLandGeometriesObjectArcsAlias123MemberDecoder


objectsLandGeometriesObjectArcsAlias123MemberDecoder : Json.Decode.Decoder (List Int)
objectsLandGeometriesObjectArcsAlias123MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsDecoder : Json.Decode.Decoder (List (List (List Int)))
arcsDecoder = 
    Json.Decode.list arcsMemberDecoder


arcsMemberDecoder : Json.Decode.Decoder (List (List Int))
arcsMemberDecoder = 
    Json.Decode.list (Json.Decode.list Json.Decode.int)


arcsObjectDecoder : Json.Decode.Decoder (List (List Int))
arcsObjectDecoder = 
    Json.Decode.list arcsObjectMemberDecoder


arcsObjectMemberDecoder : Json.Decode.Decoder (List Int)
arcsObjectMemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsItemDecoder : Json.Decode.Decoder (List (List Int))
arcsItemDecoder = 
    Json.Decode.list arcsItemMemberDecoder


arcsItemMemberDecoder : Json.Decode.Decoder (List Int)
arcsItemMemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsEntityDecoder : Json.Decode.Decoder (List (List Int))
arcsEntityDecoder = 
    Json.Decode.list arcsEntityMemberDecoder


arcsEntityMemberDecoder : Json.Decode.Decoder (List Int)
arcsEntityMemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsThingDecoder : Json.Decode.Decoder (List (List Int))
arcsThingDecoder = 
    Json.Decode.list arcsThingMemberDecoder


arcsThingMemberDecoder : Json.Decode.Decoder (List Int)
arcsThingMemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsInstanceDecoder : Json.Decode.Decoder (List (List Int))
arcsInstanceDecoder = 
    Json.Decode.list arcsInstanceMemberDecoder


arcsInstanceMemberDecoder : Json.Decode.Decoder (List Int)
arcsInstanceMemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsConstituentDecoder : Json.Decode.Decoder (List (List Int))
arcsConstituentDecoder = 
    Json.Decode.list arcsConstituentMemberDecoder


arcsConstituentMemberDecoder : Json.Decode.Decoder (List Int)
arcsConstituentMemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsSpecimenDecoder : Json.Decode.Decoder (List (List Int))
arcsSpecimenDecoder = 
    Json.Decode.list arcsSpecimenMemberDecoder


arcsSpecimenMemberDecoder : Json.Decode.Decoder (List Int)
arcsSpecimenMemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsGadgetDecoder : Json.Decode.Decoder (List (List Int))
arcsGadgetDecoder = 
    Json.Decode.list arcsGadgetMemberDecoder


arcsGadgetMemberDecoder : Json.Decode.Decoder (List Int)
arcsGadgetMemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsWidgetDecoder : Json.Decode.Decoder (List (List Int))
arcsWidgetDecoder = 
    Json.Decode.list arcsWidgetMemberDecoder


arcsWidgetMemberDecoder : Json.Decode.Decoder (List Int)
arcsWidgetMemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsGizmoDecoder : Json.Decode.Decoder (List (List Int))
arcsGizmoDecoder = 
    Json.Decode.list arcsGizmoMemberDecoder


arcsGizmoMemberDecoder : Json.Decode.Decoder (List Int)
arcsGizmoMemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsPartDecoder : Json.Decode.Decoder (List (List Int))
arcsPartDecoder = 
    Json.Decode.list arcsPartMemberDecoder


arcsPartMemberDecoder : Json.Decode.Decoder (List Int)
arcsPartMemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsChunkDecoder : Json.Decode.Decoder (List (List Int))
arcsChunkDecoder = 
    Json.Decode.list arcsChunkMemberDecoder


arcsChunkMemberDecoder : Json.Decode.Decoder (List Int)
arcsChunkMemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsPieceDecoder : Json.Decode.Decoder (List (List Int))
arcsPieceDecoder = 
    Json.Decode.list arcsPieceMemberDecoder


arcsPieceMemberDecoder : Json.Decode.Decoder (List Int)
arcsPieceMemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsThingyDecoder : Json.Decode.Decoder (List (List Int))
arcsThingyDecoder = 
    Json.Decode.list arcsThingyMemberDecoder


arcsThingyMemberDecoder : Json.Decode.Decoder (List Int)
arcsThingyMemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsThingamajigDecoder : Json.Decode.Decoder (List (List Int))
arcsThingamajigDecoder = 
    Json.Decode.list arcsThingamajigMemberDecoder


arcsThingamajigMemberDecoder : Json.Decode.Decoder (List Int)
arcsThingamajigMemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsWhatsitDecoder : Json.Decode.Decoder (List (List Int))
arcsWhatsitDecoder = 
    Json.Decode.list arcsWhatsitMemberDecoder


arcsWhatsitMemberDecoder : Json.Decode.Decoder (List Int)
arcsWhatsitMemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsDoodadDecoder : Json.Decode.Decoder (List (List Int))
arcsDoodadDecoder = 
    Json.Decode.list arcsDoodadMemberDecoder


arcsDoodadMemberDecoder : Json.Decode.Decoder (List Int)
arcsDoodadMemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias17Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias17Decoder = 
    Json.Decode.list arcsAlias17MemberDecoder


arcsAlias17MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias17MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias18Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias18Decoder = 
    Json.Decode.list arcsAlias18MemberDecoder


arcsAlias18MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias18MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias19Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias19Decoder = 
    Json.Decode.list arcsAlias19MemberDecoder


arcsAlias19MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias19MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias20Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias20Decoder = 
    Json.Decode.list arcsAlias20MemberDecoder


arcsAlias20MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias20MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias21Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias21Decoder = 
    Json.Decode.list arcsAlias21MemberDecoder


arcsAlias21MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias21MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias22Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias22Decoder = 
    Json.Decode.list arcsAlias22MemberDecoder


arcsAlias22MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias22MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias23Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias23Decoder = 
    Json.Decode.list arcsAlias23MemberDecoder


arcsAlias23MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias23MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias24Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias24Decoder = 
    Json.Decode.list arcsAlias24MemberDecoder


arcsAlias24MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias24MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias25Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias25Decoder = 
    Json.Decode.list arcsAlias25MemberDecoder


arcsAlias25MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias25MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias26Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias26Decoder = 
    Json.Decode.list arcsAlias26MemberDecoder


arcsAlias26MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias26MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias27Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias27Decoder = 
    Json.Decode.list arcsAlias27MemberDecoder


arcsAlias27MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias27MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias28Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias28Decoder = 
    Json.Decode.list arcsAlias28MemberDecoder


arcsAlias28MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias28MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias29Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias29Decoder = 
    Json.Decode.list arcsAlias29MemberDecoder


arcsAlias29MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias29MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias30Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias30Decoder = 
    Json.Decode.list arcsAlias30MemberDecoder


arcsAlias30MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias30MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias31Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias31Decoder = 
    Json.Decode.list arcsAlias31MemberDecoder


arcsAlias31MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias31MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias32Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias32Decoder = 
    Json.Decode.list arcsAlias32MemberDecoder


arcsAlias32MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias32MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias33Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias33Decoder = 
    Json.Decode.list arcsAlias33MemberDecoder


arcsAlias33MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias33MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias34Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias34Decoder = 
    Json.Decode.list arcsAlias34MemberDecoder


arcsAlias34MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias34MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias35Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias35Decoder = 
    Json.Decode.list arcsAlias35MemberDecoder


arcsAlias35MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias35MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias36Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias36Decoder = 
    Json.Decode.list arcsAlias36MemberDecoder


arcsAlias36MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias36MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias37Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias37Decoder = 
    Json.Decode.list arcsAlias37MemberDecoder


arcsAlias37MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias37MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias38Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias38Decoder = 
    Json.Decode.list arcsAlias38MemberDecoder


arcsAlias38MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias38MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias39Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias39Decoder = 
    Json.Decode.list arcsAlias39MemberDecoder


arcsAlias39MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias39MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias40Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias40Decoder = 
    Json.Decode.list arcsAlias40MemberDecoder


arcsAlias40MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias40MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias41Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias41Decoder = 
    Json.Decode.list arcsAlias41MemberDecoder


arcsAlias41MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias41MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias42Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias42Decoder = 
    Json.Decode.list arcsAlias42MemberDecoder


arcsAlias42MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias42MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias43Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias43Decoder = 
    Json.Decode.list arcsAlias43MemberDecoder


arcsAlias43MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias43MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias44Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias44Decoder = 
    Json.Decode.list arcsAlias44MemberDecoder


arcsAlias44MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias44MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias45Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias45Decoder = 
    Json.Decode.list arcsAlias45MemberDecoder


arcsAlias45MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias45MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias46Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias46Decoder = 
    Json.Decode.list arcsAlias46MemberDecoder


arcsAlias46MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias46MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias47Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias47Decoder = 
    Json.Decode.list arcsAlias47MemberDecoder


arcsAlias47MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias47MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias48Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias48Decoder = 
    Json.Decode.list arcsAlias48MemberDecoder


arcsAlias48MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias48MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias49Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias49Decoder = 
    Json.Decode.list arcsAlias49MemberDecoder


arcsAlias49MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias49MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias50Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias50Decoder = 
    Json.Decode.list arcsAlias50MemberDecoder


arcsAlias50MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias50MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias51Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias51Decoder = 
    Json.Decode.list arcsAlias51MemberDecoder


arcsAlias51MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias51MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias52Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias52Decoder = 
    Json.Decode.list arcsAlias52MemberDecoder


arcsAlias52MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias52MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias53Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias53Decoder = 
    Json.Decode.list arcsAlias53MemberDecoder


arcsAlias53MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias53MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias54Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias54Decoder = 
    Json.Decode.list arcsAlias54MemberDecoder


arcsAlias54MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias54MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias55Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias55Decoder = 
    Json.Decode.list arcsAlias55MemberDecoder


arcsAlias55MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias55MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias56Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias56Decoder = 
    Json.Decode.list arcsAlias56MemberDecoder


arcsAlias56MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias56MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias57Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias57Decoder = 
    Json.Decode.list arcsAlias57MemberDecoder


arcsAlias57MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias57MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias58Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias58Decoder = 
    Json.Decode.list arcsAlias58MemberDecoder


arcsAlias58MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias58MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias59Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias59Decoder = 
    Json.Decode.list arcsAlias59MemberDecoder


arcsAlias59MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias59MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias60Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias60Decoder = 
    Json.Decode.list arcsAlias60MemberDecoder


arcsAlias60MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias60MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias61Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias61Decoder = 
    Json.Decode.list arcsAlias61MemberDecoder


arcsAlias61MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias61MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias62Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias62Decoder = 
    Json.Decode.list arcsAlias62MemberDecoder


arcsAlias62MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias62MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias63Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias63Decoder = 
    Json.Decode.list arcsAlias63MemberDecoder


arcsAlias63MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias63MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias64Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias64Decoder = 
    Json.Decode.list arcsAlias64MemberDecoder


arcsAlias64MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias64MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias65Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias65Decoder = 
    Json.Decode.list arcsAlias65MemberDecoder


arcsAlias65MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias65MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias66Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias66Decoder = 
    Json.Decode.list arcsAlias66MemberDecoder


arcsAlias66MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias66MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias67Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias67Decoder = 
    Json.Decode.list arcsAlias67MemberDecoder


arcsAlias67MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias67MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias68Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias68Decoder = 
    Json.Decode.list arcsAlias68MemberDecoder


arcsAlias68MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias68MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias69Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias69Decoder = 
    Json.Decode.list arcsAlias69MemberDecoder


arcsAlias69MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias69MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias70Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias70Decoder = 
    Json.Decode.list arcsAlias70MemberDecoder


arcsAlias70MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias70MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias71Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias71Decoder = 
    Json.Decode.list arcsAlias71MemberDecoder


arcsAlias71MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias71MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias72Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias72Decoder = 
    Json.Decode.list arcsAlias72MemberDecoder


arcsAlias72MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias72MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias73Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias73Decoder = 
    Json.Decode.list arcsAlias73MemberDecoder


arcsAlias73MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias73MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias74Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias74Decoder = 
    Json.Decode.list arcsAlias74MemberDecoder


arcsAlias74MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias74MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias75Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias75Decoder = 
    Json.Decode.list arcsAlias75MemberDecoder


arcsAlias75MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias75MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias76Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias76Decoder = 
    Json.Decode.list arcsAlias76MemberDecoder


arcsAlias76MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias76MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias77Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias77Decoder = 
    Json.Decode.list arcsAlias77MemberDecoder


arcsAlias77MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias77MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias78Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias78Decoder = 
    Json.Decode.list arcsAlias78MemberDecoder


arcsAlias78MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias78MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias79Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias79Decoder = 
    Json.Decode.list arcsAlias79MemberDecoder


arcsAlias79MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias79MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias80Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias80Decoder = 
    Json.Decode.list arcsAlias80MemberDecoder


arcsAlias80MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias80MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias81Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias81Decoder = 
    Json.Decode.list arcsAlias81MemberDecoder


arcsAlias81MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias81MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias82Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias82Decoder = 
    Json.Decode.list arcsAlias82MemberDecoder


arcsAlias82MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias82MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias83Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias83Decoder = 
    Json.Decode.list arcsAlias83MemberDecoder


arcsAlias83MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias83MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias84Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias84Decoder = 
    Json.Decode.list arcsAlias84MemberDecoder


arcsAlias84MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias84MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias85Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias85Decoder = 
    Json.Decode.list arcsAlias85MemberDecoder


arcsAlias85MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias85MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias86Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias86Decoder = 
    Json.Decode.list arcsAlias86MemberDecoder


arcsAlias86MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias86MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias87Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias87Decoder = 
    Json.Decode.list arcsAlias87MemberDecoder


arcsAlias87MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias87MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias88Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias88Decoder = 
    Json.Decode.list arcsAlias88MemberDecoder


arcsAlias88MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias88MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias89Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias89Decoder = 
    Json.Decode.list arcsAlias89MemberDecoder


arcsAlias89MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias89MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias90Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias90Decoder = 
    Json.Decode.list arcsAlias90MemberDecoder


arcsAlias90MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias90MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias91Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias91Decoder = 
    Json.Decode.list arcsAlias91MemberDecoder


arcsAlias91MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias91MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias92Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias92Decoder = 
    Json.Decode.list arcsAlias92MemberDecoder


arcsAlias92MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias92MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias93Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias93Decoder = 
    Json.Decode.list arcsAlias93MemberDecoder


arcsAlias93MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias93MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias94Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias94Decoder = 
    Json.Decode.list arcsAlias94MemberDecoder


arcsAlias94MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias94MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias95Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias95Decoder = 
    Json.Decode.list arcsAlias95MemberDecoder


arcsAlias95MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias95MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias96Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias96Decoder = 
    Json.Decode.list arcsAlias96MemberDecoder


arcsAlias96MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias96MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias97Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias97Decoder = 
    Json.Decode.list arcsAlias97MemberDecoder


arcsAlias97MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias97MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias98Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias98Decoder = 
    Json.Decode.list arcsAlias98MemberDecoder


arcsAlias98MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias98MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias99Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias99Decoder = 
    Json.Decode.list arcsAlias99MemberDecoder


arcsAlias99MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias99MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias100Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias100Decoder = 
    Json.Decode.list arcsAlias100MemberDecoder


arcsAlias100MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias100MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias101Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias101Decoder = 
    Json.Decode.list arcsAlias101MemberDecoder


arcsAlias101MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias101MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias102Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias102Decoder = 
    Json.Decode.list arcsAlias102MemberDecoder


arcsAlias102MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias102MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias103Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias103Decoder = 
    Json.Decode.list arcsAlias103MemberDecoder


arcsAlias103MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias103MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias104Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias104Decoder = 
    Json.Decode.list arcsAlias104MemberDecoder


arcsAlias104MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias104MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias105Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias105Decoder = 
    Json.Decode.list arcsAlias105MemberDecoder


arcsAlias105MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias105MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias106Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias106Decoder = 
    Json.Decode.list arcsAlias106MemberDecoder


arcsAlias106MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias106MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias107Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias107Decoder = 
    Json.Decode.list arcsAlias107MemberDecoder


arcsAlias107MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias107MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias108Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias108Decoder = 
    Json.Decode.list arcsAlias108MemberDecoder


arcsAlias108MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias108MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias109Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias109Decoder = 
    Json.Decode.list arcsAlias109MemberDecoder


arcsAlias109MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias109MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias110Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias110Decoder = 
    Json.Decode.list arcsAlias110MemberDecoder


arcsAlias110MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias110MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias111Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias111Decoder = 
    Json.Decode.list arcsAlias111MemberDecoder


arcsAlias111MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias111MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias112Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias112Decoder = 
    Json.Decode.list arcsAlias112MemberDecoder


arcsAlias112MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias112MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias113Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias113Decoder = 
    Json.Decode.list arcsAlias113MemberDecoder


arcsAlias113MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias113MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias114Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias114Decoder = 
    Json.Decode.list arcsAlias114MemberDecoder


arcsAlias114MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias114MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias115Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias115Decoder = 
    Json.Decode.list arcsAlias115MemberDecoder


arcsAlias115MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias115MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias116Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias116Decoder = 
    Json.Decode.list arcsAlias116MemberDecoder


arcsAlias116MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias116MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias117Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias117Decoder = 
    Json.Decode.list arcsAlias117MemberDecoder


arcsAlias117MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias117MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias118Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias118Decoder = 
    Json.Decode.list arcsAlias118MemberDecoder


arcsAlias118MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias118MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias119Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias119Decoder = 
    Json.Decode.list arcsAlias119MemberDecoder


arcsAlias119MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias119MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias120Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias120Decoder = 
    Json.Decode.list arcsAlias120MemberDecoder


arcsAlias120MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias120MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias121Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias121Decoder = 
    Json.Decode.list arcsAlias121MemberDecoder


arcsAlias121MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias121MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias122Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias122Decoder = 
    Json.Decode.list arcsAlias122MemberDecoder


arcsAlias122MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias122MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias123Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias123Decoder = 
    Json.Decode.list arcsAlias123MemberDecoder


arcsAlias123MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias123MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias124Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias124Decoder = 
    Json.Decode.list arcsAlias124MemberDecoder


arcsAlias124MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias124MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias125Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias125Decoder = 
    Json.Decode.list arcsAlias125MemberDecoder


arcsAlias125MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias125MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias126Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias126Decoder = 
    Json.Decode.list arcsAlias126MemberDecoder


arcsAlias126MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias126MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias127Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias127Decoder = 
    Json.Decode.list arcsAlias127MemberDecoder


arcsAlias127MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias127MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias128Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias128Decoder = 
    Json.Decode.list arcsAlias128MemberDecoder


arcsAlias128MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias128MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias129Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias129Decoder = 
    Json.Decode.list arcsAlias129MemberDecoder


arcsAlias129MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias129MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias130Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias130Decoder = 
    Json.Decode.list arcsAlias130MemberDecoder


arcsAlias130MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias130MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias131Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias131Decoder = 
    Json.Decode.list arcsAlias131MemberDecoder


arcsAlias131MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias131MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias132Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias132Decoder = 
    Json.Decode.list arcsAlias132MemberDecoder


arcsAlias132MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias132MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias133Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias133Decoder = 
    Json.Decode.list arcsAlias133MemberDecoder


arcsAlias133MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias133MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias134Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias134Decoder = 
    Json.Decode.list arcsAlias134MemberDecoder


arcsAlias134MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias134MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias135Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias135Decoder = 
    Json.Decode.list arcsAlias135MemberDecoder


arcsAlias135MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias135MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias136Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias136Decoder = 
    Json.Decode.list arcsAlias136MemberDecoder


arcsAlias136MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias136MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias137Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias137Decoder = 
    Json.Decode.list arcsAlias137MemberDecoder


arcsAlias137MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias137MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias138Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias138Decoder = 
    Json.Decode.list arcsAlias138MemberDecoder


arcsAlias138MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias138MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias139Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias139Decoder = 
    Json.Decode.list arcsAlias139MemberDecoder


arcsAlias139MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias139MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias140Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias140Decoder = 
    Json.Decode.list arcsAlias140MemberDecoder


arcsAlias140MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias140MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias141Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias141Decoder = 
    Json.Decode.list arcsAlias141MemberDecoder


arcsAlias141MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias141MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias142Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias142Decoder = 
    Json.Decode.list arcsAlias142MemberDecoder


arcsAlias142MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias142MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias143Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias143Decoder = 
    Json.Decode.list arcsAlias143MemberDecoder


arcsAlias143MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias143MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias144Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias144Decoder = 
    Json.Decode.list arcsAlias144MemberDecoder


arcsAlias144MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias144MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias145Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias145Decoder = 
    Json.Decode.list arcsAlias145MemberDecoder


arcsAlias145MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias145MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias146Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias146Decoder = 
    Json.Decode.list arcsAlias146MemberDecoder


arcsAlias146MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias146MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias147Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias147Decoder = 
    Json.Decode.list arcsAlias147MemberDecoder


arcsAlias147MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias147MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias148Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias148Decoder = 
    Json.Decode.list arcsAlias148MemberDecoder


arcsAlias148MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias148MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias149Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias149Decoder = 
    Json.Decode.list arcsAlias149MemberDecoder


arcsAlias149MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias149MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias150Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias150Decoder = 
    Json.Decode.list arcsAlias150MemberDecoder


arcsAlias150MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias150MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias151Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias151Decoder = 
    Json.Decode.list arcsAlias151MemberDecoder


arcsAlias151MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias151MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias152Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias152Decoder = 
    Json.Decode.list arcsAlias152MemberDecoder


arcsAlias152MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias152MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias153Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias153Decoder = 
    Json.Decode.list arcsAlias153MemberDecoder


arcsAlias153MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias153MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias154Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias154Decoder = 
    Json.Decode.list arcsAlias154MemberDecoder


arcsAlias154MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias154MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias155Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias155Decoder = 
    Json.Decode.list arcsAlias155MemberDecoder


arcsAlias155MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias155MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias156Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias156Decoder = 
    Json.Decode.list arcsAlias156MemberDecoder


arcsAlias156MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias156MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias157Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias157Decoder = 
    Json.Decode.list arcsAlias157MemberDecoder


arcsAlias157MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias157MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias158Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias158Decoder = 
    Json.Decode.list arcsAlias158MemberDecoder


arcsAlias158MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias158MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias159Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias159Decoder = 
    Json.Decode.list arcsAlias159MemberDecoder


arcsAlias159MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias159MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias160Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias160Decoder = 
    Json.Decode.list arcsAlias160MemberDecoder


arcsAlias160MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias160MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias161Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias161Decoder = 
    Json.Decode.list arcsAlias161MemberDecoder


arcsAlias161MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias161MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias162Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias162Decoder = 
    Json.Decode.list arcsAlias162MemberDecoder


arcsAlias162MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias162MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias163Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias163Decoder = 
    Json.Decode.list arcsAlias163MemberDecoder


arcsAlias163MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias163MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias164Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias164Decoder = 
    Json.Decode.list arcsAlias164MemberDecoder


arcsAlias164MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias164MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias165Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias165Decoder = 
    Json.Decode.list arcsAlias165MemberDecoder


arcsAlias165MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias165MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias166Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias166Decoder = 
    Json.Decode.list arcsAlias166MemberDecoder


arcsAlias166MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias166MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias167Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias167Decoder = 
    Json.Decode.list arcsAlias167MemberDecoder


arcsAlias167MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias167MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias168Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias168Decoder = 
    Json.Decode.list arcsAlias168MemberDecoder


arcsAlias168MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias168MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias169Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias169Decoder = 
    Json.Decode.list arcsAlias169MemberDecoder


arcsAlias169MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias169MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias170Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias170Decoder = 
    Json.Decode.list arcsAlias170MemberDecoder


arcsAlias170MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias170MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias171Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias171Decoder = 
    Json.Decode.list arcsAlias171MemberDecoder


arcsAlias171MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias171MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias172Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias172Decoder = 
    Json.Decode.list arcsAlias172MemberDecoder


arcsAlias172MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias172MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias173Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias173Decoder = 
    Json.Decode.list arcsAlias173MemberDecoder


arcsAlias173MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias173MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias174Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias174Decoder = 
    Json.Decode.list arcsAlias174MemberDecoder


arcsAlias174MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias174MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias175Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias175Decoder = 
    Json.Decode.list arcsAlias175MemberDecoder


arcsAlias175MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias175MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias176Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias176Decoder = 
    Json.Decode.list arcsAlias176MemberDecoder


arcsAlias176MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias176MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias177Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias177Decoder = 
    Json.Decode.list arcsAlias177MemberDecoder


arcsAlias177MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias177MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias178Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias178Decoder = 
    Json.Decode.list arcsAlias178MemberDecoder


arcsAlias178MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias178MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias179Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias179Decoder = 
    Json.Decode.list arcsAlias179MemberDecoder


arcsAlias179MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias179MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias180Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias180Decoder = 
    Json.Decode.list arcsAlias180MemberDecoder


arcsAlias180MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias180MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias181Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias181Decoder = 
    Json.Decode.list arcsAlias181MemberDecoder


arcsAlias181MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias181MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias182Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias182Decoder = 
    Json.Decode.list arcsAlias182MemberDecoder


arcsAlias182MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias182MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias183Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias183Decoder = 
    Json.Decode.list arcsAlias183MemberDecoder


arcsAlias183MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias183MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias184Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias184Decoder = 
    Json.Decode.list arcsAlias184MemberDecoder


arcsAlias184MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias184MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias185Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias185Decoder = 
    Json.Decode.list arcsAlias185MemberDecoder


arcsAlias185MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias185MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias186Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias186Decoder = 
    Json.Decode.list arcsAlias186MemberDecoder


arcsAlias186MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias186MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias187Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias187Decoder = 
    Json.Decode.list arcsAlias187MemberDecoder


arcsAlias187MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias187MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias188Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias188Decoder = 
    Json.Decode.list arcsAlias188MemberDecoder


arcsAlias188MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias188MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias189Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias189Decoder = 
    Json.Decode.list arcsAlias189MemberDecoder


arcsAlias189MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias189MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias190Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias190Decoder = 
    Json.Decode.list arcsAlias190MemberDecoder


arcsAlias190MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias190MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias191Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias191Decoder = 
    Json.Decode.list arcsAlias191MemberDecoder


arcsAlias191MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias191MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias192Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias192Decoder = 
    Json.Decode.list arcsAlias192MemberDecoder


arcsAlias192MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias192MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias193Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias193Decoder = 
    Json.Decode.list arcsAlias193MemberDecoder


arcsAlias193MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias193MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias194Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias194Decoder = 
    Json.Decode.list arcsAlias194MemberDecoder


arcsAlias194MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias194MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias195Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias195Decoder = 
    Json.Decode.list arcsAlias195MemberDecoder


arcsAlias195MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias195MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias196Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias196Decoder = 
    Json.Decode.list arcsAlias196MemberDecoder


arcsAlias196MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias196MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias197Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias197Decoder = 
    Json.Decode.list arcsAlias197MemberDecoder


arcsAlias197MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias197MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias198Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias198Decoder = 
    Json.Decode.list arcsAlias198MemberDecoder


arcsAlias198MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias198MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias199Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias199Decoder = 
    Json.Decode.list arcsAlias199MemberDecoder


arcsAlias199MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias199MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias200Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias200Decoder = 
    Json.Decode.list arcsAlias200MemberDecoder


arcsAlias200MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias200MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias201Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias201Decoder = 
    Json.Decode.list arcsAlias201MemberDecoder


arcsAlias201MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias201MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias202Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias202Decoder = 
    Json.Decode.list arcsAlias202MemberDecoder


arcsAlias202MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias202MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias203Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias203Decoder = 
    Json.Decode.list arcsAlias203MemberDecoder


arcsAlias203MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias203MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias204Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias204Decoder = 
    Json.Decode.list arcsAlias204MemberDecoder


arcsAlias204MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias204MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias205Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias205Decoder = 
    Json.Decode.list arcsAlias205MemberDecoder


arcsAlias205MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias205MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias206Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias206Decoder = 
    Json.Decode.list arcsAlias206MemberDecoder


arcsAlias206MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias206MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias207Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias207Decoder = 
    Json.Decode.list arcsAlias207MemberDecoder


arcsAlias207MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias207MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias208Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias208Decoder = 
    Json.Decode.list arcsAlias208MemberDecoder


arcsAlias208MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias208MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias209Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias209Decoder = 
    Json.Decode.list arcsAlias209MemberDecoder


arcsAlias209MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias209MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias210Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias210Decoder = 
    Json.Decode.list arcsAlias210MemberDecoder


arcsAlias210MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias210MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias211Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias211Decoder = 
    Json.Decode.list arcsAlias211MemberDecoder


arcsAlias211MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias211MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias212Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias212Decoder = 
    Json.Decode.list arcsAlias212MemberDecoder


arcsAlias212MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias212MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias213Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias213Decoder = 
    Json.Decode.list arcsAlias213MemberDecoder


arcsAlias213MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias213MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias214Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias214Decoder = 
    Json.Decode.list arcsAlias214MemberDecoder


arcsAlias214MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias214MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias215Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias215Decoder = 
    Json.Decode.list arcsAlias215MemberDecoder


arcsAlias215MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias215MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias216Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias216Decoder = 
    Json.Decode.list arcsAlias216MemberDecoder


arcsAlias216MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias216MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias217Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias217Decoder = 
    Json.Decode.list arcsAlias217MemberDecoder


arcsAlias217MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias217MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias218Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias218Decoder = 
    Json.Decode.list arcsAlias218MemberDecoder


arcsAlias218MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias218MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias219Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias219Decoder = 
    Json.Decode.list arcsAlias219MemberDecoder


arcsAlias219MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias219MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias220Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias220Decoder = 
    Json.Decode.list arcsAlias220MemberDecoder


arcsAlias220MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias220MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias221Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias221Decoder = 
    Json.Decode.list arcsAlias221MemberDecoder


arcsAlias221MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias221MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias222Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias222Decoder = 
    Json.Decode.list arcsAlias222MemberDecoder


arcsAlias222MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias222MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias223Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias223Decoder = 
    Json.Decode.list arcsAlias223MemberDecoder


arcsAlias223MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias223MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias224Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias224Decoder = 
    Json.Decode.list arcsAlias224MemberDecoder


arcsAlias224MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias224MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias225Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias225Decoder = 
    Json.Decode.list arcsAlias225MemberDecoder


arcsAlias225MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias225MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias226Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias226Decoder = 
    Json.Decode.list arcsAlias226MemberDecoder


arcsAlias226MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias226MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias227Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias227Decoder = 
    Json.Decode.list arcsAlias227MemberDecoder


arcsAlias227MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias227MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias228Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias228Decoder = 
    Json.Decode.list arcsAlias228MemberDecoder


arcsAlias228MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias228MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias229Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias229Decoder = 
    Json.Decode.list arcsAlias229MemberDecoder


arcsAlias229MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias229MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias230Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias230Decoder = 
    Json.Decode.list arcsAlias230MemberDecoder


arcsAlias230MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias230MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias231Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias231Decoder = 
    Json.Decode.list arcsAlias231MemberDecoder


arcsAlias231MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias231MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias232Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias232Decoder = 
    Json.Decode.list arcsAlias232MemberDecoder


arcsAlias232MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias232MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias233Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias233Decoder = 
    Json.Decode.list arcsAlias233MemberDecoder


arcsAlias233MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias233MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias234Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias234Decoder = 
    Json.Decode.list arcsAlias234MemberDecoder


arcsAlias234MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias234MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias235Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias235Decoder = 
    Json.Decode.list arcsAlias235MemberDecoder


arcsAlias235MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias235MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias236Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias236Decoder = 
    Json.Decode.list arcsAlias236MemberDecoder


arcsAlias236MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias236MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias237Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias237Decoder = 
    Json.Decode.list arcsAlias237MemberDecoder


arcsAlias237MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias237MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias238Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias238Decoder = 
    Json.Decode.list arcsAlias238MemberDecoder


arcsAlias238MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias238MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias239Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias239Decoder = 
    Json.Decode.list arcsAlias239MemberDecoder


arcsAlias239MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias239MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias240Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias240Decoder = 
    Json.Decode.list arcsAlias240MemberDecoder


arcsAlias240MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias240MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias241Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias241Decoder = 
    Json.Decode.list arcsAlias241MemberDecoder


arcsAlias241MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias241MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias242Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias242Decoder = 
    Json.Decode.list arcsAlias242MemberDecoder


arcsAlias242MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias242MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias243Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias243Decoder = 
    Json.Decode.list arcsAlias243MemberDecoder


arcsAlias243MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias243MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias244Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias244Decoder = 
    Json.Decode.list arcsAlias244MemberDecoder


arcsAlias244MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias244MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias245Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias245Decoder = 
    Json.Decode.list arcsAlias245MemberDecoder


arcsAlias245MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias245MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias246Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias246Decoder = 
    Json.Decode.list arcsAlias246MemberDecoder


arcsAlias246MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias246MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias247Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias247Decoder = 
    Json.Decode.list arcsAlias247MemberDecoder


arcsAlias247MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias247MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias248Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias248Decoder = 
    Json.Decode.list arcsAlias248MemberDecoder


arcsAlias248MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias248MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias249Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias249Decoder = 
    Json.Decode.list arcsAlias249MemberDecoder


arcsAlias249MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias249MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias250Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias250Decoder = 
    Json.Decode.list arcsAlias250MemberDecoder


arcsAlias250MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias250MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias251Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias251Decoder = 
    Json.Decode.list arcsAlias251MemberDecoder


arcsAlias251MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias251MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias252Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias252Decoder = 
    Json.Decode.list arcsAlias252MemberDecoder


arcsAlias252MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias252MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias253Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias253Decoder = 
    Json.Decode.list arcsAlias253MemberDecoder


arcsAlias253MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias253MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias254Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias254Decoder = 
    Json.Decode.list arcsAlias254MemberDecoder


arcsAlias254MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias254MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias255Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias255Decoder = 
    Json.Decode.list arcsAlias255MemberDecoder


arcsAlias255MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias255MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias256Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias256Decoder = 
    Json.Decode.list arcsAlias256MemberDecoder


arcsAlias256MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias256MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias257Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias257Decoder = 
    Json.Decode.list arcsAlias257MemberDecoder


arcsAlias257MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias257MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias258Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias258Decoder = 
    Json.Decode.list arcsAlias258MemberDecoder


arcsAlias258MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias258MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias259Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias259Decoder = 
    Json.Decode.list arcsAlias259MemberDecoder


arcsAlias259MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias259MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias260Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias260Decoder = 
    Json.Decode.list arcsAlias260MemberDecoder


arcsAlias260MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias260MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias261Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias261Decoder = 
    Json.Decode.list arcsAlias261MemberDecoder


arcsAlias261MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias261MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias262Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias262Decoder = 
    Json.Decode.list arcsAlias262MemberDecoder


arcsAlias262MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias262MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias263Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias263Decoder = 
    Json.Decode.list arcsAlias263MemberDecoder


arcsAlias263MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias263MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias264Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias264Decoder = 
    Json.Decode.list arcsAlias264MemberDecoder


arcsAlias264MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias264MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias265Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias265Decoder = 
    Json.Decode.list arcsAlias265MemberDecoder


arcsAlias265MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias265MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias266Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias266Decoder = 
    Json.Decode.list arcsAlias266MemberDecoder


arcsAlias266MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias266MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias267Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias267Decoder = 
    Json.Decode.list arcsAlias267MemberDecoder


arcsAlias267MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias267MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias268Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias268Decoder = 
    Json.Decode.list arcsAlias268MemberDecoder


arcsAlias268MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias268MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias269Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias269Decoder = 
    Json.Decode.list arcsAlias269MemberDecoder


arcsAlias269MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias269MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias270Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias270Decoder = 
    Json.Decode.list arcsAlias270MemberDecoder


arcsAlias270MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias270MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias271Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias271Decoder = 
    Json.Decode.list arcsAlias271MemberDecoder


arcsAlias271MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias271MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias272Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias272Decoder = 
    Json.Decode.list arcsAlias272MemberDecoder


arcsAlias272MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias272MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias273Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias273Decoder = 
    Json.Decode.list arcsAlias273MemberDecoder


arcsAlias273MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias273MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias274Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias274Decoder = 
    Json.Decode.list arcsAlias274MemberDecoder


arcsAlias274MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias274MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias275Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias275Decoder = 
    Json.Decode.list arcsAlias275MemberDecoder


arcsAlias275MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias275MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias276Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias276Decoder = 
    Json.Decode.list arcsAlias276MemberDecoder


arcsAlias276MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias276MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias277Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias277Decoder = 
    Json.Decode.list arcsAlias277MemberDecoder


arcsAlias277MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias277MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias278Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias278Decoder = 
    Json.Decode.list arcsAlias278MemberDecoder


arcsAlias278MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias278MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias279Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias279Decoder = 
    Json.Decode.list arcsAlias279MemberDecoder


arcsAlias279MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias279MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias280Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias280Decoder = 
    Json.Decode.list arcsAlias280MemberDecoder


arcsAlias280MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias280MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias281Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias281Decoder = 
    Json.Decode.list arcsAlias281MemberDecoder


arcsAlias281MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias281MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias282Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias282Decoder = 
    Json.Decode.list arcsAlias282MemberDecoder


arcsAlias282MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias282MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias283Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias283Decoder = 
    Json.Decode.list arcsAlias283MemberDecoder


arcsAlias283MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias283MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias284Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias284Decoder = 
    Json.Decode.list arcsAlias284MemberDecoder


arcsAlias284MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias284MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias285Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias285Decoder = 
    Json.Decode.list arcsAlias285MemberDecoder


arcsAlias285MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias285MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias286Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias286Decoder = 
    Json.Decode.list arcsAlias286MemberDecoder


arcsAlias286MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias286MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias287Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias287Decoder = 
    Json.Decode.list arcsAlias287MemberDecoder


arcsAlias287MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias287MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias288Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias288Decoder = 
    Json.Decode.list arcsAlias288MemberDecoder


arcsAlias288MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias288MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias289Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias289Decoder = 
    Json.Decode.list arcsAlias289MemberDecoder


arcsAlias289MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias289MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias290Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias290Decoder = 
    Json.Decode.list arcsAlias290MemberDecoder


arcsAlias290MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias290MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias291Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias291Decoder = 
    Json.Decode.list arcsAlias291MemberDecoder


arcsAlias291MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias291MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias292Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias292Decoder = 
    Json.Decode.list arcsAlias292MemberDecoder


arcsAlias292MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias292MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias293Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias293Decoder = 
    Json.Decode.list arcsAlias293MemberDecoder


arcsAlias293MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias293MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias294Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias294Decoder = 
    Json.Decode.list arcsAlias294MemberDecoder


arcsAlias294MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias294MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias295Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias295Decoder = 
    Json.Decode.list arcsAlias295MemberDecoder


arcsAlias295MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias295MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias296Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias296Decoder = 
    Json.Decode.list arcsAlias296MemberDecoder


arcsAlias296MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias296MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias297Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias297Decoder = 
    Json.Decode.list arcsAlias297MemberDecoder


arcsAlias297MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias297MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias298Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias298Decoder = 
    Json.Decode.list arcsAlias298MemberDecoder


arcsAlias298MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias298MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias299Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias299Decoder = 
    Json.Decode.list arcsAlias299MemberDecoder


arcsAlias299MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias299MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias300Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias300Decoder = 
    Json.Decode.list arcsAlias300MemberDecoder


arcsAlias300MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias300MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias301Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias301Decoder = 
    Json.Decode.list arcsAlias301MemberDecoder


arcsAlias301MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias301MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias302Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias302Decoder = 
    Json.Decode.list arcsAlias302MemberDecoder


arcsAlias302MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias302MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias303Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias303Decoder = 
    Json.Decode.list arcsAlias303MemberDecoder


arcsAlias303MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias303MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias304Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias304Decoder = 
    Json.Decode.list arcsAlias304MemberDecoder


arcsAlias304MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias304MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias305Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias305Decoder = 
    Json.Decode.list arcsAlias305MemberDecoder


arcsAlias305MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias305MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias306Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias306Decoder = 
    Json.Decode.list arcsAlias306MemberDecoder


arcsAlias306MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias306MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias307Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias307Decoder = 
    Json.Decode.list arcsAlias307MemberDecoder


arcsAlias307MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias307MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias308Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias308Decoder = 
    Json.Decode.list arcsAlias308MemberDecoder


arcsAlias308MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias308MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias309Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias309Decoder = 
    Json.Decode.list arcsAlias309MemberDecoder


arcsAlias309MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias309MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias310Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias310Decoder = 
    Json.Decode.list arcsAlias310MemberDecoder


arcsAlias310MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias310MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias311Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias311Decoder = 
    Json.Decode.list arcsAlias311MemberDecoder


arcsAlias311MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias311MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias312Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias312Decoder = 
    Json.Decode.list arcsAlias312MemberDecoder


arcsAlias312MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias312MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias313Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias313Decoder = 
    Json.Decode.list arcsAlias313MemberDecoder


arcsAlias313MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias313MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias314Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias314Decoder = 
    Json.Decode.list arcsAlias314MemberDecoder


arcsAlias314MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias314MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias315Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias315Decoder = 
    Json.Decode.list arcsAlias315MemberDecoder


arcsAlias315MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias315MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias316Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias316Decoder = 
    Json.Decode.list arcsAlias316MemberDecoder


arcsAlias316MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias316MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias317Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias317Decoder = 
    Json.Decode.list arcsAlias317MemberDecoder


arcsAlias317MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias317MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias318Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias318Decoder = 
    Json.Decode.list arcsAlias318MemberDecoder


arcsAlias318MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias318MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias319Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias319Decoder = 
    Json.Decode.list arcsAlias319MemberDecoder


arcsAlias319MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias319MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias320Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias320Decoder = 
    Json.Decode.list arcsAlias320MemberDecoder


arcsAlias320MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias320MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias321Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias321Decoder = 
    Json.Decode.list arcsAlias321MemberDecoder


arcsAlias321MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias321MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias322Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias322Decoder = 
    Json.Decode.list arcsAlias322MemberDecoder


arcsAlias322MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias322MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias323Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias323Decoder = 
    Json.Decode.list arcsAlias323MemberDecoder


arcsAlias323MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias323MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias324Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias324Decoder = 
    Json.Decode.list arcsAlias324MemberDecoder


arcsAlias324MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias324MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias325Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias325Decoder = 
    Json.Decode.list arcsAlias325MemberDecoder


arcsAlias325MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias325MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias326Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias326Decoder = 
    Json.Decode.list arcsAlias326MemberDecoder


arcsAlias326MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias326MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias327Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias327Decoder = 
    Json.Decode.list arcsAlias327MemberDecoder


arcsAlias327MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias327MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias328Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias328Decoder = 
    Json.Decode.list arcsAlias328MemberDecoder


arcsAlias328MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias328MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias329Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias329Decoder = 
    Json.Decode.list arcsAlias329MemberDecoder


arcsAlias329MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias329MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias330Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias330Decoder = 
    Json.Decode.list arcsAlias330MemberDecoder


arcsAlias330MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias330MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias331Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias331Decoder = 
    Json.Decode.list arcsAlias331MemberDecoder


arcsAlias331MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias331MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias332Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias332Decoder = 
    Json.Decode.list arcsAlias332MemberDecoder


arcsAlias332MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias332MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias333Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias333Decoder = 
    Json.Decode.list arcsAlias333MemberDecoder


arcsAlias333MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias333MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias334Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias334Decoder = 
    Json.Decode.list arcsAlias334MemberDecoder


arcsAlias334MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias334MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias335Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias335Decoder = 
    Json.Decode.list arcsAlias335MemberDecoder


arcsAlias335MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias335MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias336Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias336Decoder = 
    Json.Decode.list arcsAlias336MemberDecoder


arcsAlias336MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias336MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias337Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias337Decoder = 
    Json.Decode.list arcsAlias337MemberDecoder


arcsAlias337MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias337MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias338Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias338Decoder = 
    Json.Decode.list arcsAlias338MemberDecoder


arcsAlias338MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias338MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias339Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias339Decoder = 
    Json.Decode.list arcsAlias339MemberDecoder


arcsAlias339MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias339MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias340Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias340Decoder = 
    Json.Decode.list arcsAlias340MemberDecoder


arcsAlias340MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias340MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias341Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias341Decoder = 
    Json.Decode.list arcsAlias341MemberDecoder


arcsAlias341MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias341MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias342Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias342Decoder = 
    Json.Decode.list arcsAlias342MemberDecoder


arcsAlias342MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias342MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias343Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias343Decoder = 
    Json.Decode.list arcsAlias343MemberDecoder


arcsAlias343MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias343MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias344Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias344Decoder = 
    Json.Decode.list arcsAlias344MemberDecoder


arcsAlias344MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias344MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias345Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias345Decoder = 
    Json.Decode.list arcsAlias345MemberDecoder


arcsAlias345MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias345MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias346Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias346Decoder = 
    Json.Decode.list arcsAlias346MemberDecoder


arcsAlias346MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias346MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias347Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias347Decoder = 
    Json.Decode.list arcsAlias347MemberDecoder


arcsAlias347MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias347MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias348Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias348Decoder = 
    Json.Decode.list arcsAlias348MemberDecoder


arcsAlias348MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias348MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias349Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias349Decoder = 
    Json.Decode.list arcsAlias349MemberDecoder


arcsAlias349MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias349MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias350Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias350Decoder = 
    Json.Decode.list arcsAlias350MemberDecoder


arcsAlias350MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias350MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias351Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias351Decoder = 
    Json.Decode.list arcsAlias351MemberDecoder


arcsAlias351MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias351MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias352Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias352Decoder = 
    Json.Decode.list arcsAlias352MemberDecoder


arcsAlias352MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias352MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias353Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias353Decoder = 
    Json.Decode.list arcsAlias353MemberDecoder


arcsAlias353MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias353MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias354Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias354Decoder = 
    Json.Decode.list arcsAlias354MemberDecoder


arcsAlias354MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias354MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias355Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias355Decoder = 
    Json.Decode.list arcsAlias355MemberDecoder


arcsAlias355MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias355MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias356Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias356Decoder = 
    Json.Decode.list arcsAlias356MemberDecoder


arcsAlias356MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias356MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias357Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias357Decoder = 
    Json.Decode.list arcsAlias357MemberDecoder


arcsAlias357MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias357MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias358Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias358Decoder = 
    Json.Decode.list arcsAlias358MemberDecoder


arcsAlias358MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias358MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias359Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias359Decoder = 
    Json.Decode.list arcsAlias359MemberDecoder


arcsAlias359MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias359MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias360Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias360Decoder = 
    Json.Decode.list arcsAlias360MemberDecoder


arcsAlias360MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias360MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias361Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias361Decoder = 
    Json.Decode.list arcsAlias361MemberDecoder


arcsAlias361MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias361MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias362Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias362Decoder = 
    Json.Decode.list arcsAlias362MemberDecoder


arcsAlias362MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias362MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias363Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias363Decoder = 
    Json.Decode.list arcsAlias363MemberDecoder


arcsAlias363MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias363MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias364Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias364Decoder = 
    Json.Decode.list arcsAlias364MemberDecoder


arcsAlias364MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias364MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias365Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias365Decoder = 
    Json.Decode.list arcsAlias365MemberDecoder


arcsAlias365MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias365MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias366Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias366Decoder = 
    Json.Decode.list arcsAlias366MemberDecoder


arcsAlias366MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias366MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias367Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias367Decoder = 
    Json.Decode.list arcsAlias367MemberDecoder


arcsAlias367MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias367MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias368Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias368Decoder = 
    Json.Decode.list arcsAlias368MemberDecoder


arcsAlias368MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias368MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias369Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias369Decoder = 
    Json.Decode.list arcsAlias369MemberDecoder


arcsAlias369MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias369MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias370Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias370Decoder = 
    Json.Decode.list arcsAlias370MemberDecoder


arcsAlias370MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias370MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias371Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias371Decoder = 
    Json.Decode.list arcsAlias371MemberDecoder


arcsAlias371MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias371MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias372Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias372Decoder = 
    Json.Decode.list arcsAlias372MemberDecoder


arcsAlias372MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias372MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias373Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias373Decoder = 
    Json.Decode.list arcsAlias373MemberDecoder


arcsAlias373MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias373MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias374Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias374Decoder = 
    Json.Decode.list arcsAlias374MemberDecoder


arcsAlias374MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias374MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias375Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias375Decoder = 
    Json.Decode.list arcsAlias375MemberDecoder


arcsAlias375MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias375MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias376Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias376Decoder = 
    Json.Decode.list arcsAlias376MemberDecoder


arcsAlias376MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias376MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias377Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias377Decoder = 
    Json.Decode.list arcsAlias377MemberDecoder


arcsAlias377MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias377MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias378Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias378Decoder = 
    Json.Decode.list arcsAlias378MemberDecoder


arcsAlias378MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias378MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias379Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias379Decoder = 
    Json.Decode.list arcsAlias379MemberDecoder


arcsAlias379MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias379MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias380Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias380Decoder = 
    Json.Decode.list arcsAlias380MemberDecoder


arcsAlias380MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias380MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias381Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias381Decoder = 
    Json.Decode.list arcsAlias381MemberDecoder


arcsAlias381MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias381MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias382Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias382Decoder = 
    Json.Decode.list arcsAlias382MemberDecoder


arcsAlias382MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias382MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias383Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias383Decoder = 
    Json.Decode.list arcsAlias383MemberDecoder


arcsAlias383MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias383MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias384Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias384Decoder = 
    Json.Decode.list arcsAlias384MemberDecoder


arcsAlias384MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias384MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias385Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias385Decoder = 
    Json.Decode.list arcsAlias385MemberDecoder


arcsAlias385MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias385MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias386Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias386Decoder = 
    Json.Decode.list arcsAlias386MemberDecoder


arcsAlias386MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias386MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias387Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias387Decoder = 
    Json.Decode.list arcsAlias387MemberDecoder


arcsAlias387MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias387MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias388Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias388Decoder = 
    Json.Decode.list arcsAlias388MemberDecoder


arcsAlias388MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias388MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias389Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias389Decoder = 
    Json.Decode.list arcsAlias389MemberDecoder


arcsAlias389MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias389MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias390Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias390Decoder = 
    Json.Decode.list arcsAlias390MemberDecoder


arcsAlias390MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias390MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias391Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias391Decoder = 
    Json.Decode.list arcsAlias391MemberDecoder


arcsAlias391MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias391MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias392Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias392Decoder = 
    Json.Decode.list arcsAlias392MemberDecoder


arcsAlias392MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias392MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias393Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias393Decoder = 
    Json.Decode.list arcsAlias393MemberDecoder


arcsAlias393MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias393MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias394Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias394Decoder = 
    Json.Decode.list arcsAlias394MemberDecoder


arcsAlias394MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias394MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias395Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias395Decoder = 
    Json.Decode.list arcsAlias395MemberDecoder


arcsAlias395MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias395MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias396Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias396Decoder = 
    Json.Decode.list arcsAlias396MemberDecoder


arcsAlias396MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias396MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias397Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias397Decoder = 
    Json.Decode.list arcsAlias397MemberDecoder


arcsAlias397MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias397MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias398Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias398Decoder = 
    Json.Decode.list arcsAlias398MemberDecoder


arcsAlias398MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias398MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias399Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias399Decoder = 
    Json.Decode.list arcsAlias399MemberDecoder


arcsAlias399MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias399MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias400Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias400Decoder = 
    Json.Decode.list arcsAlias400MemberDecoder


arcsAlias400MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias400MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias401Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias401Decoder = 
    Json.Decode.list arcsAlias401MemberDecoder


arcsAlias401MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias401MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias402Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias402Decoder = 
    Json.Decode.list arcsAlias402MemberDecoder


arcsAlias402MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias402MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias403Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias403Decoder = 
    Json.Decode.list arcsAlias403MemberDecoder


arcsAlias403MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias403MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias404Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias404Decoder = 
    Json.Decode.list arcsAlias404MemberDecoder


arcsAlias404MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias404MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias405Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias405Decoder = 
    Json.Decode.list arcsAlias405MemberDecoder


arcsAlias405MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias405MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias406Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias406Decoder = 
    Json.Decode.list arcsAlias406MemberDecoder


arcsAlias406MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias406MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias407Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias407Decoder = 
    Json.Decode.list arcsAlias407MemberDecoder


arcsAlias407MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias407MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias408Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias408Decoder = 
    Json.Decode.list arcsAlias408MemberDecoder


arcsAlias408MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias408MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias409Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias409Decoder = 
    Json.Decode.list arcsAlias409MemberDecoder


arcsAlias409MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias409MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias410Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias410Decoder = 
    Json.Decode.list arcsAlias410MemberDecoder


arcsAlias410MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias410MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias411Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias411Decoder = 
    Json.Decode.list arcsAlias411MemberDecoder


arcsAlias411MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias411MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias412Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias412Decoder = 
    Json.Decode.list arcsAlias412MemberDecoder


arcsAlias412MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias412MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias413Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias413Decoder = 
    Json.Decode.list arcsAlias413MemberDecoder


arcsAlias413MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias413MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias414Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias414Decoder = 
    Json.Decode.list arcsAlias414MemberDecoder


arcsAlias414MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias414MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias415Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias415Decoder = 
    Json.Decode.list arcsAlias415MemberDecoder


arcsAlias415MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias415MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias416Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias416Decoder = 
    Json.Decode.list arcsAlias416MemberDecoder


arcsAlias416MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias416MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias417Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias417Decoder = 
    Json.Decode.list arcsAlias417MemberDecoder


arcsAlias417MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias417MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias418Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias418Decoder = 
    Json.Decode.list arcsAlias418MemberDecoder


arcsAlias418MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias418MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias419Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias419Decoder = 
    Json.Decode.list arcsAlias419MemberDecoder


arcsAlias419MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias419MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias420Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias420Decoder = 
    Json.Decode.list arcsAlias420MemberDecoder


arcsAlias420MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias420MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias421Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias421Decoder = 
    Json.Decode.list arcsAlias421MemberDecoder


arcsAlias421MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias421MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias422Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias422Decoder = 
    Json.Decode.list arcsAlias422MemberDecoder


arcsAlias422MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias422MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias423Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias423Decoder = 
    Json.Decode.list arcsAlias423MemberDecoder


arcsAlias423MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias423MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias424Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias424Decoder = 
    Json.Decode.list arcsAlias424MemberDecoder


arcsAlias424MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias424MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias425Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias425Decoder = 
    Json.Decode.list arcsAlias425MemberDecoder


arcsAlias425MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias425MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias426Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias426Decoder = 
    Json.Decode.list arcsAlias426MemberDecoder


arcsAlias426MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias426MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias427Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias427Decoder = 
    Json.Decode.list arcsAlias427MemberDecoder


arcsAlias427MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias427MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias428Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias428Decoder = 
    Json.Decode.list arcsAlias428MemberDecoder


arcsAlias428MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias428MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias429Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias429Decoder = 
    Json.Decode.list arcsAlias429MemberDecoder


arcsAlias429MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias429MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias430Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias430Decoder = 
    Json.Decode.list arcsAlias430MemberDecoder


arcsAlias430MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias430MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias431Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias431Decoder = 
    Json.Decode.list arcsAlias431MemberDecoder


arcsAlias431MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias431MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias432Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias432Decoder = 
    Json.Decode.list arcsAlias432MemberDecoder


arcsAlias432MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias432MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias433Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias433Decoder = 
    Json.Decode.list arcsAlias433MemberDecoder


arcsAlias433MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias433MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias434Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias434Decoder = 
    Json.Decode.list arcsAlias434MemberDecoder


arcsAlias434MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias434MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias435Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias435Decoder = 
    Json.Decode.list arcsAlias435MemberDecoder


arcsAlias435MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias435MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias436Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias436Decoder = 
    Json.Decode.list arcsAlias436MemberDecoder


arcsAlias436MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias436MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias437Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias437Decoder = 
    Json.Decode.list arcsAlias437MemberDecoder


arcsAlias437MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias437MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias438Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias438Decoder = 
    Json.Decode.list arcsAlias438MemberDecoder


arcsAlias438MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias438MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias439Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias439Decoder = 
    Json.Decode.list arcsAlias439MemberDecoder


arcsAlias439MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias439MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias440Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias440Decoder = 
    Json.Decode.list arcsAlias440MemberDecoder


arcsAlias440MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias440MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias441Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias441Decoder = 
    Json.Decode.list arcsAlias441MemberDecoder


arcsAlias441MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias441MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias442Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias442Decoder = 
    Json.Decode.list arcsAlias442MemberDecoder


arcsAlias442MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias442MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias443Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias443Decoder = 
    Json.Decode.list arcsAlias443MemberDecoder


arcsAlias443MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias443MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias444Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias444Decoder = 
    Json.Decode.list arcsAlias444MemberDecoder


arcsAlias444MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias444MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias445Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias445Decoder = 
    Json.Decode.list arcsAlias445MemberDecoder


arcsAlias445MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias445MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias446Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias446Decoder = 
    Json.Decode.list arcsAlias446MemberDecoder


arcsAlias446MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias446MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias447Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias447Decoder = 
    Json.Decode.list arcsAlias447MemberDecoder


arcsAlias447MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias447MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias448Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias448Decoder = 
    Json.Decode.list arcsAlias448MemberDecoder


arcsAlias448MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias448MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias449Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias449Decoder = 
    Json.Decode.list arcsAlias449MemberDecoder


arcsAlias449MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias449MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias450Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias450Decoder = 
    Json.Decode.list arcsAlias450MemberDecoder


arcsAlias450MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias450MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias451Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias451Decoder = 
    Json.Decode.list arcsAlias451MemberDecoder


arcsAlias451MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias451MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias452Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias452Decoder = 
    Json.Decode.list arcsAlias452MemberDecoder


arcsAlias452MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias452MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias453Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias453Decoder = 
    Json.Decode.list arcsAlias453MemberDecoder


arcsAlias453MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias453MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias454Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias454Decoder = 
    Json.Decode.list arcsAlias454MemberDecoder


arcsAlias454MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias454MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias455Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias455Decoder = 
    Json.Decode.list arcsAlias455MemberDecoder


arcsAlias455MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias455MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias456Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias456Decoder = 
    Json.Decode.list arcsAlias456MemberDecoder


arcsAlias456MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias456MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias457Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias457Decoder = 
    Json.Decode.list arcsAlias457MemberDecoder


arcsAlias457MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias457MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias458Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias458Decoder = 
    Json.Decode.list arcsAlias458MemberDecoder


arcsAlias458MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias458MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias459Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias459Decoder = 
    Json.Decode.list arcsAlias459MemberDecoder


arcsAlias459MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias459MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias460Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias460Decoder = 
    Json.Decode.list arcsAlias460MemberDecoder


arcsAlias460MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias460MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias461Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias461Decoder = 
    Json.Decode.list arcsAlias461MemberDecoder


arcsAlias461MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias461MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias462Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias462Decoder = 
    Json.Decode.list arcsAlias462MemberDecoder


arcsAlias462MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias462MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias463Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias463Decoder = 
    Json.Decode.list arcsAlias463MemberDecoder


arcsAlias463MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias463MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias464Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias464Decoder = 
    Json.Decode.list arcsAlias464MemberDecoder


arcsAlias464MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias464MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias465Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias465Decoder = 
    Json.Decode.list arcsAlias465MemberDecoder


arcsAlias465MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias465MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias466Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias466Decoder = 
    Json.Decode.list arcsAlias466MemberDecoder


arcsAlias466MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias466MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias467Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias467Decoder = 
    Json.Decode.list arcsAlias467MemberDecoder


arcsAlias467MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias467MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias468Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias468Decoder = 
    Json.Decode.list arcsAlias468MemberDecoder


arcsAlias468MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias468MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias469Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias469Decoder = 
    Json.Decode.list arcsAlias469MemberDecoder


arcsAlias469MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias469MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias470Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias470Decoder = 
    Json.Decode.list arcsAlias470MemberDecoder


arcsAlias470MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias470MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias471Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias471Decoder = 
    Json.Decode.list arcsAlias471MemberDecoder


arcsAlias471MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias471MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias472Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias472Decoder = 
    Json.Decode.list arcsAlias472MemberDecoder


arcsAlias472MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias472MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias473Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias473Decoder = 
    Json.Decode.list arcsAlias473MemberDecoder


arcsAlias473MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias473MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias474Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias474Decoder = 
    Json.Decode.list arcsAlias474MemberDecoder


arcsAlias474MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias474MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias475Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias475Decoder = 
    Json.Decode.list arcsAlias475MemberDecoder


arcsAlias475MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias475MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias476Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias476Decoder = 
    Json.Decode.list arcsAlias476MemberDecoder


arcsAlias476MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias476MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias477Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias477Decoder = 
    Json.Decode.list arcsAlias477MemberDecoder


arcsAlias477MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias477MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias478Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias478Decoder = 
    Json.Decode.list arcsAlias478MemberDecoder


arcsAlias478MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias478MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias479Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias479Decoder = 
    Json.Decode.list arcsAlias479MemberDecoder


arcsAlias479MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias479MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias480Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias480Decoder = 
    Json.Decode.list arcsAlias480MemberDecoder


arcsAlias480MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias480MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias481Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias481Decoder = 
    Json.Decode.list arcsAlias481MemberDecoder


arcsAlias481MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias481MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias482Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias482Decoder = 
    Json.Decode.list arcsAlias482MemberDecoder


arcsAlias482MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias482MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias483Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias483Decoder = 
    Json.Decode.list arcsAlias483MemberDecoder


arcsAlias483MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias483MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias484Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias484Decoder = 
    Json.Decode.list arcsAlias484MemberDecoder


arcsAlias484MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias484MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias485Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias485Decoder = 
    Json.Decode.list arcsAlias485MemberDecoder


arcsAlias485MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias485MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias486Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias486Decoder = 
    Json.Decode.list arcsAlias486MemberDecoder


arcsAlias486MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias486MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias487Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias487Decoder = 
    Json.Decode.list arcsAlias487MemberDecoder


arcsAlias487MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias487MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias488Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias488Decoder = 
    Json.Decode.list arcsAlias488MemberDecoder


arcsAlias488MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias488MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias489Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias489Decoder = 
    Json.Decode.list arcsAlias489MemberDecoder


arcsAlias489MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias489MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias490Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias490Decoder = 
    Json.Decode.list arcsAlias490MemberDecoder


arcsAlias490MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias490MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias491Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias491Decoder = 
    Json.Decode.list arcsAlias491MemberDecoder


arcsAlias491MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias491MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias492Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias492Decoder = 
    Json.Decode.list arcsAlias492MemberDecoder


arcsAlias492MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias492MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias493Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias493Decoder = 
    Json.Decode.list arcsAlias493MemberDecoder


arcsAlias493MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias493MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias494Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias494Decoder = 
    Json.Decode.list arcsAlias494MemberDecoder


arcsAlias494MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias494MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias495Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias495Decoder = 
    Json.Decode.list arcsAlias495MemberDecoder


arcsAlias495MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias495MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias496Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias496Decoder = 
    Json.Decode.list arcsAlias496MemberDecoder


arcsAlias496MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias496MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias497Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias497Decoder = 
    Json.Decode.list arcsAlias497MemberDecoder


arcsAlias497MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias497MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias498Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias498Decoder = 
    Json.Decode.list arcsAlias498MemberDecoder


arcsAlias498MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias498MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias499Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias499Decoder = 
    Json.Decode.list arcsAlias499MemberDecoder


arcsAlias499MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias499MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias500Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias500Decoder = 
    Json.Decode.list arcsAlias500MemberDecoder


arcsAlias500MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias500MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias501Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias501Decoder = 
    Json.Decode.list arcsAlias501MemberDecoder


arcsAlias501MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias501MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias502Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias502Decoder = 
    Json.Decode.list arcsAlias502MemberDecoder


arcsAlias502MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias502MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias503Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias503Decoder = 
    Json.Decode.list arcsAlias503MemberDecoder


arcsAlias503MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias503MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias504Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias504Decoder = 
    Json.Decode.list arcsAlias504MemberDecoder


arcsAlias504MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias504MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias505Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias505Decoder = 
    Json.Decode.list arcsAlias505MemberDecoder


arcsAlias505MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias505MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias506Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias506Decoder = 
    Json.Decode.list arcsAlias506MemberDecoder


arcsAlias506MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias506MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias507Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias507Decoder = 
    Json.Decode.list arcsAlias507MemberDecoder


arcsAlias507MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias507MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias508Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias508Decoder = 
    Json.Decode.list arcsAlias508MemberDecoder


arcsAlias508MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias508MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias509Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias509Decoder = 
    Json.Decode.list arcsAlias509MemberDecoder


arcsAlias509MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias509MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias510Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias510Decoder = 
    Json.Decode.list arcsAlias510MemberDecoder


arcsAlias510MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias510MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias511Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias511Decoder = 
    Json.Decode.list arcsAlias511MemberDecoder


arcsAlias511MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias511MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias512Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias512Decoder = 
    Json.Decode.list arcsAlias512MemberDecoder


arcsAlias512MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias512MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias513Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias513Decoder = 
    Json.Decode.list arcsAlias513MemberDecoder


arcsAlias513MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias513MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias514Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias514Decoder = 
    Json.Decode.list arcsAlias514MemberDecoder


arcsAlias514MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias514MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias515Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias515Decoder = 
    Json.Decode.list arcsAlias515MemberDecoder


arcsAlias515MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias515MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias516Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias516Decoder = 
    Json.Decode.list arcsAlias516MemberDecoder


arcsAlias516MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias516MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias517Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias517Decoder = 
    Json.Decode.list arcsAlias517MemberDecoder


arcsAlias517MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias517MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias518Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias518Decoder = 
    Json.Decode.list arcsAlias518MemberDecoder


arcsAlias518MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias518MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias519Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias519Decoder = 
    Json.Decode.list arcsAlias519MemberDecoder


arcsAlias519MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias519MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias520Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias520Decoder = 
    Json.Decode.list arcsAlias520MemberDecoder


arcsAlias520MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias520MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias521Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias521Decoder = 
    Json.Decode.list arcsAlias521MemberDecoder


arcsAlias521MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias521MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias522Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias522Decoder = 
    Json.Decode.list arcsAlias522MemberDecoder


arcsAlias522MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias522MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias523Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias523Decoder = 
    Json.Decode.list arcsAlias523MemberDecoder


arcsAlias523MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias523MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias524Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias524Decoder = 
    Json.Decode.list arcsAlias524MemberDecoder


arcsAlias524MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias524MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias525Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias525Decoder = 
    Json.Decode.list arcsAlias525MemberDecoder


arcsAlias525MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias525MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias526Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias526Decoder = 
    Json.Decode.list arcsAlias526MemberDecoder


arcsAlias526MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias526MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias527Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias527Decoder = 
    Json.Decode.list arcsAlias527MemberDecoder


arcsAlias527MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias527MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias528Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias528Decoder = 
    Json.Decode.list arcsAlias528MemberDecoder


arcsAlias528MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias528MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias529Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias529Decoder = 
    Json.Decode.list arcsAlias529MemberDecoder


arcsAlias529MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias529MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias530Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias530Decoder = 
    Json.Decode.list arcsAlias530MemberDecoder


arcsAlias530MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias530MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias531Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias531Decoder = 
    Json.Decode.list arcsAlias531MemberDecoder


arcsAlias531MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias531MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias532Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias532Decoder = 
    Json.Decode.list arcsAlias532MemberDecoder


arcsAlias532MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias532MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias533Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias533Decoder = 
    Json.Decode.list arcsAlias533MemberDecoder


arcsAlias533MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias533MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias534Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias534Decoder = 
    Json.Decode.list arcsAlias534MemberDecoder


arcsAlias534MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias534MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias535Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias535Decoder = 
    Json.Decode.list arcsAlias535MemberDecoder


arcsAlias535MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias535MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias536Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias536Decoder = 
    Json.Decode.list arcsAlias536MemberDecoder


arcsAlias536MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias536MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias537Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias537Decoder = 
    Json.Decode.list arcsAlias537MemberDecoder


arcsAlias537MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias537MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias538Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias538Decoder = 
    Json.Decode.list arcsAlias538MemberDecoder


arcsAlias538MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias538MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias539Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias539Decoder = 
    Json.Decode.list arcsAlias539MemberDecoder


arcsAlias539MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias539MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias540Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias540Decoder = 
    Json.Decode.list arcsAlias540MemberDecoder


arcsAlias540MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias540MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias541Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias541Decoder = 
    Json.Decode.list arcsAlias541MemberDecoder


arcsAlias541MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias541MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias542Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias542Decoder = 
    Json.Decode.list arcsAlias542MemberDecoder


arcsAlias542MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias542MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias543Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias543Decoder = 
    Json.Decode.list arcsAlias543MemberDecoder


arcsAlias543MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias543MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias544Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias544Decoder = 
    Json.Decode.list arcsAlias544MemberDecoder


arcsAlias544MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias544MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias545Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias545Decoder = 
    Json.Decode.list arcsAlias545MemberDecoder


arcsAlias545MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias545MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias546Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias546Decoder = 
    Json.Decode.list arcsAlias546MemberDecoder


arcsAlias546MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias546MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias547Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias547Decoder = 
    Json.Decode.list arcsAlias547MemberDecoder


arcsAlias547MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias547MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias548Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias548Decoder = 
    Json.Decode.list arcsAlias548MemberDecoder


arcsAlias548MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias548MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias549Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias549Decoder = 
    Json.Decode.list arcsAlias549MemberDecoder


arcsAlias549MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias549MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias550Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias550Decoder = 
    Json.Decode.list arcsAlias550MemberDecoder


arcsAlias550MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias550MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias551Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias551Decoder = 
    Json.Decode.list arcsAlias551MemberDecoder


arcsAlias551MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias551MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias552Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias552Decoder = 
    Json.Decode.list arcsAlias552MemberDecoder


arcsAlias552MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias552MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias553Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias553Decoder = 
    Json.Decode.list arcsAlias553MemberDecoder


arcsAlias553MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias553MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias554Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias554Decoder = 
    Json.Decode.list arcsAlias554MemberDecoder


arcsAlias554MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias554MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias555Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias555Decoder = 
    Json.Decode.list arcsAlias555MemberDecoder


arcsAlias555MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias555MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias556Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias556Decoder = 
    Json.Decode.list arcsAlias556MemberDecoder


arcsAlias556MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias556MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias557Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias557Decoder = 
    Json.Decode.list arcsAlias557MemberDecoder


arcsAlias557MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias557MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias558Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias558Decoder = 
    Json.Decode.list arcsAlias558MemberDecoder


arcsAlias558MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias558MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias559Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias559Decoder = 
    Json.Decode.list arcsAlias559MemberDecoder


arcsAlias559MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias559MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias560Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias560Decoder = 
    Json.Decode.list arcsAlias560MemberDecoder


arcsAlias560MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias560MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias561Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias561Decoder = 
    Json.Decode.list arcsAlias561MemberDecoder


arcsAlias561MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias561MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias562Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias562Decoder = 
    Json.Decode.list arcsAlias562MemberDecoder


arcsAlias562MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias562MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias563Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias563Decoder = 
    Json.Decode.list arcsAlias563MemberDecoder


arcsAlias563MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias563MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias564Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias564Decoder = 
    Json.Decode.list arcsAlias564MemberDecoder


arcsAlias564MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias564MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias565Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias565Decoder = 
    Json.Decode.list arcsAlias565MemberDecoder


arcsAlias565MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias565MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias566Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias566Decoder = 
    Json.Decode.list arcsAlias566MemberDecoder


arcsAlias566MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias566MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias567Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias567Decoder = 
    Json.Decode.list arcsAlias567MemberDecoder


arcsAlias567MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias567MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias568Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias568Decoder = 
    Json.Decode.list arcsAlias568MemberDecoder


arcsAlias568MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias568MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias569Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias569Decoder = 
    Json.Decode.list arcsAlias569MemberDecoder


arcsAlias569MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias569MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias570Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias570Decoder = 
    Json.Decode.list arcsAlias570MemberDecoder


arcsAlias570MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias570MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias571Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias571Decoder = 
    Json.Decode.list arcsAlias571MemberDecoder


arcsAlias571MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias571MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias572Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias572Decoder = 
    Json.Decode.list arcsAlias572MemberDecoder


arcsAlias572MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias572MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias573Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias573Decoder = 
    Json.Decode.list arcsAlias573MemberDecoder


arcsAlias573MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias573MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias574Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias574Decoder = 
    Json.Decode.list arcsAlias574MemberDecoder


arcsAlias574MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias574MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias575Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias575Decoder = 
    Json.Decode.list arcsAlias575MemberDecoder


arcsAlias575MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias575MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias576Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias576Decoder = 
    Json.Decode.list arcsAlias576MemberDecoder


arcsAlias576MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias576MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias577Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias577Decoder = 
    Json.Decode.list arcsAlias577MemberDecoder


arcsAlias577MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias577MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias578Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias578Decoder = 
    Json.Decode.list arcsAlias578MemberDecoder


arcsAlias578MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias578MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias579Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias579Decoder = 
    Json.Decode.list arcsAlias579MemberDecoder


arcsAlias579MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias579MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias580Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias580Decoder = 
    Json.Decode.list arcsAlias580MemberDecoder


arcsAlias580MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias580MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias581Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias581Decoder = 
    Json.Decode.list arcsAlias581MemberDecoder


arcsAlias581MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias581MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias582Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias582Decoder = 
    Json.Decode.list arcsAlias582MemberDecoder


arcsAlias582MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias582MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias583Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias583Decoder = 
    Json.Decode.list arcsAlias583MemberDecoder


arcsAlias583MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias583MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias584Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias584Decoder = 
    Json.Decode.list arcsAlias584MemberDecoder


arcsAlias584MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias584MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias585Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias585Decoder = 
    Json.Decode.list arcsAlias585MemberDecoder


arcsAlias585MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias585MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias586Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias586Decoder = 
    Json.Decode.list arcsAlias586MemberDecoder


arcsAlias586MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias586MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias587Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias587Decoder = 
    Json.Decode.list arcsAlias587MemberDecoder


arcsAlias587MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias587MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias588Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias588Decoder = 
    Json.Decode.list arcsAlias588MemberDecoder


arcsAlias588MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias588MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias589Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias589Decoder = 
    Json.Decode.list arcsAlias589MemberDecoder


arcsAlias589MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias589MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias590Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias590Decoder = 
    Json.Decode.list arcsAlias590MemberDecoder


arcsAlias590MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias590MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias591Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias591Decoder = 
    Json.Decode.list arcsAlias591MemberDecoder


arcsAlias591MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias591MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias592Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias592Decoder = 
    Json.Decode.list arcsAlias592MemberDecoder


arcsAlias592MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias592MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias593Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias593Decoder = 
    Json.Decode.list arcsAlias593MemberDecoder


arcsAlias593MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias593MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias594Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias594Decoder = 
    Json.Decode.list arcsAlias594MemberDecoder


arcsAlias594MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias594MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias595Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias595Decoder = 
    Json.Decode.list arcsAlias595MemberDecoder


arcsAlias595MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias595MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias596Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias596Decoder = 
    Json.Decode.list arcsAlias596MemberDecoder


arcsAlias596MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias596MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias597Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias597Decoder = 
    Json.Decode.list arcsAlias597MemberDecoder


arcsAlias597MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias597MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias598Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias598Decoder = 
    Json.Decode.list arcsAlias598MemberDecoder


arcsAlias598MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias598MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias599Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias599Decoder = 
    Json.Decode.list arcsAlias599MemberDecoder


arcsAlias599MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias599MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias600Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias600Decoder = 
    Json.Decode.list arcsAlias600MemberDecoder


arcsAlias600MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias600MemberDecoder = 
    Json.Decode.list Json.Decode.int


arcsAlias601Decoder : Json.Decode.Decoder (List (List Int))
arcsAlias601Decoder = 
    Json.Decode.list arcsAlias601MemberDecoder


arcsAlias601MemberDecoder : Json.Decode.Decoder (List Int)
arcsAlias601MemberDecoder = 
    Json.Decode.list Json.Decode.int


bboxDecoder : Json.Decode.Decoder (List Bbox)
bboxDecoder = 
    Json.Decode.list bboxMemberDecoder


bboxMemberDecoder : Json.Decode.Decoder Bbox
bboxMemberDecoder = 
    Json.Decode.oneOf
        [ Json.Decode.map Bbox0 <| Json.Decode.float
        , Json.Decode.map Bbox1 <| Json.Decode.int
        ]


transformDecoder : Json.Decode.Decoder Transform
transformDecoder = 
    Json.Decode.map2 Transform
        (Json.Decode.field "scale" <| Json.Decode.list Json.Decode.float)
        (Json.Decode.field "translate" transformTranslateDecoder)


transformTranslateDecoder : Json.Decode.Decoder (List TransformTranslate)
transformTranslateDecoder = 
    Json.Decode.list transformTranslateMemberDecoder


transformTranslateMemberDecoder : Json.Decode.Decoder TransformTranslate
transformTranslateMemberDecoder = 
    Json.Decode.oneOf
        [ Json.Decode.map TransformTranslate0 <| Json.Decode.float
        , Json.Decode.map TransformTranslate1 <| Json.Decode.int
        ]


encodedWorldMap : WorldMap -> Json.Encode.Value
encodedWorldMap worldMap = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) worldMap.arcs )
        , ( "bbox", encodedBbox worldMap.bbox )
        , ( "objects", encodedObjects worldMap.objects )
        , ( "transform", encodedTransform worldMap.transform )
        , ( "type", Json.Encode.string worldMap.type_ )
        ]


encodedObjects : Objects -> Json.Encode.Value
encodedObjects objects = 
    Json.Encode.object
        [ ( "countries", encodedObjectsCountries objects.countries )
        , ( "land", encodedObjectsLand objects.land )
        ]


encodedObjectsCountries : ObjectsCountries -> Json.Encode.Value
encodedObjectsCountries objectsCountries = 
    Json.Encode.object
        [ ( "geometries", encodedObjectsCountriesGeometries objectsCountries.geometries )
        , ( "type", Json.Encode.string objectsCountries.type_ )
        ]


encodedObjectsCountriesGeometries : List ObjectsCountriesGeometries -> Json.Encode.Value
encodedObjectsCountriesGeometries =
    Json.Encode.list encodedObjectsCountriesGeometriesMember


encodedObjectsCountriesGeometriesMember : ObjectsCountriesGeometries -> Json.Encode.Value
encodedObjectsCountriesGeometriesMember objectsCountriesGeometries =
    case objectsCountriesGeometries of
        ObjectsCountriesGeometries0 value ->
            encodedObjectsCountriesGeometriesAlias100 value

        ObjectsCountriesGeometries1 value ->
            encodedObjectsCountriesGeometriesAlias101 value

        ObjectsCountriesGeometries2 value ->
            encodedObjectsCountriesGeometriesAlias102 value

        ObjectsCountriesGeometries3 value ->
            encodedObjectsCountriesGeometriesAlias103 value

        ObjectsCountriesGeometries4 value ->
            encodedObjectsCountriesGeometriesAlias104 value

        ObjectsCountriesGeometries5 value ->
            encodedObjectsCountriesGeometriesAlias105 value

        ObjectsCountriesGeometries6 value ->
            encodedObjectsCountriesGeometriesAlias106 value

        ObjectsCountriesGeometries7 value ->
            encodedObjectsCountriesGeometriesAlias107 value

        ObjectsCountriesGeometries8 value ->
            encodedObjectsCountriesGeometriesAlias108 value

        ObjectsCountriesGeometries9 value ->
            encodedObjectsCountriesGeometriesAlias109 value

        ObjectsCountriesGeometries10 value ->
            encodedObjectsCountriesGeometriesAlias110 value

        ObjectsCountriesGeometries11 value ->
            encodedObjectsCountriesGeometriesAlias111 value

        ObjectsCountriesGeometries12 value ->
            encodedObjectsCountriesGeometriesAlias112 value

        ObjectsCountriesGeometries13 value ->
            encodedObjectsCountriesGeometriesAlias113 value

        ObjectsCountriesGeometries14 value ->
            encodedObjectsCountriesGeometriesAlias114 value

        ObjectsCountriesGeometries15 value ->
            encodedObjectsCountriesGeometriesAlias115 value

        ObjectsCountriesGeometries16 value ->
            encodedObjectsCountriesGeometriesAlias116 value

        ObjectsCountriesGeometries17 value ->
            encodedObjectsCountriesGeometriesAlias117 value

        ObjectsCountriesGeometries18 value ->
            encodedObjectsCountriesGeometriesAlias118 value

        ObjectsCountriesGeometries19 value ->
            encodedObjectsCountriesGeometriesAlias119 value

        ObjectsCountriesGeometries20 value ->
            encodedObjectsCountriesGeometriesAlias120 value

        ObjectsCountriesGeometries21 value ->
            encodedObjectsCountriesGeometriesAlias121 value

        ObjectsCountriesGeometries22 value ->
            encodedObjectsCountriesGeometriesAlias122 value

        ObjectsCountriesGeometries23 value ->
            encodedObjectsCountriesGeometriesAlias123 value

        ObjectsCountriesGeometries24 value ->
            encodedObjectsCountriesGeometriesAlias124 value

        ObjectsCountriesGeometries25 value ->
            encodedObjectsCountriesGeometriesAlias125 value

        ObjectsCountriesGeometries26 value ->
            encodedObjectsCountriesGeometriesAlias126 value

        ObjectsCountriesGeometries27 value ->
            encodedObjectsCountriesGeometriesAlias127 value

        ObjectsCountriesGeometries28 value ->
            encodedObjectsCountriesGeometriesAlias128 value

        ObjectsCountriesGeometries29 value ->
            encodedObjectsCountriesGeometriesAlias129 value

        ObjectsCountriesGeometries30 value ->
            encodedObjectsCountriesGeometriesAlias130 value

        ObjectsCountriesGeometries31 value ->
            encodedObjectsCountriesGeometriesAlias131 value

        ObjectsCountriesGeometries32 value ->
            encodedObjectsCountriesGeometriesAlias132 value

        ObjectsCountriesGeometries33 value ->
            encodedObjectsCountriesGeometriesAlias133 value

        ObjectsCountriesGeometries34 value ->
            encodedObjectsCountriesGeometriesAlias134 value

        ObjectsCountriesGeometries35 value ->
            encodedObjectsCountriesGeometriesAlias135 value

        ObjectsCountriesGeometries36 value ->
            encodedObjectsCountriesGeometriesAlias136 value

        ObjectsCountriesGeometries37 value ->
            encodedObjectsCountriesGeometriesAlias137 value

        ObjectsCountriesGeometries38 value ->
            encodedObjectsCountriesGeometriesAlias138 value

        ObjectsCountriesGeometries39 value ->
            encodedObjectsCountriesGeometriesAlias139 value

        ObjectsCountriesGeometries40 value ->
            encodedObjectsCountriesGeometriesAlias140 value

        ObjectsCountriesGeometries41 value ->
            encodedObjectsCountriesGeometriesAlias141 value

        ObjectsCountriesGeometries42 value ->
            encodedObjectsCountriesGeometriesAlias142 value

        ObjectsCountriesGeometries43 value ->
            encodedObjectsCountriesGeometriesAlias143 value

        ObjectsCountriesGeometries44 value ->
            encodedObjectsCountriesGeometriesAlias144 value

        ObjectsCountriesGeometries45 value ->
            encodedObjectsCountriesGeometriesAlias145 value

        ObjectsCountriesGeometries46 value ->
            encodedObjectsCountriesGeometriesAlias146 value

        ObjectsCountriesGeometries47 value ->
            encodedObjectsCountriesGeometriesAlias147 value

        ObjectsCountriesGeometries48 value ->
            encodedObjectsCountriesGeometriesAlias148 value

        ObjectsCountriesGeometries49 value ->
            encodedObjectsCountriesGeometriesAlias149 value

        ObjectsCountriesGeometries50 value ->
            encodedObjectsCountriesGeometriesAlias150 value

        ObjectsCountriesGeometries51 value ->
            encodedObjectsCountriesGeometriesAlias151 value

        ObjectsCountriesGeometries52 value ->
            encodedObjectsCountriesGeometriesAlias152 value

        ObjectsCountriesGeometries53 value ->
            encodedObjectsCountriesGeometriesAlias153 value

        ObjectsCountriesGeometries54 value ->
            encodedObjectsCountriesGeometriesAlias154 value

        ObjectsCountriesGeometries55 value ->
            encodedObjectsCountriesGeometriesAlias155 value

        ObjectsCountriesGeometries56 value ->
            encodedObjectsCountriesGeometriesAlias156 value

        ObjectsCountriesGeometries57 value ->
            encodedObjectsCountriesGeometriesAlias157 value

        ObjectsCountriesGeometries58 value ->
            encodedObjectsCountriesGeometriesAlias158 value

        ObjectsCountriesGeometries59 value ->
            encodedObjectsCountriesGeometriesAlias159 value

        ObjectsCountriesGeometries60 value ->
            encodedObjectsCountriesGeometriesAlias160 value

        ObjectsCountriesGeometries61 value ->
            encodedObjectsCountriesGeometriesAlias161 value

        ObjectsCountriesGeometries62 value ->
            encodedObjectsCountriesGeometriesAlias162 value

        ObjectsCountriesGeometries63 value ->
            encodedObjectsCountriesGeometriesAlias163 value

        ObjectsCountriesGeometries64 value ->
            encodedObjectsCountriesGeometriesAlias164 value

        ObjectsCountriesGeometries65 value ->
            encodedObjectsCountriesGeometriesAlias165 value

        ObjectsCountriesGeometries66 value ->
            encodedObjectsCountriesGeometriesAlias166 value

        ObjectsCountriesGeometries67 value ->
            encodedObjectsCountriesGeometriesAlias167 value

        ObjectsCountriesGeometries68 value ->
            encodedObjectsCountriesGeometriesAlias168 value

        ObjectsCountriesGeometries69 value ->
            encodedObjectsCountriesGeometriesAlias169 value

        ObjectsCountriesGeometries70 value ->
            encodedObjectsCountriesGeometriesAlias17 value

        ObjectsCountriesGeometries71 value ->
            encodedObjectsCountriesGeometriesAlias170 value

        ObjectsCountriesGeometries72 value ->
            encodedObjectsCountriesGeometriesAlias171 value

        ObjectsCountriesGeometries73 value ->
            encodedObjectsCountriesGeometriesAlias172 value

        ObjectsCountriesGeometries74 value ->
            encodedObjectsCountriesGeometriesAlias173 value

        ObjectsCountriesGeometries75 value ->
            encodedObjectsCountriesGeometriesAlias174 value

        ObjectsCountriesGeometries76 value ->
            encodedObjectsCountriesGeometriesAlias175 value

        ObjectsCountriesGeometries77 value ->
            encodedObjectsCountriesGeometriesAlias176 value

        ObjectsCountriesGeometries78 value ->
            encodedObjectsCountriesGeometriesAlias18 value

        ObjectsCountriesGeometries79 value ->
            encodedObjectsCountriesGeometriesAlias19 value

        ObjectsCountriesGeometries80 value ->
            encodedObjectsCountriesGeometriesAlias20 value

        ObjectsCountriesGeometries81 value ->
            encodedObjectsCountriesGeometriesAlias21 value

        ObjectsCountriesGeometries82 value ->
            encodedObjectsCountriesGeometriesAlias22 value

        ObjectsCountriesGeometries83 value ->
            encodedObjectsCountriesGeometriesAlias23 value

        ObjectsCountriesGeometries84 value ->
            encodedObjectsCountriesGeometriesAlias24 value

        ObjectsCountriesGeometries85 value ->
            encodedObjectsCountriesGeometriesAlias25 value

        ObjectsCountriesGeometries86 value ->
            encodedObjectsCountriesGeometriesAlias26 value

        ObjectsCountriesGeometries87 value ->
            encodedObjectsCountriesGeometriesAlias27 value

        ObjectsCountriesGeometries88 value ->
            encodedObjectsCountriesGeometriesAlias28 value

        ObjectsCountriesGeometries89 value ->
            encodedObjectsCountriesGeometriesAlias29 value

        ObjectsCountriesGeometries90 value ->
            encodedObjectsCountriesGeometriesAlias30 value

        ObjectsCountriesGeometries91 value ->
            encodedObjectsCountriesGeometriesAlias31 value

        ObjectsCountriesGeometries92 value ->
            encodedObjectsCountriesGeometriesAlias32 value

        ObjectsCountriesGeometries93 value ->
            encodedObjectsCountriesGeometriesAlias33 value

        ObjectsCountriesGeometries94 value ->
            encodedObjectsCountriesGeometriesAlias34 value

        ObjectsCountriesGeometries95 value ->
            encodedObjectsCountriesGeometriesAlias35 value

        ObjectsCountriesGeometries96 value ->
            encodedObjectsCountriesGeometriesAlias36 value

        ObjectsCountriesGeometries97 value ->
            encodedObjectsCountriesGeometriesAlias37 value

        ObjectsCountriesGeometries98 value ->
            encodedObjectsCountriesGeometriesAlias38 value

        ObjectsCountriesGeometries99 value ->
            encodedObjectsCountriesGeometriesAlias39 value

        ObjectsCountriesGeometries100 value ->
            encodedObjectsCountriesGeometriesAlias40 value

        ObjectsCountriesGeometries101 value ->
            encodedObjectsCountriesGeometriesAlias41 value

        ObjectsCountriesGeometries102 value ->
            encodedObjectsCountriesGeometriesAlias42 value

        ObjectsCountriesGeometries103 value ->
            encodedObjectsCountriesGeometriesAlias43 value

        ObjectsCountriesGeometries104 value ->
            encodedObjectsCountriesGeometriesAlias44 value

        ObjectsCountriesGeometries105 value ->
            encodedObjectsCountriesGeometriesAlias45 value

        ObjectsCountriesGeometries106 value ->
            encodedObjectsCountriesGeometriesAlias46 value

        ObjectsCountriesGeometries107 value ->
            encodedObjectsCountriesGeometriesAlias47 value

        ObjectsCountriesGeometries108 value ->
            encodedObjectsCountriesGeometriesAlias48 value

        ObjectsCountriesGeometries109 value ->
            encodedObjectsCountriesGeometriesAlias49 value

        ObjectsCountriesGeometries110 value ->
            encodedObjectsCountriesGeometriesAlias50 value

        ObjectsCountriesGeometries111 value ->
            encodedObjectsCountriesGeometriesAlias51 value

        ObjectsCountriesGeometries112 value ->
            encodedObjectsCountriesGeometriesAlias52 value

        ObjectsCountriesGeometries113 value ->
            encodedObjectsCountriesGeometriesAlias53 value

        ObjectsCountriesGeometries114 value ->
            encodedObjectsCountriesGeometriesAlias54 value

        ObjectsCountriesGeometries115 value ->
            encodedObjectsCountriesGeometriesAlias55 value

        ObjectsCountriesGeometries116 value ->
            encodedObjectsCountriesGeometriesAlias56 value

        ObjectsCountriesGeometries117 value ->
            encodedObjectsCountriesGeometriesAlias57 value

        ObjectsCountriesGeometries118 value ->
            encodedObjectsCountriesGeometriesAlias58 value

        ObjectsCountriesGeometries119 value ->
            encodedObjectsCountriesGeometriesAlias59 value

        ObjectsCountriesGeometries120 value ->
            encodedObjectsCountriesGeometriesAlias60 value

        ObjectsCountriesGeometries121 value ->
            encodedObjectsCountriesGeometriesAlias61 value

        ObjectsCountriesGeometries122 value ->
            encodedObjectsCountriesGeometriesAlias62 value

        ObjectsCountriesGeometries123 value ->
            encodedObjectsCountriesGeometriesAlias63 value

        ObjectsCountriesGeometries124 value ->
            encodedObjectsCountriesGeometriesAlias64 value

        ObjectsCountriesGeometries125 value ->
            encodedObjectsCountriesGeometriesAlias65 value

        ObjectsCountriesGeometries126 value ->
            encodedObjectsCountriesGeometriesAlias66 value

        ObjectsCountriesGeometries127 value ->
            encodedObjectsCountriesGeometriesAlias67 value

        ObjectsCountriesGeometries128 value ->
            encodedObjectsCountriesGeometriesAlias68 value

        ObjectsCountriesGeometries129 value ->
            encodedObjectsCountriesGeometriesAlias69 value

        ObjectsCountriesGeometries130 value ->
            encodedObjectsCountriesGeometriesAlias70 value

        ObjectsCountriesGeometries131 value ->
            encodedObjectsCountriesGeometriesAlias71 value

        ObjectsCountriesGeometries132 value ->
            encodedObjectsCountriesGeometriesAlias72 value

        ObjectsCountriesGeometries133 value ->
            encodedObjectsCountriesGeometriesAlias73 value

        ObjectsCountriesGeometries134 value ->
            encodedObjectsCountriesGeometriesAlias74 value

        ObjectsCountriesGeometries135 value ->
            encodedObjectsCountriesGeometriesAlias75 value

        ObjectsCountriesGeometries136 value ->
            encodedObjectsCountriesGeometriesAlias76 value

        ObjectsCountriesGeometries137 value ->
            encodedObjectsCountriesGeometriesAlias77 value

        ObjectsCountriesGeometries138 value ->
            encodedObjectsCountriesGeometriesAlias78 value

        ObjectsCountriesGeometries139 value ->
            encodedObjectsCountriesGeometriesAlias79 value

        ObjectsCountriesGeometries140 value ->
            encodedObjectsCountriesGeometriesAlias80 value

        ObjectsCountriesGeometries141 value ->
            encodedObjectsCountriesGeometriesAlias81 value

        ObjectsCountriesGeometries142 value ->
            encodedObjectsCountriesGeometriesAlias82 value

        ObjectsCountriesGeometries143 value ->
            encodedObjectsCountriesGeometriesAlias83 value

        ObjectsCountriesGeometries144 value ->
            encodedObjectsCountriesGeometriesAlias84 value

        ObjectsCountriesGeometries145 value ->
            encodedObjectsCountriesGeometriesAlias85 value

        ObjectsCountriesGeometries146 value ->
            encodedObjectsCountriesGeometriesAlias86 value

        ObjectsCountriesGeometries147 value ->
            encodedObjectsCountriesGeometriesAlias87 value

        ObjectsCountriesGeometries148 value ->
            encodedObjectsCountriesGeometriesAlias88 value

        ObjectsCountriesGeometries149 value ->
            encodedObjectsCountriesGeometriesAlias89 value

        ObjectsCountriesGeometries150 value ->
            encodedObjectsCountriesGeometriesAlias90 value

        ObjectsCountriesGeometries151 value ->
            encodedObjectsCountriesGeometriesAlias91 value

        ObjectsCountriesGeometries152 value ->
            encodedObjectsCountriesGeometriesAlias92 value

        ObjectsCountriesGeometries153 value ->
            encodedObjectsCountriesGeometriesAlias93 value

        ObjectsCountriesGeometries154 value ->
            encodedObjectsCountriesGeometriesAlias94 value

        ObjectsCountriesGeometries155 value ->
            encodedObjectsCountriesGeometriesAlias95 value

        ObjectsCountriesGeometries156 value ->
            encodedObjectsCountriesGeometriesAlias96 value

        ObjectsCountriesGeometries157 value ->
            encodedObjectsCountriesGeometriesAlias97 value

        ObjectsCountriesGeometries158 value ->
            encodedObjectsCountriesGeometriesAlias98 value

        ObjectsCountriesGeometries159 value ->
            encodedObjectsCountriesGeometriesAlias99 value

        ObjectsCountriesGeometries160 value ->
            encodedObjectsCountriesGeometriesChunk value

        ObjectsCountriesGeometries161 value ->
            encodedObjectsCountriesGeometriesConstituent value

        ObjectsCountriesGeometries162 value ->
            encodedObjectsCountriesGeometriesDoodad value

        ObjectsCountriesGeometries163 value ->
            encodedObjectsCountriesGeometriesEntity value

        ObjectsCountriesGeometries164 value ->
            encodedObjectsCountriesGeometriesGadget value

        ObjectsCountriesGeometries165 value ->
            encodedObjectsCountriesGeometriesGizmo value

        ObjectsCountriesGeometries166 value ->
            encodedObjectsCountriesGeometriesInstance value

        ObjectsCountriesGeometries167 value ->
            encodedObjectsCountriesGeometriesItem value

        ObjectsCountriesGeometries168 value ->
            encodedObjectsCountriesGeometriesObject value

        ObjectsCountriesGeometries169 value ->
            encodedObjectsCountriesGeometriesPart value

        ObjectsCountriesGeometries170 value ->
            encodedObjectsCountriesGeometriesPiece value

        ObjectsCountriesGeometries171 value ->
            encodedObjectsCountriesGeometriesSpecimen value

        ObjectsCountriesGeometries172 value ->
            encodedObjectsCountriesGeometriesThing value

        ObjectsCountriesGeometries173 value ->
            encodedObjectsCountriesGeometriesThingamajig value

        ObjectsCountriesGeometries174 value ->
            encodedObjectsCountriesGeometriesThingy value

        ObjectsCountriesGeometries175 value ->
            encodedObjectsCountriesGeometriesWhatsit value

        ObjectsCountriesGeometries176 value ->
            encodedObjectsCountriesGeometriesWidget value


encodedObjectsCountriesGeometriesObject : ObjectsCountriesGeometriesObject -> Json.Encode.Value
encodedObjectsCountriesGeometriesObject objectsCountriesGeometriesObject = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesObject.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesObject.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesObject.type_ )
        ]


encodedObjectsCountriesGeometriesObjectArcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesObjectArcs =
    Json.Encode.list encodedObjectsCountriesGeometriesObjectArcsMember


encodedObjectsCountriesGeometriesObjectArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesObjectArcsMember objectsCountriesGeometriesObjectArcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesObjectArcs


encodedObjectsCountriesGeometriesItem : ObjectsCountriesGeometriesItem -> Json.Encode.Value
encodedObjectsCountriesGeometriesItem objectsCountriesGeometriesItem = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesItem.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesItem.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesItem.type_ )
        ]


encodedObjectsCountriesGeometriesItemArcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesItemArcs =
    Json.Encode.list encodedObjectsCountriesGeometriesItemArcsMember


encodedObjectsCountriesGeometriesItemArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesItemArcsMember objectsCountriesGeometriesItemArcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesItemArcs


encodedObjectsCountriesGeometriesItemArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesItemArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesItemArcsObjectMember


encodedObjectsCountriesGeometriesItemArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesItemArcsObjectMember objectsCountriesGeometriesItemArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesItemArcsObject


encodedObjectsCountriesGeometriesItemArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesItemArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesItemArcsItemMember


encodedObjectsCountriesGeometriesItemArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesItemArcsItemMember objectsCountriesGeometriesItemArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesItemArcsItem


encodedObjectsCountriesGeometriesEntity : ObjectsCountriesGeometriesEntity -> Json.Encode.Value
encodedObjectsCountriesGeometriesEntity objectsCountriesGeometriesEntity = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesEntity.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesEntity.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesEntity.type_ )
        ]


encodedObjectsCountriesGeometriesEntityArcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesEntityArcs =
    Json.Encode.list encodedObjectsCountriesGeometriesEntityArcsMember


encodedObjectsCountriesGeometriesEntityArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesEntityArcsMember objectsCountriesGeometriesEntityArcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesEntityArcs


encodedObjectsCountriesGeometriesThing : ObjectsCountriesGeometriesThing -> Json.Encode.Value
encodedObjectsCountriesGeometriesThing objectsCountriesGeometriesThing = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesThing.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesThing.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesThing.type_ )
        ]


encodedObjectsCountriesGeometriesThingArcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesThingArcs =
    Json.Encode.list encodedObjectsCountriesGeometriesThingArcsMember


encodedObjectsCountriesGeometriesThingArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesThingArcsMember objectsCountriesGeometriesThingArcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesThingArcs


encodedObjectsCountriesGeometriesInstance : ObjectsCountriesGeometriesInstance -> Json.Encode.Value
encodedObjectsCountriesGeometriesInstance objectsCountriesGeometriesInstance = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesInstance.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesInstance.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesInstance.type_ )
        ]


encodedObjectsCountriesGeometriesInstanceArcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesInstanceArcs =
    Json.Encode.list encodedObjectsCountriesGeometriesInstanceArcsMember


encodedObjectsCountriesGeometriesInstanceArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesInstanceArcsMember objectsCountriesGeometriesInstanceArcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesInstanceArcs


encodedObjectsCountriesGeometriesInstanceArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesInstanceArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesInstanceArcsObjectMember


encodedObjectsCountriesGeometriesInstanceArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesInstanceArcsObjectMember objectsCountriesGeometriesInstanceArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesInstanceArcsObject


encodedObjectsCountriesGeometriesInstanceArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesInstanceArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesInstanceArcsItemMember


encodedObjectsCountriesGeometriesInstanceArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesInstanceArcsItemMember objectsCountriesGeometriesInstanceArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesInstanceArcsItem


encodedObjectsCountriesGeometriesConstituent : ObjectsCountriesGeometriesConstituent -> Json.Encode.Value
encodedObjectsCountriesGeometriesConstituent objectsCountriesGeometriesConstituent = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesConstituent.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesConstituent.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesConstituent.type_ )
        ]


encodedObjectsCountriesGeometriesConstituentArcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesConstituentArcs =
    Json.Encode.list encodedObjectsCountriesGeometriesConstituentArcsMember


encodedObjectsCountriesGeometriesConstituentArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesConstituentArcsMember objectsCountriesGeometriesConstituentArcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesConstituentArcs


encodedObjectsCountriesGeometriesSpecimen : ObjectsCountriesGeometriesSpecimen -> Json.Encode.Value
encodedObjectsCountriesGeometriesSpecimen objectsCountriesGeometriesSpecimen = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesSpecimen.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesSpecimen.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesSpecimen.type_ )
        ]


encodedObjectsCountriesGeometriesSpecimenArcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesSpecimenArcs =
    Json.Encode.list encodedObjectsCountriesGeometriesSpecimenArcsMember


encodedObjectsCountriesGeometriesSpecimenArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesSpecimenArcsMember objectsCountriesGeometriesSpecimenArcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesSpecimenArcs


encodedObjectsCountriesGeometriesSpecimenArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesSpecimenArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesSpecimenArcsObjectMember


encodedObjectsCountriesGeometriesSpecimenArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesSpecimenArcsObjectMember objectsCountriesGeometriesSpecimenArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesSpecimenArcsObject


encodedObjectsCountriesGeometriesSpecimenArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesSpecimenArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesSpecimenArcsItemMember


encodedObjectsCountriesGeometriesSpecimenArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesSpecimenArcsItemMember objectsCountriesGeometriesSpecimenArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesSpecimenArcsItem


encodedObjectsCountriesGeometriesSpecimenArcsEntity : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesSpecimenArcsEntity =
    Json.Encode.list encodedObjectsCountriesGeometriesSpecimenArcsEntityMember


encodedObjectsCountriesGeometriesSpecimenArcsEntityMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesSpecimenArcsEntityMember objectsCountriesGeometriesSpecimenArcsEntity =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesSpecimenArcsEntity


encodedObjectsCountriesGeometriesSpecimenArcsThing : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesSpecimenArcsThing =
    Json.Encode.list encodedObjectsCountriesGeometriesSpecimenArcsThingMember


encodedObjectsCountriesGeometriesSpecimenArcsThingMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesSpecimenArcsThingMember objectsCountriesGeometriesSpecimenArcsThing =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesSpecimenArcsThing


encodedObjectsCountriesGeometriesSpecimenArcsInstance : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesSpecimenArcsInstance =
    Json.Encode.list encodedObjectsCountriesGeometriesSpecimenArcsInstanceMember


encodedObjectsCountriesGeometriesSpecimenArcsInstanceMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesSpecimenArcsInstanceMember objectsCountriesGeometriesSpecimenArcsInstance =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesSpecimenArcsInstance


encodedObjectsCountriesGeometriesSpecimenArcsConstituent : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesSpecimenArcsConstituent =
    Json.Encode.list encodedObjectsCountriesGeometriesSpecimenArcsConstituentMember


encodedObjectsCountriesGeometriesSpecimenArcsConstituentMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesSpecimenArcsConstituentMember objectsCountriesGeometriesSpecimenArcsConstituent =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesSpecimenArcsConstituent


encodedObjectsCountriesGeometriesSpecimenArcsSpecimen : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesSpecimenArcsSpecimen =
    Json.Encode.list encodedObjectsCountriesGeometriesSpecimenArcsSpecimenMember


encodedObjectsCountriesGeometriesSpecimenArcsSpecimenMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesSpecimenArcsSpecimenMember objectsCountriesGeometriesSpecimenArcsSpecimen =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesSpecimenArcsSpecimen


encodedObjectsCountriesGeometriesSpecimenArcsGadget : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesSpecimenArcsGadget =
    Json.Encode.list encodedObjectsCountriesGeometriesSpecimenArcsGadgetMember


encodedObjectsCountriesGeometriesSpecimenArcsGadgetMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesSpecimenArcsGadgetMember objectsCountriesGeometriesSpecimenArcsGadget =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesSpecimenArcsGadget


encodedObjectsCountriesGeometriesGadget : ObjectsCountriesGeometriesGadget -> Json.Encode.Value
encodedObjectsCountriesGeometriesGadget objectsCountriesGeometriesGadget = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesGadget.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesGadget.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesGadget.type_ )
        ]


encodedObjectsCountriesGeometriesGadgetArcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesGadgetArcs =
    Json.Encode.list encodedObjectsCountriesGeometriesGadgetArcsMember


encodedObjectsCountriesGeometriesGadgetArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesGadgetArcsMember objectsCountriesGeometriesGadgetArcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesGadgetArcs


encodedObjectsCountriesGeometriesWidget : ObjectsCountriesGeometriesWidget -> Json.Encode.Value
encodedObjectsCountriesGeometriesWidget objectsCountriesGeometriesWidget = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesWidget.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesWidget.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesWidget.type_ )
        ]


encodedObjectsCountriesGeometriesWidgetArcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesWidgetArcs =
    Json.Encode.list encodedObjectsCountriesGeometriesWidgetArcsMember


encodedObjectsCountriesGeometriesWidgetArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesWidgetArcsMember objectsCountriesGeometriesWidgetArcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesWidgetArcs


encodedObjectsCountriesGeometriesWidgetArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesWidgetArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesWidgetArcsObjectMember


encodedObjectsCountriesGeometriesWidgetArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesWidgetArcsObjectMember objectsCountriesGeometriesWidgetArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesWidgetArcsObject


encodedObjectsCountriesGeometriesWidgetArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesWidgetArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesWidgetArcsItemMember


encodedObjectsCountriesGeometriesWidgetArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesWidgetArcsItemMember objectsCountriesGeometriesWidgetArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesWidgetArcsItem


encodedObjectsCountriesGeometriesGizmo : ObjectsCountriesGeometriesGizmo -> Json.Encode.Value
encodedObjectsCountriesGeometriesGizmo objectsCountriesGeometriesGizmo = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesGizmo.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesGizmo.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesGizmo.type_ )
        ]


encodedObjectsCountriesGeometriesGizmoArcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesGizmoArcs =
    Json.Encode.list encodedObjectsCountriesGeometriesGizmoArcsMember


encodedObjectsCountriesGeometriesGizmoArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesGizmoArcsMember objectsCountriesGeometriesGizmoArcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesGizmoArcs


encodedObjectsCountriesGeometriesPart : ObjectsCountriesGeometriesPart -> Json.Encode.Value
encodedObjectsCountriesGeometriesPart objectsCountriesGeometriesPart = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesPart.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesPart.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesPart.type_ )
        ]


encodedObjectsCountriesGeometriesPartArcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesPartArcs =
    Json.Encode.list encodedObjectsCountriesGeometriesPartArcsMember


encodedObjectsCountriesGeometriesPartArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesPartArcsMember objectsCountriesGeometriesPartArcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesPartArcs


encodedObjectsCountriesGeometriesPartArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesPartArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesPartArcsObjectMember


encodedObjectsCountriesGeometriesPartArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesPartArcsObjectMember objectsCountriesGeometriesPartArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesPartArcsObject


encodedObjectsCountriesGeometriesPartArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesPartArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesPartArcsItemMember


encodedObjectsCountriesGeometriesPartArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesPartArcsItemMember objectsCountriesGeometriesPartArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesPartArcsItem


encodedObjectsCountriesGeometriesChunk : ObjectsCountriesGeometriesChunk -> Json.Encode.Value
encodedObjectsCountriesGeometriesChunk objectsCountriesGeometriesChunk = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesChunk.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesChunk.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesChunk.type_ )
        ]


encodedObjectsCountriesGeometriesChunkArcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesChunkArcs =
    Json.Encode.list encodedObjectsCountriesGeometriesChunkArcsMember


encodedObjectsCountriesGeometriesChunkArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesChunkArcsMember objectsCountriesGeometriesChunkArcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesChunkArcs


encodedObjectsCountriesGeometriesPiece : ObjectsCountriesGeometriesPiece -> Json.Encode.Value
encodedObjectsCountriesGeometriesPiece objectsCountriesGeometriesPiece = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesPiece.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesPiece.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesPiece.type_ )
        ]


encodedObjectsCountriesGeometriesPieceArcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesPieceArcs =
    Json.Encode.list encodedObjectsCountriesGeometriesPieceArcsMember


encodedObjectsCountriesGeometriesPieceArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesPieceArcsMember objectsCountriesGeometriesPieceArcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesPieceArcs


encodedObjectsCountriesGeometriesThingy : ObjectsCountriesGeometriesThingy -> Json.Encode.Value
encodedObjectsCountriesGeometriesThingy objectsCountriesGeometriesThingy = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesThingy.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesThingy.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesThingy.type_ )
        ]


encodedObjectsCountriesGeometriesThingyArcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesThingyArcs =
    Json.Encode.list encodedObjectsCountriesGeometriesThingyArcsMember


encodedObjectsCountriesGeometriesThingyArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesThingyArcsMember objectsCountriesGeometriesThingyArcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesThingyArcs


encodedObjectsCountriesGeometriesThingamajig : ObjectsCountriesGeometriesThingamajig -> Json.Encode.Value
encodedObjectsCountriesGeometriesThingamajig objectsCountriesGeometriesThingamajig = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesThingamajig.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesThingamajig.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesThingamajig.type_ )
        ]


encodedObjectsCountriesGeometriesThingamajigArcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesThingamajigArcs =
    Json.Encode.list encodedObjectsCountriesGeometriesThingamajigArcsMember


encodedObjectsCountriesGeometriesThingamajigArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesThingamajigArcsMember objectsCountriesGeometriesThingamajigArcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesThingamajigArcs


encodedObjectsCountriesGeometriesWhatsit : ObjectsCountriesGeometriesWhatsit -> Json.Encode.Value
encodedObjectsCountriesGeometriesWhatsit objectsCountriesGeometriesWhatsit = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesWhatsit.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesWhatsit.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesWhatsit.type_ )
        ]


encodedObjectsCountriesGeometriesWhatsitArcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesWhatsitArcs =
    Json.Encode.list encodedObjectsCountriesGeometriesWhatsitArcsMember


encodedObjectsCountriesGeometriesWhatsitArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesWhatsitArcsMember objectsCountriesGeometriesWhatsitArcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesWhatsitArcs


encodedObjectsCountriesGeometriesDoodad : ObjectsCountriesGeometriesDoodad -> Json.Encode.Value
encodedObjectsCountriesGeometriesDoodad objectsCountriesGeometriesDoodad = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesDoodad.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesDoodad.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesDoodad.type_ )
        ]


encodedObjectsCountriesGeometriesDoodadArcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesDoodadArcs =
    Json.Encode.list encodedObjectsCountriesGeometriesDoodadArcsMember


encodedObjectsCountriesGeometriesDoodadArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesDoodadArcsMember objectsCountriesGeometriesDoodadArcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesDoodadArcs


encodedObjectsCountriesGeometriesAlias17 : ObjectsCountriesGeometriesAlias17 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias17 objectsCountriesGeometriesAlias17 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesAlias17.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias17.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias17.type_ )
        ]


encodedObjectsCountriesGeometriesAlias17Arcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias17Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias17ArcsMember


encodedObjectsCountriesGeometriesAlias17ArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias17ArcsMember objectsCountriesGeometriesAlias17Arcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias17Arcs


encodedObjectsCountriesGeometriesAlias17ArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias17ArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias17ArcsObjectMember


encodedObjectsCountriesGeometriesAlias17ArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias17ArcsObjectMember objectsCountriesGeometriesAlias17ArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias17ArcsObject


encodedObjectsCountriesGeometriesAlias17ArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias17ArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias17ArcsItemMember


encodedObjectsCountriesGeometriesAlias17ArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias17ArcsItemMember objectsCountriesGeometriesAlias17ArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias17ArcsItem


encodedObjectsCountriesGeometriesAlias17ArcsEntity : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias17ArcsEntity =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias17ArcsEntityMember


encodedObjectsCountriesGeometriesAlias17ArcsEntityMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias17ArcsEntityMember objectsCountriesGeometriesAlias17ArcsEntity =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias17ArcsEntity


encodedObjectsCountriesGeometriesAlias18 : ObjectsCountriesGeometriesAlias18 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias18 objectsCountriesGeometriesAlias18 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias18.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias18.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias18.type_ )
        ]


encodedObjectsCountriesGeometriesAlias18Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias18Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias18ArcsMember


encodedObjectsCountriesGeometriesAlias18ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias18ArcsMember objectsCountriesGeometriesAlias18Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias18Arcs


encodedObjectsCountriesGeometriesAlias19 : ObjectsCountriesGeometriesAlias19 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias19 objectsCountriesGeometriesAlias19 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias19.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias19.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias19.type_ )
        ]


encodedObjectsCountriesGeometriesAlias19Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias19Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias19ArcsMember


encodedObjectsCountriesGeometriesAlias19ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias19ArcsMember objectsCountriesGeometriesAlias19Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias19Arcs


encodedObjectsCountriesGeometriesAlias20 : ObjectsCountriesGeometriesAlias20 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias20 objectsCountriesGeometriesAlias20 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias20.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias20.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias20.type_ )
        ]


encodedObjectsCountriesGeometriesAlias20Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias20Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias20ArcsMember


encodedObjectsCountriesGeometriesAlias20ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias20ArcsMember objectsCountriesGeometriesAlias20Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias20Arcs


encodedObjectsCountriesGeometriesAlias21 : ObjectsCountriesGeometriesAlias21 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias21 objectsCountriesGeometriesAlias21 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias21.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias21.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias21.type_ )
        ]


encodedObjectsCountriesGeometriesAlias21Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias21Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias21ArcsMember


encodedObjectsCountriesGeometriesAlias21ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias21ArcsMember objectsCountriesGeometriesAlias21Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias21Arcs


encodedObjectsCountriesGeometriesAlias22 : ObjectsCountriesGeometriesAlias22 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias22 objectsCountriesGeometriesAlias22 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias22.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias22.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias22.type_ )
        ]


encodedObjectsCountriesGeometriesAlias22Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias22Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias22ArcsMember


encodedObjectsCountriesGeometriesAlias22ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias22ArcsMember objectsCountriesGeometriesAlias22Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias22Arcs


encodedObjectsCountriesGeometriesAlias23 : ObjectsCountriesGeometriesAlias23 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias23 objectsCountriesGeometriesAlias23 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias23.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias23.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias23.type_ )
        ]


encodedObjectsCountriesGeometriesAlias23Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias23Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias23ArcsMember


encodedObjectsCountriesGeometriesAlias23ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias23ArcsMember objectsCountriesGeometriesAlias23Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias23Arcs


encodedObjectsCountriesGeometriesAlias24 : ObjectsCountriesGeometriesAlias24 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias24 objectsCountriesGeometriesAlias24 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias24.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias24.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias24.type_ )
        ]


encodedObjectsCountriesGeometriesAlias24Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias24Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias24ArcsMember


encodedObjectsCountriesGeometriesAlias24ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias24ArcsMember objectsCountriesGeometriesAlias24Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias24Arcs


encodedObjectsCountriesGeometriesAlias25 : ObjectsCountriesGeometriesAlias25 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias25 objectsCountriesGeometriesAlias25 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias25.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias25.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias25.type_ )
        ]


encodedObjectsCountriesGeometriesAlias25Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias25Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias25ArcsMember


encodedObjectsCountriesGeometriesAlias25ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias25ArcsMember objectsCountriesGeometriesAlias25Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias25Arcs


encodedObjectsCountriesGeometriesAlias26 : ObjectsCountriesGeometriesAlias26 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias26 objectsCountriesGeometriesAlias26 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias26.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias26.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias26.type_ )
        ]


encodedObjectsCountriesGeometriesAlias26Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias26Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias26ArcsMember


encodedObjectsCountriesGeometriesAlias26ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias26ArcsMember objectsCountriesGeometriesAlias26Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias26Arcs


encodedObjectsCountriesGeometriesAlias27 : ObjectsCountriesGeometriesAlias27 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27 objectsCountriesGeometriesAlias27 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesAlias27.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias27.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias27.type_ )
        ]


encodedObjectsCountriesGeometriesAlias27Arcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsMember


encodedObjectsCountriesGeometriesAlias27ArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsMember objectsCountriesGeometriesAlias27Arcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias27Arcs


encodedObjectsCountriesGeometriesAlias27ArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsObjectMember


encodedObjectsCountriesGeometriesAlias27ArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsObjectMember objectsCountriesGeometriesAlias27ArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsObject


encodedObjectsCountriesGeometriesAlias27ArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsItemMember


encodedObjectsCountriesGeometriesAlias27ArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsItemMember objectsCountriesGeometriesAlias27ArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsItem


encodedObjectsCountriesGeometriesAlias27ArcsEntity : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsEntity =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsEntityMember


encodedObjectsCountriesGeometriesAlias27ArcsEntityMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsEntityMember objectsCountriesGeometriesAlias27ArcsEntity =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsEntity


encodedObjectsCountriesGeometriesAlias27ArcsThing : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsThing =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsThingMember


encodedObjectsCountriesGeometriesAlias27ArcsThingMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsThingMember objectsCountriesGeometriesAlias27ArcsThing =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsThing


encodedObjectsCountriesGeometriesAlias27ArcsInstance : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsInstance =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsInstanceMember


encodedObjectsCountriesGeometriesAlias27ArcsInstanceMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsInstanceMember objectsCountriesGeometriesAlias27ArcsInstance =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsInstance


encodedObjectsCountriesGeometriesAlias27ArcsConstituent : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsConstituent =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsConstituentMember


encodedObjectsCountriesGeometriesAlias27ArcsConstituentMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsConstituentMember objectsCountriesGeometriesAlias27ArcsConstituent =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsConstituent


encodedObjectsCountriesGeometriesAlias27ArcsSpecimen : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsSpecimen =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsSpecimenMember


encodedObjectsCountriesGeometriesAlias27ArcsSpecimenMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsSpecimenMember objectsCountriesGeometriesAlias27ArcsSpecimen =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsSpecimen


encodedObjectsCountriesGeometriesAlias27ArcsGadget : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsGadget =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsGadgetMember


encodedObjectsCountriesGeometriesAlias27ArcsGadgetMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsGadgetMember objectsCountriesGeometriesAlias27ArcsGadget =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsGadget


encodedObjectsCountriesGeometriesAlias27ArcsWidget : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsWidget =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsWidgetMember


encodedObjectsCountriesGeometriesAlias27ArcsWidgetMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsWidgetMember objectsCountriesGeometriesAlias27ArcsWidget =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsWidget


encodedObjectsCountriesGeometriesAlias27ArcsGizmo : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsGizmo =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsGizmoMember


encodedObjectsCountriesGeometriesAlias27ArcsGizmoMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsGizmoMember objectsCountriesGeometriesAlias27ArcsGizmo =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsGizmo


encodedObjectsCountriesGeometriesAlias27ArcsPart : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsPart =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsPartMember


encodedObjectsCountriesGeometriesAlias27ArcsPartMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsPartMember objectsCountriesGeometriesAlias27ArcsPart =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsPart


encodedObjectsCountriesGeometriesAlias27ArcsChunk : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsChunk =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsChunkMember


encodedObjectsCountriesGeometriesAlias27ArcsChunkMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsChunkMember objectsCountriesGeometriesAlias27ArcsChunk =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsChunk


encodedObjectsCountriesGeometriesAlias27ArcsPiece : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsPiece =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsPieceMember


encodedObjectsCountriesGeometriesAlias27ArcsPieceMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsPieceMember objectsCountriesGeometriesAlias27ArcsPiece =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsPiece


encodedObjectsCountriesGeometriesAlias27ArcsThingy : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsThingy =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsThingyMember


encodedObjectsCountriesGeometriesAlias27ArcsThingyMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsThingyMember objectsCountriesGeometriesAlias27ArcsThingy =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsThingy


encodedObjectsCountriesGeometriesAlias27ArcsThingamajig : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsThingamajig =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsThingamajigMember


encodedObjectsCountriesGeometriesAlias27ArcsThingamajigMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsThingamajigMember objectsCountriesGeometriesAlias27ArcsThingamajig =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsThingamajig


encodedObjectsCountriesGeometriesAlias27ArcsWhatsit : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsWhatsit =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsWhatsitMember


encodedObjectsCountriesGeometriesAlias27ArcsWhatsitMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsWhatsitMember objectsCountriesGeometriesAlias27ArcsWhatsit =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsWhatsit


encodedObjectsCountriesGeometriesAlias27ArcsDoodad : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsDoodad =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsDoodadMember


encodedObjectsCountriesGeometriesAlias27ArcsDoodadMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsDoodadMember objectsCountriesGeometriesAlias27ArcsDoodad =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsDoodad


encodedObjectsCountriesGeometriesAlias27ArcsAlias17 : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsAlias17 =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsAlias17Member


encodedObjectsCountriesGeometriesAlias27ArcsAlias17Member : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsAlias17Member objectsCountriesGeometriesAlias27ArcsAlias17 =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsAlias17


encodedObjectsCountriesGeometriesAlias27ArcsAlias18 : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsAlias18 =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsAlias18Member


encodedObjectsCountriesGeometriesAlias27ArcsAlias18Member : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsAlias18Member objectsCountriesGeometriesAlias27ArcsAlias18 =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsAlias18


encodedObjectsCountriesGeometriesAlias27ArcsAlias19 : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsAlias19 =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsAlias19Member


encodedObjectsCountriesGeometriesAlias27ArcsAlias19Member : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsAlias19Member objectsCountriesGeometriesAlias27ArcsAlias19 =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsAlias19


encodedObjectsCountriesGeometriesAlias27ArcsAlias20 : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsAlias20 =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsAlias20Member


encodedObjectsCountriesGeometriesAlias27ArcsAlias20Member : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsAlias20Member objectsCountriesGeometriesAlias27ArcsAlias20 =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsAlias20


encodedObjectsCountriesGeometriesAlias27ArcsAlias21 : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsAlias21 =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsAlias21Member


encodedObjectsCountriesGeometriesAlias27ArcsAlias21Member : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsAlias21Member objectsCountriesGeometriesAlias27ArcsAlias21 =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsAlias21


encodedObjectsCountriesGeometriesAlias27ArcsAlias22 : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsAlias22 =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsAlias22Member


encodedObjectsCountriesGeometriesAlias27ArcsAlias22Member : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsAlias22Member objectsCountriesGeometriesAlias27ArcsAlias22 =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsAlias22


encodedObjectsCountriesGeometriesAlias27ArcsAlias23 : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsAlias23 =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsAlias23Member


encodedObjectsCountriesGeometriesAlias27ArcsAlias23Member : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsAlias23Member objectsCountriesGeometriesAlias27ArcsAlias23 =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsAlias23


encodedObjectsCountriesGeometriesAlias27ArcsAlias24 : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsAlias24 =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsAlias24Member


encodedObjectsCountriesGeometriesAlias27ArcsAlias24Member : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsAlias24Member objectsCountriesGeometriesAlias27ArcsAlias24 =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsAlias24


encodedObjectsCountriesGeometriesAlias27ArcsAlias25 : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsAlias25 =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsAlias25Member


encodedObjectsCountriesGeometriesAlias27ArcsAlias25Member : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsAlias25Member objectsCountriesGeometriesAlias27ArcsAlias25 =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsAlias25


encodedObjectsCountriesGeometriesAlias27ArcsAlias26 : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsAlias26 =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsAlias26Member


encodedObjectsCountriesGeometriesAlias27ArcsAlias26Member : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsAlias26Member objectsCountriesGeometriesAlias27ArcsAlias26 =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsAlias26


encodedObjectsCountriesGeometriesAlias27ArcsAlias27 : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsAlias27 =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsAlias27Member


encodedObjectsCountriesGeometriesAlias27ArcsAlias27Member : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsAlias27Member objectsCountriesGeometriesAlias27ArcsAlias27 =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsAlias27


encodedObjectsCountriesGeometriesAlias27ArcsAlias28 : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsAlias28 =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsAlias28Member


encodedObjectsCountriesGeometriesAlias27ArcsAlias28Member : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsAlias28Member objectsCountriesGeometriesAlias27ArcsAlias28 =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsAlias28


encodedObjectsCountriesGeometriesAlias27ArcsAlias29 : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsAlias29 =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias27ArcsAlias29Member


encodedObjectsCountriesGeometriesAlias27ArcsAlias29Member : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias27ArcsAlias29Member objectsCountriesGeometriesAlias27ArcsAlias29 =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias27ArcsAlias29


encodedObjectsCountriesGeometriesAlias28 : ObjectsCountriesGeometriesAlias28 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias28 objectsCountriesGeometriesAlias28 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias28.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias28.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias28.type_ )
        ]


encodedObjectsCountriesGeometriesAlias28Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias28Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias28ArcsMember


encodedObjectsCountriesGeometriesAlias28ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias28ArcsMember objectsCountriesGeometriesAlias28Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias28Arcs


encodedObjectsCountriesGeometriesAlias29 : ObjectsCountriesGeometriesAlias29 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias29 objectsCountriesGeometriesAlias29 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesAlias29.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias29.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias29.type_ )
        ]


encodedObjectsCountriesGeometriesAlias29Arcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias29Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias29ArcsMember


encodedObjectsCountriesGeometriesAlias29ArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias29ArcsMember objectsCountriesGeometriesAlias29Arcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias29Arcs


encodedObjectsCountriesGeometriesAlias29ArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias29ArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias29ArcsObjectMember


encodedObjectsCountriesGeometriesAlias29ArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias29ArcsObjectMember objectsCountriesGeometriesAlias29ArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias29ArcsObject


encodedObjectsCountriesGeometriesAlias29ArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias29ArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias29ArcsItemMember


encodedObjectsCountriesGeometriesAlias29ArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias29ArcsItemMember objectsCountriesGeometriesAlias29ArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias29ArcsItem


encodedObjectsCountriesGeometriesAlias30 : ObjectsCountriesGeometriesAlias30 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias30 objectsCountriesGeometriesAlias30 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesAlias30.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias30.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias30.type_ )
        ]


encodedObjectsCountriesGeometriesAlias30Arcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias30Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias30ArcsMember


encodedObjectsCountriesGeometriesAlias30ArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias30ArcsMember objectsCountriesGeometriesAlias30Arcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias30Arcs


encodedObjectsCountriesGeometriesAlias30ArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias30ArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias30ArcsObjectMember


encodedObjectsCountriesGeometriesAlias30ArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias30ArcsObjectMember objectsCountriesGeometriesAlias30ArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias30ArcsObject


encodedObjectsCountriesGeometriesAlias30ArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias30ArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias30ArcsItemMember


encodedObjectsCountriesGeometriesAlias30ArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias30ArcsItemMember objectsCountriesGeometriesAlias30ArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias30ArcsItem


encodedObjectsCountriesGeometriesAlias31 : ObjectsCountriesGeometriesAlias31 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias31 objectsCountriesGeometriesAlias31 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias31.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias31.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias31.type_ )
        ]


encodedObjectsCountriesGeometriesAlias31Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias31Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias31ArcsMember


encodedObjectsCountriesGeometriesAlias31ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias31ArcsMember objectsCountriesGeometriesAlias31Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias31Arcs


encodedObjectsCountriesGeometriesAlias32 : ObjectsCountriesGeometriesAlias32 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias32 objectsCountriesGeometriesAlias32 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias32.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias32.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias32.type_ )
        ]


encodedObjectsCountriesGeometriesAlias32Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias32Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias32ArcsMember


encodedObjectsCountriesGeometriesAlias32ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias32ArcsMember objectsCountriesGeometriesAlias32Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias32Arcs


encodedObjectsCountriesGeometriesAlias33 : ObjectsCountriesGeometriesAlias33 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias33 objectsCountriesGeometriesAlias33 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias33.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias33.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias33.type_ )
        ]


encodedObjectsCountriesGeometriesAlias33Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias33Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias33ArcsMember


encodedObjectsCountriesGeometriesAlias33ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias33ArcsMember objectsCountriesGeometriesAlias33Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias33Arcs


encodedObjectsCountriesGeometriesAlias34 : ObjectsCountriesGeometriesAlias34 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias34 objectsCountriesGeometriesAlias34 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias34.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias34.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias34.type_ )
        ]


encodedObjectsCountriesGeometriesAlias34Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias34Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias34ArcsMember


encodedObjectsCountriesGeometriesAlias34ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias34ArcsMember objectsCountriesGeometriesAlias34Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias34Arcs


encodedObjectsCountriesGeometriesAlias35 : ObjectsCountriesGeometriesAlias35 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias35 objectsCountriesGeometriesAlias35 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias35.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias35.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias35.type_ )
        ]


encodedObjectsCountriesGeometriesAlias35Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias35Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias35ArcsMember


encodedObjectsCountriesGeometriesAlias35ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias35ArcsMember objectsCountriesGeometriesAlias35Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias35Arcs


encodedObjectsCountriesGeometriesAlias36 : ObjectsCountriesGeometriesAlias36 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias36 objectsCountriesGeometriesAlias36 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias36.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias36.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias36.type_ )
        ]


encodedObjectsCountriesGeometriesAlias36Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias36Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias36ArcsMember


encodedObjectsCountriesGeometriesAlias36ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias36ArcsMember objectsCountriesGeometriesAlias36Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias36Arcs


encodedObjectsCountriesGeometriesAlias37 : ObjectsCountriesGeometriesAlias37 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias37 objectsCountriesGeometriesAlias37 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias37.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias37.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias37.type_ )
        ]


encodedObjectsCountriesGeometriesAlias37Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias37Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias37ArcsMember


encodedObjectsCountriesGeometriesAlias37ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias37ArcsMember objectsCountriesGeometriesAlias37Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias37Arcs


encodedObjectsCountriesGeometriesAlias38 : ObjectsCountriesGeometriesAlias38 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias38 objectsCountriesGeometriesAlias38 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias38.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias38.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias38.type_ )
        ]


encodedObjectsCountriesGeometriesAlias38Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias38Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias38ArcsMember


encodedObjectsCountriesGeometriesAlias38ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias38ArcsMember objectsCountriesGeometriesAlias38Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias38Arcs


encodedObjectsCountriesGeometriesAlias39 : ObjectsCountriesGeometriesAlias39 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias39 objectsCountriesGeometriesAlias39 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias39.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias39.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias39.type_ )
        ]


encodedObjectsCountriesGeometriesAlias39Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias39Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias39ArcsMember


encodedObjectsCountriesGeometriesAlias39ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias39ArcsMember objectsCountriesGeometriesAlias39Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias39Arcs


encodedObjectsCountriesGeometriesAlias40 : ObjectsCountriesGeometriesAlias40 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias40 objectsCountriesGeometriesAlias40 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias40.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias40.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias40.type_ )
        ]


encodedObjectsCountriesGeometriesAlias40Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias40Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias40ArcsMember


encodedObjectsCountriesGeometriesAlias40ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias40ArcsMember objectsCountriesGeometriesAlias40Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias40Arcs


encodedObjectsCountriesGeometriesAlias41 : ObjectsCountriesGeometriesAlias41 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias41 objectsCountriesGeometriesAlias41 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias41.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias41.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias41.type_ )
        ]


encodedObjectsCountriesGeometriesAlias41Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias41Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias41ArcsMember


encodedObjectsCountriesGeometriesAlias41ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias41ArcsMember objectsCountriesGeometriesAlias41Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias41Arcs


encodedObjectsCountriesGeometriesAlias42 : ObjectsCountriesGeometriesAlias42 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias42 objectsCountriesGeometriesAlias42 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias42.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias42.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias42.type_ )
        ]


encodedObjectsCountriesGeometriesAlias42Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias42Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias42ArcsMember


encodedObjectsCountriesGeometriesAlias42ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias42ArcsMember objectsCountriesGeometriesAlias42Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias42Arcs


encodedObjectsCountriesGeometriesAlias43 : ObjectsCountriesGeometriesAlias43 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias43 objectsCountriesGeometriesAlias43 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesAlias43.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias43.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias43.type_ )
        ]


encodedObjectsCountriesGeometriesAlias43Arcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias43Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias43ArcsMember


encodedObjectsCountriesGeometriesAlias43ArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias43ArcsMember objectsCountriesGeometriesAlias43Arcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias43Arcs


encodedObjectsCountriesGeometriesAlias43ArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias43ArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias43ArcsObjectMember


encodedObjectsCountriesGeometriesAlias43ArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias43ArcsObjectMember objectsCountriesGeometriesAlias43ArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias43ArcsObject


encodedObjectsCountriesGeometriesAlias43ArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias43ArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias43ArcsItemMember


encodedObjectsCountriesGeometriesAlias43ArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias43ArcsItemMember objectsCountriesGeometriesAlias43ArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias43ArcsItem


encodedObjectsCountriesGeometriesAlias44 : ObjectsCountriesGeometriesAlias44 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias44 objectsCountriesGeometriesAlias44 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias44.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias44.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias44.type_ )
        ]


encodedObjectsCountriesGeometriesAlias44Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias44Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias44ArcsMember


encodedObjectsCountriesGeometriesAlias44ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias44ArcsMember objectsCountriesGeometriesAlias44Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias44Arcs


encodedObjectsCountriesGeometriesAlias45 : ObjectsCountriesGeometriesAlias45 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias45 objectsCountriesGeometriesAlias45 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias45.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias45.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias45.type_ )
        ]


encodedObjectsCountriesGeometriesAlias45Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias45Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias45ArcsMember


encodedObjectsCountriesGeometriesAlias45ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias45ArcsMember objectsCountriesGeometriesAlias45Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias45Arcs


encodedObjectsCountriesGeometriesAlias46 : ObjectsCountriesGeometriesAlias46 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias46 objectsCountriesGeometriesAlias46 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias46.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias46.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias46.type_ )
        ]


encodedObjectsCountriesGeometriesAlias46Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias46Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias46ArcsMember


encodedObjectsCountriesGeometriesAlias46ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias46ArcsMember objectsCountriesGeometriesAlias46Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias46Arcs


encodedObjectsCountriesGeometriesAlias47 : ObjectsCountriesGeometriesAlias47 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias47 objectsCountriesGeometriesAlias47 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias47.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias47.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias47.type_ )
        ]


encodedObjectsCountriesGeometriesAlias47Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias47Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias47ArcsMember


encodedObjectsCountriesGeometriesAlias47ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias47ArcsMember objectsCountriesGeometriesAlias47Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias47Arcs


encodedObjectsCountriesGeometriesAlias48 : ObjectsCountriesGeometriesAlias48 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias48 objectsCountriesGeometriesAlias48 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias48.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias48.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias48.type_ )
        ]


encodedObjectsCountriesGeometriesAlias48Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias48Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias48ArcsMember


encodedObjectsCountriesGeometriesAlias48ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias48ArcsMember objectsCountriesGeometriesAlias48Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias48Arcs


encodedObjectsCountriesGeometriesAlias49 : ObjectsCountriesGeometriesAlias49 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias49 objectsCountriesGeometriesAlias49 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias49.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias49.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias49.type_ )
        ]


encodedObjectsCountriesGeometriesAlias49Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias49Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias49ArcsMember


encodedObjectsCountriesGeometriesAlias49ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias49ArcsMember objectsCountriesGeometriesAlias49Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias49Arcs


encodedObjectsCountriesGeometriesAlias50 : ObjectsCountriesGeometriesAlias50 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias50 objectsCountriesGeometriesAlias50 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias50.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias50.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias50.type_ )
        ]


encodedObjectsCountriesGeometriesAlias50Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias50Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias50ArcsMember


encodedObjectsCountriesGeometriesAlias50ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias50ArcsMember objectsCountriesGeometriesAlias50Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias50Arcs


encodedObjectsCountriesGeometriesAlias51 : ObjectsCountriesGeometriesAlias51 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias51 objectsCountriesGeometriesAlias51 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias51.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias51.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias51.type_ )
        ]


encodedObjectsCountriesGeometriesAlias51Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias51Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias51ArcsMember


encodedObjectsCountriesGeometriesAlias51ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias51ArcsMember objectsCountriesGeometriesAlias51Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias51Arcs


encodedObjectsCountriesGeometriesAlias52 : ObjectsCountriesGeometriesAlias52 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias52 objectsCountriesGeometriesAlias52 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias52.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias52.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias52.type_ )
        ]


encodedObjectsCountriesGeometriesAlias52Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias52Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias52ArcsMember


encodedObjectsCountriesGeometriesAlias52ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias52ArcsMember objectsCountriesGeometriesAlias52Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias52Arcs


encodedObjectsCountriesGeometriesAlias53 : ObjectsCountriesGeometriesAlias53 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias53 objectsCountriesGeometriesAlias53 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesAlias53.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias53.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias53.type_ )
        ]


encodedObjectsCountriesGeometriesAlias53Arcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias53Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias53ArcsMember


encodedObjectsCountriesGeometriesAlias53ArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias53ArcsMember objectsCountriesGeometriesAlias53Arcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias53Arcs


encodedObjectsCountriesGeometriesAlias53ArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias53ArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias53ArcsObjectMember


encodedObjectsCountriesGeometriesAlias53ArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias53ArcsObjectMember objectsCountriesGeometriesAlias53ArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias53ArcsObject


encodedObjectsCountriesGeometriesAlias53ArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias53ArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias53ArcsItemMember


encodedObjectsCountriesGeometriesAlias53ArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias53ArcsItemMember objectsCountriesGeometriesAlias53ArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias53ArcsItem


encodedObjectsCountriesGeometriesAlias54 : ObjectsCountriesGeometriesAlias54 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias54 objectsCountriesGeometriesAlias54 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias54.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias54.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias54.type_ )
        ]


encodedObjectsCountriesGeometriesAlias54Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias54Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias54ArcsMember


encodedObjectsCountriesGeometriesAlias54ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias54ArcsMember objectsCountriesGeometriesAlias54Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias54Arcs


encodedObjectsCountriesGeometriesAlias55 : ObjectsCountriesGeometriesAlias55 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias55 objectsCountriesGeometriesAlias55 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesAlias55.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias55.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias55.type_ )
        ]


encodedObjectsCountriesGeometriesAlias55Arcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias55Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias55ArcsMember


encodedObjectsCountriesGeometriesAlias55ArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias55ArcsMember objectsCountriesGeometriesAlias55Arcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias55Arcs


encodedObjectsCountriesGeometriesAlias55ArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias55ArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias55ArcsObjectMember


encodedObjectsCountriesGeometriesAlias55ArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias55ArcsObjectMember objectsCountriesGeometriesAlias55ArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias55ArcsObject


encodedObjectsCountriesGeometriesAlias55ArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias55ArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias55ArcsItemMember


encodedObjectsCountriesGeometriesAlias55ArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias55ArcsItemMember objectsCountriesGeometriesAlias55ArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias55ArcsItem


encodedObjectsCountriesGeometriesAlias55ArcsEntity : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias55ArcsEntity =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias55ArcsEntityMember


encodedObjectsCountriesGeometriesAlias55ArcsEntityMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias55ArcsEntityMember objectsCountriesGeometriesAlias55ArcsEntity =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias55ArcsEntity


encodedObjectsCountriesGeometriesAlias56 : ObjectsCountriesGeometriesAlias56 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias56 objectsCountriesGeometriesAlias56 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias56.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias56.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias56.type_ )
        ]


encodedObjectsCountriesGeometriesAlias56Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias56Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias56ArcsMember


encodedObjectsCountriesGeometriesAlias56ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias56ArcsMember objectsCountriesGeometriesAlias56Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias56Arcs


encodedObjectsCountriesGeometriesAlias57 : ObjectsCountriesGeometriesAlias57 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias57 objectsCountriesGeometriesAlias57 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesAlias57.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias57.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias57.type_ )
        ]


encodedObjectsCountriesGeometriesAlias57Arcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias57Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias57ArcsMember


encodedObjectsCountriesGeometriesAlias57ArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias57ArcsMember objectsCountriesGeometriesAlias57Arcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias57Arcs


encodedObjectsCountriesGeometriesAlias57ArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias57ArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias57ArcsObjectMember


encodedObjectsCountriesGeometriesAlias57ArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias57ArcsObjectMember objectsCountriesGeometriesAlias57ArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias57ArcsObject


encodedObjectsCountriesGeometriesAlias57ArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias57ArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias57ArcsItemMember


encodedObjectsCountriesGeometriesAlias57ArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias57ArcsItemMember objectsCountriesGeometriesAlias57ArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias57ArcsItem


encodedObjectsCountriesGeometriesAlias58 : ObjectsCountriesGeometriesAlias58 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias58 objectsCountriesGeometriesAlias58 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias58.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias58.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias58.type_ )
        ]


encodedObjectsCountriesGeometriesAlias58Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias58Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias58ArcsMember


encodedObjectsCountriesGeometriesAlias58ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias58ArcsMember objectsCountriesGeometriesAlias58Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias58Arcs


encodedObjectsCountriesGeometriesAlias59 : ObjectsCountriesGeometriesAlias59 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias59 objectsCountriesGeometriesAlias59 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias59.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias59.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias59.type_ )
        ]


encodedObjectsCountriesGeometriesAlias59Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias59Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias59ArcsMember


encodedObjectsCountriesGeometriesAlias59ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias59ArcsMember objectsCountriesGeometriesAlias59Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias59Arcs


encodedObjectsCountriesGeometriesAlias60 : ObjectsCountriesGeometriesAlias60 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias60 objectsCountriesGeometriesAlias60 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias60.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias60.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias60.type_ )
        ]


encodedObjectsCountriesGeometriesAlias60Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias60Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias60ArcsMember


encodedObjectsCountriesGeometriesAlias60ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias60ArcsMember objectsCountriesGeometriesAlias60Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias60Arcs


encodedObjectsCountriesGeometriesAlias61 : ObjectsCountriesGeometriesAlias61 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias61 objectsCountriesGeometriesAlias61 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias61.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias61.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias61.type_ )
        ]


encodedObjectsCountriesGeometriesAlias61Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias61Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias61ArcsMember


encodedObjectsCountriesGeometriesAlias61ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias61ArcsMember objectsCountriesGeometriesAlias61Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias61Arcs


encodedObjectsCountriesGeometriesAlias62 : ObjectsCountriesGeometriesAlias62 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias62 objectsCountriesGeometriesAlias62 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias62.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias62.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias62.type_ )
        ]


encodedObjectsCountriesGeometriesAlias62Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias62Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias62ArcsMember


encodedObjectsCountriesGeometriesAlias62ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias62ArcsMember objectsCountriesGeometriesAlias62Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias62Arcs


encodedObjectsCountriesGeometriesAlias63 : ObjectsCountriesGeometriesAlias63 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias63 objectsCountriesGeometriesAlias63 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias63.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias63.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias63.type_ )
        ]


encodedObjectsCountriesGeometriesAlias63Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias63Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias63ArcsMember


encodedObjectsCountriesGeometriesAlias63ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias63ArcsMember objectsCountriesGeometriesAlias63Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias63Arcs


encodedObjectsCountriesGeometriesAlias64 : ObjectsCountriesGeometriesAlias64 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias64 objectsCountriesGeometriesAlias64 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesAlias64.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias64.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias64.type_ )
        ]


encodedObjectsCountriesGeometriesAlias64Arcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias64Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias64ArcsMember


encodedObjectsCountriesGeometriesAlias64ArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias64ArcsMember objectsCountriesGeometriesAlias64Arcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias64Arcs


encodedObjectsCountriesGeometriesAlias64ArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias64ArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias64ArcsObjectMember


encodedObjectsCountriesGeometriesAlias64ArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias64ArcsObjectMember objectsCountriesGeometriesAlias64ArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias64ArcsObject


encodedObjectsCountriesGeometriesAlias64ArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias64ArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias64ArcsItemMember


encodedObjectsCountriesGeometriesAlias64ArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias64ArcsItemMember objectsCountriesGeometriesAlias64ArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias64ArcsItem


encodedObjectsCountriesGeometriesAlias65 : ObjectsCountriesGeometriesAlias65 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias65 objectsCountriesGeometriesAlias65 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias65.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias65.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias65.type_ )
        ]


encodedObjectsCountriesGeometriesAlias65Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias65Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias65ArcsMember


encodedObjectsCountriesGeometriesAlias65ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias65ArcsMember objectsCountriesGeometriesAlias65Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias65Arcs


encodedObjectsCountriesGeometriesAlias66 : ObjectsCountriesGeometriesAlias66 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias66 objectsCountriesGeometriesAlias66 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias66.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias66.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias66.type_ )
        ]


encodedObjectsCountriesGeometriesAlias66Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias66Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias66ArcsMember


encodedObjectsCountriesGeometriesAlias66ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias66ArcsMember objectsCountriesGeometriesAlias66Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias66Arcs


encodedObjectsCountriesGeometriesAlias67 : ObjectsCountriesGeometriesAlias67 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias67 objectsCountriesGeometriesAlias67 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias67.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias67.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias67.type_ )
        ]


encodedObjectsCountriesGeometriesAlias67Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias67Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias67ArcsMember


encodedObjectsCountriesGeometriesAlias67ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias67ArcsMember objectsCountriesGeometriesAlias67Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias67Arcs


encodedObjectsCountriesGeometriesAlias68 : ObjectsCountriesGeometriesAlias68 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias68 objectsCountriesGeometriesAlias68 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias68.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias68.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias68.type_ )
        ]


encodedObjectsCountriesGeometriesAlias68Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias68Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias68ArcsMember


encodedObjectsCountriesGeometriesAlias68ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias68ArcsMember objectsCountriesGeometriesAlias68Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias68Arcs


encodedObjectsCountriesGeometriesAlias69 : ObjectsCountriesGeometriesAlias69 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias69 objectsCountriesGeometriesAlias69 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias69.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias69.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias69.type_ )
        ]


encodedObjectsCountriesGeometriesAlias69Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias69Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias69ArcsMember


encodedObjectsCountriesGeometriesAlias69ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias69ArcsMember objectsCountriesGeometriesAlias69Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias69Arcs


encodedObjectsCountriesGeometriesAlias70 : ObjectsCountriesGeometriesAlias70 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias70 objectsCountriesGeometriesAlias70 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias70.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias70.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias70.type_ )
        ]


encodedObjectsCountriesGeometriesAlias70Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias70Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias70ArcsMember


encodedObjectsCountriesGeometriesAlias70ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias70ArcsMember objectsCountriesGeometriesAlias70Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias70Arcs


encodedObjectsCountriesGeometriesAlias71 : ObjectsCountriesGeometriesAlias71 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias71 objectsCountriesGeometriesAlias71 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias71.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias71.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias71.type_ )
        ]


encodedObjectsCountriesGeometriesAlias71Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias71Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias71ArcsMember


encodedObjectsCountriesGeometriesAlias71ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias71ArcsMember objectsCountriesGeometriesAlias71Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias71Arcs


encodedObjectsCountriesGeometriesAlias72 : ObjectsCountriesGeometriesAlias72 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72 objectsCountriesGeometriesAlias72 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesAlias72.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias72.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias72.type_ )
        ]


encodedObjectsCountriesGeometriesAlias72Arcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias72ArcsMember


encodedObjectsCountriesGeometriesAlias72ArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsMember objectsCountriesGeometriesAlias72Arcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias72Arcs


encodedObjectsCountriesGeometriesAlias72ArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias72ArcsObjectMember


encodedObjectsCountriesGeometriesAlias72ArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsObjectMember objectsCountriesGeometriesAlias72ArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias72ArcsObject


encodedObjectsCountriesGeometriesAlias72ArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias72ArcsItemMember


encodedObjectsCountriesGeometriesAlias72ArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsItemMember objectsCountriesGeometriesAlias72ArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias72ArcsItem


encodedObjectsCountriesGeometriesAlias72ArcsEntity : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsEntity =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias72ArcsEntityMember


encodedObjectsCountriesGeometriesAlias72ArcsEntityMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsEntityMember objectsCountriesGeometriesAlias72ArcsEntity =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias72ArcsEntity


encodedObjectsCountriesGeometriesAlias72ArcsThing : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsThing =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias72ArcsThingMember


encodedObjectsCountriesGeometriesAlias72ArcsThingMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsThingMember objectsCountriesGeometriesAlias72ArcsThing =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias72ArcsThing


encodedObjectsCountriesGeometriesAlias72ArcsInstance : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsInstance =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias72ArcsInstanceMember


encodedObjectsCountriesGeometriesAlias72ArcsInstanceMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsInstanceMember objectsCountriesGeometriesAlias72ArcsInstance =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias72ArcsInstance


encodedObjectsCountriesGeometriesAlias72ArcsConstituent : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsConstituent =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias72ArcsConstituentMember


encodedObjectsCountriesGeometriesAlias72ArcsConstituentMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsConstituentMember objectsCountriesGeometriesAlias72ArcsConstituent =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias72ArcsConstituent


encodedObjectsCountriesGeometriesAlias72ArcsSpecimen : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsSpecimen =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias72ArcsSpecimenMember


encodedObjectsCountriesGeometriesAlias72ArcsSpecimenMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsSpecimenMember objectsCountriesGeometriesAlias72ArcsSpecimen =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias72ArcsSpecimen


encodedObjectsCountriesGeometriesAlias72ArcsGadget : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsGadget =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias72ArcsGadgetMember


encodedObjectsCountriesGeometriesAlias72ArcsGadgetMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsGadgetMember objectsCountriesGeometriesAlias72ArcsGadget =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias72ArcsGadget


encodedObjectsCountriesGeometriesAlias72ArcsWidget : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsWidget =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias72ArcsWidgetMember


encodedObjectsCountriesGeometriesAlias72ArcsWidgetMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsWidgetMember objectsCountriesGeometriesAlias72ArcsWidget =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias72ArcsWidget


encodedObjectsCountriesGeometriesAlias72ArcsGizmo : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsGizmo =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias72ArcsGizmoMember


encodedObjectsCountriesGeometriesAlias72ArcsGizmoMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsGizmoMember objectsCountriesGeometriesAlias72ArcsGizmo =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias72ArcsGizmo


encodedObjectsCountriesGeometriesAlias72ArcsPart : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsPart =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias72ArcsPartMember


encodedObjectsCountriesGeometriesAlias72ArcsPartMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsPartMember objectsCountriesGeometriesAlias72ArcsPart =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias72ArcsPart


encodedObjectsCountriesGeometriesAlias72ArcsChunk : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsChunk =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias72ArcsChunkMember


encodedObjectsCountriesGeometriesAlias72ArcsChunkMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsChunkMember objectsCountriesGeometriesAlias72ArcsChunk =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias72ArcsChunk


encodedObjectsCountriesGeometriesAlias72ArcsPiece : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsPiece =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias72ArcsPieceMember


encodedObjectsCountriesGeometriesAlias72ArcsPieceMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias72ArcsPieceMember objectsCountriesGeometriesAlias72ArcsPiece =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias72ArcsPiece


encodedObjectsCountriesGeometriesAlias73 : ObjectsCountriesGeometriesAlias73 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias73 objectsCountriesGeometriesAlias73 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias73.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias73.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias73.type_ )
        ]


encodedObjectsCountriesGeometriesAlias73Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias73Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias73ArcsMember


encodedObjectsCountriesGeometriesAlias73ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias73ArcsMember objectsCountriesGeometriesAlias73Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias73Arcs


encodedObjectsCountriesGeometriesAlias74 : ObjectsCountriesGeometriesAlias74 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias74 objectsCountriesGeometriesAlias74 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias74.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias74.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias74.type_ )
        ]


encodedObjectsCountriesGeometriesAlias74Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias74Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias74ArcsMember


encodedObjectsCountriesGeometriesAlias74ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias74ArcsMember objectsCountriesGeometriesAlias74Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias74Arcs


encodedObjectsCountriesGeometriesAlias75 : ObjectsCountriesGeometriesAlias75 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias75 objectsCountriesGeometriesAlias75 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias75.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias75.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias75.type_ )
        ]


encodedObjectsCountriesGeometriesAlias75Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias75Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias75ArcsMember


encodedObjectsCountriesGeometriesAlias75ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias75ArcsMember objectsCountriesGeometriesAlias75Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias75Arcs


encodedObjectsCountriesGeometriesAlias76 : ObjectsCountriesGeometriesAlias76 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias76 objectsCountriesGeometriesAlias76 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias76.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias76.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias76.type_ )
        ]


encodedObjectsCountriesGeometriesAlias76Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias76Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias76ArcsMember


encodedObjectsCountriesGeometriesAlias76ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias76ArcsMember objectsCountriesGeometriesAlias76Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias76Arcs


encodedObjectsCountriesGeometriesAlias77 : ObjectsCountriesGeometriesAlias77 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias77 objectsCountriesGeometriesAlias77 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias77.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias77.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias77.type_ )
        ]


encodedObjectsCountriesGeometriesAlias77Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias77Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias77ArcsMember


encodedObjectsCountriesGeometriesAlias77ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias77ArcsMember objectsCountriesGeometriesAlias77Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias77Arcs


encodedObjectsCountriesGeometriesAlias78 : ObjectsCountriesGeometriesAlias78 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias78 objectsCountriesGeometriesAlias78 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias78.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias78.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias78.type_ )
        ]


encodedObjectsCountriesGeometriesAlias78Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias78Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias78ArcsMember


encodedObjectsCountriesGeometriesAlias78ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias78ArcsMember objectsCountriesGeometriesAlias78Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias78Arcs


encodedObjectsCountriesGeometriesAlias79 : ObjectsCountriesGeometriesAlias79 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias79 objectsCountriesGeometriesAlias79 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesAlias79.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias79.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias79.type_ )
        ]


encodedObjectsCountriesGeometriesAlias79Arcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias79Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias79ArcsMember


encodedObjectsCountriesGeometriesAlias79ArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias79ArcsMember objectsCountriesGeometriesAlias79Arcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias79Arcs


encodedObjectsCountriesGeometriesAlias79ArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias79ArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias79ArcsObjectMember


encodedObjectsCountriesGeometriesAlias79ArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias79ArcsObjectMember objectsCountriesGeometriesAlias79ArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias79ArcsObject


encodedObjectsCountriesGeometriesAlias79ArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias79ArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias79ArcsItemMember


encodedObjectsCountriesGeometriesAlias79ArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias79ArcsItemMember objectsCountriesGeometriesAlias79ArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias79ArcsItem


encodedObjectsCountriesGeometriesAlias79ArcsEntity : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias79ArcsEntity =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias79ArcsEntityMember


encodedObjectsCountriesGeometriesAlias79ArcsEntityMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias79ArcsEntityMember objectsCountriesGeometriesAlias79ArcsEntity =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias79ArcsEntity


encodedObjectsCountriesGeometriesAlias80 : ObjectsCountriesGeometriesAlias80 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias80 objectsCountriesGeometriesAlias80 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias80.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias80.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias80.type_ )
        ]


encodedObjectsCountriesGeometriesAlias80Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias80Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias80ArcsMember


encodedObjectsCountriesGeometriesAlias80ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias80ArcsMember objectsCountriesGeometriesAlias80Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias80Arcs


encodedObjectsCountriesGeometriesAlias81 : ObjectsCountriesGeometriesAlias81 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias81 objectsCountriesGeometriesAlias81 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias81.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias81.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias81.type_ )
        ]


encodedObjectsCountriesGeometriesAlias81Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias81Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias81ArcsMember


encodedObjectsCountriesGeometriesAlias81ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias81ArcsMember objectsCountriesGeometriesAlias81Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias81Arcs


encodedObjectsCountriesGeometriesAlias82 : ObjectsCountriesGeometriesAlias82 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias82 objectsCountriesGeometriesAlias82 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesAlias82.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias82.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias82.type_ )
        ]


encodedObjectsCountriesGeometriesAlias82Arcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias82Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias82ArcsMember


encodedObjectsCountriesGeometriesAlias82ArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias82ArcsMember objectsCountriesGeometriesAlias82Arcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias82Arcs


encodedObjectsCountriesGeometriesAlias82ArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias82ArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias82ArcsObjectMember


encodedObjectsCountriesGeometriesAlias82ArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias82ArcsObjectMember objectsCountriesGeometriesAlias82ArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias82ArcsObject


encodedObjectsCountriesGeometriesAlias82ArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias82ArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias82ArcsItemMember


encodedObjectsCountriesGeometriesAlias82ArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias82ArcsItemMember objectsCountriesGeometriesAlias82ArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias82ArcsItem


encodedObjectsCountriesGeometriesAlias82ArcsEntity : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias82ArcsEntity =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias82ArcsEntityMember


encodedObjectsCountriesGeometriesAlias82ArcsEntityMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias82ArcsEntityMember objectsCountriesGeometriesAlias82ArcsEntity =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias82ArcsEntity


encodedObjectsCountriesGeometriesAlias83 : ObjectsCountriesGeometriesAlias83 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias83 objectsCountriesGeometriesAlias83 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias83.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias83.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias83.type_ )
        ]


encodedObjectsCountriesGeometriesAlias83Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias83Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias83ArcsMember


encodedObjectsCountriesGeometriesAlias83ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias83ArcsMember objectsCountriesGeometriesAlias83Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias83Arcs


encodedObjectsCountriesGeometriesAlias84 : ObjectsCountriesGeometriesAlias84 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias84 objectsCountriesGeometriesAlias84 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias84.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias84.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias84.type_ )
        ]


encodedObjectsCountriesGeometriesAlias84Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias84Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias84ArcsMember


encodedObjectsCountriesGeometriesAlias84ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias84ArcsMember objectsCountriesGeometriesAlias84Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias84Arcs


encodedObjectsCountriesGeometriesAlias85 : ObjectsCountriesGeometriesAlias85 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias85 objectsCountriesGeometriesAlias85 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias85.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias85.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias85.type_ )
        ]


encodedObjectsCountriesGeometriesAlias85Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias85Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias85ArcsMember


encodedObjectsCountriesGeometriesAlias85ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias85ArcsMember objectsCountriesGeometriesAlias85Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias85Arcs


encodedObjectsCountriesGeometriesAlias86 : ObjectsCountriesGeometriesAlias86 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias86 objectsCountriesGeometriesAlias86 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias86.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias86.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias86.type_ )
        ]


encodedObjectsCountriesGeometriesAlias86Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias86Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias86ArcsMember


encodedObjectsCountriesGeometriesAlias86ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias86ArcsMember objectsCountriesGeometriesAlias86Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias86Arcs


encodedObjectsCountriesGeometriesAlias87 : ObjectsCountriesGeometriesAlias87 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias87 objectsCountriesGeometriesAlias87 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias87.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias87.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias87.type_ )
        ]


encodedObjectsCountriesGeometriesAlias87Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias87Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias87ArcsMember


encodedObjectsCountriesGeometriesAlias87ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias87ArcsMember objectsCountriesGeometriesAlias87Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias87Arcs


encodedObjectsCountriesGeometriesAlias88 : ObjectsCountriesGeometriesAlias88 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias88 objectsCountriesGeometriesAlias88 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias88.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias88.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias88.type_ )
        ]


encodedObjectsCountriesGeometriesAlias88Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias88Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias88ArcsMember


encodedObjectsCountriesGeometriesAlias88ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias88ArcsMember objectsCountriesGeometriesAlias88Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias88Arcs


encodedObjectsCountriesGeometriesAlias89 : ObjectsCountriesGeometriesAlias89 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias89 objectsCountriesGeometriesAlias89 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias89.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias89.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias89.type_ )
        ]


encodedObjectsCountriesGeometriesAlias89Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias89Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias89ArcsMember


encodedObjectsCountriesGeometriesAlias89ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias89ArcsMember objectsCountriesGeometriesAlias89Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias89Arcs


encodedObjectsCountriesGeometriesAlias90 : ObjectsCountriesGeometriesAlias90 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias90 objectsCountriesGeometriesAlias90 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias90.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias90.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias90.type_ )
        ]


encodedObjectsCountriesGeometriesAlias90Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias90Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias90ArcsMember


encodedObjectsCountriesGeometriesAlias90ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias90ArcsMember objectsCountriesGeometriesAlias90Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias90Arcs


encodedObjectsCountriesGeometriesAlias91 : ObjectsCountriesGeometriesAlias91 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias91 objectsCountriesGeometriesAlias91 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias91.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias91.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias91.type_ )
        ]


encodedObjectsCountriesGeometriesAlias91Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias91Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias91ArcsMember


encodedObjectsCountriesGeometriesAlias91ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias91ArcsMember objectsCountriesGeometriesAlias91Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias91Arcs


encodedObjectsCountriesGeometriesAlias92 : ObjectsCountriesGeometriesAlias92 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias92 objectsCountriesGeometriesAlias92 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias92.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias92.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias92.type_ )
        ]


encodedObjectsCountriesGeometriesAlias92Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias92Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias92ArcsMember


encodedObjectsCountriesGeometriesAlias92ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias92ArcsMember objectsCountriesGeometriesAlias92Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias92Arcs


encodedObjectsCountriesGeometriesAlias93 : ObjectsCountriesGeometriesAlias93 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias93 objectsCountriesGeometriesAlias93 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias93.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias93.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias93.type_ )
        ]


encodedObjectsCountriesGeometriesAlias93Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias93Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias93ArcsMember


encodedObjectsCountriesGeometriesAlias93ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias93ArcsMember objectsCountriesGeometriesAlias93Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias93Arcs


encodedObjectsCountriesGeometriesAlias94 : ObjectsCountriesGeometriesAlias94 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias94 objectsCountriesGeometriesAlias94 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias94.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias94.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias94.type_ )
        ]


encodedObjectsCountriesGeometriesAlias94Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias94Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias94ArcsMember


encodedObjectsCountriesGeometriesAlias94ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias94ArcsMember objectsCountriesGeometriesAlias94Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias94Arcs


encodedObjectsCountriesGeometriesAlias95 : ObjectsCountriesGeometriesAlias95 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias95 objectsCountriesGeometriesAlias95 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias95.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias95.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias95.type_ )
        ]


encodedObjectsCountriesGeometriesAlias95Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias95Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias95ArcsMember


encodedObjectsCountriesGeometriesAlias95ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias95ArcsMember objectsCountriesGeometriesAlias95Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias95Arcs


encodedObjectsCountriesGeometriesAlias96 : ObjectsCountriesGeometriesAlias96 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias96 objectsCountriesGeometriesAlias96 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias96.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias96.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias96.type_ )
        ]


encodedObjectsCountriesGeometriesAlias96Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias96Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias96ArcsMember


encodedObjectsCountriesGeometriesAlias96ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias96ArcsMember objectsCountriesGeometriesAlias96Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias96Arcs


encodedObjectsCountriesGeometriesAlias97 : ObjectsCountriesGeometriesAlias97 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias97 objectsCountriesGeometriesAlias97 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias97.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias97.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias97.type_ )
        ]


encodedObjectsCountriesGeometriesAlias97Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias97Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias97ArcsMember


encodedObjectsCountriesGeometriesAlias97ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias97ArcsMember objectsCountriesGeometriesAlias97Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias97Arcs


encodedObjectsCountriesGeometriesAlias98 : ObjectsCountriesGeometriesAlias98 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias98 objectsCountriesGeometriesAlias98 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias98.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias98.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias98.type_ )
        ]


encodedObjectsCountriesGeometriesAlias98Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias98Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias98ArcsMember


encodedObjectsCountriesGeometriesAlias98ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias98ArcsMember objectsCountriesGeometriesAlias98Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias98Arcs


encodedObjectsCountriesGeometriesAlias99 : ObjectsCountriesGeometriesAlias99 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias99 objectsCountriesGeometriesAlias99 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias99.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias99.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias99.type_ )
        ]


encodedObjectsCountriesGeometriesAlias99Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias99Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias99ArcsMember


encodedObjectsCountriesGeometriesAlias99ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias99ArcsMember objectsCountriesGeometriesAlias99Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias99Arcs


encodedObjectsCountriesGeometriesAlias100 : ObjectsCountriesGeometriesAlias100 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias100 objectsCountriesGeometriesAlias100 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias100.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias100.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias100.type_ )
        ]


encodedObjectsCountriesGeometriesAlias100Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias100Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias100ArcsMember


encodedObjectsCountriesGeometriesAlias100ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias100ArcsMember objectsCountriesGeometriesAlias100Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias100Arcs


encodedObjectsCountriesGeometriesAlias101 : ObjectsCountriesGeometriesAlias101 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias101 objectsCountriesGeometriesAlias101 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias101.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias101.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias101.type_ )
        ]


encodedObjectsCountriesGeometriesAlias101Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias101Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias101ArcsMember


encodedObjectsCountriesGeometriesAlias101ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias101ArcsMember objectsCountriesGeometriesAlias101Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias101Arcs


encodedObjectsCountriesGeometriesAlias102 : ObjectsCountriesGeometriesAlias102 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias102 objectsCountriesGeometriesAlias102 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias102.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias102.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias102.type_ )
        ]


encodedObjectsCountriesGeometriesAlias102Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias102Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias102ArcsMember


encodedObjectsCountriesGeometriesAlias102ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias102ArcsMember objectsCountriesGeometriesAlias102Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias102Arcs


encodedObjectsCountriesGeometriesAlias103 : ObjectsCountriesGeometriesAlias103 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias103 objectsCountriesGeometriesAlias103 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias103.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias103.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias103.type_ )
        ]


encodedObjectsCountriesGeometriesAlias103Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias103Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias103ArcsMember


encodedObjectsCountriesGeometriesAlias103ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias103ArcsMember objectsCountriesGeometriesAlias103Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias103Arcs


encodedObjectsCountriesGeometriesAlias104 : ObjectsCountriesGeometriesAlias104 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias104 objectsCountriesGeometriesAlias104 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias104.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias104.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias104.type_ )
        ]


encodedObjectsCountriesGeometriesAlias104Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias104Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias104ArcsMember


encodedObjectsCountriesGeometriesAlias104ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias104ArcsMember objectsCountriesGeometriesAlias104Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias104Arcs


encodedObjectsCountriesGeometriesAlias105 : ObjectsCountriesGeometriesAlias105 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias105 objectsCountriesGeometriesAlias105 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias105.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias105.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias105.type_ )
        ]


encodedObjectsCountriesGeometriesAlias105Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias105Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias105ArcsMember


encodedObjectsCountriesGeometriesAlias105ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias105ArcsMember objectsCountriesGeometriesAlias105Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias105Arcs


encodedObjectsCountriesGeometriesAlias106 : ObjectsCountriesGeometriesAlias106 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias106 objectsCountriesGeometriesAlias106 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias106.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias106.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias106.type_ )
        ]


encodedObjectsCountriesGeometriesAlias106Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias106Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias106ArcsMember


encodedObjectsCountriesGeometriesAlias106ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias106ArcsMember objectsCountriesGeometriesAlias106Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias106Arcs


encodedObjectsCountriesGeometriesAlias107 : ObjectsCountriesGeometriesAlias107 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias107 objectsCountriesGeometriesAlias107 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias107.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias107.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias107.type_ )
        ]


encodedObjectsCountriesGeometriesAlias107Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias107Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias107ArcsMember


encodedObjectsCountriesGeometriesAlias107ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias107ArcsMember objectsCountriesGeometriesAlias107Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias107Arcs


encodedObjectsCountriesGeometriesAlias108 : ObjectsCountriesGeometriesAlias108 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias108 objectsCountriesGeometriesAlias108 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias108.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias108.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias108.type_ )
        ]


encodedObjectsCountriesGeometriesAlias108Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias108Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias108ArcsMember


encodedObjectsCountriesGeometriesAlias108ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias108ArcsMember objectsCountriesGeometriesAlias108Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias108Arcs


encodedObjectsCountriesGeometriesAlias109 : ObjectsCountriesGeometriesAlias109 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias109 objectsCountriesGeometriesAlias109 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias109.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias109.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias109.type_ )
        ]


encodedObjectsCountriesGeometriesAlias109Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias109Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias109ArcsMember


encodedObjectsCountriesGeometriesAlias109ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias109ArcsMember objectsCountriesGeometriesAlias109Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias109Arcs


encodedObjectsCountriesGeometriesAlias110 : ObjectsCountriesGeometriesAlias110 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias110 objectsCountriesGeometriesAlias110 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias110.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias110.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias110.type_ )
        ]


encodedObjectsCountriesGeometriesAlias110Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias110Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias110ArcsMember


encodedObjectsCountriesGeometriesAlias110ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias110ArcsMember objectsCountriesGeometriesAlias110Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias110Arcs


encodedObjectsCountriesGeometriesAlias111 : ObjectsCountriesGeometriesAlias111 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias111 objectsCountriesGeometriesAlias111 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesAlias111.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias111.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias111.type_ )
        ]


encodedObjectsCountriesGeometriesAlias111Arcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias111Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias111ArcsMember


encodedObjectsCountriesGeometriesAlias111ArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias111ArcsMember objectsCountriesGeometriesAlias111Arcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias111Arcs


encodedObjectsCountriesGeometriesAlias111ArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias111ArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias111ArcsObjectMember


encodedObjectsCountriesGeometriesAlias111ArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias111ArcsObjectMember objectsCountriesGeometriesAlias111ArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias111ArcsObject


encodedObjectsCountriesGeometriesAlias111ArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias111ArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias111ArcsItemMember


encodedObjectsCountriesGeometriesAlias111ArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias111ArcsItemMember objectsCountriesGeometriesAlias111ArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias111ArcsItem


encodedObjectsCountriesGeometriesAlias112 : ObjectsCountriesGeometriesAlias112 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias112 objectsCountriesGeometriesAlias112 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias112.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias112.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias112.type_ )
        ]


encodedObjectsCountriesGeometriesAlias112Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias112Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias112ArcsMember


encodedObjectsCountriesGeometriesAlias112ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias112ArcsMember objectsCountriesGeometriesAlias112Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias112Arcs


encodedObjectsCountriesGeometriesAlias113 : ObjectsCountriesGeometriesAlias113 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias113 objectsCountriesGeometriesAlias113 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias113.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias113.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias113.type_ )
        ]


encodedObjectsCountriesGeometriesAlias113Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias113Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias113ArcsMember


encodedObjectsCountriesGeometriesAlias113ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias113ArcsMember objectsCountriesGeometriesAlias113Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias113Arcs


encodedObjectsCountriesGeometriesAlias114 : ObjectsCountriesGeometriesAlias114 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias114 objectsCountriesGeometriesAlias114 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias114.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias114.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias114.type_ )
        ]


encodedObjectsCountriesGeometriesAlias114Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias114Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias114ArcsMember


encodedObjectsCountriesGeometriesAlias114ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias114ArcsMember objectsCountriesGeometriesAlias114Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias114Arcs


encodedObjectsCountriesGeometriesAlias115 : ObjectsCountriesGeometriesAlias115 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias115 objectsCountriesGeometriesAlias115 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias115.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias115.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias115.type_ )
        ]


encodedObjectsCountriesGeometriesAlias115Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias115Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias115ArcsMember


encodedObjectsCountriesGeometriesAlias115ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias115ArcsMember objectsCountriesGeometriesAlias115Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias115Arcs


encodedObjectsCountriesGeometriesAlias116 : ObjectsCountriesGeometriesAlias116 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias116 objectsCountriesGeometriesAlias116 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias116.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias116.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias116.type_ )
        ]


encodedObjectsCountriesGeometriesAlias116Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias116Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias116ArcsMember


encodedObjectsCountriesGeometriesAlias116ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias116ArcsMember objectsCountriesGeometriesAlias116Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias116Arcs


encodedObjectsCountriesGeometriesAlias117 : ObjectsCountriesGeometriesAlias117 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias117 objectsCountriesGeometriesAlias117 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias117.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias117.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias117.type_ )
        ]


encodedObjectsCountriesGeometriesAlias117Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias117Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias117ArcsMember


encodedObjectsCountriesGeometriesAlias117ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias117ArcsMember objectsCountriesGeometriesAlias117Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias117Arcs


encodedObjectsCountriesGeometriesAlias118 : ObjectsCountriesGeometriesAlias118 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias118 objectsCountriesGeometriesAlias118 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesAlias118.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias118.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias118.type_ )
        ]


encodedObjectsCountriesGeometriesAlias118Arcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias118Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias118ArcsMember


encodedObjectsCountriesGeometriesAlias118ArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias118ArcsMember objectsCountriesGeometriesAlias118Arcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias118Arcs


encodedObjectsCountriesGeometriesAlias118ArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias118ArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias118ArcsObjectMember


encodedObjectsCountriesGeometriesAlias118ArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias118ArcsObjectMember objectsCountriesGeometriesAlias118ArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias118ArcsObject


encodedObjectsCountriesGeometriesAlias118ArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias118ArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias118ArcsItemMember


encodedObjectsCountriesGeometriesAlias118ArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias118ArcsItemMember objectsCountriesGeometriesAlias118ArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias118ArcsItem


encodedObjectsCountriesGeometriesAlias118ArcsEntity : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias118ArcsEntity =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias118ArcsEntityMember


encodedObjectsCountriesGeometriesAlias118ArcsEntityMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias118ArcsEntityMember objectsCountriesGeometriesAlias118ArcsEntity =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias118ArcsEntity


encodedObjectsCountriesGeometriesAlias118ArcsThing : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias118ArcsThing =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias118ArcsThingMember


encodedObjectsCountriesGeometriesAlias118ArcsThingMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias118ArcsThingMember objectsCountriesGeometriesAlias118ArcsThing =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias118ArcsThing


encodedObjectsCountriesGeometriesAlias119 : ObjectsCountriesGeometriesAlias119 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias119 objectsCountriesGeometriesAlias119 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias119.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias119.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias119.type_ )
        ]


encodedObjectsCountriesGeometriesAlias119Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias119Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias119ArcsMember


encodedObjectsCountriesGeometriesAlias119ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias119ArcsMember objectsCountriesGeometriesAlias119Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias119Arcs


encodedObjectsCountriesGeometriesAlias120 : ObjectsCountriesGeometriesAlias120 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias120 objectsCountriesGeometriesAlias120 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesAlias120.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias120.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias120.type_ )
        ]


encodedObjectsCountriesGeometriesAlias120Arcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias120Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias120ArcsMember


encodedObjectsCountriesGeometriesAlias120ArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias120ArcsMember objectsCountriesGeometriesAlias120Arcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias120Arcs


encodedObjectsCountriesGeometriesAlias120ArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias120ArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias120ArcsObjectMember


encodedObjectsCountriesGeometriesAlias120ArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias120ArcsObjectMember objectsCountriesGeometriesAlias120ArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias120ArcsObject


encodedObjectsCountriesGeometriesAlias120ArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias120ArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias120ArcsItemMember


encodedObjectsCountriesGeometriesAlias120ArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias120ArcsItemMember objectsCountriesGeometriesAlias120ArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias120ArcsItem


encodedObjectsCountriesGeometriesAlias121 : ObjectsCountriesGeometriesAlias121 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias121 objectsCountriesGeometriesAlias121 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesAlias121.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias121.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias121.type_ )
        ]


encodedObjectsCountriesGeometriesAlias121Arcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias121Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias121ArcsMember


encodedObjectsCountriesGeometriesAlias121ArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias121ArcsMember objectsCountriesGeometriesAlias121Arcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias121Arcs


encodedObjectsCountriesGeometriesAlias121ArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias121ArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias121ArcsObjectMember


encodedObjectsCountriesGeometriesAlias121ArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias121ArcsObjectMember objectsCountriesGeometriesAlias121ArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias121ArcsObject


encodedObjectsCountriesGeometriesAlias121ArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias121ArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias121ArcsItemMember


encodedObjectsCountriesGeometriesAlias121ArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias121ArcsItemMember objectsCountriesGeometriesAlias121ArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias121ArcsItem


encodedObjectsCountriesGeometriesAlias122 : ObjectsCountriesGeometriesAlias122 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias122 objectsCountriesGeometriesAlias122 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias122.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias122.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias122.type_ )
        ]


encodedObjectsCountriesGeometriesAlias122Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias122Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias122ArcsMember


encodedObjectsCountriesGeometriesAlias122ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias122ArcsMember objectsCountriesGeometriesAlias122Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias122Arcs


encodedObjectsCountriesGeometriesAlias123 : ObjectsCountriesGeometriesAlias123 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias123 objectsCountriesGeometriesAlias123 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias123.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias123.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias123.type_ )
        ]


encodedObjectsCountriesGeometriesAlias123Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias123Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias123ArcsMember


encodedObjectsCountriesGeometriesAlias123ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias123ArcsMember objectsCountriesGeometriesAlias123Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias123Arcs


encodedObjectsCountriesGeometriesAlias124 : ObjectsCountriesGeometriesAlias124 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias124 objectsCountriesGeometriesAlias124 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias124.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias124.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias124.type_ )
        ]


encodedObjectsCountriesGeometriesAlias124Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias124Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias124ArcsMember


encodedObjectsCountriesGeometriesAlias124ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias124ArcsMember objectsCountriesGeometriesAlias124Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias124Arcs


encodedObjectsCountriesGeometriesAlias125 : ObjectsCountriesGeometriesAlias125 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias125 objectsCountriesGeometriesAlias125 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesAlias125.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias125.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias125.type_ )
        ]


encodedObjectsCountriesGeometriesAlias125Arcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias125Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias125ArcsMember


encodedObjectsCountriesGeometriesAlias125ArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias125ArcsMember objectsCountriesGeometriesAlias125Arcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias125Arcs


encodedObjectsCountriesGeometriesAlias125ArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias125ArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias125ArcsObjectMember


encodedObjectsCountriesGeometriesAlias125ArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias125ArcsObjectMember objectsCountriesGeometriesAlias125ArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias125ArcsObject


encodedObjectsCountriesGeometriesAlias125ArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias125ArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias125ArcsItemMember


encodedObjectsCountriesGeometriesAlias125ArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias125ArcsItemMember objectsCountriesGeometriesAlias125ArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias125ArcsItem


encodedObjectsCountriesGeometriesAlias125ArcsEntity : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias125ArcsEntity =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias125ArcsEntityMember


encodedObjectsCountriesGeometriesAlias125ArcsEntityMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias125ArcsEntityMember objectsCountriesGeometriesAlias125ArcsEntity =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias125ArcsEntity


encodedObjectsCountriesGeometriesAlias125ArcsThing : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias125ArcsThing =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias125ArcsThingMember


encodedObjectsCountriesGeometriesAlias125ArcsThingMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias125ArcsThingMember objectsCountriesGeometriesAlias125ArcsThing =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias125ArcsThing


encodedObjectsCountriesGeometriesAlias125ArcsInstance : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias125ArcsInstance =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias125ArcsInstanceMember


encodedObjectsCountriesGeometriesAlias125ArcsInstanceMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias125ArcsInstanceMember objectsCountriesGeometriesAlias125ArcsInstance =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias125ArcsInstance


encodedObjectsCountriesGeometriesAlias125ArcsConstituent : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias125ArcsConstituent =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias125ArcsConstituentMember


encodedObjectsCountriesGeometriesAlias125ArcsConstituentMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias125ArcsConstituentMember objectsCountriesGeometriesAlias125ArcsConstituent =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias125ArcsConstituent


encodedObjectsCountriesGeometriesAlias125ArcsSpecimen : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias125ArcsSpecimen =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias125ArcsSpecimenMember


encodedObjectsCountriesGeometriesAlias125ArcsSpecimenMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias125ArcsSpecimenMember objectsCountriesGeometriesAlias125ArcsSpecimen =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias125ArcsSpecimen


encodedObjectsCountriesGeometriesAlias126 : ObjectsCountriesGeometriesAlias126 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias126 objectsCountriesGeometriesAlias126 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesAlias126.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias126.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias126.type_ )
        ]


encodedObjectsCountriesGeometriesAlias126Arcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias126Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias126ArcsMember


encodedObjectsCountriesGeometriesAlias126ArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias126ArcsMember objectsCountriesGeometriesAlias126Arcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias126Arcs


encodedObjectsCountriesGeometriesAlias126ArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias126ArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias126ArcsObjectMember


encodedObjectsCountriesGeometriesAlias126ArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias126ArcsObjectMember objectsCountriesGeometriesAlias126ArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias126ArcsObject


encodedObjectsCountriesGeometriesAlias126ArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias126ArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias126ArcsItemMember


encodedObjectsCountriesGeometriesAlias126ArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias126ArcsItemMember objectsCountriesGeometriesAlias126ArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias126ArcsItem


encodedObjectsCountriesGeometriesAlias126ArcsEntity : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias126ArcsEntity =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias126ArcsEntityMember


encodedObjectsCountriesGeometriesAlias126ArcsEntityMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias126ArcsEntityMember objectsCountriesGeometriesAlias126ArcsEntity =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias126ArcsEntity


encodedObjectsCountriesGeometriesAlias126ArcsThing : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias126ArcsThing =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias126ArcsThingMember


encodedObjectsCountriesGeometriesAlias126ArcsThingMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias126ArcsThingMember objectsCountriesGeometriesAlias126ArcsThing =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias126ArcsThing


encodedObjectsCountriesGeometriesAlias127 : ObjectsCountriesGeometriesAlias127 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias127 objectsCountriesGeometriesAlias127 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias127.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias127.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias127.type_ )
        ]


encodedObjectsCountriesGeometriesAlias127Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias127Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias127ArcsMember


encodedObjectsCountriesGeometriesAlias127ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias127ArcsMember objectsCountriesGeometriesAlias127Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias127Arcs


encodedObjectsCountriesGeometriesAlias128 : ObjectsCountriesGeometriesAlias128 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias128 objectsCountriesGeometriesAlias128 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias128.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias128.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias128.type_ )
        ]


encodedObjectsCountriesGeometriesAlias128Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias128Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias128ArcsMember


encodedObjectsCountriesGeometriesAlias128ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias128ArcsMember objectsCountriesGeometriesAlias128Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias128Arcs


encodedObjectsCountriesGeometriesAlias129 : ObjectsCountriesGeometriesAlias129 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias129 objectsCountriesGeometriesAlias129 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias129.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias129.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias129.type_ )
        ]


encodedObjectsCountriesGeometriesAlias129Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias129Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias129ArcsMember


encodedObjectsCountriesGeometriesAlias129ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias129ArcsMember objectsCountriesGeometriesAlias129Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias129Arcs


encodedObjectsCountriesGeometriesAlias130 : ObjectsCountriesGeometriesAlias130 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias130 objectsCountriesGeometriesAlias130 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias130.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias130.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias130.type_ )
        ]


encodedObjectsCountriesGeometriesAlias130Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias130Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias130ArcsMember


encodedObjectsCountriesGeometriesAlias130ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias130ArcsMember objectsCountriesGeometriesAlias130Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias130Arcs


encodedObjectsCountriesGeometriesAlias131 : ObjectsCountriesGeometriesAlias131 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias131 objectsCountriesGeometriesAlias131 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias131.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias131.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias131.type_ )
        ]


encodedObjectsCountriesGeometriesAlias131Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias131Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias131ArcsMember


encodedObjectsCountriesGeometriesAlias131ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias131ArcsMember objectsCountriesGeometriesAlias131Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias131Arcs


encodedObjectsCountriesGeometriesAlias132 : ObjectsCountriesGeometriesAlias132 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias132 objectsCountriesGeometriesAlias132 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias132.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias132.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias132.type_ )
        ]


encodedObjectsCountriesGeometriesAlias132Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias132Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias132ArcsMember


encodedObjectsCountriesGeometriesAlias132ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias132ArcsMember objectsCountriesGeometriesAlias132Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias132Arcs


encodedObjectsCountriesGeometriesAlias133 : ObjectsCountriesGeometriesAlias133 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias133 objectsCountriesGeometriesAlias133 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias133.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias133.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias133.type_ )
        ]


encodedObjectsCountriesGeometriesAlias133Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias133Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias133ArcsMember


encodedObjectsCountriesGeometriesAlias133ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias133ArcsMember objectsCountriesGeometriesAlias133Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias133Arcs


encodedObjectsCountriesGeometriesAlias134 : ObjectsCountriesGeometriesAlias134 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias134 objectsCountriesGeometriesAlias134 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias134.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias134.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias134.type_ )
        ]


encodedObjectsCountriesGeometriesAlias134Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias134Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias134ArcsMember


encodedObjectsCountriesGeometriesAlias134ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias134ArcsMember objectsCountriesGeometriesAlias134Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias134Arcs


encodedObjectsCountriesGeometriesAlias135 : ObjectsCountriesGeometriesAlias135 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias135 objectsCountriesGeometriesAlias135 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesAlias135.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias135.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias135.type_ )
        ]


encodedObjectsCountriesGeometriesAlias135Arcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias135Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias135ArcsMember


encodedObjectsCountriesGeometriesAlias135ArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias135ArcsMember objectsCountriesGeometriesAlias135Arcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias135Arcs


encodedObjectsCountriesGeometriesAlias135ArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias135ArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias135ArcsObjectMember


encodedObjectsCountriesGeometriesAlias135ArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias135ArcsObjectMember objectsCountriesGeometriesAlias135ArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias135ArcsObject


encodedObjectsCountriesGeometriesAlias135ArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias135ArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias135ArcsItemMember


encodedObjectsCountriesGeometriesAlias135ArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias135ArcsItemMember objectsCountriesGeometriesAlias135ArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias135ArcsItem


encodedObjectsCountriesGeometriesAlias135ArcsEntity : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias135ArcsEntity =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias135ArcsEntityMember


encodedObjectsCountriesGeometriesAlias135ArcsEntityMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias135ArcsEntityMember objectsCountriesGeometriesAlias135ArcsEntity =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias135ArcsEntity


encodedObjectsCountriesGeometriesAlias135ArcsThing : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias135ArcsThing =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias135ArcsThingMember


encodedObjectsCountriesGeometriesAlias135ArcsThingMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias135ArcsThingMember objectsCountriesGeometriesAlias135ArcsThing =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias135ArcsThing


encodedObjectsCountriesGeometriesAlias135ArcsInstance : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias135ArcsInstance =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias135ArcsInstanceMember


encodedObjectsCountriesGeometriesAlias135ArcsInstanceMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias135ArcsInstanceMember objectsCountriesGeometriesAlias135ArcsInstance =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias135ArcsInstance


encodedObjectsCountriesGeometriesAlias135ArcsConstituent : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias135ArcsConstituent =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias135ArcsConstituentMember


encodedObjectsCountriesGeometriesAlias135ArcsConstituentMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias135ArcsConstituentMember objectsCountriesGeometriesAlias135ArcsConstituent =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias135ArcsConstituent


encodedObjectsCountriesGeometriesAlias135ArcsSpecimen : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias135ArcsSpecimen =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias135ArcsSpecimenMember


encodedObjectsCountriesGeometriesAlias135ArcsSpecimenMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias135ArcsSpecimenMember objectsCountriesGeometriesAlias135ArcsSpecimen =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias135ArcsSpecimen


encodedObjectsCountriesGeometriesAlias135ArcsGadget : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias135ArcsGadget =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias135ArcsGadgetMember


encodedObjectsCountriesGeometriesAlias135ArcsGadgetMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias135ArcsGadgetMember objectsCountriesGeometriesAlias135ArcsGadget =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias135ArcsGadget


encodedObjectsCountriesGeometriesAlias135ArcsWidget : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias135ArcsWidget =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias135ArcsWidgetMember


encodedObjectsCountriesGeometriesAlias135ArcsWidgetMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias135ArcsWidgetMember objectsCountriesGeometriesAlias135ArcsWidget =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias135ArcsWidget


encodedObjectsCountriesGeometriesAlias135ArcsGizmo : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias135ArcsGizmo =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias135ArcsGizmoMember


encodedObjectsCountriesGeometriesAlias135ArcsGizmoMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias135ArcsGizmoMember objectsCountriesGeometriesAlias135ArcsGizmo =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias135ArcsGizmo


encodedObjectsCountriesGeometriesAlias135ArcsPart : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias135ArcsPart =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias135ArcsPartMember


encodedObjectsCountriesGeometriesAlias135ArcsPartMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias135ArcsPartMember objectsCountriesGeometriesAlias135ArcsPart =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias135ArcsPart


encodedObjectsCountriesGeometriesAlias136 : ObjectsCountriesGeometriesAlias136 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias136 objectsCountriesGeometriesAlias136 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias136.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias136.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias136.type_ )
        ]


encodedObjectsCountriesGeometriesAlias136Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias136Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias136ArcsMember


encodedObjectsCountriesGeometriesAlias136ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias136ArcsMember objectsCountriesGeometriesAlias136Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias136Arcs


encodedObjectsCountriesGeometriesAlias137 : ObjectsCountriesGeometriesAlias137 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias137 objectsCountriesGeometriesAlias137 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias137.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias137.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias137.type_ )
        ]


encodedObjectsCountriesGeometriesAlias137Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias137Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias137ArcsMember


encodedObjectsCountriesGeometriesAlias137ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias137ArcsMember objectsCountriesGeometriesAlias137Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias137Arcs


encodedObjectsCountriesGeometriesAlias138 : ObjectsCountriesGeometriesAlias138 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias138 objectsCountriesGeometriesAlias138 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias138.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias138.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias138.type_ )
        ]


encodedObjectsCountriesGeometriesAlias138Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias138Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias138ArcsMember


encodedObjectsCountriesGeometriesAlias138ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias138ArcsMember objectsCountriesGeometriesAlias138Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias138Arcs


encodedObjectsCountriesGeometriesAlias139 : ObjectsCountriesGeometriesAlias139 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias139 objectsCountriesGeometriesAlias139 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias139.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias139.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias139.type_ )
        ]


encodedObjectsCountriesGeometriesAlias139Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias139Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias139ArcsMember


encodedObjectsCountriesGeometriesAlias139ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias139ArcsMember objectsCountriesGeometriesAlias139Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias139Arcs


encodedObjectsCountriesGeometriesAlias140 : ObjectsCountriesGeometriesAlias140 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias140 objectsCountriesGeometriesAlias140 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias140.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias140.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias140.type_ )
        ]


encodedObjectsCountriesGeometriesAlias140Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias140Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias140ArcsMember


encodedObjectsCountriesGeometriesAlias140ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias140ArcsMember objectsCountriesGeometriesAlias140Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias140Arcs


encodedObjectsCountriesGeometriesAlias141 : ObjectsCountriesGeometriesAlias141 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias141 objectsCountriesGeometriesAlias141 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias141.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias141.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias141.type_ )
        ]


encodedObjectsCountriesGeometriesAlias141Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias141Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias141ArcsMember


encodedObjectsCountriesGeometriesAlias141ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias141ArcsMember objectsCountriesGeometriesAlias141Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias141Arcs


encodedObjectsCountriesGeometriesAlias142 : ObjectsCountriesGeometriesAlias142 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias142 objectsCountriesGeometriesAlias142 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesAlias142.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias142.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias142.type_ )
        ]


encodedObjectsCountriesGeometriesAlias142Arcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias142Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias142ArcsMember


encodedObjectsCountriesGeometriesAlias142ArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias142ArcsMember objectsCountriesGeometriesAlias142Arcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias142Arcs


encodedObjectsCountriesGeometriesAlias142ArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias142ArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias142ArcsObjectMember


encodedObjectsCountriesGeometriesAlias142ArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias142ArcsObjectMember objectsCountriesGeometriesAlias142ArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias142ArcsObject


encodedObjectsCountriesGeometriesAlias142ArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias142ArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias142ArcsItemMember


encodedObjectsCountriesGeometriesAlias142ArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias142ArcsItemMember objectsCountriesGeometriesAlias142ArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias142ArcsItem


encodedObjectsCountriesGeometriesAlias142ArcsEntity : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias142ArcsEntity =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias142ArcsEntityMember


encodedObjectsCountriesGeometriesAlias142ArcsEntityMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias142ArcsEntityMember objectsCountriesGeometriesAlias142ArcsEntity =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias142ArcsEntity


encodedObjectsCountriesGeometriesAlias142ArcsThing : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias142ArcsThing =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias142ArcsThingMember


encodedObjectsCountriesGeometriesAlias142ArcsThingMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias142ArcsThingMember objectsCountriesGeometriesAlias142ArcsThing =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias142ArcsThing


encodedObjectsCountriesGeometriesAlias142ArcsInstance : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias142ArcsInstance =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias142ArcsInstanceMember


encodedObjectsCountriesGeometriesAlias142ArcsInstanceMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias142ArcsInstanceMember objectsCountriesGeometriesAlias142ArcsInstance =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias142ArcsInstance


encodedObjectsCountriesGeometriesAlias143 : ObjectsCountriesGeometriesAlias143 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias143 objectsCountriesGeometriesAlias143 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias143.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias143.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias143.type_ )
        ]


encodedObjectsCountriesGeometriesAlias143Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias143Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias143ArcsMember


encodedObjectsCountriesGeometriesAlias143ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias143ArcsMember objectsCountriesGeometriesAlias143Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias143Arcs


encodedObjectsCountriesGeometriesAlias144 : ObjectsCountriesGeometriesAlias144 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias144 objectsCountriesGeometriesAlias144 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias144.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias144.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias144.type_ )
        ]


encodedObjectsCountriesGeometriesAlias144Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias144Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias144ArcsMember


encodedObjectsCountriesGeometriesAlias144ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias144ArcsMember objectsCountriesGeometriesAlias144Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias144Arcs


encodedObjectsCountriesGeometriesAlias145 : ObjectsCountriesGeometriesAlias145 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias145 objectsCountriesGeometriesAlias145 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias145.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias145.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias145.type_ )
        ]


encodedObjectsCountriesGeometriesAlias145Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias145Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias145ArcsMember


encodedObjectsCountriesGeometriesAlias145ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias145ArcsMember objectsCountriesGeometriesAlias145Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias145Arcs


encodedObjectsCountriesGeometriesAlias146 : ObjectsCountriesGeometriesAlias146 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias146 objectsCountriesGeometriesAlias146 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias146.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias146.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias146.type_ )
        ]


encodedObjectsCountriesGeometriesAlias146Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias146Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias146ArcsMember


encodedObjectsCountriesGeometriesAlias146ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias146ArcsMember objectsCountriesGeometriesAlias146Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias146Arcs


encodedObjectsCountriesGeometriesAlias147 : ObjectsCountriesGeometriesAlias147 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias147 objectsCountriesGeometriesAlias147 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias147.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias147.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias147.type_ )
        ]


encodedObjectsCountriesGeometriesAlias147Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias147Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias147ArcsMember


encodedObjectsCountriesGeometriesAlias147ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias147ArcsMember objectsCountriesGeometriesAlias147Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias147Arcs


encodedObjectsCountriesGeometriesAlias148 : ObjectsCountriesGeometriesAlias148 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias148 objectsCountriesGeometriesAlias148 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias148.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias148.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias148.type_ )
        ]


encodedObjectsCountriesGeometriesAlias148Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias148Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias148ArcsMember


encodedObjectsCountriesGeometriesAlias148ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias148ArcsMember objectsCountriesGeometriesAlias148Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias148Arcs


encodedObjectsCountriesGeometriesAlias149 : ObjectsCountriesGeometriesAlias149 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias149 objectsCountriesGeometriesAlias149 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias149.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias149.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias149.type_ )
        ]


encodedObjectsCountriesGeometriesAlias149Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias149Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias149ArcsMember


encodedObjectsCountriesGeometriesAlias149ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias149ArcsMember objectsCountriesGeometriesAlias149Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias149Arcs


encodedObjectsCountriesGeometriesAlias150 : ObjectsCountriesGeometriesAlias150 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias150 objectsCountriesGeometriesAlias150 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias150.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias150.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias150.type_ )
        ]


encodedObjectsCountriesGeometriesAlias150Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias150Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias150ArcsMember


encodedObjectsCountriesGeometriesAlias150ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias150ArcsMember objectsCountriesGeometriesAlias150Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias150Arcs


encodedObjectsCountriesGeometriesAlias151 : ObjectsCountriesGeometriesAlias151 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias151 objectsCountriesGeometriesAlias151 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias151.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias151.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias151.type_ )
        ]


encodedObjectsCountriesGeometriesAlias151Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias151Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias151ArcsMember


encodedObjectsCountriesGeometriesAlias151ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias151ArcsMember objectsCountriesGeometriesAlias151Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias151Arcs


encodedObjectsCountriesGeometriesAlias152 : ObjectsCountriesGeometriesAlias152 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias152 objectsCountriesGeometriesAlias152 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias152.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias152.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias152.type_ )
        ]


encodedObjectsCountriesGeometriesAlias152Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias152Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias152ArcsMember


encodedObjectsCountriesGeometriesAlias152ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias152ArcsMember objectsCountriesGeometriesAlias152Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias152Arcs


encodedObjectsCountriesGeometriesAlias153 : ObjectsCountriesGeometriesAlias153 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias153 objectsCountriesGeometriesAlias153 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias153.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias153.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias153.type_ )
        ]


encodedObjectsCountriesGeometriesAlias153Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias153Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias153ArcsMember


encodedObjectsCountriesGeometriesAlias153ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias153ArcsMember objectsCountriesGeometriesAlias153Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias153Arcs


encodedObjectsCountriesGeometriesAlias154 : ObjectsCountriesGeometriesAlias154 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias154 objectsCountriesGeometriesAlias154 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias154.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias154.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias154.type_ )
        ]


encodedObjectsCountriesGeometriesAlias154Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias154Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias154ArcsMember


encodedObjectsCountriesGeometriesAlias154ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias154ArcsMember objectsCountriesGeometriesAlias154Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias154Arcs


encodedObjectsCountriesGeometriesAlias155 : ObjectsCountriesGeometriesAlias155 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias155 objectsCountriesGeometriesAlias155 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias155.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias155.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias155.type_ )
        ]


encodedObjectsCountriesGeometriesAlias155Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias155Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias155ArcsMember


encodedObjectsCountriesGeometriesAlias155ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias155ArcsMember objectsCountriesGeometriesAlias155Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias155Arcs


encodedObjectsCountriesGeometriesAlias156 : ObjectsCountriesGeometriesAlias156 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias156 objectsCountriesGeometriesAlias156 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias156.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias156.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias156.type_ )
        ]


encodedObjectsCountriesGeometriesAlias156Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias156Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias156ArcsMember


encodedObjectsCountriesGeometriesAlias156ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias156ArcsMember objectsCountriesGeometriesAlias156Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias156Arcs


encodedObjectsCountriesGeometriesAlias157 : ObjectsCountriesGeometriesAlias157 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias157 objectsCountriesGeometriesAlias157 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias157.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias157.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias157.type_ )
        ]


encodedObjectsCountriesGeometriesAlias157Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias157Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias157ArcsMember


encodedObjectsCountriesGeometriesAlias157ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias157ArcsMember objectsCountriesGeometriesAlias157Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias157Arcs


encodedObjectsCountriesGeometriesAlias158 : ObjectsCountriesGeometriesAlias158 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias158 objectsCountriesGeometriesAlias158 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias158.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias158.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias158.type_ )
        ]


encodedObjectsCountriesGeometriesAlias158Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias158Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias158ArcsMember


encodedObjectsCountriesGeometriesAlias158ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias158ArcsMember objectsCountriesGeometriesAlias158Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias158Arcs


encodedObjectsCountriesGeometriesAlias159 : ObjectsCountriesGeometriesAlias159 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias159 objectsCountriesGeometriesAlias159 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias159.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias159.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias159.type_ )
        ]


encodedObjectsCountriesGeometriesAlias159Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias159Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias159ArcsMember


encodedObjectsCountriesGeometriesAlias159ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias159ArcsMember objectsCountriesGeometriesAlias159Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias159Arcs


encodedObjectsCountriesGeometriesAlias160 : ObjectsCountriesGeometriesAlias160 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias160 objectsCountriesGeometriesAlias160 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias160.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias160.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias160.type_ )
        ]


encodedObjectsCountriesGeometriesAlias160Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias160Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias160ArcsMember


encodedObjectsCountriesGeometriesAlias160ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias160ArcsMember objectsCountriesGeometriesAlias160Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias160Arcs


encodedObjectsCountriesGeometriesAlias161 : ObjectsCountriesGeometriesAlias161 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias161 objectsCountriesGeometriesAlias161 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias161.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias161.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias161.type_ )
        ]


encodedObjectsCountriesGeometriesAlias161Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias161Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias161ArcsMember


encodedObjectsCountriesGeometriesAlias161ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias161ArcsMember objectsCountriesGeometriesAlias161Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias161Arcs


encodedObjectsCountriesGeometriesAlias162 : ObjectsCountriesGeometriesAlias162 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias162 objectsCountriesGeometriesAlias162 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesAlias162.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias162.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias162.type_ )
        ]


encodedObjectsCountriesGeometriesAlias162Arcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias162Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias162ArcsMember


encodedObjectsCountriesGeometriesAlias162ArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias162ArcsMember objectsCountriesGeometriesAlias162Arcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias162Arcs


encodedObjectsCountriesGeometriesAlias162ArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias162ArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias162ArcsObjectMember


encodedObjectsCountriesGeometriesAlias162ArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias162ArcsObjectMember objectsCountriesGeometriesAlias162ArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias162ArcsObject


encodedObjectsCountriesGeometriesAlias162ArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias162ArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias162ArcsItemMember


encodedObjectsCountriesGeometriesAlias162ArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias162ArcsItemMember objectsCountriesGeometriesAlias162ArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias162ArcsItem


encodedObjectsCountriesGeometriesAlias163 : ObjectsCountriesGeometriesAlias163 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias163 objectsCountriesGeometriesAlias163 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias163.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias163.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias163.type_ )
        ]


encodedObjectsCountriesGeometriesAlias163Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias163Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias163ArcsMember


encodedObjectsCountriesGeometriesAlias163ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias163ArcsMember objectsCountriesGeometriesAlias163Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias163Arcs


encodedObjectsCountriesGeometriesAlias164 : ObjectsCountriesGeometriesAlias164 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias164 objectsCountriesGeometriesAlias164 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias164.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias164.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias164.type_ )
        ]


encodedObjectsCountriesGeometriesAlias164Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias164Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias164ArcsMember


encodedObjectsCountriesGeometriesAlias164ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias164ArcsMember objectsCountriesGeometriesAlias164Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias164Arcs


encodedObjectsCountriesGeometriesAlias165 : ObjectsCountriesGeometriesAlias165 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias165 objectsCountriesGeometriesAlias165 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias165.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias165.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias165.type_ )
        ]


encodedObjectsCountriesGeometriesAlias165Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias165Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias165ArcsMember


encodedObjectsCountriesGeometriesAlias165ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias165ArcsMember objectsCountriesGeometriesAlias165Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias165Arcs


encodedObjectsCountriesGeometriesAlias166 : ObjectsCountriesGeometriesAlias166 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias166 objectsCountriesGeometriesAlias166 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias166.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias166.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias166.type_ )
        ]


encodedObjectsCountriesGeometriesAlias166Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias166Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias166ArcsMember


encodedObjectsCountriesGeometriesAlias166ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias166ArcsMember objectsCountriesGeometriesAlias166Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias166Arcs


encodedObjectsCountriesGeometriesAlias167 : ObjectsCountriesGeometriesAlias167 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias167 objectsCountriesGeometriesAlias167 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias167.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias167.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias167.type_ )
        ]


encodedObjectsCountriesGeometriesAlias167Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias167Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias167ArcsMember


encodedObjectsCountriesGeometriesAlias167ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias167ArcsMember objectsCountriesGeometriesAlias167Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias167Arcs


encodedObjectsCountriesGeometriesAlias168 : ObjectsCountriesGeometriesAlias168 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias168 objectsCountriesGeometriesAlias168 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesAlias168.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias168.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias168.type_ )
        ]


encodedObjectsCountriesGeometriesAlias168Arcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias168Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias168ArcsMember


encodedObjectsCountriesGeometriesAlias168ArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias168ArcsMember objectsCountriesGeometriesAlias168Arcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias168Arcs


encodedObjectsCountriesGeometriesAlias168ArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias168ArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias168ArcsObjectMember


encodedObjectsCountriesGeometriesAlias168ArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias168ArcsObjectMember objectsCountriesGeometriesAlias168ArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias168ArcsObject


encodedObjectsCountriesGeometriesAlias168ArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias168ArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias168ArcsItemMember


encodedObjectsCountriesGeometriesAlias168ArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias168ArcsItemMember objectsCountriesGeometriesAlias168ArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias168ArcsItem


encodedObjectsCountriesGeometriesAlias168ArcsEntity : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias168ArcsEntity =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias168ArcsEntityMember


encodedObjectsCountriesGeometriesAlias168ArcsEntityMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias168ArcsEntityMember objectsCountriesGeometriesAlias168ArcsEntity =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias168ArcsEntity


encodedObjectsCountriesGeometriesAlias168ArcsThing : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias168ArcsThing =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias168ArcsThingMember


encodedObjectsCountriesGeometriesAlias168ArcsThingMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias168ArcsThingMember objectsCountriesGeometriesAlias168ArcsThing =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias168ArcsThing


encodedObjectsCountriesGeometriesAlias168ArcsInstance : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias168ArcsInstance =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias168ArcsInstanceMember


encodedObjectsCountriesGeometriesAlias168ArcsInstanceMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias168ArcsInstanceMember objectsCountriesGeometriesAlias168ArcsInstance =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias168ArcsInstance


encodedObjectsCountriesGeometriesAlias168ArcsConstituent : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias168ArcsConstituent =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias168ArcsConstituentMember


encodedObjectsCountriesGeometriesAlias168ArcsConstituentMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias168ArcsConstituentMember objectsCountriesGeometriesAlias168ArcsConstituent =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias168ArcsConstituent


encodedObjectsCountriesGeometriesAlias168ArcsSpecimen : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias168ArcsSpecimen =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias168ArcsSpecimenMember


encodedObjectsCountriesGeometriesAlias168ArcsSpecimenMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias168ArcsSpecimenMember objectsCountriesGeometriesAlias168ArcsSpecimen =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias168ArcsSpecimen


encodedObjectsCountriesGeometriesAlias168ArcsGadget : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias168ArcsGadget =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias168ArcsGadgetMember


encodedObjectsCountriesGeometriesAlias168ArcsGadgetMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias168ArcsGadgetMember objectsCountriesGeometriesAlias168ArcsGadget =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias168ArcsGadget


encodedObjectsCountriesGeometriesAlias168ArcsWidget : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias168ArcsWidget =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias168ArcsWidgetMember


encodedObjectsCountriesGeometriesAlias168ArcsWidgetMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias168ArcsWidgetMember objectsCountriesGeometriesAlias168ArcsWidget =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias168ArcsWidget


encodedObjectsCountriesGeometriesAlias168ArcsGizmo : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias168ArcsGizmo =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias168ArcsGizmoMember


encodedObjectsCountriesGeometriesAlias168ArcsGizmoMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias168ArcsGizmoMember objectsCountriesGeometriesAlias168ArcsGizmo =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias168ArcsGizmo


encodedObjectsCountriesGeometriesAlias169 : ObjectsCountriesGeometriesAlias169 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias169 objectsCountriesGeometriesAlias169 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias169.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias169.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias169.type_ )
        ]


encodedObjectsCountriesGeometriesAlias169Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias169Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias169ArcsMember


encodedObjectsCountriesGeometriesAlias169ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias169ArcsMember objectsCountriesGeometriesAlias169Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias169Arcs


encodedObjectsCountriesGeometriesAlias170 : ObjectsCountriesGeometriesAlias170 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias170 objectsCountriesGeometriesAlias170 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias170.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias170.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias170.type_ )
        ]


encodedObjectsCountriesGeometriesAlias170Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias170Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias170ArcsMember


encodedObjectsCountriesGeometriesAlias170ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias170ArcsMember objectsCountriesGeometriesAlias170Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias170Arcs


encodedObjectsCountriesGeometriesAlias171 : ObjectsCountriesGeometriesAlias171 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias171 objectsCountriesGeometriesAlias171 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias171.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias171.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias171.type_ )
        ]


encodedObjectsCountriesGeometriesAlias171Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias171Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias171ArcsMember


encodedObjectsCountriesGeometriesAlias171ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias171ArcsMember objectsCountriesGeometriesAlias171Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias171Arcs


encodedObjectsCountriesGeometriesAlias172 : ObjectsCountriesGeometriesAlias172 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias172 objectsCountriesGeometriesAlias172 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsCountriesGeometriesAlias172.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias172.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias172.type_ )
        ]


encodedObjectsCountriesGeometriesAlias172Arcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias172Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias172ArcsMember


encodedObjectsCountriesGeometriesAlias172ArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias172ArcsMember objectsCountriesGeometriesAlias172Arcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias172Arcs


encodedObjectsCountriesGeometriesAlias172ArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias172ArcsObject =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias172ArcsObjectMember


encodedObjectsCountriesGeometriesAlias172ArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias172ArcsObjectMember objectsCountriesGeometriesAlias172ArcsObject =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias172ArcsObject


encodedObjectsCountriesGeometriesAlias172ArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias172ArcsItem =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias172ArcsItemMember


encodedObjectsCountriesGeometriesAlias172ArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias172ArcsItemMember objectsCountriesGeometriesAlias172ArcsItem =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias172ArcsItem


encodedObjectsCountriesGeometriesAlias173 : ObjectsCountriesGeometriesAlias173 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias173 objectsCountriesGeometriesAlias173 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias173.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias173.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias173.type_ )
        ]


encodedObjectsCountriesGeometriesAlias173Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias173Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias173ArcsMember


encodedObjectsCountriesGeometriesAlias173ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias173ArcsMember objectsCountriesGeometriesAlias173Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias173Arcs


encodedObjectsCountriesGeometriesAlias174 : ObjectsCountriesGeometriesAlias174 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias174 objectsCountriesGeometriesAlias174 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias174.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias174.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias174.type_ )
        ]


encodedObjectsCountriesGeometriesAlias174Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias174Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias174ArcsMember


encodedObjectsCountriesGeometriesAlias174ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias174ArcsMember objectsCountriesGeometriesAlias174Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias174Arcs


encodedObjectsCountriesGeometriesAlias175 : ObjectsCountriesGeometriesAlias175 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias175 objectsCountriesGeometriesAlias175 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias175.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias175.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias175.type_ )
        ]


encodedObjectsCountriesGeometriesAlias175Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias175Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias175ArcsMember


encodedObjectsCountriesGeometriesAlias175ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias175ArcsMember objectsCountriesGeometriesAlias175Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias175Arcs


encodedObjectsCountriesGeometriesAlias176 : ObjectsCountriesGeometriesAlias176 -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias176 objectsCountriesGeometriesAlias176 = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list Json.Encode.int) objectsCountriesGeometriesAlias176.arcs )
        , ( "id", Json.Encode.string objectsCountriesGeometriesAlias176.id )
        , ( "type", Json.Encode.string objectsCountriesGeometriesAlias176.type_ )
        ]


encodedObjectsCountriesGeometriesAlias176Arcs : List (List Int) -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias176Arcs =
    Json.Encode.list encodedObjectsCountriesGeometriesAlias176ArcsMember


encodedObjectsCountriesGeometriesAlias176ArcsMember : List Int -> Json.Encode.Value
encodedObjectsCountriesGeometriesAlias176ArcsMember objectsCountriesGeometriesAlias176Arcs =
    Json.Encode.list Json.Encode.int objectsCountriesGeometriesAlias176Arcs


encodedObjectsLand : ObjectsLand -> Json.Encode.Value
encodedObjectsLand objectsLand = 
    Json.Encode.object
        [ ( "geometries", Json.Encode.list encodedObjectsLandGeometriesObject objectsLand.geometries )
        , ( "type", Json.Encode.string objectsLand.type_ )
        ]


encodedObjectsLandGeometries : List ObjectsLandGeometriesObject -> Json.Encode.Value
encodedObjectsLandGeometries =
    Json.Encode.list encodedObjectsLandGeometriesMember


encodedObjectsLandGeometriesMember : ObjectsLandGeometriesObject -> Json.Encode.Value
encodedObjectsLandGeometriesMember objectsLandGeometries =
    encodedObjectsLandGeometriesObject objectsLandGeometries


encodedObjectsLandGeometriesObject : ObjectsLandGeometriesObject -> Json.Encode.Value
encodedObjectsLandGeometriesObject objectsLandGeometriesObject = 
    Json.Encode.object
        [ ( "arcs", Json.Encode.list (Json.Encode.list (Json.Encode.list Json.Encode.int)) objectsLandGeometriesObject.arcs )
        , ( "type", Json.Encode.string objectsLandGeometriesObject.type_ )
        ]


encodedObjectsLandGeometriesObjectArcs : List (List (List Int)) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcs =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsMember


encodedObjectsLandGeometriesObjectArcsMember : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsMember objectsLandGeometriesObjectArcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) objectsLandGeometriesObjectArcs


encodedObjectsLandGeometriesObjectArcsObject : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsObject =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsObjectMember


encodedObjectsLandGeometriesObjectArcsObjectMember : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsObjectMember objectsLandGeometriesObjectArcsObject =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsObject


encodedObjectsLandGeometriesObjectArcsItem : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsItem =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsItemMember


encodedObjectsLandGeometriesObjectArcsItemMember : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsItemMember objectsLandGeometriesObjectArcsItem =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsItem


encodedObjectsLandGeometriesObjectArcsEntity : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsEntity =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsEntityMember


encodedObjectsLandGeometriesObjectArcsEntityMember : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsEntityMember objectsLandGeometriesObjectArcsEntity =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsEntity


encodedObjectsLandGeometriesObjectArcsThing : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsThing =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsThingMember


encodedObjectsLandGeometriesObjectArcsThingMember : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsThingMember objectsLandGeometriesObjectArcsThing =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsThing


encodedObjectsLandGeometriesObjectArcsInstance : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsInstance =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsInstanceMember


encodedObjectsLandGeometriesObjectArcsInstanceMember : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsInstanceMember objectsLandGeometriesObjectArcsInstance =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsInstance


encodedObjectsLandGeometriesObjectArcsConstituent : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsConstituent =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsConstituentMember


encodedObjectsLandGeometriesObjectArcsConstituentMember : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsConstituentMember objectsLandGeometriesObjectArcsConstituent =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsConstituent


encodedObjectsLandGeometriesObjectArcsSpecimen : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsSpecimen =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsSpecimenMember


encodedObjectsLandGeometriesObjectArcsSpecimenMember : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsSpecimenMember objectsLandGeometriesObjectArcsSpecimen =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsSpecimen


encodedObjectsLandGeometriesObjectArcsGadget : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsGadget =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsGadgetMember


encodedObjectsLandGeometriesObjectArcsGadgetMember : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsGadgetMember objectsLandGeometriesObjectArcsGadget =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsGadget


encodedObjectsLandGeometriesObjectArcsWidget : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsWidget =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsWidgetMember


encodedObjectsLandGeometriesObjectArcsWidgetMember : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsWidgetMember objectsLandGeometriesObjectArcsWidget =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsWidget


encodedObjectsLandGeometriesObjectArcsGizmo : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsGizmo =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsGizmoMember


encodedObjectsLandGeometriesObjectArcsGizmoMember : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsGizmoMember objectsLandGeometriesObjectArcsGizmo =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsGizmo


encodedObjectsLandGeometriesObjectArcsPart : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsPart =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsPartMember


encodedObjectsLandGeometriesObjectArcsPartMember : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsPartMember objectsLandGeometriesObjectArcsPart =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsPart


encodedObjectsLandGeometriesObjectArcsChunk : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsChunk =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsChunkMember


encodedObjectsLandGeometriesObjectArcsChunkMember : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsChunkMember objectsLandGeometriesObjectArcsChunk =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsChunk


encodedObjectsLandGeometriesObjectArcsPiece : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsPiece =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsPieceMember


encodedObjectsLandGeometriesObjectArcsPieceMember : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsPieceMember objectsLandGeometriesObjectArcsPiece =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsPiece


encodedObjectsLandGeometriesObjectArcsThingy : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsThingy =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsThingyMember


encodedObjectsLandGeometriesObjectArcsThingyMember : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsThingyMember objectsLandGeometriesObjectArcsThingy =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsThingy


encodedObjectsLandGeometriesObjectArcsThingamajig : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsThingamajig =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsThingamajigMember


encodedObjectsLandGeometriesObjectArcsThingamajigMember : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsThingamajigMember objectsLandGeometriesObjectArcsThingamajig =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsThingamajig


encodedObjectsLandGeometriesObjectArcsWhatsit : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsWhatsit =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsWhatsitMember


encodedObjectsLandGeometriesObjectArcsWhatsitMember : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsWhatsitMember objectsLandGeometriesObjectArcsWhatsit =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsWhatsit


encodedObjectsLandGeometriesObjectArcsDoodad : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsDoodad =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsDoodadMember


encodedObjectsLandGeometriesObjectArcsDoodadMember : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsDoodadMember objectsLandGeometriesObjectArcsDoodad =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsDoodad


encodedObjectsLandGeometriesObjectArcsAlias17 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias17 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias17Member


encodedObjectsLandGeometriesObjectArcsAlias17Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias17Member objectsLandGeometriesObjectArcsAlias17 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias17


encodedObjectsLandGeometriesObjectArcsAlias18 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias18 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias18Member


encodedObjectsLandGeometriesObjectArcsAlias18Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias18Member objectsLandGeometriesObjectArcsAlias18 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias18


encodedObjectsLandGeometriesObjectArcsAlias19 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias19 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias19Member


encodedObjectsLandGeometriesObjectArcsAlias19Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias19Member objectsLandGeometriesObjectArcsAlias19 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias19


encodedObjectsLandGeometriesObjectArcsAlias20 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias20 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias20Member


encodedObjectsLandGeometriesObjectArcsAlias20Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias20Member objectsLandGeometriesObjectArcsAlias20 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias20


encodedObjectsLandGeometriesObjectArcsAlias21 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias21 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias21Member


encodedObjectsLandGeometriesObjectArcsAlias21Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias21Member objectsLandGeometriesObjectArcsAlias21 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias21


encodedObjectsLandGeometriesObjectArcsAlias22 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias22 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias22Member


encodedObjectsLandGeometriesObjectArcsAlias22Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias22Member objectsLandGeometriesObjectArcsAlias22 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias22


encodedObjectsLandGeometriesObjectArcsAlias23 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias23 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias23Member


encodedObjectsLandGeometriesObjectArcsAlias23Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias23Member objectsLandGeometriesObjectArcsAlias23 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias23


encodedObjectsLandGeometriesObjectArcsAlias24 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias24 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias24Member


encodedObjectsLandGeometriesObjectArcsAlias24Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias24Member objectsLandGeometriesObjectArcsAlias24 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias24


encodedObjectsLandGeometriesObjectArcsAlias25 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias25 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias25Member


encodedObjectsLandGeometriesObjectArcsAlias25Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias25Member objectsLandGeometriesObjectArcsAlias25 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias25


encodedObjectsLandGeometriesObjectArcsAlias26 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias26 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias26Member


encodedObjectsLandGeometriesObjectArcsAlias26Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias26Member objectsLandGeometriesObjectArcsAlias26 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias26


encodedObjectsLandGeometriesObjectArcsAlias27 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias27 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias27Member


encodedObjectsLandGeometriesObjectArcsAlias27Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias27Member objectsLandGeometriesObjectArcsAlias27 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias27


encodedObjectsLandGeometriesObjectArcsAlias28 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias28 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias28Member


encodedObjectsLandGeometriesObjectArcsAlias28Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias28Member objectsLandGeometriesObjectArcsAlias28 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias28


encodedObjectsLandGeometriesObjectArcsAlias29 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias29 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias29Member


encodedObjectsLandGeometriesObjectArcsAlias29Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias29Member objectsLandGeometriesObjectArcsAlias29 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias29


encodedObjectsLandGeometriesObjectArcsAlias30 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias30 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias30Member


encodedObjectsLandGeometriesObjectArcsAlias30Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias30Member objectsLandGeometriesObjectArcsAlias30 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias30


encodedObjectsLandGeometriesObjectArcsAlias31 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias31 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias31Member


encodedObjectsLandGeometriesObjectArcsAlias31Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias31Member objectsLandGeometriesObjectArcsAlias31 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias31


encodedObjectsLandGeometriesObjectArcsAlias32 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias32 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias32Member


encodedObjectsLandGeometriesObjectArcsAlias32Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias32Member objectsLandGeometriesObjectArcsAlias32 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias32


encodedObjectsLandGeometriesObjectArcsAlias33 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias33 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias33Member


encodedObjectsLandGeometriesObjectArcsAlias33Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias33Member objectsLandGeometriesObjectArcsAlias33 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias33


encodedObjectsLandGeometriesObjectArcsAlias34 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias34 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias34Member


encodedObjectsLandGeometriesObjectArcsAlias34Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias34Member objectsLandGeometriesObjectArcsAlias34 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias34


encodedObjectsLandGeometriesObjectArcsAlias35 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias35 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias35Member


encodedObjectsLandGeometriesObjectArcsAlias35Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias35Member objectsLandGeometriesObjectArcsAlias35 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias35


encodedObjectsLandGeometriesObjectArcsAlias36 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias36 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias36Member


encodedObjectsLandGeometriesObjectArcsAlias36Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias36Member objectsLandGeometriesObjectArcsAlias36 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias36


encodedObjectsLandGeometriesObjectArcsAlias37 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias37 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias37Member


encodedObjectsLandGeometriesObjectArcsAlias37Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias37Member objectsLandGeometriesObjectArcsAlias37 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias37


encodedObjectsLandGeometriesObjectArcsAlias38 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias38 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias38Member


encodedObjectsLandGeometriesObjectArcsAlias38Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias38Member objectsLandGeometriesObjectArcsAlias38 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias38


encodedObjectsLandGeometriesObjectArcsAlias39 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias39 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias39Member


encodedObjectsLandGeometriesObjectArcsAlias39Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias39Member objectsLandGeometriesObjectArcsAlias39 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias39


encodedObjectsLandGeometriesObjectArcsAlias40 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias40 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias40Member


encodedObjectsLandGeometriesObjectArcsAlias40Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias40Member objectsLandGeometriesObjectArcsAlias40 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias40


encodedObjectsLandGeometriesObjectArcsAlias41 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias41 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias41Member


encodedObjectsLandGeometriesObjectArcsAlias41Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias41Member objectsLandGeometriesObjectArcsAlias41 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias41


encodedObjectsLandGeometriesObjectArcsAlias42 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias42 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias42Member


encodedObjectsLandGeometriesObjectArcsAlias42Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias42Member objectsLandGeometriesObjectArcsAlias42 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias42


encodedObjectsLandGeometriesObjectArcsAlias43 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias43 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias43Member


encodedObjectsLandGeometriesObjectArcsAlias43Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias43Member objectsLandGeometriesObjectArcsAlias43 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias43


encodedObjectsLandGeometriesObjectArcsAlias44 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias44 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias44Member


encodedObjectsLandGeometriesObjectArcsAlias44Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias44Member objectsLandGeometriesObjectArcsAlias44 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias44


encodedObjectsLandGeometriesObjectArcsAlias45 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias45 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias45Member


encodedObjectsLandGeometriesObjectArcsAlias45Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias45Member objectsLandGeometriesObjectArcsAlias45 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias45


encodedObjectsLandGeometriesObjectArcsAlias46 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias46 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias46Member


encodedObjectsLandGeometriesObjectArcsAlias46Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias46Member objectsLandGeometriesObjectArcsAlias46 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias46


encodedObjectsLandGeometriesObjectArcsAlias47 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias47 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias47Member


encodedObjectsLandGeometriesObjectArcsAlias47Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias47Member objectsLandGeometriesObjectArcsAlias47 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias47


encodedObjectsLandGeometriesObjectArcsAlias48 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias48 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias48Member


encodedObjectsLandGeometriesObjectArcsAlias48Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias48Member objectsLandGeometriesObjectArcsAlias48 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias48


encodedObjectsLandGeometriesObjectArcsAlias49 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias49 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias49Member


encodedObjectsLandGeometriesObjectArcsAlias49Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias49Member objectsLandGeometriesObjectArcsAlias49 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias49


encodedObjectsLandGeometriesObjectArcsAlias50 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias50 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias50Member


encodedObjectsLandGeometriesObjectArcsAlias50Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias50Member objectsLandGeometriesObjectArcsAlias50 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias50


encodedObjectsLandGeometriesObjectArcsAlias51 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias51 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias51Member


encodedObjectsLandGeometriesObjectArcsAlias51Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias51Member objectsLandGeometriesObjectArcsAlias51 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias51


encodedObjectsLandGeometriesObjectArcsAlias52 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias52 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias52Member


encodedObjectsLandGeometriesObjectArcsAlias52Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias52Member objectsLandGeometriesObjectArcsAlias52 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias52


encodedObjectsLandGeometriesObjectArcsAlias53 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias53 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias53Member


encodedObjectsLandGeometriesObjectArcsAlias53Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias53Member objectsLandGeometriesObjectArcsAlias53 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias53


encodedObjectsLandGeometriesObjectArcsAlias54 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias54 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias54Member


encodedObjectsLandGeometriesObjectArcsAlias54Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias54Member objectsLandGeometriesObjectArcsAlias54 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias54


encodedObjectsLandGeometriesObjectArcsAlias55 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias55 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias55Member


encodedObjectsLandGeometriesObjectArcsAlias55Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias55Member objectsLandGeometriesObjectArcsAlias55 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias55


encodedObjectsLandGeometriesObjectArcsAlias56 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias56 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias56Member


encodedObjectsLandGeometriesObjectArcsAlias56Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias56Member objectsLandGeometriesObjectArcsAlias56 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias56


encodedObjectsLandGeometriesObjectArcsAlias57 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias57 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias57Member


encodedObjectsLandGeometriesObjectArcsAlias57Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias57Member objectsLandGeometriesObjectArcsAlias57 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias57


encodedObjectsLandGeometriesObjectArcsAlias58 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias58 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias58Member


encodedObjectsLandGeometriesObjectArcsAlias58Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias58Member objectsLandGeometriesObjectArcsAlias58 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias58


encodedObjectsLandGeometriesObjectArcsAlias59 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias59 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias59Member


encodedObjectsLandGeometriesObjectArcsAlias59Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias59Member objectsLandGeometriesObjectArcsAlias59 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias59


encodedObjectsLandGeometriesObjectArcsAlias60 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias60 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias60Member


encodedObjectsLandGeometriesObjectArcsAlias60Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias60Member objectsLandGeometriesObjectArcsAlias60 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias60


encodedObjectsLandGeometriesObjectArcsAlias61 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias61 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias61Member


encodedObjectsLandGeometriesObjectArcsAlias61Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias61Member objectsLandGeometriesObjectArcsAlias61 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias61


encodedObjectsLandGeometriesObjectArcsAlias62 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias62 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias62Member


encodedObjectsLandGeometriesObjectArcsAlias62Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias62Member objectsLandGeometriesObjectArcsAlias62 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias62


encodedObjectsLandGeometriesObjectArcsAlias63 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias63 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias63Member


encodedObjectsLandGeometriesObjectArcsAlias63Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias63Member objectsLandGeometriesObjectArcsAlias63 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias63


encodedObjectsLandGeometriesObjectArcsAlias64 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias64 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias64Member


encodedObjectsLandGeometriesObjectArcsAlias64Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias64Member objectsLandGeometriesObjectArcsAlias64 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias64


encodedObjectsLandGeometriesObjectArcsAlias65 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias65 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias65Member


encodedObjectsLandGeometriesObjectArcsAlias65Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias65Member objectsLandGeometriesObjectArcsAlias65 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias65


encodedObjectsLandGeometriesObjectArcsAlias66 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias66 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias66Member


encodedObjectsLandGeometriesObjectArcsAlias66Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias66Member objectsLandGeometriesObjectArcsAlias66 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias66


encodedObjectsLandGeometriesObjectArcsAlias67 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias67 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias67Member


encodedObjectsLandGeometriesObjectArcsAlias67Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias67Member objectsLandGeometriesObjectArcsAlias67 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias67


encodedObjectsLandGeometriesObjectArcsAlias68 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias68 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias68Member


encodedObjectsLandGeometriesObjectArcsAlias68Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias68Member objectsLandGeometriesObjectArcsAlias68 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias68


encodedObjectsLandGeometriesObjectArcsAlias69 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias69 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias69Member


encodedObjectsLandGeometriesObjectArcsAlias69Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias69Member objectsLandGeometriesObjectArcsAlias69 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias69


encodedObjectsLandGeometriesObjectArcsAlias70 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias70 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias70Member


encodedObjectsLandGeometriesObjectArcsAlias70Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias70Member objectsLandGeometriesObjectArcsAlias70 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias70


encodedObjectsLandGeometriesObjectArcsAlias71 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias71 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias71Member


encodedObjectsLandGeometriesObjectArcsAlias71Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias71Member objectsLandGeometriesObjectArcsAlias71 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias71


encodedObjectsLandGeometriesObjectArcsAlias72 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias72 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias72Member


encodedObjectsLandGeometriesObjectArcsAlias72Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias72Member objectsLandGeometriesObjectArcsAlias72 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias72


encodedObjectsLandGeometriesObjectArcsAlias73 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias73 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias73Member


encodedObjectsLandGeometriesObjectArcsAlias73Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias73Member objectsLandGeometriesObjectArcsAlias73 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias73


encodedObjectsLandGeometriesObjectArcsAlias74 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias74 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias74Member


encodedObjectsLandGeometriesObjectArcsAlias74Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias74Member objectsLandGeometriesObjectArcsAlias74 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias74


encodedObjectsLandGeometriesObjectArcsAlias75 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias75 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias75Member


encodedObjectsLandGeometriesObjectArcsAlias75Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias75Member objectsLandGeometriesObjectArcsAlias75 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias75


encodedObjectsLandGeometriesObjectArcsAlias76 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias76 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias76Member


encodedObjectsLandGeometriesObjectArcsAlias76Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias76Member objectsLandGeometriesObjectArcsAlias76 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias76


encodedObjectsLandGeometriesObjectArcsAlias77 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias77 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias77Member


encodedObjectsLandGeometriesObjectArcsAlias77Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias77Member objectsLandGeometriesObjectArcsAlias77 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias77


encodedObjectsLandGeometriesObjectArcsAlias78 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias78 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias78Member


encodedObjectsLandGeometriesObjectArcsAlias78Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias78Member objectsLandGeometriesObjectArcsAlias78 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias78


encodedObjectsLandGeometriesObjectArcsAlias79 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias79 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias79Member


encodedObjectsLandGeometriesObjectArcsAlias79Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias79Member objectsLandGeometriesObjectArcsAlias79 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias79


encodedObjectsLandGeometriesObjectArcsAlias80 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias80 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias80Member


encodedObjectsLandGeometriesObjectArcsAlias80Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias80Member objectsLandGeometriesObjectArcsAlias80 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias80


encodedObjectsLandGeometriesObjectArcsAlias81 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias81 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias81Member


encodedObjectsLandGeometriesObjectArcsAlias81Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias81Member objectsLandGeometriesObjectArcsAlias81 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias81


encodedObjectsLandGeometriesObjectArcsAlias82 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias82 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias82Member


encodedObjectsLandGeometriesObjectArcsAlias82Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias82Member objectsLandGeometriesObjectArcsAlias82 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias82


encodedObjectsLandGeometriesObjectArcsAlias83 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias83 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias83Member


encodedObjectsLandGeometriesObjectArcsAlias83Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias83Member objectsLandGeometriesObjectArcsAlias83 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias83


encodedObjectsLandGeometriesObjectArcsAlias84 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias84 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias84Member


encodedObjectsLandGeometriesObjectArcsAlias84Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias84Member objectsLandGeometriesObjectArcsAlias84 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias84


encodedObjectsLandGeometriesObjectArcsAlias85 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias85 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias85Member


encodedObjectsLandGeometriesObjectArcsAlias85Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias85Member objectsLandGeometriesObjectArcsAlias85 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias85


encodedObjectsLandGeometriesObjectArcsAlias86 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias86 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias86Member


encodedObjectsLandGeometriesObjectArcsAlias86Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias86Member objectsLandGeometriesObjectArcsAlias86 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias86


encodedObjectsLandGeometriesObjectArcsAlias87 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias87 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias87Member


encodedObjectsLandGeometriesObjectArcsAlias87Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias87Member objectsLandGeometriesObjectArcsAlias87 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias87


encodedObjectsLandGeometriesObjectArcsAlias88 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias88 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias88Member


encodedObjectsLandGeometriesObjectArcsAlias88Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias88Member objectsLandGeometriesObjectArcsAlias88 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias88


encodedObjectsLandGeometriesObjectArcsAlias89 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias89 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias89Member


encodedObjectsLandGeometriesObjectArcsAlias89Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias89Member objectsLandGeometriesObjectArcsAlias89 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias89


encodedObjectsLandGeometriesObjectArcsAlias90 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias90 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias90Member


encodedObjectsLandGeometriesObjectArcsAlias90Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias90Member objectsLandGeometriesObjectArcsAlias90 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias90


encodedObjectsLandGeometriesObjectArcsAlias91 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias91 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias91Member


encodedObjectsLandGeometriesObjectArcsAlias91Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias91Member objectsLandGeometriesObjectArcsAlias91 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias91


encodedObjectsLandGeometriesObjectArcsAlias92 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias92 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias92Member


encodedObjectsLandGeometriesObjectArcsAlias92Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias92Member objectsLandGeometriesObjectArcsAlias92 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias92


encodedObjectsLandGeometriesObjectArcsAlias93 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias93 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias93Member


encodedObjectsLandGeometriesObjectArcsAlias93Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias93Member objectsLandGeometriesObjectArcsAlias93 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias93


encodedObjectsLandGeometriesObjectArcsAlias94 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias94 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias94Member


encodedObjectsLandGeometriesObjectArcsAlias94Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias94Member objectsLandGeometriesObjectArcsAlias94 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias94


encodedObjectsLandGeometriesObjectArcsAlias95 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias95 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias95Member


encodedObjectsLandGeometriesObjectArcsAlias95Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias95Member objectsLandGeometriesObjectArcsAlias95 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias95


encodedObjectsLandGeometriesObjectArcsAlias96 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias96 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias96Member


encodedObjectsLandGeometriesObjectArcsAlias96Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias96Member objectsLandGeometriesObjectArcsAlias96 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias96


encodedObjectsLandGeometriesObjectArcsAlias97 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias97 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias97Member


encodedObjectsLandGeometriesObjectArcsAlias97Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias97Member objectsLandGeometriesObjectArcsAlias97 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias97


encodedObjectsLandGeometriesObjectArcsAlias98 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias98 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias98Member


encodedObjectsLandGeometriesObjectArcsAlias98Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias98Member objectsLandGeometriesObjectArcsAlias98 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias98


encodedObjectsLandGeometriesObjectArcsAlias99 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias99 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias99Member


encodedObjectsLandGeometriesObjectArcsAlias99Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias99Member objectsLandGeometriesObjectArcsAlias99 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias99


encodedObjectsLandGeometriesObjectArcsAlias100 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias100 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias100Member


encodedObjectsLandGeometriesObjectArcsAlias100Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias100Member objectsLandGeometriesObjectArcsAlias100 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias100


encodedObjectsLandGeometriesObjectArcsAlias101 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias101 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias101Member


encodedObjectsLandGeometriesObjectArcsAlias101Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias101Member objectsLandGeometriesObjectArcsAlias101 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias101


encodedObjectsLandGeometriesObjectArcsAlias102 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias102 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias102Member


encodedObjectsLandGeometriesObjectArcsAlias102Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias102Member objectsLandGeometriesObjectArcsAlias102 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias102


encodedObjectsLandGeometriesObjectArcsAlias103 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias103 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias103Member


encodedObjectsLandGeometriesObjectArcsAlias103Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias103Member objectsLandGeometriesObjectArcsAlias103 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias103


encodedObjectsLandGeometriesObjectArcsAlias104 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias104 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias104Member


encodedObjectsLandGeometriesObjectArcsAlias104Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias104Member objectsLandGeometriesObjectArcsAlias104 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias104


encodedObjectsLandGeometriesObjectArcsAlias105 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias105 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias105Member


encodedObjectsLandGeometriesObjectArcsAlias105Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias105Member objectsLandGeometriesObjectArcsAlias105 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias105


encodedObjectsLandGeometriesObjectArcsAlias106 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias106 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias106Member


encodedObjectsLandGeometriesObjectArcsAlias106Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias106Member objectsLandGeometriesObjectArcsAlias106 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias106


encodedObjectsLandGeometriesObjectArcsAlias107 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias107 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias107Member


encodedObjectsLandGeometriesObjectArcsAlias107Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias107Member objectsLandGeometriesObjectArcsAlias107 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias107


encodedObjectsLandGeometriesObjectArcsAlias108 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias108 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias108Member


encodedObjectsLandGeometriesObjectArcsAlias108Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias108Member objectsLandGeometriesObjectArcsAlias108 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias108


encodedObjectsLandGeometriesObjectArcsAlias109 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias109 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias109Member


encodedObjectsLandGeometriesObjectArcsAlias109Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias109Member objectsLandGeometriesObjectArcsAlias109 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias109


encodedObjectsLandGeometriesObjectArcsAlias110 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias110 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias110Member


encodedObjectsLandGeometriesObjectArcsAlias110Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias110Member objectsLandGeometriesObjectArcsAlias110 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias110


encodedObjectsLandGeometriesObjectArcsAlias111 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias111 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias111Member


encodedObjectsLandGeometriesObjectArcsAlias111Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias111Member objectsLandGeometriesObjectArcsAlias111 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias111


encodedObjectsLandGeometriesObjectArcsAlias112 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias112 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias112Member


encodedObjectsLandGeometriesObjectArcsAlias112Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias112Member objectsLandGeometriesObjectArcsAlias112 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias112


encodedObjectsLandGeometriesObjectArcsAlias113 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias113 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias113Member


encodedObjectsLandGeometriesObjectArcsAlias113Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias113Member objectsLandGeometriesObjectArcsAlias113 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias113


encodedObjectsLandGeometriesObjectArcsAlias114 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias114 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias114Member


encodedObjectsLandGeometriesObjectArcsAlias114Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias114Member objectsLandGeometriesObjectArcsAlias114 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias114


encodedObjectsLandGeometriesObjectArcsAlias115 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias115 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias115Member


encodedObjectsLandGeometriesObjectArcsAlias115Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias115Member objectsLandGeometriesObjectArcsAlias115 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias115


encodedObjectsLandGeometriesObjectArcsAlias116 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias116 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias116Member


encodedObjectsLandGeometriesObjectArcsAlias116Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias116Member objectsLandGeometriesObjectArcsAlias116 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias116


encodedObjectsLandGeometriesObjectArcsAlias117 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias117 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias117Member


encodedObjectsLandGeometriesObjectArcsAlias117Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias117Member objectsLandGeometriesObjectArcsAlias117 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias117


encodedObjectsLandGeometriesObjectArcsAlias118 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias118 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias118Member


encodedObjectsLandGeometriesObjectArcsAlias118Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias118Member objectsLandGeometriesObjectArcsAlias118 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias118


encodedObjectsLandGeometriesObjectArcsAlias119 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias119 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias119Member


encodedObjectsLandGeometriesObjectArcsAlias119Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias119Member objectsLandGeometriesObjectArcsAlias119 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias119


encodedObjectsLandGeometriesObjectArcsAlias120 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias120 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias120Member


encodedObjectsLandGeometriesObjectArcsAlias120Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias120Member objectsLandGeometriesObjectArcsAlias120 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias120


encodedObjectsLandGeometriesObjectArcsAlias121 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias121 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias121Member


encodedObjectsLandGeometriesObjectArcsAlias121Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias121Member objectsLandGeometriesObjectArcsAlias121 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias121


encodedObjectsLandGeometriesObjectArcsAlias122 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias122 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias122Member


encodedObjectsLandGeometriesObjectArcsAlias122Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias122Member objectsLandGeometriesObjectArcsAlias122 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias122


encodedObjectsLandGeometriesObjectArcsAlias123 : List (List Int) -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias123 =
    Json.Encode.list encodedObjectsLandGeometriesObjectArcsAlias123Member


encodedObjectsLandGeometriesObjectArcsAlias123Member : List Int -> Json.Encode.Value
encodedObjectsLandGeometriesObjectArcsAlias123Member objectsLandGeometriesObjectArcsAlias123 =
    Json.Encode.list Json.Encode.int objectsLandGeometriesObjectArcsAlias123


encodedArcs : List (List (List Int)) -> Json.Encode.Value
encodedArcs =
    Json.Encode.list encodedArcsMember


encodedArcsMember : List (List Int) -> Json.Encode.Value
encodedArcsMember arcs =
    Json.Encode.list (Json.Encode.list Json.Encode.int) arcs


encodedArcsObject : List (List Int) -> Json.Encode.Value
encodedArcsObject =
    Json.Encode.list encodedArcsObjectMember


encodedArcsObjectMember : List Int -> Json.Encode.Value
encodedArcsObjectMember arcsObject =
    Json.Encode.list Json.Encode.int arcsObject


encodedArcsItem : List (List Int) -> Json.Encode.Value
encodedArcsItem =
    Json.Encode.list encodedArcsItemMember


encodedArcsItemMember : List Int -> Json.Encode.Value
encodedArcsItemMember arcsItem =
    Json.Encode.list Json.Encode.int arcsItem


encodedArcsEntity : List (List Int) -> Json.Encode.Value
encodedArcsEntity =
    Json.Encode.list encodedArcsEntityMember


encodedArcsEntityMember : List Int -> Json.Encode.Value
encodedArcsEntityMember arcsEntity =
    Json.Encode.list Json.Encode.int arcsEntity


encodedArcsThing : List (List Int) -> Json.Encode.Value
encodedArcsThing =
    Json.Encode.list encodedArcsThingMember


encodedArcsThingMember : List Int -> Json.Encode.Value
encodedArcsThingMember arcsThing =
    Json.Encode.list Json.Encode.int arcsThing


encodedArcsInstance : List (List Int) -> Json.Encode.Value
encodedArcsInstance =
    Json.Encode.list encodedArcsInstanceMember


encodedArcsInstanceMember : List Int -> Json.Encode.Value
encodedArcsInstanceMember arcsInstance =
    Json.Encode.list Json.Encode.int arcsInstance


encodedArcsConstituent : List (List Int) -> Json.Encode.Value
encodedArcsConstituent =
    Json.Encode.list encodedArcsConstituentMember


encodedArcsConstituentMember : List Int -> Json.Encode.Value
encodedArcsConstituentMember arcsConstituent =
    Json.Encode.list Json.Encode.int arcsConstituent


encodedArcsSpecimen : List (List Int) -> Json.Encode.Value
encodedArcsSpecimen =
    Json.Encode.list encodedArcsSpecimenMember


encodedArcsSpecimenMember : List Int -> Json.Encode.Value
encodedArcsSpecimenMember arcsSpecimen =
    Json.Encode.list Json.Encode.int arcsSpecimen


encodedArcsGadget : List (List Int) -> Json.Encode.Value
encodedArcsGadget =
    Json.Encode.list encodedArcsGadgetMember


encodedArcsGadgetMember : List Int -> Json.Encode.Value
encodedArcsGadgetMember arcsGadget =
    Json.Encode.list Json.Encode.int arcsGadget


encodedArcsWidget : List (List Int) -> Json.Encode.Value
encodedArcsWidget =
    Json.Encode.list encodedArcsWidgetMember


encodedArcsWidgetMember : List Int -> Json.Encode.Value
encodedArcsWidgetMember arcsWidget =
    Json.Encode.list Json.Encode.int arcsWidget


encodedArcsGizmo : List (List Int) -> Json.Encode.Value
encodedArcsGizmo =
    Json.Encode.list encodedArcsGizmoMember


encodedArcsGizmoMember : List Int -> Json.Encode.Value
encodedArcsGizmoMember arcsGizmo =
    Json.Encode.list Json.Encode.int arcsGizmo


encodedArcsPart : List (List Int) -> Json.Encode.Value
encodedArcsPart =
    Json.Encode.list encodedArcsPartMember


encodedArcsPartMember : List Int -> Json.Encode.Value
encodedArcsPartMember arcsPart =
    Json.Encode.list Json.Encode.int arcsPart


encodedArcsChunk : List (List Int) -> Json.Encode.Value
encodedArcsChunk =
    Json.Encode.list encodedArcsChunkMember


encodedArcsChunkMember : List Int -> Json.Encode.Value
encodedArcsChunkMember arcsChunk =
    Json.Encode.list Json.Encode.int arcsChunk


encodedArcsPiece : List (List Int) -> Json.Encode.Value
encodedArcsPiece =
    Json.Encode.list encodedArcsPieceMember


encodedArcsPieceMember : List Int -> Json.Encode.Value
encodedArcsPieceMember arcsPiece =
    Json.Encode.list Json.Encode.int arcsPiece


encodedArcsThingy : List (List Int) -> Json.Encode.Value
encodedArcsThingy =
    Json.Encode.list encodedArcsThingyMember


encodedArcsThingyMember : List Int -> Json.Encode.Value
encodedArcsThingyMember arcsThingy =
    Json.Encode.list Json.Encode.int arcsThingy


encodedArcsThingamajig : List (List Int) -> Json.Encode.Value
encodedArcsThingamajig =
    Json.Encode.list encodedArcsThingamajigMember


encodedArcsThingamajigMember : List Int -> Json.Encode.Value
encodedArcsThingamajigMember arcsThingamajig =
    Json.Encode.list Json.Encode.int arcsThingamajig


encodedArcsWhatsit : List (List Int) -> Json.Encode.Value
encodedArcsWhatsit =
    Json.Encode.list encodedArcsWhatsitMember


encodedArcsWhatsitMember : List Int -> Json.Encode.Value
encodedArcsWhatsitMember arcsWhatsit =
    Json.Encode.list Json.Encode.int arcsWhatsit


encodedArcsDoodad : List (List Int) -> Json.Encode.Value
encodedArcsDoodad =
    Json.Encode.list encodedArcsDoodadMember


encodedArcsDoodadMember : List Int -> Json.Encode.Value
encodedArcsDoodadMember arcsDoodad =
    Json.Encode.list Json.Encode.int arcsDoodad


encodedArcsAlias17 : List (List Int) -> Json.Encode.Value
encodedArcsAlias17 =
    Json.Encode.list encodedArcsAlias17Member


encodedArcsAlias17Member : List Int -> Json.Encode.Value
encodedArcsAlias17Member arcsAlias17 =
    Json.Encode.list Json.Encode.int arcsAlias17


encodedArcsAlias18 : List (List Int) -> Json.Encode.Value
encodedArcsAlias18 =
    Json.Encode.list encodedArcsAlias18Member


encodedArcsAlias18Member : List Int -> Json.Encode.Value
encodedArcsAlias18Member arcsAlias18 =
    Json.Encode.list Json.Encode.int arcsAlias18


encodedArcsAlias19 : List (List Int) -> Json.Encode.Value
encodedArcsAlias19 =
    Json.Encode.list encodedArcsAlias19Member


encodedArcsAlias19Member : List Int -> Json.Encode.Value
encodedArcsAlias19Member arcsAlias19 =
    Json.Encode.list Json.Encode.int arcsAlias19


encodedArcsAlias20 : List (List Int) -> Json.Encode.Value
encodedArcsAlias20 =
    Json.Encode.list encodedArcsAlias20Member


encodedArcsAlias20Member : List Int -> Json.Encode.Value
encodedArcsAlias20Member arcsAlias20 =
    Json.Encode.list Json.Encode.int arcsAlias20


encodedArcsAlias21 : List (List Int) -> Json.Encode.Value
encodedArcsAlias21 =
    Json.Encode.list encodedArcsAlias21Member


encodedArcsAlias21Member : List Int -> Json.Encode.Value
encodedArcsAlias21Member arcsAlias21 =
    Json.Encode.list Json.Encode.int arcsAlias21


encodedArcsAlias22 : List (List Int) -> Json.Encode.Value
encodedArcsAlias22 =
    Json.Encode.list encodedArcsAlias22Member


encodedArcsAlias22Member : List Int -> Json.Encode.Value
encodedArcsAlias22Member arcsAlias22 =
    Json.Encode.list Json.Encode.int arcsAlias22


encodedArcsAlias23 : List (List Int) -> Json.Encode.Value
encodedArcsAlias23 =
    Json.Encode.list encodedArcsAlias23Member


encodedArcsAlias23Member : List Int -> Json.Encode.Value
encodedArcsAlias23Member arcsAlias23 =
    Json.Encode.list Json.Encode.int arcsAlias23


encodedArcsAlias24 : List (List Int) -> Json.Encode.Value
encodedArcsAlias24 =
    Json.Encode.list encodedArcsAlias24Member


encodedArcsAlias24Member : List Int -> Json.Encode.Value
encodedArcsAlias24Member arcsAlias24 =
    Json.Encode.list Json.Encode.int arcsAlias24


encodedArcsAlias25 : List (List Int) -> Json.Encode.Value
encodedArcsAlias25 =
    Json.Encode.list encodedArcsAlias25Member


encodedArcsAlias25Member : List Int -> Json.Encode.Value
encodedArcsAlias25Member arcsAlias25 =
    Json.Encode.list Json.Encode.int arcsAlias25


encodedArcsAlias26 : List (List Int) -> Json.Encode.Value
encodedArcsAlias26 =
    Json.Encode.list encodedArcsAlias26Member


encodedArcsAlias26Member : List Int -> Json.Encode.Value
encodedArcsAlias26Member arcsAlias26 =
    Json.Encode.list Json.Encode.int arcsAlias26


encodedArcsAlias27 : List (List Int) -> Json.Encode.Value
encodedArcsAlias27 =
    Json.Encode.list encodedArcsAlias27Member


encodedArcsAlias27Member : List Int -> Json.Encode.Value
encodedArcsAlias27Member arcsAlias27 =
    Json.Encode.list Json.Encode.int arcsAlias27


encodedArcsAlias28 : List (List Int) -> Json.Encode.Value
encodedArcsAlias28 =
    Json.Encode.list encodedArcsAlias28Member


encodedArcsAlias28Member : List Int -> Json.Encode.Value
encodedArcsAlias28Member arcsAlias28 =
    Json.Encode.list Json.Encode.int arcsAlias28


encodedArcsAlias29 : List (List Int) -> Json.Encode.Value
encodedArcsAlias29 =
    Json.Encode.list encodedArcsAlias29Member


encodedArcsAlias29Member : List Int -> Json.Encode.Value
encodedArcsAlias29Member arcsAlias29 =
    Json.Encode.list Json.Encode.int arcsAlias29


encodedArcsAlias30 : List (List Int) -> Json.Encode.Value
encodedArcsAlias30 =
    Json.Encode.list encodedArcsAlias30Member


encodedArcsAlias30Member : List Int -> Json.Encode.Value
encodedArcsAlias30Member arcsAlias30 =
    Json.Encode.list Json.Encode.int arcsAlias30


encodedArcsAlias31 : List (List Int) -> Json.Encode.Value
encodedArcsAlias31 =
    Json.Encode.list encodedArcsAlias31Member


encodedArcsAlias31Member : List Int -> Json.Encode.Value
encodedArcsAlias31Member arcsAlias31 =
    Json.Encode.list Json.Encode.int arcsAlias31


encodedArcsAlias32 : List (List Int) -> Json.Encode.Value
encodedArcsAlias32 =
    Json.Encode.list encodedArcsAlias32Member


encodedArcsAlias32Member : List Int -> Json.Encode.Value
encodedArcsAlias32Member arcsAlias32 =
    Json.Encode.list Json.Encode.int arcsAlias32


encodedArcsAlias33 : List (List Int) -> Json.Encode.Value
encodedArcsAlias33 =
    Json.Encode.list encodedArcsAlias33Member


encodedArcsAlias33Member : List Int -> Json.Encode.Value
encodedArcsAlias33Member arcsAlias33 =
    Json.Encode.list Json.Encode.int arcsAlias33


encodedArcsAlias34 : List (List Int) -> Json.Encode.Value
encodedArcsAlias34 =
    Json.Encode.list encodedArcsAlias34Member


encodedArcsAlias34Member : List Int -> Json.Encode.Value
encodedArcsAlias34Member arcsAlias34 =
    Json.Encode.list Json.Encode.int arcsAlias34


encodedArcsAlias35 : List (List Int) -> Json.Encode.Value
encodedArcsAlias35 =
    Json.Encode.list encodedArcsAlias35Member


encodedArcsAlias35Member : List Int -> Json.Encode.Value
encodedArcsAlias35Member arcsAlias35 =
    Json.Encode.list Json.Encode.int arcsAlias35


encodedArcsAlias36 : List (List Int) -> Json.Encode.Value
encodedArcsAlias36 =
    Json.Encode.list encodedArcsAlias36Member


encodedArcsAlias36Member : List Int -> Json.Encode.Value
encodedArcsAlias36Member arcsAlias36 =
    Json.Encode.list Json.Encode.int arcsAlias36


encodedArcsAlias37 : List (List Int) -> Json.Encode.Value
encodedArcsAlias37 =
    Json.Encode.list encodedArcsAlias37Member


encodedArcsAlias37Member : List Int -> Json.Encode.Value
encodedArcsAlias37Member arcsAlias37 =
    Json.Encode.list Json.Encode.int arcsAlias37


encodedArcsAlias38 : List (List Int) -> Json.Encode.Value
encodedArcsAlias38 =
    Json.Encode.list encodedArcsAlias38Member


encodedArcsAlias38Member : List Int -> Json.Encode.Value
encodedArcsAlias38Member arcsAlias38 =
    Json.Encode.list Json.Encode.int arcsAlias38


encodedArcsAlias39 : List (List Int) -> Json.Encode.Value
encodedArcsAlias39 =
    Json.Encode.list encodedArcsAlias39Member


encodedArcsAlias39Member : List Int -> Json.Encode.Value
encodedArcsAlias39Member arcsAlias39 =
    Json.Encode.list Json.Encode.int arcsAlias39


encodedArcsAlias40 : List (List Int) -> Json.Encode.Value
encodedArcsAlias40 =
    Json.Encode.list encodedArcsAlias40Member


encodedArcsAlias40Member : List Int -> Json.Encode.Value
encodedArcsAlias40Member arcsAlias40 =
    Json.Encode.list Json.Encode.int arcsAlias40


encodedArcsAlias41 : List (List Int) -> Json.Encode.Value
encodedArcsAlias41 =
    Json.Encode.list encodedArcsAlias41Member


encodedArcsAlias41Member : List Int -> Json.Encode.Value
encodedArcsAlias41Member arcsAlias41 =
    Json.Encode.list Json.Encode.int arcsAlias41


encodedArcsAlias42 : List (List Int) -> Json.Encode.Value
encodedArcsAlias42 =
    Json.Encode.list encodedArcsAlias42Member


encodedArcsAlias42Member : List Int -> Json.Encode.Value
encodedArcsAlias42Member arcsAlias42 =
    Json.Encode.list Json.Encode.int arcsAlias42


encodedArcsAlias43 : List (List Int) -> Json.Encode.Value
encodedArcsAlias43 =
    Json.Encode.list encodedArcsAlias43Member


encodedArcsAlias43Member : List Int -> Json.Encode.Value
encodedArcsAlias43Member arcsAlias43 =
    Json.Encode.list Json.Encode.int arcsAlias43


encodedArcsAlias44 : List (List Int) -> Json.Encode.Value
encodedArcsAlias44 =
    Json.Encode.list encodedArcsAlias44Member


encodedArcsAlias44Member : List Int -> Json.Encode.Value
encodedArcsAlias44Member arcsAlias44 =
    Json.Encode.list Json.Encode.int arcsAlias44


encodedArcsAlias45 : List (List Int) -> Json.Encode.Value
encodedArcsAlias45 =
    Json.Encode.list encodedArcsAlias45Member


encodedArcsAlias45Member : List Int -> Json.Encode.Value
encodedArcsAlias45Member arcsAlias45 =
    Json.Encode.list Json.Encode.int arcsAlias45


encodedArcsAlias46 : List (List Int) -> Json.Encode.Value
encodedArcsAlias46 =
    Json.Encode.list encodedArcsAlias46Member


encodedArcsAlias46Member : List Int -> Json.Encode.Value
encodedArcsAlias46Member arcsAlias46 =
    Json.Encode.list Json.Encode.int arcsAlias46


encodedArcsAlias47 : List (List Int) -> Json.Encode.Value
encodedArcsAlias47 =
    Json.Encode.list encodedArcsAlias47Member


encodedArcsAlias47Member : List Int -> Json.Encode.Value
encodedArcsAlias47Member arcsAlias47 =
    Json.Encode.list Json.Encode.int arcsAlias47


encodedArcsAlias48 : List (List Int) -> Json.Encode.Value
encodedArcsAlias48 =
    Json.Encode.list encodedArcsAlias48Member


encodedArcsAlias48Member : List Int -> Json.Encode.Value
encodedArcsAlias48Member arcsAlias48 =
    Json.Encode.list Json.Encode.int arcsAlias48


encodedArcsAlias49 : List (List Int) -> Json.Encode.Value
encodedArcsAlias49 =
    Json.Encode.list encodedArcsAlias49Member


encodedArcsAlias49Member : List Int -> Json.Encode.Value
encodedArcsAlias49Member arcsAlias49 =
    Json.Encode.list Json.Encode.int arcsAlias49


encodedArcsAlias50 : List (List Int) -> Json.Encode.Value
encodedArcsAlias50 =
    Json.Encode.list encodedArcsAlias50Member


encodedArcsAlias50Member : List Int -> Json.Encode.Value
encodedArcsAlias50Member arcsAlias50 =
    Json.Encode.list Json.Encode.int arcsAlias50


encodedArcsAlias51 : List (List Int) -> Json.Encode.Value
encodedArcsAlias51 =
    Json.Encode.list encodedArcsAlias51Member


encodedArcsAlias51Member : List Int -> Json.Encode.Value
encodedArcsAlias51Member arcsAlias51 =
    Json.Encode.list Json.Encode.int arcsAlias51


encodedArcsAlias52 : List (List Int) -> Json.Encode.Value
encodedArcsAlias52 =
    Json.Encode.list encodedArcsAlias52Member


encodedArcsAlias52Member : List Int -> Json.Encode.Value
encodedArcsAlias52Member arcsAlias52 =
    Json.Encode.list Json.Encode.int arcsAlias52


encodedArcsAlias53 : List (List Int) -> Json.Encode.Value
encodedArcsAlias53 =
    Json.Encode.list encodedArcsAlias53Member


encodedArcsAlias53Member : List Int -> Json.Encode.Value
encodedArcsAlias53Member arcsAlias53 =
    Json.Encode.list Json.Encode.int arcsAlias53


encodedArcsAlias54 : List (List Int) -> Json.Encode.Value
encodedArcsAlias54 =
    Json.Encode.list encodedArcsAlias54Member


encodedArcsAlias54Member : List Int -> Json.Encode.Value
encodedArcsAlias54Member arcsAlias54 =
    Json.Encode.list Json.Encode.int arcsAlias54


encodedArcsAlias55 : List (List Int) -> Json.Encode.Value
encodedArcsAlias55 =
    Json.Encode.list encodedArcsAlias55Member


encodedArcsAlias55Member : List Int -> Json.Encode.Value
encodedArcsAlias55Member arcsAlias55 =
    Json.Encode.list Json.Encode.int arcsAlias55


encodedArcsAlias56 : List (List Int) -> Json.Encode.Value
encodedArcsAlias56 =
    Json.Encode.list encodedArcsAlias56Member


encodedArcsAlias56Member : List Int -> Json.Encode.Value
encodedArcsAlias56Member arcsAlias56 =
    Json.Encode.list Json.Encode.int arcsAlias56


encodedArcsAlias57 : List (List Int) -> Json.Encode.Value
encodedArcsAlias57 =
    Json.Encode.list encodedArcsAlias57Member


encodedArcsAlias57Member : List Int -> Json.Encode.Value
encodedArcsAlias57Member arcsAlias57 =
    Json.Encode.list Json.Encode.int arcsAlias57


encodedArcsAlias58 : List (List Int) -> Json.Encode.Value
encodedArcsAlias58 =
    Json.Encode.list encodedArcsAlias58Member


encodedArcsAlias58Member : List Int -> Json.Encode.Value
encodedArcsAlias58Member arcsAlias58 =
    Json.Encode.list Json.Encode.int arcsAlias58


encodedArcsAlias59 : List (List Int) -> Json.Encode.Value
encodedArcsAlias59 =
    Json.Encode.list encodedArcsAlias59Member


encodedArcsAlias59Member : List Int -> Json.Encode.Value
encodedArcsAlias59Member arcsAlias59 =
    Json.Encode.list Json.Encode.int arcsAlias59


encodedArcsAlias60 : List (List Int) -> Json.Encode.Value
encodedArcsAlias60 =
    Json.Encode.list encodedArcsAlias60Member


encodedArcsAlias60Member : List Int -> Json.Encode.Value
encodedArcsAlias60Member arcsAlias60 =
    Json.Encode.list Json.Encode.int arcsAlias60


encodedArcsAlias61 : List (List Int) -> Json.Encode.Value
encodedArcsAlias61 =
    Json.Encode.list encodedArcsAlias61Member


encodedArcsAlias61Member : List Int -> Json.Encode.Value
encodedArcsAlias61Member arcsAlias61 =
    Json.Encode.list Json.Encode.int arcsAlias61


encodedArcsAlias62 : List (List Int) -> Json.Encode.Value
encodedArcsAlias62 =
    Json.Encode.list encodedArcsAlias62Member


encodedArcsAlias62Member : List Int -> Json.Encode.Value
encodedArcsAlias62Member arcsAlias62 =
    Json.Encode.list Json.Encode.int arcsAlias62


encodedArcsAlias63 : List (List Int) -> Json.Encode.Value
encodedArcsAlias63 =
    Json.Encode.list encodedArcsAlias63Member


encodedArcsAlias63Member : List Int -> Json.Encode.Value
encodedArcsAlias63Member arcsAlias63 =
    Json.Encode.list Json.Encode.int arcsAlias63


encodedArcsAlias64 : List (List Int) -> Json.Encode.Value
encodedArcsAlias64 =
    Json.Encode.list encodedArcsAlias64Member


encodedArcsAlias64Member : List Int -> Json.Encode.Value
encodedArcsAlias64Member arcsAlias64 =
    Json.Encode.list Json.Encode.int arcsAlias64


encodedArcsAlias65 : List (List Int) -> Json.Encode.Value
encodedArcsAlias65 =
    Json.Encode.list encodedArcsAlias65Member


encodedArcsAlias65Member : List Int -> Json.Encode.Value
encodedArcsAlias65Member arcsAlias65 =
    Json.Encode.list Json.Encode.int arcsAlias65


encodedArcsAlias66 : List (List Int) -> Json.Encode.Value
encodedArcsAlias66 =
    Json.Encode.list encodedArcsAlias66Member


encodedArcsAlias66Member : List Int -> Json.Encode.Value
encodedArcsAlias66Member arcsAlias66 =
    Json.Encode.list Json.Encode.int arcsAlias66


encodedArcsAlias67 : List (List Int) -> Json.Encode.Value
encodedArcsAlias67 =
    Json.Encode.list encodedArcsAlias67Member


encodedArcsAlias67Member : List Int -> Json.Encode.Value
encodedArcsAlias67Member arcsAlias67 =
    Json.Encode.list Json.Encode.int arcsAlias67


encodedArcsAlias68 : List (List Int) -> Json.Encode.Value
encodedArcsAlias68 =
    Json.Encode.list encodedArcsAlias68Member


encodedArcsAlias68Member : List Int -> Json.Encode.Value
encodedArcsAlias68Member arcsAlias68 =
    Json.Encode.list Json.Encode.int arcsAlias68


encodedArcsAlias69 : List (List Int) -> Json.Encode.Value
encodedArcsAlias69 =
    Json.Encode.list encodedArcsAlias69Member


encodedArcsAlias69Member : List Int -> Json.Encode.Value
encodedArcsAlias69Member arcsAlias69 =
    Json.Encode.list Json.Encode.int arcsAlias69


encodedArcsAlias70 : List (List Int) -> Json.Encode.Value
encodedArcsAlias70 =
    Json.Encode.list encodedArcsAlias70Member


encodedArcsAlias70Member : List Int -> Json.Encode.Value
encodedArcsAlias70Member arcsAlias70 =
    Json.Encode.list Json.Encode.int arcsAlias70


encodedArcsAlias71 : List (List Int) -> Json.Encode.Value
encodedArcsAlias71 =
    Json.Encode.list encodedArcsAlias71Member


encodedArcsAlias71Member : List Int -> Json.Encode.Value
encodedArcsAlias71Member arcsAlias71 =
    Json.Encode.list Json.Encode.int arcsAlias71


encodedArcsAlias72 : List (List Int) -> Json.Encode.Value
encodedArcsAlias72 =
    Json.Encode.list encodedArcsAlias72Member


encodedArcsAlias72Member : List Int -> Json.Encode.Value
encodedArcsAlias72Member arcsAlias72 =
    Json.Encode.list Json.Encode.int arcsAlias72


encodedArcsAlias73 : List (List Int) -> Json.Encode.Value
encodedArcsAlias73 =
    Json.Encode.list encodedArcsAlias73Member


encodedArcsAlias73Member : List Int -> Json.Encode.Value
encodedArcsAlias73Member arcsAlias73 =
    Json.Encode.list Json.Encode.int arcsAlias73


encodedArcsAlias74 : List (List Int) -> Json.Encode.Value
encodedArcsAlias74 =
    Json.Encode.list encodedArcsAlias74Member


encodedArcsAlias74Member : List Int -> Json.Encode.Value
encodedArcsAlias74Member arcsAlias74 =
    Json.Encode.list Json.Encode.int arcsAlias74


encodedArcsAlias75 : List (List Int) -> Json.Encode.Value
encodedArcsAlias75 =
    Json.Encode.list encodedArcsAlias75Member


encodedArcsAlias75Member : List Int -> Json.Encode.Value
encodedArcsAlias75Member arcsAlias75 =
    Json.Encode.list Json.Encode.int arcsAlias75


encodedArcsAlias76 : List (List Int) -> Json.Encode.Value
encodedArcsAlias76 =
    Json.Encode.list encodedArcsAlias76Member


encodedArcsAlias76Member : List Int -> Json.Encode.Value
encodedArcsAlias76Member arcsAlias76 =
    Json.Encode.list Json.Encode.int arcsAlias76


encodedArcsAlias77 : List (List Int) -> Json.Encode.Value
encodedArcsAlias77 =
    Json.Encode.list encodedArcsAlias77Member


encodedArcsAlias77Member : List Int -> Json.Encode.Value
encodedArcsAlias77Member arcsAlias77 =
    Json.Encode.list Json.Encode.int arcsAlias77


encodedArcsAlias78 : List (List Int) -> Json.Encode.Value
encodedArcsAlias78 =
    Json.Encode.list encodedArcsAlias78Member


encodedArcsAlias78Member : List Int -> Json.Encode.Value
encodedArcsAlias78Member arcsAlias78 =
    Json.Encode.list Json.Encode.int arcsAlias78


encodedArcsAlias79 : List (List Int) -> Json.Encode.Value
encodedArcsAlias79 =
    Json.Encode.list encodedArcsAlias79Member


encodedArcsAlias79Member : List Int -> Json.Encode.Value
encodedArcsAlias79Member arcsAlias79 =
    Json.Encode.list Json.Encode.int arcsAlias79


encodedArcsAlias80 : List (List Int) -> Json.Encode.Value
encodedArcsAlias80 =
    Json.Encode.list encodedArcsAlias80Member


encodedArcsAlias80Member : List Int -> Json.Encode.Value
encodedArcsAlias80Member arcsAlias80 =
    Json.Encode.list Json.Encode.int arcsAlias80


encodedArcsAlias81 : List (List Int) -> Json.Encode.Value
encodedArcsAlias81 =
    Json.Encode.list encodedArcsAlias81Member


encodedArcsAlias81Member : List Int -> Json.Encode.Value
encodedArcsAlias81Member arcsAlias81 =
    Json.Encode.list Json.Encode.int arcsAlias81


encodedArcsAlias82 : List (List Int) -> Json.Encode.Value
encodedArcsAlias82 =
    Json.Encode.list encodedArcsAlias82Member


encodedArcsAlias82Member : List Int -> Json.Encode.Value
encodedArcsAlias82Member arcsAlias82 =
    Json.Encode.list Json.Encode.int arcsAlias82


encodedArcsAlias83 : List (List Int) -> Json.Encode.Value
encodedArcsAlias83 =
    Json.Encode.list encodedArcsAlias83Member


encodedArcsAlias83Member : List Int -> Json.Encode.Value
encodedArcsAlias83Member arcsAlias83 =
    Json.Encode.list Json.Encode.int arcsAlias83


encodedArcsAlias84 : List (List Int) -> Json.Encode.Value
encodedArcsAlias84 =
    Json.Encode.list encodedArcsAlias84Member


encodedArcsAlias84Member : List Int -> Json.Encode.Value
encodedArcsAlias84Member arcsAlias84 =
    Json.Encode.list Json.Encode.int arcsAlias84


encodedArcsAlias85 : List (List Int) -> Json.Encode.Value
encodedArcsAlias85 =
    Json.Encode.list encodedArcsAlias85Member


encodedArcsAlias85Member : List Int -> Json.Encode.Value
encodedArcsAlias85Member arcsAlias85 =
    Json.Encode.list Json.Encode.int arcsAlias85


encodedArcsAlias86 : List (List Int) -> Json.Encode.Value
encodedArcsAlias86 =
    Json.Encode.list encodedArcsAlias86Member


encodedArcsAlias86Member : List Int -> Json.Encode.Value
encodedArcsAlias86Member arcsAlias86 =
    Json.Encode.list Json.Encode.int arcsAlias86


encodedArcsAlias87 : List (List Int) -> Json.Encode.Value
encodedArcsAlias87 =
    Json.Encode.list encodedArcsAlias87Member


encodedArcsAlias87Member : List Int -> Json.Encode.Value
encodedArcsAlias87Member arcsAlias87 =
    Json.Encode.list Json.Encode.int arcsAlias87


encodedArcsAlias88 : List (List Int) -> Json.Encode.Value
encodedArcsAlias88 =
    Json.Encode.list encodedArcsAlias88Member


encodedArcsAlias88Member : List Int -> Json.Encode.Value
encodedArcsAlias88Member arcsAlias88 =
    Json.Encode.list Json.Encode.int arcsAlias88


encodedArcsAlias89 : List (List Int) -> Json.Encode.Value
encodedArcsAlias89 =
    Json.Encode.list encodedArcsAlias89Member


encodedArcsAlias89Member : List Int -> Json.Encode.Value
encodedArcsAlias89Member arcsAlias89 =
    Json.Encode.list Json.Encode.int arcsAlias89


encodedArcsAlias90 : List (List Int) -> Json.Encode.Value
encodedArcsAlias90 =
    Json.Encode.list encodedArcsAlias90Member


encodedArcsAlias90Member : List Int -> Json.Encode.Value
encodedArcsAlias90Member arcsAlias90 =
    Json.Encode.list Json.Encode.int arcsAlias90


encodedArcsAlias91 : List (List Int) -> Json.Encode.Value
encodedArcsAlias91 =
    Json.Encode.list encodedArcsAlias91Member


encodedArcsAlias91Member : List Int -> Json.Encode.Value
encodedArcsAlias91Member arcsAlias91 =
    Json.Encode.list Json.Encode.int arcsAlias91


encodedArcsAlias92 : List (List Int) -> Json.Encode.Value
encodedArcsAlias92 =
    Json.Encode.list encodedArcsAlias92Member


encodedArcsAlias92Member : List Int -> Json.Encode.Value
encodedArcsAlias92Member arcsAlias92 =
    Json.Encode.list Json.Encode.int arcsAlias92


encodedArcsAlias93 : List (List Int) -> Json.Encode.Value
encodedArcsAlias93 =
    Json.Encode.list encodedArcsAlias93Member


encodedArcsAlias93Member : List Int -> Json.Encode.Value
encodedArcsAlias93Member arcsAlias93 =
    Json.Encode.list Json.Encode.int arcsAlias93


encodedArcsAlias94 : List (List Int) -> Json.Encode.Value
encodedArcsAlias94 =
    Json.Encode.list encodedArcsAlias94Member


encodedArcsAlias94Member : List Int -> Json.Encode.Value
encodedArcsAlias94Member arcsAlias94 =
    Json.Encode.list Json.Encode.int arcsAlias94


encodedArcsAlias95 : List (List Int) -> Json.Encode.Value
encodedArcsAlias95 =
    Json.Encode.list encodedArcsAlias95Member


encodedArcsAlias95Member : List Int -> Json.Encode.Value
encodedArcsAlias95Member arcsAlias95 =
    Json.Encode.list Json.Encode.int arcsAlias95


encodedArcsAlias96 : List (List Int) -> Json.Encode.Value
encodedArcsAlias96 =
    Json.Encode.list encodedArcsAlias96Member


encodedArcsAlias96Member : List Int -> Json.Encode.Value
encodedArcsAlias96Member arcsAlias96 =
    Json.Encode.list Json.Encode.int arcsAlias96


encodedArcsAlias97 : List (List Int) -> Json.Encode.Value
encodedArcsAlias97 =
    Json.Encode.list encodedArcsAlias97Member


encodedArcsAlias97Member : List Int -> Json.Encode.Value
encodedArcsAlias97Member arcsAlias97 =
    Json.Encode.list Json.Encode.int arcsAlias97


encodedArcsAlias98 : List (List Int) -> Json.Encode.Value
encodedArcsAlias98 =
    Json.Encode.list encodedArcsAlias98Member


encodedArcsAlias98Member : List Int -> Json.Encode.Value
encodedArcsAlias98Member arcsAlias98 =
    Json.Encode.list Json.Encode.int arcsAlias98


encodedArcsAlias99 : List (List Int) -> Json.Encode.Value
encodedArcsAlias99 =
    Json.Encode.list encodedArcsAlias99Member


encodedArcsAlias99Member : List Int -> Json.Encode.Value
encodedArcsAlias99Member arcsAlias99 =
    Json.Encode.list Json.Encode.int arcsAlias99


encodedArcsAlias100 : List (List Int) -> Json.Encode.Value
encodedArcsAlias100 =
    Json.Encode.list encodedArcsAlias100Member


encodedArcsAlias100Member : List Int -> Json.Encode.Value
encodedArcsAlias100Member arcsAlias100 =
    Json.Encode.list Json.Encode.int arcsAlias100


encodedArcsAlias101 : List (List Int) -> Json.Encode.Value
encodedArcsAlias101 =
    Json.Encode.list encodedArcsAlias101Member


encodedArcsAlias101Member : List Int -> Json.Encode.Value
encodedArcsAlias101Member arcsAlias101 =
    Json.Encode.list Json.Encode.int arcsAlias101


encodedArcsAlias102 : List (List Int) -> Json.Encode.Value
encodedArcsAlias102 =
    Json.Encode.list encodedArcsAlias102Member


encodedArcsAlias102Member : List Int -> Json.Encode.Value
encodedArcsAlias102Member arcsAlias102 =
    Json.Encode.list Json.Encode.int arcsAlias102


encodedArcsAlias103 : List (List Int) -> Json.Encode.Value
encodedArcsAlias103 =
    Json.Encode.list encodedArcsAlias103Member


encodedArcsAlias103Member : List Int -> Json.Encode.Value
encodedArcsAlias103Member arcsAlias103 =
    Json.Encode.list Json.Encode.int arcsAlias103


encodedArcsAlias104 : List (List Int) -> Json.Encode.Value
encodedArcsAlias104 =
    Json.Encode.list encodedArcsAlias104Member


encodedArcsAlias104Member : List Int -> Json.Encode.Value
encodedArcsAlias104Member arcsAlias104 =
    Json.Encode.list Json.Encode.int arcsAlias104


encodedArcsAlias105 : List (List Int) -> Json.Encode.Value
encodedArcsAlias105 =
    Json.Encode.list encodedArcsAlias105Member


encodedArcsAlias105Member : List Int -> Json.Encode.Value
encodedArcsAlias105Member arcsAlias105 =
    Json.Encode.list Json.Encode.int arcsAlias105


encodedArcsAlias106 : List (List Int) -> Json.Encode.Value
encodedArcsAlias106 =
    Json.Encode.list encodedArcsAlias106Member


encodedArcsAlias106Member : List Int -> Json.Encode.Value
encodedArcsAlias106Member arcsAlias106 =
    Json.Encode.list Json.Encode.int arcsAlias106


encodedArcsAlias107 : List (List Int) -> Json.Encode.Value
encodedArcsAlias107 =
    Json.Encode.list encodedArcsAlias107Member


encodedArcsAlias107Member : List Int -> Json.Encode.Value
encodedArcsAlias107Member arcsAlias107 =
    Json.Encode.list Json.Encode.int arcsAlias107


encodedArcsAlias108 : List (List Int) -> Json.Encode.Value
encodedArcsAlias108 =
    Json.Encode.list encodedArcsAlias108Member


encodedArcsAlias108Member : List Int -> Json.Encode.Value
encodedArcsAlias108Member arcsAlias108 =
    Json.Encode.list Json.Encode.int arcsAlias108


encodedArcsAlias109 : List (List Int) -> Json.Encode.Value
encodedArcsAlias109 =
    Json.Encode.list encodedArcsAlias109Member


encodedArcsAlias109Member : List Int -> Json.Encode.Value
encodedArcsAlias109Member arcsAlias109 =
    Json.Encode.list Json.Encode.int arcsAlias109


encodedArcsAlias110 : List (List Int) -> Json.Encode.Value
encodedArcsAlias110 =
    Json.Encode.list encodedArcsAlias110Member


encodedArcsAlias110Member : List Int -> Json.Encode.Value
encodedArcsAlias110Member arcsAlias110 =
    Json.Encode.list Json.Encode.int arcsAlias110


encodedArcsAlias111 : List (List Int) -> Json.Encode.Value
encodedArcsAlias111 =
    Json.Encode.list encodedArcsAlias111Member


encodedArcsAlias111Member : List Int -> Json.Encode.Value
encodedArcsAlias111Member arcsAlias111 =
    Json.Encode.list Json.Encode.int arcsAlias111


encodedArcsAlias112 : List (List Int) -> Json.Encode.Value
encodedArcsAlias112 =
    Json.Encode.list encodedArcsAlias112Member


encodedArcsAlias112Member : List Int -> Json.Encode.Value
encodedArcsAlias112Member arcsAlias112 =
    Json.Encode.list Json.Encode.int arcsAlias112


encodedArcsAlias113 : List (List Int) -> Json.Encode.Value
encodedArcsAlias113 =
    Json.Encode.list encodedArcsAlias113Member


encodedArcsAlias113Member : List Int -> Json.Encode.Value
encodedArcsAlias113Member arcsAlias113 =
    Json.Encode.list Json.Encode.int arcsAlias113


encodedArcsAlias114 : List (List Int) -> Json.Encode.Value
encodedArcsAlias114 =
    Json.Encode.list encodedArcsAlias114Member


encodedArcsAlias114Member : List Int -> Json.Encode.Value
encodedArcsAlias114Member arcsAlias114 =
    Json.Encode.list Json.Encode.int arcsAlias114


encodedArcsAlias115 : List (List Int) -> Json.Encode.Value
encodedArcsAlias115 =
    Json.Encode.list encodedArcsAlias115Member


encodedArcsAlias115Member : List Int -> Json.Encode.Value
encodedArcsAlias115Member arcsAlias115 =
    Json.Encode.list Json.Encode.int arcsAlias115


encodedArcsAlias116 : List (List Int) -> Json.Encode.Value
encodedArcsAlias116 =
    Json.Encode.list encodedArcsAlias116Member


encodedArcsAlias116Member : List Int -> Json.Encode.Value
encodedArcsAlias116Member arcsAlias116 =
    Json.Encode.list Json.Encode.int arcsAlias116


encodedArcsAlias117 : List (List Int) -> Json.Encode.Value
encodedArcsAlias117 =
    Json.Encode.list encodedArcsAlias117Member


encodedArcsAlias117Member : List Int -> Json.Encode.Value
encodedArcsAlias117Member arcsAlias117 =
    Json.Encode.list Json.Encode.int arcsAlias117


encodedArcsAlias118 : List (List Int) -> Json.Encode.Value
encodedArcsAlias118 =
    Json.Encode.list encodedArcsAlias118Member


encodedArcsAlias118Member : List Int -> Json.Encode.Value
encodedArcsAlias118Member arcsAlias118 =
    Json.Encode.list Json.Encode.int arcsAlias118


encodedArcsAlias119 : List (List Int) -> Json.Encode.Value
encodedArcsAlias119 =
    Json.Encode.list encodedArcsAlias119Member


encodedArcsAlias119Member : List Int -> Json.Encode.Value
encodedArcsAlias119Member arcsAlias119 =
    Json.Encode.list Json.Encode.int arcsAlias119


encodedArcsAlias120 : List (List Int) -> Json.Encode.Value
encodedArcsAlias120 =
    Json.Encode.list encodedArcsAlias120Member


encodedArcsAlias120Member : List Int -> Json.Encode.Value
encodedArcsAlias120Member arcsAlias120 =
    Json.Encode.list Json.Encode.int arcsAlias120


encodedArcsAlias121 : List (List Int) -> Json.Encode.Value
encodedArcsAlias121 =
    Json.Encode.list encodedArcsAlias121Member


encodedArcsAlias121Member : List Int -> Json.Encode.Value
encodedArcsAlias121Member arcsAlias121 =
    Json.Encode.list Json.Encode.int arcsAlias121


encodedArcsAlias122 : List (List Int) -> Json.Encode.Value
encodedArcsAlias122 =
    Json.Encode.list encodedArcsAlias122Member


encodedArcsAlias122Member : List Int -> Json.Encode.Value
encodedArcsAlias122Member arcsAlias122 =
    Json.Encode.list Json.Encode.int arcsAlias122


encodedArcsAlias123 : List (List Int) -> Json.Encode.Value
encodedArcsAlias123 =
    Json.Encode.list encodedArcsAlias123Member


encodedArcsAlias123Member : List Int -> Json.Encode.Value
encodedArcsAlias123Member arcsAlias123 =
    Json.Encode.list Json.Encode.int arcsAlias123


encodedArcsAlias124 : List (List Int) -> Json.Encode.Value
encodedArcsAlias124 =
    Json.Encode.list encodedArcsAlias124Member


encodedArcsAlias124Member : List Int -> Json.Encode.Value
encodedArcsAlias124Member arcsAlias124 =
    Json.Encode.list Json.Encode.int arcsAlias124


encodedArcsAlias125 : List (List Int) -> Json.Encode.Value
encodedArcsAlias125 =
    Json.Encode.list encodedArcsAlias125Member


encodedArcsAlias125Member : List Int -> Json.Encode.Value
encodedArcsAlias125Member arcsAlias125 =
    Json.Encode.list Json.Encode.int arcsAlias125


encodedArcsAlias126 : List (List Int) -> Json.Encode.Value
encodedArcsAlias126 =
    Json.Encode.list encodedArcsAlias126Member


encodedArcsAlias126Member : List Int -> Json.Encode.Value
encodedArcsAlias126Member arcsAlias126 =
    Json.Encode.list Json.Encode.int arcsAlias126


encodedArcsAlias127 : List (List Int) -> Json.Encode.Value
encodedArcsAlias127 =
    Json.Encode.list encodedArcsAlias127Member


encodedArcsAlias127Member : List Int -> Json.Encode.Value
encodedArcsAlias127Member arcsAlias127 =
    Json.Encode.list Json.Encode.int arcsAlias127


encodedArcsAlias128 : List (List Int) -> Json.Encode.Value
encodedArcsAlias128 =
    Json.Encode.list encodedArcsAlias128Member


encodedArcsAlias128Member : List Int -> Json.Encode.Value
encodedArcsAlias128Member arcsAlias128 =
    Json.Encode.list Json.Encode.int arcsAlias128


encodedArcsAlias129 : List (List Int) -> Json.Encode.Value
encodedArcsAlias129 =
    Json.Encode.list encodedArcsAlias129Member


encodedArcsAlias129Member : List Int -> Json.Encode.Value
encodedArcsAlias129Member arcsAlias129 =
    Json.Encode.list Json.Encode.int arcsAlias129


encodedArcsAlias130 : List (List Int) -> Json.Encode.Value
encodedArcsAlias130 =
    Json.Encode.list encodedArcsAlias130Member


encodedArcsAlias130Member : List Int -> Json.Encode.Value
encodedArcsAlias130Member arcsAlias130 =
    Json.Encode.list Json.Encode.int arcsAlias130


encodedArcsAlias131 : List (List Int) -> Json.Encode.Value
encodedArcsAlias131 =
    Json.Encode.list encodedArcsAlias131Member


encodedArcsAlias131Member : List Int -> Json.Encode.Value
encodedArcsAlias131Member arcsAlias131 =
    Json.Encode.list Json.Encode.int arcsAlias131


encodedArcsAlias132 : List (List Int) -> Json.Encode.Value
encodedArcsAlias132 =
    Json.Encode.list encodedArcsAlias132Member


encodedArcsAlias132Member : List Int -> Json.Encode.Value
encodedArcsAlias132Member arcsAlias132 =
    Json.Encode.list Json.Encode.int arcsAlias132


encodedArcsAlias133 : List (List Int) -> Json.Encode.Value
encodedArcsAlias133 =
    Json.Encode.list encodedArcsAlias133Member


encodedArcsAlias133Member : List Int -> Json.Encode.Value
encodedArcsAlias133Member arcsAlias133 =
    Json.Encode.list Json.Encode.int arcsAlias133


encodedArcsAlias134 : List (List Int) -> Json.Encode.Value
encodedArcsAlias134 =
    Json.Encode.list encodedArcsAlias134Member


encodedArcsAlias134Member : List Int -> Json.Encode.Value
encodedArcsAlias134Member arcsAlias134 =
    Json.Encode.list Json.Encode.int arcsAlias134


encodedArcsAlias135 : List (List Int) -> Json.Encode.Value
encodedArcsAlias135 =
    Json.Encode.list encodedArcsAlias135Member


encodedArcsAlias135Member : List Int -> Json.Encode.Value
encodedArcsAlias135Member arcsAlias135 =
    Json.Encode.list Json.Encode.int arcsAlias135


encodedArcsAlias136 : List (List Int) -> Json.Encode.Value
encodedArcsAlias136 =
    Json.Encode.list encodedArcsAlias136Member


encodedArcsAlias136Member : List Int -> Json.Encode.Value
encodedArcsAlias136Member arcsAlias136 =
    Json.Encode.list Json.Encode.int arcsAlias136


encodedArcsAlias137 : List (List Int) -> Json.Encode.Value
encodedArcsAlias137 =
    Json.Encode.list encodedArcsAlias137Member


encodedArcsAlias137Member : List Int -> Json.Encode.Value
encodedArcsAlias137Member arcsAlias137 =
    Json.Encode.list Json.Encode.int arcsAlias137


encodedArcsAlias138 : List (List Int) -> Json.Encode.Value
encodedArcsAlias138 =
    Json.Encode.list encodedArcsAlias138Member


encodedArcsAlias138Member : List Int -> Json.Encode.Value
encodedArcsAlias138Member arcsAlias138 =
    Json.Encode.list Json.Encode.int arcsAlias138


encodedArcsAlias139 : List (List Int) -> Json.Encode.Value
encodedArcsAlias139 =
    Json.Encode.list encodedArcsAlias139Member


encodedArcsAlias139Member : List Int -> Json.Encode.Value
encodedArcsAlias139Member arcsAlias139 =
    Json.Encode.list Json.Encode.int arcsAlias139


encodedArcsAlias140 : List (List Int) -> Json.Encode.Value
encodedArcsAlias140 =
    Json.Encode.list encodedArcsAlias140Member


encodedArcsAlias140Member : List Int -> Json.Encode.Value
encodedArcsAlias140Member arcsAlias140 =
    Json.Encode.list Json.Encode.int arcsAlias140


encodedArcsAlias141 : List (List Int) -> Json.Encode.Value
encodedArcsAlias141 =
    Json.Encode.list encodedArcsAlias141Member


encodedArcsAlias141Member : List Int -> Json.Encode.Value
encodedArcsAlias141Member arcsAlias141 =
    Json.Encode.list Json.Encode.int arcsAlias141


encodedArcsAlias142 : List (List Int) -> Json.Encode.Value
encodedArcsAlias142 =
    Json.Encode.list encodedArcsAlias142Member


encodedArcsAlias142Member : List Int -> Json.Encode.Value
encodedArcsAlias142Member arcsAlias142 =
    Json.Encode.list Json.Encode.int arcsAlias142


encodedArcsAlias143 : List (List Int) -> Json.Encode.Value
encodedArcsAlias143 =
    Json.Encode.list encodedArcsAlias143Member


encodedArcsAlias143Member : List Int -> Json.Encode.Value
encodedArcsAlias143Member arcsAlias143 =
    Json.Encode.list Json.Encode.int arcsAlias143


encodedArcsAlias144 : List (List Int) -> Json.Encode.Value
encodedArcsAlias144 =
    Json.Encode.list encodedArcsAlias144Member


encodedArcsAlias144Member : List Int -> Json.Encode.Value
encodedArcsAlias144Member arcsAlias144 =
    Json.Encode.list Json.Encode.int arcsAlias144


encodedArcsAlias145 : List (List Int) -> Json.Encode.Value
encodedArcsAlias145 =
    Json.Encode.list encodedArcsAlias145Member


encodedArcsAlias145Member : List Int -> Json.Encode.Value
encodedArcsAlias145Member arcsAlias145 =
    Json.Encode.list Json.Encode.int arcsAlias145


encodedArcsAlias146 : List (List Int) -> Json.Encode.Value
encodedArcsAlias146 =
    Json.Encode.list encodedArcsAlias146Member


encodedArcsAlias146Member : List Int -> Json.Encode.Value
encodedArcsAlias146Member arcsAlias146 =
    Json.Encode.list Json.Encode.int arcsAlias146


encodedArcsAlias147 : List (List Int) -> Json.Encode.Value
encodedArcsAlias147 =
    Json.Encode.list encodedArcsAlias147Member


encodedArcsAlias147Member : List Int -> Json.Encode.Value
encodedArcsAlias147Member arcsAlias147 =
    Json.Encode.list Json.Encode.int arcsAlias147


encodedArcsAlias148 : List (List Int) -> Json.Encode.Value
encodedArcsAlias148 =
    Json.Encode.list encodedArcsAlias148Member


encodedArcsAlias148Member : List Int -> Json.Encode.Value
encodedArcsAlias148Member arcsAlias148 =
    Json.Encode.list Json.Encode.int arcsAlias148


encodedArcsAlias149 : List (List Int) -> Json.Encode.Value
encodedArcsAlias149 =
    Json.Encode.list encodedArcsAlias149Member


encodedArcsAlias149Member : List Int -> Json.Encode.Value
encodedArcsAlias149Member arcsAlias149 =
    Json.Encode.list Json.Encode.int arcsAlias149


encodedArcsAlias150 : List (List Int) -> Json.Encode.Value
encodedArcsAlias150 =
    Json.Encode.list encodedArcsAlias150Member


encodedArcsAlias150Member : List Int -> Json.Encode.Value
encodedArcsAlias150Member arcsAlias150 =
    Json.Encode.list Json.Encode.int arcsAlias150


encodedArcsAlias151 : List (List Int) -> Json.Encode.Value
encodedArcsAlias151 =
    Json.Encode.list encodedArcsAlias151Member


encodedArcsAlias151Member : List Int -> Json.Encode.Value
encodedArcsAlias151Member arcsAlias151 =
    Json.Encode.list Json.Encode.int arcsAlias151


encodedArcsAlias152 : List (List Int) -> Json.Encode.Value
encodedArcsAlias152 =
    Json.Encode.list encodedArcsAlias152Member


encodedArcsAlias152Member : List Int -> Json.Encode.Value
encodedArcsAlias152Member arcsAlias152 =
    Json.Encode.list Json.Encode.int arcsAlias152


encodedArcsAlias153 : List (List Int) -> Json.Encode.Value
encodedArcsAlias153 =
    Json.Encode.list encodedArcsAlias153Member


encodedArcsAlias153Member : List Int -> Json.Encode.Value
encodedArcsAlias153Member arcsAlias153 =
    Json.Encode.list Json.Encode.int arcsAlias153


encodedArcsAlias154 : List (List Int) -> Json.Encode.Value
encodedArcsAlias154 =
    Json.Encode.list encodedArcsAlias154Member


encodedArcsAlias154Member : List Int -> Json.Encode.Value
encodedArcsAlias154Member arcsAlias154 =
    Json.Encode.list Json.Encode.int arcsAlias154


encodedArcsAlias155 : List (List Int) -> Json.Encode.Value
encodedArcsAlias155 =
    Json.Encode.list encodedArcsAlias155Member


encodedArcsAlias155Member : List Int -> Json.Encode.Value
encodedArcsAlias155Member arcsAlias155 =
    Json.Encode.list Json.Encode.int arcsAlias155


encodedArcsAlias156 : List (List Int) -> Json.Encode.Value
encodedArcsAlias156 =
    Json.Encode.list encodedArcsAlias156Member


encodedArcsAlias156Member : List Int -> Json.Encode.Value
encodedArcsAlias156Member arcsAlias156 =
    Json.Encode.list Json.Encode.int arcsAlias156


encodedArcsAlias157 : List (List Int) -> Json.Encode.Value
encodedArcsAlias157 =
    Json.Encode.list encodedArcsAlias157Member


encodedArcsAlias157Member : List Int -> Json.Encode.Value
encodedArcsAlias157Member arcsAlias157 =
    Json.Encode.list Json.Encode.int arcsAlias157


encodedArcsAlias158 : List (List Int) -> Json.Encode.Value
encodedArcsAlias158 =
    Json.Encode.list encodedArcsAlias158Member


encodedArcsAlias158Member : List Int -> Json.Encode.Value
encodedArcsAlias158Member arcsAlias158 =
    Json.Encode.list Json.Encode.int arcsAlias158


encodedArcsAlias159 : List (List Int) -> Json.Encode.Value
encodedArcsAlias159 =
    Json.Encode.list encodedArcsAlias159Member


encodedArcsAlias159Member : List Int -> Json.Encode.Value
encodedArcsAlias159Member arcsAlias159 =
    Json.Encode.list Json.Encode.int arcsAlias159


encodedArcsAlias160 : List (List Int) -> Json.Encode.Value
encodedArcsAlias160 =
    Json.Encode.list encodedArcsAlias160Member


encodedArcsAlias160Member : List Int -> Json.Encode.Value
encodedArcsAlias160Member arcsAlias160 =
    Json.Encode.list Json.Encode.int arcsAlias160


encodedArcsAlias161 : List (List Int) -> Json.Encode.Value
encodedArcsAlias161 =
    Json.Encode.list encodedArcsAlias161Member


encodedArcsAlias161Member : List Int -> Json.Encode.Value
encodedArcsAlias161Member arcsAlias161 =
    Json.Encode.list Json.Encode.int arcsAlias161


encodedArcsAlias162 : List (List Int) -> Json.Encode.Value
encodedArcsAlias162 =
    Json.Encode.list encodedArcsAlias162Member


encodedArcsAlias162Member : List Int -> Json.Encode.Value
encodedArcsAlias162Member arcsAlias162 =
    Json.Encode.list Json.Encode.int arcsAlias162


encodedArcsAlias163 : List (List Int) -> Json.Encode.Value
encodedArcsAlias163 =
    Json.Encode.list encodedArcsAlias163Member


encodedArcsAlias163Member : List Int -> Json.Encode.Value
encodedArcsAlias163Member arcsAlias163 =
    Json.Encode.list Json.Encode.int arcsAlias163


encodedArcsAlias164 : List (List Int) -> Json.Encode.Value
encodedArcsAlias164 =
    Json.Encode.list encodedArcsAlias164Member


encodedArcsAlias164Member : List Int -> Json.Encode.Value
encodedArcsAlias164Member arcsAlias164 =
    Json.Encode.list Json.Encode.int arcsAlias164


encodedArcsAlias165 : List (List Int) -> Json.Encode.Value
encodedArcsAlias165 =
    Json.Encode.list encodedArcsAlias165Member


encodedArcsAlias165Member : List Int -> Json.Encode.Value
encodedArcsAlias165Member arcsAlias165 =
    Json.Encode.list Json.Encode.int arcsAlias165


encodedArcsAlias166 : List (List Int) -> Json.Encode.Value
encodedArcsAlias166 =
    Json.Encode.list encodedArcsAlias166Member


encodedArcsAlias166Member : List Int -> Json.Encode.Value
encodedArcsAlias166Member arcsAlias166 =
    Json.Encode.list Json.Encode.int arcsAlias166


encodedArcsAlias167 : List (List Int) -> Json.Encode.Value
encodedArcsAlias167 =
    Json.Encode.list encodedArcsAlias167Member


encodedArcsAlias167Member : List Int -> Json.Encode.Value
encodedArcsAlias167Member arcsAlias167 =
    Json.Encode.list Json.Encode.int arcsAlias167


encodedArcsAlias168 : List (List Int) -> Json.Encode.Value
encodedArcsAlias168 =
    Json.Encode.list encodedArcsAlias168Member


encodedArcsAlias168Member : List Int -> Json.Encode.Value
encodedArcsAlias168Member arcsAlias168 =
    Json.Encode.list Json.Encode.int arcsAlias168


encodedArcsAlias169 : List (List Int) -> Json.Encode.Value
encodedArcsAlias169 =
    Json.Encode.list encodedArcsAlias169Member


encodedArcsAlias169Member : List Int -> Json.Encode.Value
encodedArcsAlias169Member arcsAlias169 =
    Json.Encode.list Json.Encode.int arcsAlias169


encodedArcsAlias170 : List (List Int) -> Json.Encode.Value
encodedArcsAlias170 =
    Json.Encode.list encodedArcsAlias170Member


encodedArcsAlias170Member : List Int -> Json.Encode.Value
encodedArcsAlias170Member arcsAlias170 =
    Json.Encode.list Json.Encode.int arcsAlias170


encodedArcsAlias171 : List (List Int) -> Json.Encode.Value
encodedArcsAlias171 =
    Json.Encode.list encodedArcsAlias171Member


encodedArcsAlias171Member : List Int -> Json.Encode.Value
encodedArcsAlias171Member arcsAlias171 =
    Json.Encode.list Json.Encode.int arcsAlias171


encodedArcsAlias172 : List (List Int) -> Json.Encode.Value
encodedArcsAlias172 =
    Json.Encode.list encodedArcsAlias172Member


encodedArcsAlias172Member : List Int -> Json.Encode.Value
encodedArcsAlias172Member arcsAlias172 =
    Json.Encode.list Json.Encode.int arcsAlias172


encodedArcsAlias173 : List (List Int) -> Json.Encode.Value
encodedArcsAlias173 =
    Json.Encode.list encodedArcsAlias173Member


encodedArcsAlias173Member : List Int -> Json.Encode.Value
encodedArcsAlias173Member arcsAlias173 =
    Json.Encode.list Json.Encode.int arcsAlias173


encodedArcsAlias174 : List (List Int) -> Json.Encode.Value
encodedArcsAlias174 =
    Json.Encode.list encodedArcsAlias174Member


encodedArcsAlias174Member : List Int -> Json.Encode.Value
encodedArcsAlias174Member arcsAlias174 =
    Json.Encode.list Json.Encode.int arcsAlias174


encodedArcsAlias175 : List (List Int) -> Json.Encode.Value
encodedArcsAlias175 =
    Json.Encode.list encodedArcsAlias175Member


encodedArcsAlias175Member : List Int -> Json.Encode.Value
encodedArcsAlias175Member arcsAlias175 =
    Json.Encode.list Json.Encode.int arcsAlias175


encodedArcsAlias176 : List (List Int) -> Json.Encode.Value
encodedArcsAlias176 =
    Json.Encode.list encodedArcsAlias176Member


encodedArcsAlias176Member : List Int -> Json.Encode.Value
encodedArcsAlias176Member arcsAlias176 =
    Json.Encode.list Json.Encode.int arcsAlias176


encodedArcsAlias177 : List (List Int) -> Json.Encode.Value
encodedArcsAlias177 =
    Json.Encode.list encodedArcsAlias177Member


encodedArcsAlias177Member : List Int -> Json.Encode.Value
encodedArcsAlias177Member arcsAlias177 =
    Json.Encode.list Json.Encode.int arcsAlias177


encodedArcsAlias178 : List (List Int) -> Json.Encode.Value
encodedArcsAlias178 =
    Json.Encode.list encodedArcsAlias178Member


encodedArcsAlias178Member : List Int -> Json.Encode.Value
encodedArcsAlias178Member arcsAlias178 =
    Json.Encode.list Json.Encode.int arcsAlias178


encodedArcsAlias179 : List (List Int) -> Json.Encode.Value
encodedArcsAlias179 =
    Json.Encode.list encodedArcsAlias179Member


encodedArcsAlias179Member : List Int -> Json.Encode.Value
encodedArcsAlias179Member arcsAlias179 =
    Json.Encode.list Json.Encode.int arcsAlias179


encodedArcsAlias180 : List (List Int) -> Json.Encode.Value
encodedArcsAlias180 =
    Json.Encode.list encodedArcsAlias180Member


encodedArcsAlias180Member : List Int -> Json.Encode.Value
encodedArcsAlias180Member arcsAlias180 =
    Json.Encode.list Json.Encode.int arcsAlias180


encodedArcsAlias181 : List (List Int) -> Json.Encode.Value
encodedArcsAlias181 =
    Json.Encode.list encodedArcsAlias181Member


encodedArcsAlias181Member : List Int -> Json.Encode.Value
encodedArcsAlias181Member arcsAlias181 =
    Json.Encode.list Json.Encode.int arcsAlias181


encodedArcsAlias182 : List (List Int) -> Json.Encode.Value
encodedArcsAlias182 =
    Json.Encode.list encodedArcsAlias182Member


encodedArcsAlias182Member : List Int -> Json.Encode.Value
encodedArcsAlias182Member arcsAlias182 =
    Json.Encode.list Json.Encode.int arcsAlias182


encodedArcsAlias183 : List (List Int) -> Json.Encode.Value
encodedArcsAlias183 =
    Json.Encode.list encodedArcsAlias183Member


encodedArcsAlias183Member : List Int -> Json.Encode.Value
encodedArcsAlias183Member arcsAlias183 =
    Json.Encode.list Json.Encode.int arcsAlias183


encodedArcsAlias184 : List (List Int) -> Json.Encode.Value
encodedArcsAlias184 =
    Json.Encode.list encodedArcsAlias184Member


encodedArcsAlias184Member : List Int -> Json.Encode.Value
encodedArcsAlias184Member arcsAlias184 =
    Json.Encode.list Json.Encode.int arcsAlias184


encodedArcsAlias185 : List (List Int) -> Json.Encode.Value
encodedArcsAlias185 =
    Json.Encode.list encodedArcsAlias185Member


encodedArcsAlias185Member : List Int -> Json.Encode.Value
encodedArcsAlias185Member arcsAlias185 =
    Json.Encode.list Json.Encode.int arcsAlias185


encodedArcsAlias186 : List (List Int) -> Json.Encode.Value
encodedArcsAlias186 =
    Json.Encode.list encodedArcsAlias186Member


encodedArcsAlias186Member : List Int -> Json.Encode.Value
encodedArcsAlias186Member arcsAlias186 =
    Json.Encode.list Json.Encode.int arcsAlias186


encodedArcsAlias187 : List (List Int) -> Json.Encode.Value
encodedArcsAlias187 =
    Json.Encode.list encodedArcsAlias187Member


encodedArcsAlias187Member : List Int -> Json.Encode.Value
encodedArcsAlias187Member arcsAlias187 =
    Json.Encode.list Json.Encode.int arcsAlias187


encodedArcsAlias188 : List (List Int) -> Json.Encode.Value
encodedArcsAlias188 =
    Json.Encode.list encodedArcsAlias188Member


encodedArcsAlias188Member : List Int -> Json.Encode.Value
encodedArcsAlias188Member arcsAlias188 =
    Json.Encode.list Json.Encode.int arcsAlias188


encodedArcsAlias189 : List (List Int) -> Json.Encode.Value
encodedArcsAlias189 =
    Json.Encode.list encodedArcsAlias189Member


encodedArcsAlias189Member : List Int -> Json.Encode.Value
encodedArcsAlias189Member arcsAlias189 =
    Json.Encode.list Json.Encode.int arcsAlias189


encodedArcsAlias190 : List (List Int) -> Json.Encode.Value
encodedArcsAlias190 =
    Json.Encode.list encodedArcsAlias190Member


encodedArcsAlias190Member : List Int -> Json.Encode.Value
encodedArcsAlias190Member arcsAlias190 =
    Json.Encode.list Json.Encode.int arcsAlias190


encodedArcsAlias191 : List (List Int) -> Json.Encode.Value
encodedArcsAlias191 =
    Json.Encode.list encodedArcsAlias191Member


encodedArcsAlias191Member : List Int -> Json.Encode.Value
encodedArcsAlias191Member arcsAlias191 =
    Json.Encode.list Json.Encode.int arcsAlias191


encodedArcsAlias192 : List (List Int) -> Json.Encode.Value
encodedArcsAlias192 =
    Json.Encode.list encodedArcsAlias192Member


encodedArcsAlias192Member : List Int -> Json.Encode.Value
encodedArcsAlias192Member arcsAlias192 =
    Json.Encode.list Json.Encode.int arcsAlias192


encodedArcsAlias193 : List (List Int) -> Json.Encode.Value
encodedArcsAlias193 =
    Json.Encode.list encodedArcsAlias193Member


encodedArcsAlias193Member : List Int -> Json.Encode.Value
encodedArcsAlias193Member arcsAlias193 =
    Json.Encode.list Json.Encode.int arcsAlias193


encodedArcsAlias194 : List (List Int) -> Json.Encode.Value
encodedArcsAlias194 =
    Json.Encode.list encodedArcsAlias194Member


encodedArcsAlias194Member : List Int -> Json.Encode.Value
encodedArcsAlias194Member arcsAlias194 =
    Json.Encode.list Json.Encode.int arcsAlias194


encodedArcsAlias195 : List (List Int) -> Json.Encode.Value
encodedArcsAlias195 =
    Json.Encode.list encodedArcsAlias195Member


encodedArcsAlias195Member : List Int -> Json.Encode.Value
encodedArcsAlias195Member arcsAlias195 =
    Json.Encode.list Json.Encode.int arcsAlias195


encodedArcsAlias196 : List (List Int) -> Json.Encode.Value
encodedArcsAlias196 =
    Json.Encode.list encodedArcsAlias196Member


encodedArcsAlias196Member : List Int -> Json.Encode.Value
encodedArcsAlias196Member arcsAlias196 =
    Json.Encode.list Json.Encode.int arcsAlias196


encodedArcsAlias197 : List (List Int) -> Json.Encode.Value
encodedArcsAlias197 =
    Json.Encode.list encodedArcsAlias197Member


encodedArcsAlias197Member : List Int -> Json.Encode.Value
encodedArcsAlias197Member arcsAlias197 =
    Json.Encode.list Json.Encode.int arcsAlias197


encodedArcsAlias198 : List (List Int) -> Json.Encode.Value
encodedArcsAlias198 =
    Json.Encode.list encodedArcsAlias198Member


encodedArcsAlias198Member : List Int -> Json.Encode.Value
encodedArcsAlias198Member arcsAlias198 =
    Json.Encode.list Json.Encode.int arcsAlias198


encodedArcsAlias199 : List (List Int) -> Json.Encode.Value
encodedArcsAlias199 =
    Json.Encode.list encodedArcsAlias199Member


encodedArcsAlias199Member : List Int -> Json.Encode.Value
encodedArcsAlias199Member arcsAlias199 =
    Json.Encode.list Json.Encode.int arcsAlias199


encodedArcsAlias200 : List (List Int) -> Json.Encode.Value
encodedArcsAlias200 =
    Json.Encode.list encodedArcsAlias200Member


encodedArcsAlias200Member : List Int -> Json.Encode.Value
encodedArcsAlias200Member arcsAlias200 =
    Json.Encode.list Json.Encode.int arcsAlias200


encodedArcsAlias201 : List (List Int) -> Json.Encode.Value
encodedArcsAlias201 =
    Json.Encode.list encodedArcsAlias201Member


encodedArcsAlias201Member : List Int -> Json.Encode.Value
encodedArcsAlias201Member arcsAlias201 =
    Json.Encode.list Json.Encode.int arcsAlias201


encodedArcsAlias202 : List (List Int) -> Json.Encode.Value
encodedArcsAlias202 =
    Json.Encode.list encodedArcsAlias202Member


encodedArcsAlias202Member : List Int -> Json.Encode.Value
encodedArcsAlias202Member arcsAlias202 =
    Json.Encode.list Json.Encode.int arcsAlias202


encodedArcsAlias203 : List (List Int) -> Json.Encode.Value
encodedArcsAlias203 =
    Json.Encode.list encodedArcsAlias203Member


encodedArcsAlias203Member : List Int -> Json.Encode.Value
encodedArcsAlias203Member arcsAlias203 =
    Json.Encode.list Json.Encode.int arcsAlias203


encodedArcsAlias204 : List (List Int) -> Json.Encode.Value
encodedArcsAlias204 =
    Json.Encode.list encodedArcsAlias204Member


encodedArcsAlias204Member : List Int -> Json.Encode.Value
encodedArcsAlias204Member arcsAlias204 =
    Json.Encode.list Json.Encode.int arcsAlias204


encodedArcsAlias205 : List (List Int) -> Json.Encode.Value
encodedArcsAlias205 =
    Json.Encode.list encodedArcsAlias205Member


encodedArcsAlias205Member : List Int -> Json.Encode.Value
encodedArcsAlias205Member arcsAlias205 =
    Json.Encode.list Json.Encode.int arcsAlias205


encodedArcsAlias206 : List (List Int) -> Json.Encode.Value
encodedArcsAlias206 =
    Json.Encode.list encodedArcsAlias206Member


encodedArcsAlias206Member : List Int -> Json.Encode.Value
encodedArcsAlias206Member arcsAlias206 =
    Json.Encode.list Json.Encode.int arcsAlias206


encodedArcsAlias207 : List (List Int) -> Json.Encode.Value
encodedArcsAlias207 =
    Json.Encode.list encodedArcsAlias207Member


encodedArcsAlias207Member : List Int -> Json.Encode.Value
encodedArcsAlias207Member arcsAlias207 =
    Json.Encode.list Json.Encode.int arcsAlias207


encodedArcsAlias208 : List (List Int) -> Json.Encode.Value
encodedArcsAlias208 =
    Json.Encode.list encodedArcsAlias208Member


encodedArcsAlias208Member : List Int -> Json.Encode.Value
encodedArcsAlias208Member arcsAlias208 =
    Json.Encode.list Json.Encode.int arcsAlias208


encodedArcsAlias209 : List (List Int) -> Json.Encode.Value
encodedArcsAlias209 =
    Json.Encode.list encodedArcsAlias209Member


encodedArcsAlias209Member : List Int -> Json.Encode.Value
encodedArcsAlias209Member arcsAlias209 =
    Json.Encode.list Json.Encode.int arcsAlias209


encodedArcsAlias210 : List (List Int) -> Json.Encode.Value
encodedArcsAlias210 =
    Json.Encode.list encodedArcsAlias210Member


encodedArcsAlias210Member : List Int -> Json.Encode.Value
encodedArcsAlias210Member arcsAlias210 =
    Json.Encode.list Json.Encode.int arcsAlias210


encodedArcsAlias211 : List (List Int) -> Json.Encode.Value
encodedArcsAlias211 =
    Json.Encode.list encodedArcsAlias211Member


encodedArcsAlias211Member : List Int -> Json.Encode.Value
encodedArcsAlias211Member arcsAlias211 =
    Json.Encode.list Json.Encode.int arcsAlias211


encodedArcsAlias212 : List (List Int) -> Json.Encode.Value
encodedArcsAlias212 =
    Json.Encode.list encodedArcsAlias212Member


encodedArcsAlias212Member : List Int -> Json.Encode.Value
encodedArcsAlias212Member arcsAlias212 =
    Json.Encode.list Json.Encode.int arcsAlias212


encodedArcsAlias213 : List (List Int) -> Json.Encode.Value
encodedArcsAlias213 =
    Json.Encode.list encodedArcsAlias213Member


encodedArcsAlias213Member : List Int -> Json.Encode.Value
encodedArcsAlias213Member arcsAlias213 =
    Json.Encode.list Json.Encode.int arcsAlias213


encodedArcsAlias214 : List (List Int) -> Json.Encode.Value
encodedArcsAlias214 =
    Json.Encode.list encodedArcsAlias214Member


encodedArcsAlias214Member : List Int -> Json.Encode.Value
encodedArcsAlias214Member arcsAlias214 =
    Json.Encode.list Json.Encode.int arcsAlias214


encodedArcsAlias215 : List (List Int) -> Json.Encode.Value
encodedArcsAlias215 =
    Json.Encode.list encodedArcsAlias215Member


encodedArcsAlias215Member : List Int -> Json.Encode.Value
encodedArcsAlias215Member arcsAlias215 =
    Json.Encode.list Json.Encode.int arcsAlias215


encodedArcsAlias216 : List (List Int) -> Json.Encode.Value
encodedArcsAlias216 =
    Json.Encode.list encodedArcsAlias216Member


encodedArcsAlias216Member : List Int -> Json.Encode.Value
encodedArcsAlias216Member arcsAlias216 =
    Json.Encode.list Json.Encode.int arcsAlias216


encodedArcsAlias217 : List (List Int) -> Json.Encode.Value
encodedArcsAlias217 =
    Json.Encode.list encodedArcsAlias217Member


encodedArcsAlias217Member : List Int -> Json.Encode.Value
encodedArcsAlias217Member arcsAlias217 =
    Json.Encode.list Json.Encode.int arcsAlias217


encodedArcsAlias218 : List (List Int) -> Json.Encode.Value
encodedArcsAlias218 =
    Json.Encode.list encodedArcsAlias218Member


encodedArcsAlias218Member : List Int -> Json.Encode.Value
encodedArcsAlias218Member arcsAlias218 =
    Json.Encode.list Json.Encode.int arcsAlias218


encodedArcsAlias219 : List (List Int) -> Json.Encode.Value
encodedArcsAlias219 =
    Json.Encode.list encodedArcsAlias219Member


encodedArcsAlias219Member : List Int -> Json.Encode.Value
encodedArcsAlias219Member arcsAlias219 =
    Json.Encode.list Json.Encode.int arcsAlias219


encodedArcsAlias220 : List (List Int) -> Json.Encode.Value
encodedArcsAlias220 =
    Json.Encode.list encodedArcsAlias220Member


encodedArcsAlias220Member : List Int -> Json.Encode.Value
encodedArcsAlias220Member arcsAlias220 =
    Json.Encode.list Json.Encode.int arcsAlias220


encodedArcsAlias221 : List (List Int) -> Json.Encode.Value
encodedArcsAlias221 =
    Json.Encode.list encodedArcsAlias221Member


encodedArcsAlias221Member : List Int -> Json.Encode.Value
encodedArcsAlias221Member arcsAlias221 =
    Json.Encode.list Json.Encode.int arcsAlias221


encodedArcsAlias222 : List (List Int) -> Json.Encode.Value
encodedArcsAlias222 =
    Json.Encode.list encodedArcsAlias222Member


encodedArcsAlias222Member : List Int -> Json.Encode.Value
encodedArcsAlias222Member arcsAlias222 =
    Json.Encode.list Json.Encode.int arcsAlias222


encodedArcsAlias223 : List (List Int) -> Json.Encode.Value
encodedArcsAlias223 =
    Json.Encode.list encodedArcsAlias223Member


encodedArcsAlias223Member : List Int -> Json.Encode.Value
encodedArcsAlias223Member arcsAlias223 =
    Json.Encode.list Json.Encode.int arcsAlias223


encodedArcsAlias224 : List (List Int) -> Json.Encode.Value
encodedArcsAlias224 =
    Json.Encode.list encodedArcsAlias224Member


encodedArcsAlias224Member : List Int -> Json.Encode.Value
encodedArcsAlias224Member arcsAlias224 =
    Json.Encode.list Json.Encode.int arcsAlias224


encodedArcsAlias225 : List (List Int) -> Json.Encode.Value
encodedArcsAlias225 =
    Json.Encode.list encodedArcsAlias225Member


encodedArcsAlias225Member : List Int -> Json.Encode.Value
encodedArcsAlias225Member arcsAlias225 =
    Json.Encode.list Json.Encode.int arcsAlias225


encodedArcsAlias226 : List (List Int) -> Json.Encode.Value
encodedArcsAlias226 =
    Json.Encode.list encodedArcsAlias226Member


encodedArcsAlias226Member : List Int -> Json.Encode.Value
encodedArcsAlias226Member arcsAlias226 =
    Json.Encode.list Json.Encode.int arcsAlias226


encodedArcsAlias227 : List (List Int) -> Json.Encode.Value
encodedArcsAlias227 =
    Json.Encode.list encodedArcsAlias227Member


encodedArcsAlias227Member : List Int -> Json.Encode.Value
encodedArcsAlias227Member arcsAlias227 =
    Json.Encode.list Json.Encode.int arcsAlias227


encodedArcsAlias228 : List (List Int) -> Json.Encode.Value
encodedArcsAlias228 =
    Json.Encode.list encodedArcsAlias228Member


encodedArcsAlias228Member : List Int -> Json.Encode.Value
encodedArcsAlias228Member arcsAlias228 =
    Json.Encode.list Json.Encode.int arcsAlias228


encodedArcsAlias229 : List (List Int) -> Json.Encode.Value
encodedArcsAlias229 =
    Json.Encode.list encodedArcsAlias229Member


encodedArcsAlias229Member : List Int -> Json.Encode.Value
encodedArcsAlias229Member arcsAlias229 =
    Json.Encode.list Json.Encode.int arcsAlias229


encodedArcsAlias230 : List (List Int) -> Json.Encode.Value
encodedArcsAlias230 =
    Json.Encode.list encodedArcsAlias230Member


encodedArcsAlias230Member : List Int -> Json.Encode.Value
encodedArcsAlias230Member arcsAlias230 =
    Json.Encode.list Json.Encode.int arcsAlias230


encodedArcsAlias231 : List (List Int) -> Json.Encode.Value
encodedArcsAlias231 =
    Json.Encode.list encodedArcsAlias231Member


encodedArcsAlias231Member : List Int -> Json.Encode.Value
encodedArcsAlias231Member arcsAlias231 =
    Json.Encode.list Json.Encode.int arcsAlias231


encodedArcsAlias232 : List (List Int) -> Json.Encode.Value
encodedArcsAlias232 =
    Json.Encode.list encodedArcsAlias232Member


encodedArcsAlias232Member : List Int -> Json.Encode.Value
encodedArcsAlias232Member arcsAlias232 =
    Json.Encode.list Json.Encode.int arcsAlias232


encodedArcsAlias233 : List (List Int) -> Json.Encode.Value
encodedArcsAlias233 =
    Json.Encode.list encodedArcsAlias233Member


encodedArcsAlias233Member : List Int -> Json.Encode.Value
encodedArcsAlias233Member arcsAlias233 =
    Json.Encode.list Json.Encode.int arcsAlias233


encodedArcsAlias234 : List (List Int) -> Json.Encode.Value
encodedArcsAlias234 =
    Json.Encode.list encodedArcsAlias234Member


encodedArcsAlias234Member : List Int -> Json.Encode.Value
encodedArcsAlias234Member arcsAlias234 =
    Json.Encode.list Json.Encode.int arcsAlias234


encodedArcsAlias235 : List (List Int) -> Json.Encode.Value
encodedArcsAlias235 =
    Json.Encode.list encodedArcsAlias235Member


encodedArcsAlias235Member : List Int -> Json.Encode.Value
encodedArcsAlias235Member arcsAlias235 =
    Json.Encode.list Json.Encode.int arcsAlias235


encodedArcsAlias236 : List (List Int) -> Json.Encode.Value
encodedArcsAlias236 =
    Json.Encode.list encodedArcsAlias236Member


encodedArcsAlias236Member : List Int -> Json.Encode.Value
encodedArcsAlias236Member arcsAlias236 =
    Json.Encode.list Json.Encode.int arcsAlias236


encodedArcsAlias237 : List (List Int) -> Json.Encode.Value
encodedArcsAlias237 =
    Json.Encode.list encodedArcsAlias237Member


encodedArcsAlias237Member : List Int -> Json.Encode.Value
encodedArcsAlias237Member arcsAlias237 =
    Json.Encode.list Json.Encode.int arcsAlias237


encodedArcsAlias238 : List (List Int) -> Json.Encode.Value
encodedArcsAlias238 =
    Json.Encode.list encodedArcsAlias238Member


encodedArcsAlias238Member : List Int -> Json.Encode.Value
encodedArcsAlias238Member arcsAlias238 =
    Json.Encode.list Json.Encode.int arcsAlias238


encodedArcsAlias239 : List (List Int) -> Json.Encode.Value
encodedArcsAlias239 =
    Json.Encode.list encodedArcsAlias239Member


encodedArcsAlias239Member : List Int -> Json.Encode.Value
encodedArcsAlias239Member arcsAlias239 =
    Json.Encode.list Json.Encode.int arcsAlias239


encodedArcsAlias240 : List (List Int) -> Json.Encode.Value
encodedArcsAlias240 =
    Json.Encode.list encodedArcsAlias240Member


encodedArcsAlias240Member : List Int -> Json.Encode.Value
encodedArcsAlias240Member arcsAlias240 =
    Json.Encode.list Json.Encode.int arcsAlias240


encodedArcsAlias241 : List (List Int) -> Json.Encode.Value
encodedArcsAlias241 =
    Json.Encode.list encodedArcsAlias241Member


encodedArcsAlias241Member : List Int -> Json.Encode.Value
encodedArcsAlias241Member arcsAlias241 =
    Json.Encode.list Json.Encode.int arcsAlias241


encodedArcsAlias242 : List (List Int) -> Json.Encode.Value
encodedArcsAlias242 =
    Json.Encode.list encodedArcsAlias242Member


encodedArcsAlias242Member : List Int -> Json.Encode.Value
encodedArcsAlias242Member arcsAlias242 =
    Json.Encode.list Json.Encode.int arcsAlias242


encodedArcsAlias243 : List (List Int) -> Json.Encode.Value
encodedArcsAlias243 =
    Json.Encode.list encodedArcsAlias243Member


encodedArcsAlias243Member : List Int -> Json.Encode.Value
encodedArcsAlias243Member arcsAlias243 =
    Json.Encode.list Json.Encode.int arcsAlias243


encodedArcsAlias244 : List (List Int) -> Json.Encode.Value
encodedArcsAlias244 =
    Json.Encode.list encodedArcsAlias244Member


encodedArcsAlias244Member : List Int -> Json.Encode.Value
encodedArcsAlias244Member arcsAlias244 =
    Json.Encode.list Json.Encode.int arcsAlias244


encodedArcsAlias245 : List (List Int) -> Json.Encode.Value
encodedArcsAlias245 =
    Json.Encode.list encodedArcsAlias245Member


encodedArcsAlias245Member : List Int -> Json.Encode.Value
encodedArcsAlias245Member arcsAlias245 =
    Json.Encode.list Json.Encode.int arcsAlias245


encodedArcsAlias246 : List (List Int) -> Json.Encode.Value
encodedArcsAlias246 =
    Json.Encode.list encodedArcsAlias246Member


encodedArcsAlias246Member : List Int -> Json.Encode.Value
encodedArcsAlias246Member arcsAlias246 =
    Json.Encode.list Json.Encode.int arcsAlias246


encodedArcsAlias247 : List (List Int) -> Json.Encode.Value
encodedArcsAlias247 =
    Json.Encode.list encodedArcsAlias247Member


encodedArcsAlias247Member : List Int -> Json.Encode.Value
encodedArcsAlias247Member arcsAlias247 =
    Json.Encode.list Json.Encode.int arcsAlias247


encodedArcsAlias248 : List (List Int) -> Json.Encode.Value
encodedArcsAlias248 =
    Json.Encode.list encodedArcsAlias248Member


encodedArcsAlias248Member : List Int -> Json.Encode.Value
encodedArcsAlias248Member arcsAlias248 =
    Json.Encode.list Json.Encode.int arcsAlias248


encodedArcsAlias249 : List (List Int) -> Json.Encode.Value
encodedArcsAlias249 =
    Json.Encode.list encodedArcsAlias249Member


encodedArcsAlias249Member : List Int -> Json.Encode.Value
encodedArcsAlias249Member arcsAlias249 =
    Json.Encode.list Json.Encode.int arcsAlias249


encodedArcsAlias250 : List (List Int) -> Json.Encode.Value
encodedArcsAlias250 =
    Json.Encode.list encodedArcsAlias250Member


encodedArcsAlias250Member : List Int -> Json.Encode.Value
encodedArcsAlias250Member arcsAlias250 =
    Json.Encode.list Json.Encode.int arcsAlias250


encodedArcsAlias251 : List (List Int) -> Json.Encode.Value
encodedArcsAlias251 =
    Json.Encode.list encodedArcsAlias251Member


encodedArcsAlias251Member : List Int -> Json.Encode.Value
encodedArcsAlias251Member arcsAlias251 =
    Json.Encode.list Json.Encode.int arcsAlias251


encodedArcsAlias252 : List (List Int) -> Json.Encode.Value
encodedArcsAlias252 =
    Json.Encode.list encodedArcsAlias252Member


encodedArcsAlias252Member : List Int -> Json.Encode.Value
encodedArcsAlias252Member arcsAlias252 =
    Json.Encode.list Json.Encode.int arcsAlias252


encodedArcsAlias253 : List (List Int) -> Json.Encode.Value
encodedArcsAlias253 =
    Json.Encode.list encodedArcsAlias253Member


encodedArcsAlias253Member : List Int -> Json.Encode.Value
encodedArcsAlias253Member arcsAlias253 =
    Json.Encode.list Json.Encode.int arcsAlias253


encodedArcsAlias254 : List (List Int) -> Json.Encode.Value
encodedArcsAlias254 =
    Json.Encode.list encodedArcsAlias254Member


encodedArcsAlias254Member : List Int -> Json.Encode.Value
encodedArcsAlias254Member arcsAlias254 =
    Json.Encode.list Json.Encode.int arcsAlias254


encodedArcsAlias255 : List (List Int) -> Json.Encode.Value
encodedArcsAlias255 =
    Json.Encode.list encodedArcsAlias255Member


encodedArcsAlias255Member : List Int -> Json.Encode.Value
encodedArcsAlias255Member arcsAlias255 =
    Json.Encode.list Json.Encode.int arcsAlias255


encodedArcsAlias256 : List (List Int) -> Json.Encode.Value
encodedArcsAlias256 =
    Json.Encode.list encodedArcsAlias256Member


encodedArcsAlias256Member : List Int -> Json.Encode.Value
encodedArcsAlias256Member arcsAlias256 =
    Json.Encode.list Json.Encode.int arcsAlias256


encodedArcsAlias257 : List (List Int) -> Json.Encode.Value
encodedArcsAlias257 =
    Json.Encode.list encodedArcsAlias257Member


encodedArcsAlias257Member : List Int -> Json.Encode.Value
encodedArcsAlias257Member arcsAlias257 =
    Json.Encode.list Json.Encode.int arcsAlias257


encodedArcsAlias258 : List (List Int) -> Json.Encode.Value
encodedArcsAlias258 =
    Json.Encode.list encodedArcsAlias258Member


encodedArcsAlias258Member : List Int -> Json.Encode.Value
encodedArcsAlias258Member arcsAlias258 =
    Json.Encode.list Json.Encode.int arcsAlias258


encodedArcsAlias259 : List (List Int) -> Json.Encode.Value
encodedArcsAlias259 =
    Json.Encode.list encodedArcsAlias259Member


encodedArcsAlias259Member : List Int -> Json.Encode.Value
encodedArcsAlias259Member arcsAlias259 =
    Json.Encode.list Json.Encode.int arcsAlias259


encodedArcsAlias260 : List (List Int) -> Json.Encode.Value
encodedArcsAlias260 =
    Json.Encode.list encodedArcsAlias260Member


encodedArcsAlias260Member : List Int -> Json.Encode.Value
encodedArcsAlias260Member arcsAlias260 =
    Json.Encode.list Json.Encode.int arcsAlias260


encodedArcsAlias261 : List (List Int) -> Json.Encode.Value
encodedArcsAlias261 =
    Json.Encode.list encodedArcsAlias261Member


encodedArcsAlias261Member : List Int -> Json.Encode.Value
encodedArcsAlias261Member arcsAlias261 =
    Json.Encode.list Json.Encode.int arcsAlias261


encodedArcsAlias262 : List (List Int) -> Json.Encode.Value
encodedArcsAlias262 =
    Json.Encode.list encodedArcsAlias262Member


encodedArcsAlias262Member : List Int -> Json.Encode.Value
encodedArcsAlias262Member arcsAlias262 =
    Json.Encode.list Json.Encode.int arcsAlias262


encodedArcsAlias263 : List (List Int) -> Json.Encode.Value
encodedArcsAlias263 =
    Json.Encode.list encodedArcsAlias263Member


encodedArcsAlias263Member : List Int -> Json.Encode.Value
encodedArcsAlias263Member arcsAlias263 =
    Json.Encode.list Json.Encode.int arcsAlias263


encodedArcsAlias264 : List (List Int) -> Json.Encode.Value
encodedArcsAlias264 =
    Json.Encode.list encodedArcsAlias264Member


encodedArcsAlias264Member : List Int -> Json.Encode.Value
encodedArcsAlias264Member arcsAlias264 =
    Json.Encode.list Json.Encode.int arcsAlias264


encodedArcsAlias265 : List (List Int) -> Json.Encode.Value
encodedArcsAlias265 =
    Json.Encode.list encodedArcsAlias265Member


encodedArcsAlias265Member : List Int -> Json.Encode.Value
encodedArcsAlias265Member arcsAlias265 =
    Json.Encode.list Json.Encode.int arcsAlias265


encodedArcsAlias266 : List (List Int) -> Json.Encode.Value
encodedArcsAlias266 =
    Json.Encode.list encodedArcsAlias266Member


encodedArcsAlias266Member : List Int -> Json.Encode.Value
encodedArcsAlias266Member arcsAlias266 =
    Json.Encode.list Json.Encode.int arcsAlias266


encodedArcsAlias267 : List (List Int) -> Json.Encode.Value
encodedArcsAlias267 =
    Json.Encode.list encodedArcsAlias267Member


encodedArcsAlias267Member : List Int -> Json.Encode.Value
encodedArcsAlias267Member arcsAlias267 =
    Json.Encode.list Json.Encode.int arcsAlias267


encodedArcsAlias268 : List (List Int) -> Json.Encode.Value
encodedArcsAlias268 =
    Json.Encode.list encodedArcsAlias268Member


encodedArcsAlias268Member : List Int -> Json.Encode.Value
encodedArcsAlias268Member arcsAlias268 =
    Json.Encode.list Json.Encode.int arcsAlias268


encodedArcsAlias269 : List (List Int) -> Json.Encode.Value
encodedArcsAlias269 =
    Json.Encode.list encodedArcsAlias269Member


encodedArcsAlias269Member : List Int -> Json.Encode.Value
encodedArcsAlias269Member arcsAlias269 =
    Json.Encode.list Json.Encode.int arcsAlias269


encodedArcsAlias270 : List (List Int) -> Json.Encode.Value
encodedArcsAlias270 =
    Json.Encode.list encodedArcsAlias270Member


encodedArcsAlias270Member : List Int -> Json.Encode.Value
encodedArcsAlias270Member arcsAlias270 =
    Json.Encode.list Json.Encode.int arcsAlias270


encodedArcsAlias271 : List (List Int) -> Json.Encode.Value
encodedArcsAlias271 =
    Json.Encode.list encodedArcsAlias271Member


encodedArcsAlias271Member : List Int -> Json.Encode.Value
encodedArcsAlias271Member arcsAlias271 =
    Json.Encode.list Json.Encode.int arcsAlias271


encodedArcsAlias272 : List (List Int) -> Json.Encode.Value
encodedArcsAlias272 =
    Json.Encode.list encodedArcsAlias272Member


encodedArcsAlias272Member : List Int -> Json.Encode.Value
encodedArcsAlias272Member arcsAlias272 =
    Json.Encode.list Json.Encode.int arcsAlias272


encodedArcsAlias273 : List (List Int) -> Json.Encode.Value
encodedArcsAlias273 =
    Json.Encode.list encodedArcsAlias273Member


encodedArcsAlias273Member : List Int -> Json.Encode.Value
encodedArcsAlias273Member arcsAlias273 =
    Json.Encode.list Json.Encode.int arcsAlias273


encodedArcsAlias274 : List (List Int) -> Json.Encode.Value
encodedArcsAlias274 =
    Json.Encode.list encodedArcsAlias274Member


encodedArcsAlias274Member : List Int -> Json.Encode.Value
encodedArcsAlias274Member arcsAlias274 =
    Json.Encode.list Json.Encode.int arcsAlias274


encodedArcsAlias275 : List (List Int) -> Json.Encode.Value
encodedArcsAlias275 =
    Json.Encode.list encodedArcsAlias275Member


encodedArcsAlias275Member : List Int -> Json.Encode.Value
encodedArcsAlias275Member arcsAlias275 =
    Json.Encode.list Json.Encode.int arcsAlias275


encodedArcsAlias276 : List (List Int) -> Json.Encode.Value
encodedArcsAlias276 =
    Json.Encode.list encodedArcsAlias276Member


encodedArcsAlias276Member : List Int -> Json.Encode.Value
encodedArcsAlias276Member arcsAlias276 =
    Json.Encode.list Json.Encode.int arcsAlias276


encodedArcsAlias277 : List (List Int) -> Json.Encode.Value
encodedArcsAlias277 =
    Json.Encode.list encodedArcsAlias277Member


encodedArcsAlias277Member : List Int -> Json.Encode.Value
encodedArcsAlias277Member arcsAlias277 =
    Json.Encode.list Json.Encode.int arcsAlias277


encodedArcsAlias278 : List (List Int) -> Json.Encode.Value
encodedArcsAlias278 =
    Json.Encode.list encodedArcsAlias278Member


encodedArcsAlias278Member : List Int -> Json.Encode.Value
encodedArcsAlias278Member arcsAlias278 =
    Json.Encode.list Json.Encode.int arcsAlias278


encodedArcsAlias279 : List (List Int) -> Json.Encode.Value
encodedArcsAlias279 =
    Json.Encode.list encodedArcsAlias279Member


encodedArcsAlias279Member : List Int -> Json.Encode.Value
encodedArcsAlias279Member arcsAlias279 =
    Json.Encode.list Json.Encode.int arcsAlias279


encodedArcsAlias280 : List (List Int) -> Json.Encode.Value
encodedArcsAlias280 =
    Json.Encode.list encodedArcsAlias280Member


encodedArcsAlias280Member : List Int -> Json.Encode.Value
encodedArcsAlias280Member arcsAlias280 =
    Json.Encode.list Json.Encode.int arcsAlias280


encodedArcsAlias281 : List (List Int) -> Json.Encode.Value
encodedArcsAlias281 =
    Json.Encode.list encodedArcsAlias281Member


encodedArcsAlias281Member : List Int -> Json.Encode.Value
encodedArcsAlias281Member arcsAlias281 =
    Json.Encode.list Json.Encode.int arcsAlias281


encodedArcsAlias282 : List (List Int) -> Json.Encode.Value
encodedArcsAlias282 =
    Json.Encode.list encodedArcsAlias282Member


encodedArcsAlias282Member : List Int -> Json.Encode.Value
encodedArcsAlias282Member arcsAlias282 =
    Json.Encode.list Json.Encode.int arcsAlias282


encodedArcsAlias283 : List (List Int) -> Json.Encode.Value
encodedArcsAlias283 =
    Json.Encode.list encodedArcsAlias283Member


encodedArcsAlias283Member : List Int -> Json.Encode.Value
encodedArcsAlias283Member arcsAlias283 =
    Json.Encode.list Json.Encode.int arcsAlias283


encodedArcsAlias284 : List (List Int) -> Json.Encode.Value
encodedArcsAlias284 =
    Json.Encode.list encodedArcsAlias284Member


encodedArcsAlias284Member : List Int -> Json.Encode.Value
encodedArcsAlias284Member arcsAlias284 =
    Json.Encode.list Json.Encode.int arcsAlias284


encodedArcsAlias285 : List (List Int) -> Json.Encode.Value
encodedArcsAlias285 =
    Json.Encode.list encodedArcsAlias285Member


encodedArcsAlias285Member : List Int -> Json.Encode.Value
encodedArcsAlias285Member arcsAlias285 =
    Json.Encode.list Json.Encode.int arcsAlias285


encodedArcsAlias286 : List (List Int) -> Json.Encode.Value
encodedArcsAlias286 =
    Json.Encode.list encodedArcsAlias286Member


encodedArcsAlias286Member : List Int -> Json.Encode.Value
encodedArcsAlias286Member arcsAlias286 =
    Json.Encode.list Json.Encode.int arcsAlias286


encodedArcsAlias287 : List (List Int) -> Json.Encode.Value
encodedArcsAlias287 =
    Json.Encode.list encodedArcsAlias287Member


encodedArcsAlias287Member : List Int -> Json.Encode.Value
encodedArcsAlias287Member arcsAlias287 =
    Json.Encode.list Json.Encode.int arcsAlias287


encodedArcsAlias288 : List (List Int) -> Json.Encode.Value
encodedArcsAlias288 =
    Json.Encode.list encodedArcsAlias288Member


encodedArcsAlias288Member : List Int -> Json.Encode.Value
encodedArcsAlias288Member arcsAlias288 =
    Json.Encode.list Json.Encode.int arcsAlias288


encodedArcsAlias289 : List (List Int) -> Json.Encode.Value
encodedArcsAlias289 =
    Json.Encode.list encodedArcsAlias289Member


encodedArcsAlias289Member : List Int -> Json.Encode.Value
encodedArcsAlias289Member arcsAlias289 =
    Json.Encode.list Json.Encode.int arcsAlias289


encodedArcsAlias290 : List (List Int) -> Json.Encode.Value
encodedArcsAlias290 =
    Json.Encode.list encodedArcsAlias290Member


encodedArcsAlias290Member : List Int -> Json.Encode.Value
encodedArcsAlias290Member arcsAlias290 =
    Json.Encode.list Json.Encode.int arcsAlias290


encodedArcsAlias291 : List (List Int) -> Json.Encode.Value
encodedArcsAlias291 =
    Json.Encode.list encodedArcsAlias291Member


encodedArcsAlias291Member : List Int -> Json.Encode.Value
encodedArcsAlias291Member arcsAlias291 =
    Json.Encode.list Json.Encode.int arcsAlias291


encodedArcsAlias292 : List (List Int) -> Json.Encode.Value
encodedArcsAlias292 =
    Json.Encode.list encodedArcsAlias292Member


encodedArcsAlias292Member : List Int -> Json.Encode.Value
encodedArcsAlias292Member arcsAlias292 =
    Json.Encode.list Json.Encode.int arcsAlias292


encodedArcsAlias293 : List (List Int) -> Json.Encode.Value
encodedArcsAlias293 =
    Json.Encode.list encodedArcsAlias293Member


encodedArcsAlias293Member : List Int -> Json.Encode.Value
encodedArcsAlias293Member arcsAlias293 =
    Json.Encode.list Json.Encode.int arcsAlias293


encodedArcsAlias294 : List (List Int) -> Json.Encode.Value
encodedArcsAlias294 =
    Json.Encode.list encodedArcsAlias294Member


encodedArcsAlias294Member : List Int -> Json.Encode.Value
encodedArcsAlias294Member arcsAlias294 =
    Json.Encode.list Json.Encode.int arcsAlias294


encodedArcsAlias295 : List (List Int) -> Json.Encode.Value
encodedArcsAlias295 =
    Json.Encode.list encodedArcsAlias295Member


encodedArcsAlias295Member : List Int -> Json.Encode.Value
encodedArcsAlias295Member arcsAlias295 =
    Json.Encode.list Json.Encode.int arcsAlias295


encodedArcsAlias296 : List (List Int) -> Json.Encode.Value
encodedArcsAlias296 =
    Json.Encode.list encodedArcsAlias296Member


encodedArcsAlias296Member : List Int -> Json.Encode.Value
encodedArcsAlias296Member arcsAlias296 =
    Json.Encode.list Json.Encode.int arcsAlias296


encodedArcsAlias297 : List (List Int) -> Json.Encode.Value
encodedArcsAlias297 =
    Json.Encode.list encodedArcsAlias297Member


encodedArcsAlias297Member : List Int -> Json.Encode.Value
encodedArcsAlias297Member arcsAlias297 =
    Json.Encode.list Json.Encode.int arcsAlias297


encodedArcsAlias298 : List (List Int) -> Json.Encode.Value
encodedArcsAlias298 =
    Json.Encode.list encodedArcsAlias298Member


encodedArcsAlias298Member : List Int -> Json.Encode.Value
encodedArcsAlias298Member arcsAlias298 =
    Json.Encode.list Json.Encode.int arcsAlias298


encodedArcsAlias299 : List (List Int) -> Json.Encode.Value
encodedArcsAlias299 =
    Json.Encode.list encodedArcsAlias299Member


encodedArcsAlias299Member : List Int -> Json.Encode.Value
encodedArcsAlias299Member arcsAlias299 =
    Json.Encode.list Json.Encode.int arcsAlias299


encodedArcsAlias300 : List (List Int) -> Json.Encode.Value
encodedArcsAlias300 =
    Json.Encode.list encodedArcsAlias300Member


encodedArcsAlias300Member : List Int -> Json.Encode.Value
encodedArcsAlias300Member arcsAlias300 =
    Json.Encode.list Json.Encode.int arcsAlias300


encodedArcsAlias301 : List (List Int) -> Json.Encode.Value
encodedArcsAlias301 =
    Json.Encode.list encodedArcsAlias301Member


encodedArcsAlias301Member : List Int -> Json.Encode.Value
encodedArcsAlias301Member arcsAlias301 =
    Json.Encode.list Json.Encode.int arcsAlias301


encodedArcsAlias302 : List (List Int) -> Json.Encode.Value
encodedArcsAlias302 =
    Json.Encode.list encodedArcsAlias302Member


encodedArcsAlias302Member : List Int -> Json.Encode.Value
encodedArcsAlias302Member arcsAlias302 =
    Json.Encode.list Json.Encode.int arcsAlias302


encodedArcsAlias303 : List (List Int) -> Json.Encode.Value
encodedArcsAlias303 =
    Json.Encode.list encodedArcsAlias303Member


encodedArcsAlias303Member : List Int -> Json.Encode.Value
encodedArcsAlias303Member arcsAlias303 =
    Json.Encode.list Json.Encode.int arcsAlias303


encodedArcsAlias304 : List (List Int) -> Json.Encode.Value
encodedArcsAlias304 =
    Json.Encode.list encodedArcsAlias304Member


encodedArcsAlias304Member : List Int -> Json.Encode.Value
encodedArcsAlias304Member arcsAlias304 =
    Json.Encode.list Json.Encode.int arcsAlias304


encodedArcsAlias305 : List (List Int) -> Json.Encode.Value
encodedArcsAlias305 =
    Json.Encode.list encodedArcsAlias305Member


encodedArcsAlias305Member : List Int -> Json.Encode.Value
encodedArcsAlias305Member arcsAlias305 =
    Json.Encode.list Json.Encode.int arcsAlias305


encodedArcsAlias306 : List (List Int) -> Json.Encode.Value
encodedArcsAlias306 =
    Json.Encode.list encodedArcsAlias306Member


encodedArcsAlias306Member : List Int -> Json.Encode.Value
encodedArcsAlias306Member arcsAlias306 =
    Json.Encode.list Json.Encode.int arcsAlias306


encodedArcsAlias307 : List (List Int) -> Json.Encode.Value
encodedArcsAlias307 =
    Json.Encode.list encodedArcsAlias307Member


encodedArcsAlias307Member : List Int -> Json.Encode.Value
encodedArcsAlias307Member arcsAlias307 =
    Json.Encode.list Json.Encode.int arcsAlias307


encodedArcsAlias308 : List (List Int) -> Json.Encode.Value
encodedArcsAlias308 =
    Json.Encode.list encodedArcsAlias308Member


encodedArcsAlias308Member : List Int -> Json.Encode.Value
encodedArcsAlias308Member arcsAlias308 =
    Json.Encode.list Json.Encode.int arcsAlias308


encodedArcsAlias309 : List (List Int) -> Json.Encode.Value
encodedArcsAlias309 =
    Json.Encode.list encodedArcsAlias309Member


encodedArcsAlias309Member : List Int -> Json.Encode.Value
encodedArcsAlias309Member arcsAlias309 =
    Json.Encode.list Json.Encode.int arcsAlias309


encodedArcsAlias310 : List (List Int) -> Json.Encode.Value
encodedArcsAlias310 =
    Json.Encode.list encodedArcsAlias310Member


encodedArcsAlias310Member : List Int -> Json.Encode.Value
encodedArcsAlias310Member arcsAlias310 =
    Json.Encode.list Json.Encode.int arcsAlias310


encodedArcsAlias311 : List (List Int) -> Json.Encode.Value
encodedArcsAlias311 =
    Json.Encode.list encodedArcsAlias311Member


encodedArcsAlias311Member : List Int -> Json.Encode.Value
encodedArcsAlias311Member arcsAlias311 =
    Json.Encode.list Json.Encode.int arcsAlias311


encodedArcsAlias312 : List (List Int) -> Json.Encode.Value
encodedArcsAlias312 =
    Json.Encode.list encodedArcsAlias312Member


encodedArcsAlias312Member : List Int -> Json.Encode.Value
encodedArcsAlias312Member arcsAlias312 =
    Json.Encode.list Json.Encode.int arcsAlias312


encodedArcsAlias313 : List (List Int) -> Json.Encode.Value
encodedArcsAlias313 =
    Json.Encode.list encodedArcsAlias313Member


encodedArcsAlias313Member : List Int -> Json.Encode.Value
encodedArcsAlias313Member arcsAlias313 =
    Json.Encode.list Json.Encode.int arcsAlias313


encodedArcsAlias314 : List (List Int) -> Json.Encode.Value
encodedArcsAlias314 =
    Json.Encode.list encodedArcsAlias314Member


encodedArcsAlias314Member : List Int -> Json.Encode.Value
encodedArcsAlias314Member arcsAlias314 =
    Json.Encode.list Json.Encode.int arcsAlias314


encodedArcsAlias315 : List (List Int) -> Json.Encode.Value
encodedArcsAlias315 =
    Json.Encode.list encodedArcsAlias315Member


encodedArcsAlias315Member : List Int -> Json.Encode.Value
encodedArcsAlias315Member arcsAlias315 =
    Json.Encode.list Json.Encode.int arcsAlias315


encodedArcsAlias316 : List (List Int) -> Json.Encode.Value
encodedArcsAlias316 =
    Json.Encode.list encodedArcsAlias316Member


encodedArcsAlias316Member : List Int -> Json.Encode.Value
encodedArcsAlias316Member arcsAlias316 =
    Json.Encode.list Json.Encode.int arcsAlias316


encodedArcsAlias317 : List (List Int) -> Json.Encode.Value
encodedArcsAlias317 =
    Json.Encode.list encodedArcsAlias317Member


encodedArcsAlias317Member : List Int -> Json.Encode.Value
encodedArcsAlias317Member arcsAlias317 =
    Json.Encode.list Json.Encode.int arcsAlias317


encodedArcsAlias318 : List (List Int) -> Json.Encode.Value
encodedArcsAlias318 =
    Json.Encode.list encodedArcsAlias318Member


encodedArcsAlias318Member : List Int -> Json.Encode.Value
encodedArcsAlias318Member arcsAlias318 =
    Json.Encode.list Json.Encode.int arcsAlias318


encodedArcsAlias319 : List (List Int) -> Json.Encode.Value
encodedArcsAlias319 =
    Json.Encode.list encodedArcsAlias319Member


encodedArcsAlias319Member : List Int -> Json.Encode.Value
encodedArcsAlias319Member arcsAlias319 =
    Json.Encode.list Json.Encode.int arcsAlias319


encodedArcsAlias320 : List (List Int) -> Json.Encode.Value
encodedArcsAlias320 =
    Json.Encode.list encodedArcsAlias320Member


encodedArcsAlias320Member : List Int -> Json.Encode.Value
encodedArcsAlias320Member arcsAlias320 =
    Json.Encode.list Json.Encode.int arcsAlias320


encodedArcsAlias321 : List (List Int) -> Json.Encode.Value
encodedArcsAlias321 =
    Json.Encode.list encodedArcsAlias321Member


encodedArcsAlias321Member : List Int -> Json.Encode.Value
encodedArcsAlias321Member arcsAlias321 =
    Json.Encode.list Json.Encode.int arcsAlias321


encodedArcsAlias322 : List (List Int) -> Json.Encode.Value
encodedArcsAlias322 =
    Json.Encode.list encodedArcsAlias322Member


encodedArcsAlias322Member : List Int -> Json.Encode.Value
encodedArcsAlias322Member arcsAlias322 =
    Json.Encode.list Json.Encode.int arcsAlias322


encodedArcsAlias323 : List (List Int) -> Json.Encode.Value
encodedArcsAlias323 =
    Json.Encode.list encodedArcsAlias323Member


encodedArcsAlias323Member : List Int -> Json.Encode.Value
encodedArcsAlias323Member arcsAlias323 =
    Json.Encode.list Json.Encode.int arcsAlias323


encodedArcsAlias324 : List (List Int) -> Json.Encode.Value
encodedArcsAlias324 =
    Json.Encode.list encodedArcsAlias324Member


encodedArcsAlias324Member : List Int -> Json.Encode.Value
encodedArcsAlias324Member arcsAlias324 =
    Json.Encode.list Json.Encode.int arcsAlias324


encodedArcsAlias325 : List (List Int) -> Json.Encode.Value
encodedArcsAlias325 =
    Json.Encode.list encodedArcsAlias325Member


encodedArcsAlias325Member : List Int -> Json.Encode.Value
encodedArcsAlias325Member arcsAlias325 =
    Json.Encode.list Json.Encode.int arcsAlias325


encodedArcsAlias326 : List (List Int) -> Json.Encode.Value
encodedArcsAlias326 =
    Json.Encode.list encodedArcsAlias326Member


encodedArcsAlias326Member : List Int -> Json.Encode.Value
encodedArcsAlias326Member arcsAlias326 =
    Json.Encode.list Json.Encode.int arcsAlias326


encodedArcsAlias327 : List (List Int) -> Json.Encode.Value
encodedArcsAlias327 =
    Json.Encode.list encodedArcsAlias327Member


encodedArcsAlias327Member : List Int -> Json.Encode.Value
encodedArcsAlias327Member arcsAlias327 =
    Json.Encode.list Json.Encode.int arcsAlias327


encodedArcsAlias328 : List (List Int) -> Json.Encode.Value
encodedArcsAlias328 =
    Json.Encode.list encodedArcsAlias328Member


encodedArcsAlias328Member : List Int -> Json.Encode.Value
encodedArcsAlias328Member arcsAlias328 =
    Json.Encode.list Json.Encode.int arcsAlias328


encodedArcsAlias329 : List (List Int) -> Json.Encode.Value
encodedArcsAlias329 =
    Json.Encode.list encodedArcsAlias329Member


encodedArcsAlias329Member : List Int -> Json.Encode.Value
encodedArcsAlias329Member arcsAlias329 =
    Json.Encode.list Json.Encode.int arcsAlias329


encodedArcsAlias330 : List (List Int) -> Json.Encode.Value
encodedArcsAlias330 =
    Json.Encode.list encodedArcsAlias330Member


encodedArcsAlias330Member : List Int -> Json.Encode.Value
encodedArcsAlias330Member arcsAlias330 =
    Json.Encode.list Json.Encode.int arcsAlias330


encodedArcsAlias331 : List (List Int) -> Json.Encode.Value
encodedArcsAlias331 =
    Json.Encode.list encodedArcsAlias331Member


encodedArcsAlias331Member : List Int -> Json.Encode.Value
encodedArcsAlias331Member arcsAlias331 =
    Json.Encode.list Json.Encode.int arcsAlias331


encodedArcsAlias332 : List (List Int) -> Json.Encode.Value
encodedArcsAlias332 =
    Json.Encode.list encodedArcsAlias332Member


encodedArcsAlias332Member : List Int -> Json.Encode.Value
encodedArcsAlias332Member arcsAlias332 =
    Json.Encode.list Json.Encode.int arcsAlias332


encodedArcsAlias333 : List (List Int) -> Json.Encode.Value
encodedArcsAlias333 =
    Json.Encode.list encodedArcsAlias333Member


encodedArcsAlias333Member : List Int -> Json.Encode.Value
encodedArcsAlias333Member arcsAlias333 =
    Json.Encode.list Json.Encode.int arcsAlias333


encodedArcsAlias334 : List (List Int) -> Json.Encode.Value
encodedArcsAlias334 =
    Json.Encode.list encodedArcsAlias334Member


encodedArcsAlias334Member : List Int -> Json.Encode.Value
encodedArcsAlias334Member arcsAlias334 =
    Json.Encode.list Json.Encode.int arcsAlias334


encodedArcsAlias335 : List (List Int) -> Json.Encode.Value
encodedArcsAlias335 =
    Json.Encode.list encodedArcsAlias335Member


encodedArcsAlias335Member : List Int -> Json.Encode.Value
encodedArcsAlias335Member arcsAlias335 =
    Json.Encode.list Json.Encode.int arcsAlias335


encodedArcsAlias336 : List (List Int) -> Json.Encode.Value
encodedArcsAlias336 =
    Json.Encode.list encodedArcsAlias336Member


encodedArcsAlias336Member : List Int -> Json.Encode.Value
encodedArcsAlias336Member arcsAlias336 =
    Json.Encode.list Json.Encode.int arcsAlias336


encodedArcsAlias337 : List (List Int) -> Json.Encode.Value
encodedArcsAlias337 =
    Json.Encode.list encodedArcsAlias337Member


encodedArcsAlias337Member : List Int -> Json.Encode.Value
encodedArcsAlias337Member arcsAlias337 =
    Json.Encode.list Json.Encode.int arcsAlias337


encodedArcsAlias338 : List (List Int) -> Json.Encode.Value
encodedArcsAlias338 =
    Json.Encode.list encodedArcsAlias338Member


encodedArcsAlias338Member : List Int -> Json.Encode.Value
encodedArcsAlias338Member arcsAlias338 =
    Json.Encode.list Json.Encode.int arcsAlias338


encodedArcsAlias339 : List (List Int) -> Json.Encode.Value
encodedArcsAlias339 =
    Json.Encode.list encodedArcsAlias339Member


encodedArcsAlias339Member : List Int -> Json.Encode.Value
encodedArcsAlias339Member arcsAlias339 =
    Json.Encode.list Json.Encode.int arcsAlias339


encodedArcsAlias340 : List (List Int) -> Json.Encode.Value
encodedArcsAlias340 =
    Json.Encode.list encodedArcsAlias340Member


encodedArcsAlias340Member : List Int -> Json.Encode.Value
encodedArcsAlias340Member arcsAlias340 =
    Json.Encode.list Json.Encode.int arcsAlias340


encodedArcsAlias341 : List (List Int) -> Json.Encode.Value
encodedArcsAlias341 =
    Json.Encode.list encodedArcsAlias341Member


encodedArcsAlias341Member : List Int -> Json.Encode.Value
encodedArcsAlias341Member arcsAlias341 =
    Json.Encode.list Json.Encode.int arcsAlias341


encodedArcsAlias342 : List (List Int) -> Json.Encode.Value
encodedArcsAlias342 =
    Json.Encode.list encodedArcsAlias342Member


encodedArcsAlias342Member : List Int -> Json.Encode.Value
encodedArcsAlias342Member arcsAlias342 =
    Json.Encode.list Json.Encode.int arcsAlias342


encodedArcsAlias343 : List (List Int) -> Json.Encode.Value
encodedArcsAlias343 =
    Json.Encode.list encodedArcsAlias343Member


encodedArcsAlias343Member : List Int -> Json.Encode.Value
encodedArcsAlias343Member arcsAlias343 =
    Json.Encode.list Json.Encode.int arcsAlias343


encodedArcsAlias344 : List (List Int) -> Json.Encode.Value
encodedArcsAlias344 =
    Json.Encode.list encodedArcsAlias344Member


encodedArcsAlias344Member : List Int -> Json.Encode.Value
encodedArcsAlias344Member arcsAlias344 =
    Json.Encode.list Json.Encode.int arcsAlias344


encodedArcsAlias345 : List (List Int) -> Json.Encode.Value
encodedArcsAlias345 =
    Json.Encode.list encodedArcsAlias345Member


encodedArcsAlias345Member : List Int -> Json.Encode.Value
encodedArcsAlias345Member arcsAlias345 =
    Json.Encode.list Json.Encode.int arcsAlias345


encodedArcsAlias346 : List (List Int) -> Json.Encode.Value
encodedArcsAlias346 =
    Json.Encode.list encodedArcsAlias346Member


encodedArcsAlias346Member : List Int -> Json.Encode.Value
encodedArcsAlias346Member arcsAlias346 =
    Json.Encode.list Json.Encode.int arcsAlias346


encodedArcsAlias347 : List (List Int) -> Json.Encode.Value
encodedArcsAlias347 =
    Json.Encode.list encodedArcsAlias347Member


encodedArcsAlias347Member : List Int -> Json.Encode.Value
encodedArcsAlias347Member arcsAlias347 =
    Json.Encode.list Json.Encode.int arcsAlias347


encodedArcsAlias348 : List (List Int) -> Json.Encode.Value
encodedArcsAlias348 =
    Json.Encode.list encodedArcsAlias348Member


encodedArcsAlias348Member : List Int -> Json.Encode.Value
encodedArcsAlias348Member arcsAlias348 =
    Json.Encode.list Json.Encode.int arcsAlias348


encodedArcsAlias349 : List (List Int) -> Json.Encode.Value
encodedArcsAlias349 =
    Json.Encode.list encodedArcsAlias349Member


encodedArcsAlias349Member : List Int -> Json.Encode.Value
encodedArcsAlias349Member arcsAlias349 =
    Json.Encode.list Json.Encode.int arcsAlias349


encodedArcsAlias350 : List (List Int) -> Json.Encode.Value
encodedArcsAlias350 =
    Json.Encode.list encodedArcsAlias350Member


encodedArcsAlias350Member : List Int -> Json.Encode.Value
encodedArcsAlias350Member arcsAlias350 =
    Json.Encode.list Json.Encode.int arcsAlias350


encodedArcsAlias351 : List (List Int) -> Json.Encode.Value
encodedArcsAlias351 =
    Json.Encode.list encodedArcsAlias351Member


encodedArcsAlias351Member : List Int -> Json.Encode.Value
encodedArcsAlias351Member arcsAlias351 =
    Json.Encode.list Json.Encode.int arcsAlias351


encodedArcsAlias352 : List (List Int) -> Json.Encode.Value
encodedArcsAlias352 =
    Json.Encode.list encodedArcsAlias352Member


encodedArcsAlias352Member : List Int -> Json.Encode.Value
encodedArcsAlias352Member arcsAlias352 =
    Json.Encode.list Json.Encode.int arcsAlias352


encodedArcsAlias353 : List (List Int) -> Json.Encode.Value
encodedArcsAlias353 =
    Json.Encode.list encodedArcsAlias353Member


encodedArcsAlias353Member : List Int -> Json.Encode.Value
encodedArcsAlias353Member arcsAlias353 =
    Json.Encode.list Json.Encode.int arcsAlias353


encodedArcsAlias354 : List (List Int) -> Json.Encode.Value
encodedArcsAlias354 =
    Json.Encode.list encodedArcsAlias354Member


encodedArcsAlias354Member : List Int -> Json.Encode.Value
encodedArcsAlias354Member arcsAlias354 =
    Json.Encode.list Json.Encode.int arcsAlias354


encodedArcsAlias355 : List (List Int) -> Json.Encode.Value
encodedArcsAlias355 =
    Json.Encode.list encodedArcsAlias355Member


encodedArcsAlias355Member : List Int -> Json.Encode.Value
encodedArcsAlias355Member arcsAlias355 =
    Json.Encode.list Json.Encode.int arcsAlias355


encodedArcsAlias356 : List (List Int) -> Json.Encode.Value
encodedArcsAlias356 =
    Json.Encode.list encodedArcsAlias356Member


encodedArcsAlias356Member : List Int -> Json.Encode.Value
encodedArcsAlias356Member arcsAlias356 =
    Json.Encode.list Json.Encode.int arcsAlias356


encodedArcsAlias357 : List (List Int) -> Json.Encode.Value
encodedArcsAlias357 =
    Json.Encode.list encodedArcsAlias357Member


encodedArcsAlias357Member : List Int -> Json.Encode.Value
encodedArcsAlias357Member arcsAlias357 =
    Json.Encode.list Json.Encode.int arcsAlias357


encodedArcsAlias358 : List (List Int) -> Json.Encode.Value
encodedArcsAlias358 =
    Json.Encode.list encodedArcsAlias358Member


encodedArcsAlias358Member : List Int -> Json.Encode.Value
encodedArcsAlias358Member arcsAlias358 =
    Json.Encode.list Json.Encode.int arcsAlias358


encodedArcsAlias359 : List (List Int) -> Json.Encode.Value
encodedArcsAlias359 =
    Json.Encode.list encodedArcsAlias359Member


encodedArcsAlias359Member : List Int -> Json.Encode.Value
encodedArcsAlias359Member arcsAlias359 =
    Json.Encode.list Json.Encode.int arcsAlias359


encodedArcsAlias360 : List (List Int) -> Json.Encode.Value
encodedArcsAlias360 =
    Json.Encode.list encodedArcsAlias360Member


encodedArcsAlias360Member : List Int -> Json.Encode.Value
encodedArcsAlias360Member arcsAlias360 =
    Json.Encode.list Json.Encode.int arcsAlias360


encodedArcsAlias361 : List (List Int) -> Json.Encode.Value
encodedArcsAlias361 =
    Json.Encode.list encodedArcsAlias361Member


encodedArcsAlias361Member : List Int -> Json.Encode.Value
encodedArcsAlias361Member arcsAlias361 =
    Json.Encode.list Json.Encode.int arcsAlias361


encodedArcsAlias362 : List (List Int) -> Json.Encode.Value
encodedArcsAlias362 =
    Json.Encode.list encodedArcsAlias362Member


encodedArcsAlias362Member : List Int -> Json.Encode.Value
encodedArcsAlias362Member arcsAlias362 =
    Json.Encode.list Json.Encode.int arcsAlias362


encodedArcsAlias363 : List (List Int) -> Json.Encode.Value
encodedArcsAlias363 =
    Json.Encode.list encodedArcsAlias363Member


encodedArcsAlias363Member : List Int -> Json.Encode.Value
encodedArcsAlias363Member arcsAlias363 =
    Json.Encode.list Json.Encode.int arcsAlias363


encodedArcsAlias364 : List (List Int) -> Json.Encode.Value
encodedArcsAlias364 =
    Json.Encode.list encodedArcsAlias364Member


encodedArcsAlias364Member : List Int -> Json.Encode.Value
encodedArcsAlias364Member arcsAlias364 =
    Json.Encode.list Json.Encode.int arcsAlias364


encodedArcsAlias365 : List (List Int) -> Json.Encode.Value
encodedArcsAlias365 =
    Json.Encode.list encodedArcsAlias365Member


encodedArcsAlias365Member : List Int -> Json.Encode.Value
encodedArcsAlias365Member arcsAlias365 =
    Json.Encode.list Json.Encode.int arcsAlias365


encodedArcsAlias366 : List (List Int) -> Json.Encode.Value
encodedArcsAlias366 =
    Json.Encode.list encodedArcsAlias366Member


encodedArcsAlias366Member : List Int -> Json.Encode.Value
encodedArcsAlias366Member arcsAlias366 =
    Json.Encode.list Json.Encode.int arcsAlias366


encodedArcsAlias367 : List (List Int) -> Json.Encode.Value
encodedArcsAlias367 =
    Json.Encode.list encodedArcsAlias367Member


encodedArcsAlias367Member : List Int -> Json.Encode.Value
encodedArcsAlias367Member arcsAlias367 =
    Json.Encode.list Json.Encode.int arcsAlias367


encodedArcsAlias368 : List (List Int) -> Json.Encode.Value
encodedArcsAlias368 =
    Json.Encode.list encodedArcsAlias368Member


encodedArcsAlias368Member : List Int -> Json.Encode.Value
encodedArcsAlias368Member arcsAlias368 =
    Json.Encode.list Json.Encode.int arcsAlias368


encodedArcsAlias369 : List (List Int) -> Json.Encode.Value
encodedArcsAlias369 =
    Json.Encode.list encodedArcsAlias369Member


encodedArcsAlias369Member : List Int -> Json.Encode.Value
encodedArcsAlias369Member arcsAlias369 =
    Json.Encode.list Json.Encode.int arcsAlias369


encodedArcsAlias370 : List (List Int) -> Json.Encode.Value
encodedArcsAlias370 =
    Json.Encode.list encodedArcsAlias370Member


encodedArcsAlias370Member : List Int -> Json.Encode.Value
encodedArcsAlias370Member arcsAlias370 =
    Json.Encode.list Json.Encode.int arcsAlias370


encodedArcsAlias371 : List (List Int) -> Json.Encode.Value
encodedArcsAlias371 =
    Json.Encode.list encodedArcsAlias371Member


encodedArcsAlias371Member : List Int -> Json.Encode.Value
encodedArcsAlias371Member arcsAlias371 =
    Json.Encode.list Json.Encode.int arcsAlias371


encodedArcsAlias372 : List (List Int) -> Json.Encode.Value
encodedArcsAlias372 =
    Json.Encode.list encodedArcsAlias372Member


encodedArcsAlias372Member : List Int -> Json.Encode.Value
encodedArcsAlias372Member arcsAlias372 =
    Json.Encode.list Json.Encode.int arcsAlias372


encodedArcsAlias373 : List (List Int) -> Json.Encode.Value
encodedArcsAlias373 =
    Json.Encode.list encodedArcsAlias373Member


encodedArcsAlias373Member : List Int -> Json.Encode.Value
encodedArcsAlias373Member arcsAlias373 =
    Json.Encode.list Json.Encode.int arcsAlias373


encodedArcsAlias374 : List (List Int) -> Json.Encode.Value
encodedArcsAlias374 =
    Json.Encode.list encodedArcsAlias374Member


encodedArcsAlias374Member : List Int -> Json.Encode.Value
encodedArcsAlias374Member arcsAlias374 =
    Json.Encode.list Json.Encode.int arcsAlias374


encodedArcsAlias375 : List (List Int) -> Json.Encode.Value
encodedArcsAlias375 =
    Json.Encode.list encodedArcsAlias375Member


encodedArcsAlias375Member : List Int -> Json.Encode.Value
encodedArcsAlias375Member arcsAlias375 =
    Json.Encode.list Json.Encode.int arcsAlias375


encodedArcsAlias376 : List (List Int) -> Json.Encode.Value
encodedArcsAlias376 =
    Json.Encode.list encodedArcsAlias376Member


encodedArcsAlias376Member : List Int -> Json.Encode.Value
encodedArcsAlias376Member arcsAlias376 =
    Json.Encode.list Json.Encode.int arcsAlias376


encodedArcsAlias377 : List (List Int) -> Json.Encode.Value
encodedArcsAlias377 =
    Json.Encode.list encodedArcsAlias377Member


encodedArcsAlias377Member : List Int -> Json.Encode.Value
encodedArcsAlias377Member arcsAlias377 =
    Json.Encode.list Json.Encode.int arcsAlias377


encodedArcsAlias378 : List (List Int) -> Json.Encode.Value
encodedArcsAlias378 =
    Json.Encode.list encodedArcsAlias378Member


encodedArcsAlias378Member : List Int -> Json.Encode.Value
encodedArcsAlias378Member arcsAlias378 =
    Json.Encode.list Json.Encode.int arcsAlias378


encodedArcsAlias379 : List (List Int) -> Json.Encode.Value
encodedArcsAlias379 =
    Json.Encode.list encodedArcsAlias379Member


encodedArcsAlias379Member : List Int -> Json.Encode.Value
encodedArcsAlias379Member arcsAlias379 =
    Json.Encode.list Json.Encode.int arcsAlias379


encodedArcsAlias380 : List (List Int) -> Json.Encode.Value
encodedArcsAlias380 =
    Json.Encode.list encodedArcsAlias380Member


encodedArcsAlias380Member : List Int -> Json.Encode.Value
encodedArcsAlias380Member arcsAlias380 =
    Json.Encode.list Json.Encode.int arcsAlias380


encodedArcsAlias381 : List (List Int) -> Json.Encode.Value
encodedArcsAlias381 =
    Json.Encode.list encodedArcsAlias381Member


encodedArcsAlias381Member : List Int -> Json.Encode.Value
encodedArcsAlias381Member arcsAlias381 =
    Json.Encode.list Json.Encode.int arcsAlias381


encodedArcsAlias382 : List (List Int) -> Json.Encode.Value
encodedArcsAlias382 =
    Json.Encode.list encodedArcsAlias382Member


encodedArcsAlias382Member : List Int -> Json.Encode.Value
encodedArcsAlias382Member arcsAlias382 =
    Json.Encode.list Json.Encode.int arcsAlias382


encodedArcsAlias383 : List (List Int) -> Json.Encode.Value
encodedArcsAlias383 =
    Json.Encode.list encodedArcsAlias383Member


encodedArcsAlias383Member : List Int -> Json.Encode.Value
encodedArcsAlias383Member arcsAlias383 =
    Json.Encode.list Json.Encode.int arcsAlias383


encodedArcsAlias384 : List (List Int) -> Json.Encode.Value
encodedArcsAlias384 =
    Json.Encode.list encodedArcsAlias384Member


encodedArcsAlias384Member : List Int -> Json.Encode.Value
encodedArcsAlias384Member arcsAlias384 =
    Json.Encode.list Json.Encode.int arcsAlias384


encodedArcsAlias385 : List (List Int) -> Json.Encode.Value
encodedArcsAlias385 =
    Json.Encode.list encodedArcsAlias385Member


encodedArcsAlias385Member : List Int -> Json.Encode.Value
encodedArcsAlias385Member arcsAlias385 =
    Json.Encode.list Json.Encode.int arcsAlias385


encodedArcsAlias386 : List (List Int) -> Json.Encode.Value
encodedArcsAlias386 =
    Json.Encode.list encodedArcsAlias386Member


encodedArcsAlias386Member : List Int -> Json.Encode.Value
encodedArcsAlias386Member arcsAlias386 =
    Json.Encode.list Json.Encode.int arcsAlias386


encodedArcsAlias387 : List (List Int) -> Json.Encode.Value
encodedArcsAlias387 =
    Json.Encode.list encodedArcsAlias387Member


encodedArcsAlias387Member : List Int -> Json.Encode.Value
encodedArcsAlias387Member arcsAlias387 =
    Json.Encode.list Json.Encode.int arcsAlias387


encodedArcsAlias388 : List (List Int) -> Json.Encode.Value
encodedArcsAlias388 =
    Json.Encode.list encodedArcsAlias388Member


encodedArcsAlias388Member : List Int -> Json.Encode.Value
encodedArcsAlias388Member arcsAlias388 =
    Json.Encode.list Json.Encode.int arcsAlias388


encodedArcsAlias389 : List (List Int) -> Json.Encode.Value
encodedArcsAlias389 =
    Json.Encode.list encodedArcsAlias389Member


encodedArcsAlias389Member : List Int -> Json.Encode.Value
encodedArcsAlias389Member arcsAlias389 =
    Json.Encode.list Json.Encode.int arcsAlias389


encodedArcsAlias390 : List (List Int) -> Json.Encode.Value
encodedArcsAlias390 =
    Json.Encode.list encodedArcsAlias390Member


encodedArcsAlias390Member : List Int -> Json.Encode.Value
encodedArcsAlias390Member arcsAlias390 =
    Json.Encode.list Json.Encode.int arcsAlias390


encodedArcsAlias391 : List (List Int) -> Json.Encode.Value
encodedArcsAlias391 =
    Json.Encode.list encodedArcsAlias391Member


encodedArcsAlias391Member : List Int -> Json.Encode.Value
encodedArcsAlias391Member arcsAlias391 =
    Json.Encode.list Json.Encode.int arcsAlias391


encodedArcsAlias392 : List (List Int) -> Json.Encode.Value
encodedArcsAlias392 =
    Json.Encode.list encodedArcsAlias392Member


encodedArcsAlias392Member : List Int -> Json.Encode.Value
encodedArcsAlias392Member arcsAlias392 =
    Json.Encode.list Json.Encode.int arcsAlias392


encodedArcsAlias393 : List (List Int) -> Json.Encode.Value
encodedArcsAlias393 =
    Json.Encode.list encodedArcsAlias393Member


encodedArcsAlias393Member : List Int -> Json.Encode.Value
encodedArcsAlias393Member arcsAlias393 =
    Json.Encode.list Json.Encode.int arcsAlias393


encodedArcsAlias394 : List (List Int) -> Json.Encode.Value
encodedArcsAlias394 =
    Json.Encode.list encodedArcsAlias394Member


encodedArcsAlias394Member : List Int -> Json.Encode.Value
encodedArcsAlias394Member arcsAlias394 =
    Json.Encode.list Json.Encode.int arcsAlias394


encodedArcsAlias395 : List (List Int) -> Json.Encode.Value
encodedArcsAlias395 =
    Json.Encode.list encodedArcsAlias395Member


encodedArcsAlias395Member : List Int -> Json.Encode.Value
encodedArcsAlias395Member arcsAlias395 =
    Json.Encode.list Json.Encode.int arcsAlias395


encodedArcsAlias396 : List (List Int) -> Json.Encode.Value
encodedArcsAlias396 =
    Json.Encode.list encodedArcsAlias396Member


encodedArcsAlias396Member : List Int -> Json.Encode.Value
encodedArcsAlias396Member arcsAlias396 =
    Json.Encode.list Json.Encode.int arcsAlias396


encodedArcsAlias397 : List (List Int) -> Json.Encode.Value
encodedArcsAlias397 =
    Json.Encode.list encodedArcsAlias397Member


encodedArcsAlias397Member : List Int -> Json.Encode.Value
encodedArcsAlias397Member arcsAlias397 =
    Json.Encode.list Json.Encode.int arcsAlias397


encodedArcsAlias398 : List (List Int) -> Json.Encode.Value
encodedArcsAlias398 =
    Json.Encode.list encodedArcsAlias398Member


encodedArcsAlias398Member : List Int -> Json.Encode.Value
encodedArcsAlias398Member arcsAlias398 =
    Json.Encode.list Json.Encode.int arcsAlias398


encodedArcsAlias399 : List (List Int) -> Json.Encode.Value
encodedArcsAlias399 =
    Json.Encode.list encodedArcsAlias399Member


encodedArcsAlias399Member : List Int -> Json.Encode.Value
encodedArcsAlias399Member arcsAlias399 =
    Json.Encode.list Json.Encode.int arcsAlias399


encodedArcsAlias400 : List (List Int) -> Json.Encode.Value
encodedArcsAlias400 =
    Json.Encode.list encodedArcsAlias400Member


encodedArcsAlias400Member : List Int -> Json.Encode.Value
encodedArcsAlias400Member arcsAlias400 =
    Json.Encode.list Json.Encode.int arcsAlias400


encodedArcsAlias401 : List (List Int) -> Json.Encode.Value
encodedArcsAlias401 =
    Json.Encode.list encodedArcsAlias401Member


encodedArcsAlias401Member : List Int -> Json.Encode.Value
encodedArcsAlias401Member arcsAlias401 =
    Json.Encode.list Json.Encode.int arcsAlias401


encodedArcsAlias402 : List (List Int) -> Json.Encode.Value
encodedArcsAlias402 =
    Json.Encode.list encodedArcsAlias402Member


encodedArcsAlias402Member : List Int -> Json.Encode.Value
encodedArcsAlias402Member arcsAlias402 =
    Json.Encode.list Json.Encode.int arcsAlias402


encodedArcsAlias403 : List (List Int) -> Json.Encode.Value
encodedArcsAlias403 =
    Json.Encode.list encodedArcsAlias403Member


encodedArcsAlias403Member : List Int -> Json.Encode.Value
encodedArcsAlias403Member arcsAlias403 =
    Json.Encode.list Json.Encode.int arcsAlias403


encodedArcsAlias404 : List (List Int) -> Json.Encode.Value
encodedArcsAlias404 =
    Json.Encode.list encodedArcsAlias404Member


encodedArcsAlias404Member : List Int -> Json.Encode.Value
encodedArcsAlias404Member arcsAlias404 =
    Json.Encode.list Json.Encode.int arcsAlias404


encodedArcsAlias405 : List (List Int) -> Json.Encode.Value
encodedArcsAlias405 =
    Json.Encode.list encodedArcsAlias405Member


encodedArcsAlias405Member : List Int -> Json.Encode.Value
encodedArcsAlias405Member arcsAlias405 =
    Json.Encode.list Json.Encode.int arcsAlias405


encodedArcsAlias406 : List (List Int) -> Json.Encode.Value
encodedArcsAlias406 =
    Json.Encode.list encodedArcsAlias406Member


encodedArcsAlias406Member : List Int -> Json.Encode.Value
encodedArcsAlias406Member arcsAlias406 =
    Json.Encode.list Json.Encode.int arcsAlias406


encodedArcsAlias407 : List (List Int) -> Json.Encode.Value
encodedArcsAlias407 =
    Json.Encode.list encodedArcsAlias407Member


encodedArcsAlias407Member : List Int -> Json.Encode.Value
encodedArcsAlias407Member arcsAlias407 =
    Json.Encode.list Json.Encode.int arcsAlias407


encodedArcsAlias408 : List (List Int) -> Json.Encode.Value
encodedArcsAlias408 =
    Json.Encode.list encodedArcsAlias408Member


encodedArcsAlias408Member : List Int -> Json.Encode.Value
encodedArcsAlias408Member arcsAlias408 =
    Json.Encode.list Json.Encode.int arcsAlias408


encodedArcsAlias409 : List (List Int) -> Json.Encode.Value
encodedArcsAlias409 =
    Json.Encode.list encodedArcsAlias409Member


encodedArcsAlias409Member : List Int -> Json.Encode.Value
encodedArcsAlias409Member arcsAlias409 =
    Json.Encode.list Json.Encode.int arcsAlias409


encodedArcsAlias410 : List (List Int) -> Json.Encode.Value
encodedArcsAlias410 =
    Json.Encode.list encodedArcsAlias410Member


encodedArcsAlias410Member : List Int -> Json.Encode.Value
encodedArcsAlias410Member arcsAlias410 =
    Json.Encode.list Json.Encode.int arcsAlias410


encodedArcsAlias411 : List (List Int) -> Json.Encode.Value
encodedArcsAlias411 =
    Json.Encode.list encodedArcsAlias411Member


encodedArcsAlias411Member : List Int -> Json.Encode.Value
encodedArcsAlias411Member arcsAlias411 =
    Json.Encode.list Json.Encode.int arcsAlias411


encodedArcsAlias412 : List (List Int) -> Json.Encode.Value
encodedArcsAlias412 =
    Json.Encode.list encodedArcsAlias412Member


encodedArcsAlias412Member : List Int -> Json.Encode.Value
encodedArcsAlias412Member arcsAlias412 =
    Json.Encode.list Json.Encode.int arcsAlias412


encodedArcsAlias413 : List (List Int) -> Json.Encode.Value
encodedArcsAlias413 =
    Json.Encode.list encodedArcsAlias413Member


encodedArcsAlias413Member : List Int -> Json.Encode.Value
encodedArcsAlias413Member arcsAlias413 =
    Json.Encode.list Json.Encode.int arcsAlias413


encodedArcsAlias414 : List (List Int) -> Json.Encode.Value
encodedArcsAlias414 =
    Json.Encode.list encodedArcsAlias414Member


encodedArcsAlias414Member : List Int -> Json.Encode.Value
encodedArcsAlias414Member arcsAlias414 =
    Json.Encode.list Json.Encode.int arcsAlias414


encodedArcsAlias415 : List (List Int) -> Json.Encode.Value
encodedArcsAlias415 =
    Json.Encode.list encodedArcsAlias415Member


encodedArcsAlias415Member : List Int -> Json.Encode.Value
encodedArcsAlias415Member arcsAlias415 =
    Json.Encode.list Json.Encode.int arcsAlias415


encodedArcsAlias416 : List (List Int) -> Json.Encode.Value
encodedArcsAlias416 =
    Json.Encode.list encodedArcsAlias416Member


encodedArcsAlias416Member : List Int -> Json.Encode.Value
encodedArcsAlias416Member arcsAlias416 =
    Json.Encode.list Json.Encode.int arcsAlias416


encodedArcsAlias417 : List (List Int) -> Json.Encode.Value
encodedArcsAlias417 =
    Json.Encode.list encodedArcsAlias417Member


encodedArcsAlias417Member : List Int -> Json.Encode.Value
encodedArcsAlias417Member arcsAlias417 =
    Json.Encode.list Json.Encode.int arcsAlias417


encodedArcsAlias418 : List (List Int) -> Json.Encode.Value
encodedArcsAlias418 =
    Json.Encode.list encodedArcsAlias418Member


encodedArcsAlias418Member : List Int -> Json.Encode.Value
encodedArcsAlias418Member arcsAlias418 =
    Json.Encode.list Json.Encode.int arcsAlias418


encodedArcsAlias419 : List (List Int) -> Json.Encode.Value
encodedArcsAlias419 =
    Json.Encode.list encodedArcsAlias419Member


encodedArcsAlias419Member : List Int -> Json.Encode.Value
encodedArcsAlias419Member arcsAlias419 =
    Json.Encode.list Json.Encode.int arcsAlias419


encodedArcsAlias420 : List (List Int) -> Json.Encode.Value
encodedArcsAlias420 =
    Json.Encode.list encodedArcsAlias420Member


encodedArcsAlias420Member : List Int -> Json.Encode.Value
encodedArcsAlias420Member arcsAlias420 =
    Json.Encode.list Json.Encode.int arcsAlias420


encodedArcsAlias421 : List (List Int) -> Json.Encode.Value
encodedArcsAlias421 =
    Json.Encode.list encodedArcsAlias421Member


encodedArcsAlias421Member : List Int -> Json.Encode.Value
encodedArcsAlias421Member arcsAlias421 =
    Json.Encode.list Json.Encode.int arcsAlias421


encodedArcsAlias422 : List (List Int) -> Json.Encode.Value
encodedArcsAlias422 =
    Json.Encode.list encodedArcsAlias422Member


encodedArcsAlias422Member : List Int -> Json.Encode.Value
encodedArcsAlias422Member arcsAlias422 =
    Json.Encode.list Json.Encode.int arcsAlias422


encodedArcsAlias423 : List (List Int) -> Json.Encode.Value
encodedArcsAlias423 =
    Json.Encode.list encodedArcsAlias423Member


encodedArcsAlias423Member : List Int -> Json.Encode.Value
encodedArcsAlias423Member arcsAlias423 =
    Json.Encode.list Json.Encode.int arcsAlias423


encodedArcsAlias424 : List (List Int) -> Json.Encode.Value
encodedArcsAlias424 =
    Json.Encode.list encodedArcsAlias424Member


encodedArcsAlias424Member : List Int -> Json.Encode.Value
encodedArcsAlias424Member arcsAlias424 =
    Json.Encode.list Json.Encode.int arcsAlias424


encodedArcsAlias425 : List (List Int) -> Json.Encode.Value
encodedArcsAlias425 =
    Json.Encode.list encodedArcsAlias425Member


encodedArcsAlias425Member : List Int -> Json.Encode.Value
encodedArcsAlias425Member arcsAlias425 =
    Json.Encode.list Json.Encode.int arcsAlias425


encodedArcsAlias426 : List (List Int) -> Json.Encode.Value
encodedArcsAlias426 =
    Json.Encode.list encodedArcsAlias426Member


encodedArcsAlias426Member : List Int -> Json.Encode.Value
encodedArcsAlias426Member arcsAlias426 =
    Json.Encode.list Json.Encode.int arcsAlias426


encodedArcsAlias427 : List (List Int) -> Json.Encode.Value
encodedArcsAlias427 =
    Json.Encode.list encodedArcsAlias427Member


encodedArcsAlias427Member : List Int -> Json.Encode.Value
encodedArcsAlias427Member arcsAlias427 =
    Json.Encode.list Json.Encode.int arcsAlias427


encodedArcsAlias428 : List (List Int) -> Json.Encode.Value
encodedArcsAlias428 =
    Json.Encode.list encodedArcsAlias428Member


encodedArcsAlias428Member : List Int -> Json.Encode.Value
encodedArcsAlias428Member arcsAlias428 =
    Json.Encode.list Json.Encode.int arcsAlias428


encodedArcsAlias429 : List (List Int) -> Json.Encode.Value
encodedArcsAlias429 =
    Json.Encode.list encodedArcsAlias429Member


encodedArcsAlias429Member : List Int -> Json.Encode.Value
encodedArcsAlias429Member arcsAlias429 =
    Json.Encode.list Json.Encode.int arcsAlias429


encodedArcsAlias430 : List (List Int) -> Json.Encode.Value
encodedArcsAlias430 =
    Json.Encode.list encodedArcsAlias430Member


encodedArcsAlias430Member : List Int -> Json.Encode.Value
encodedArcsAlias430Member arcsAlias430 =
    Json.Encode.list Json.Encode.int arcsAlias430


encodedArcsAlias431 : List (List Int) -> Json.Encode.Value
encodedArcsAlias431 =
    Json.Encode.list encodedArcsAlias431Member


encodedArcsAlias431Member : List Int -> Json.Encode.Value
encodedArcsAlias431Member arcsAlias431 =
    Json.Encode.list Json.Encode.int arcsAlias431


encodedArcsAlias432 : List (List Int) -> Json.Encode.Value
encodedArcsAlias432 =
    Json.Encode.list encodedArcsAlias432Member


encodedArcsAlias432Member : List Int -> Json.Encode.Value
encodedArcsAlias432Member arcsAlias432 =
    Json.Encode.list Json.Encode.int arcsAlias432


encodedArcsAlias433 : List (List Int) -> Json.Encode.Value
encodedArcsAlias433 =
    Json.Encode.list encodedArcsAlias433Member


encodedArcsAlias433Member : List Int -> Json.Encode.Value
encodedArcsAlias433Member arcsAlias433 =
    Json.Encode.list Json.Encode.int arcsAlias433


encodedArcsAlias434 : List (List Int) -> Json.Encode.Value
encodedArcsAlias434 =
    Json.Encode.list encodedArcsAlias434Member


encodedArcsAlias434Member : List Int -> Json.Encode.Value
encodedArcsAlias434Member arcsAlias434 =
    Json.Encode.list Json.Encode.int arcsAlias434


encodedArcsAlias435 : List (List Int) -> Json.Encode.Value
encodedArcsAlias435 =
    Json.Encode.list encodedArcsAlias435Member


encodedArcsAlias435Member : List Int -> Json.Encode.Value
encodedArcsAlias435Member arcsAlias435 =
    Json.Encode.list Json.Encode.int arcsAlias435


encodedArcsAlias436 : List (List Int) -> Json.Encode.Value
encodedArcsAlias436 =
    Json.Encode.list encodedArcsAlias436Member


encodedArcsAlias436Member : List Int -> Json.Encode.Value
encodedArcsAlias436Member arcsAlias436 =
    Json.Encode.list Json.Encode.int arcsAlias436


encodedArcsAlias437 : List (List Int) -> Json.Encode.Value
encodedArcsAlias437 =
    Json.Encode.list encodedArcsAlias437Member


encodedArcsAlias437Member : List Int -> Json.Encode.Value
encodedArcsAlias437Member arcsAlias437 =
    Json.Encode.list Json.Encode.int arcsAlias437


encodedArcsAlias438 : List (List Int) -> Json.Encode.Value
encodedArcsAlias438 =
    Json.Encode.list encodedArcsAlias438Member


encodedArcsAlias438Member : List Int -> Json.Encode.Value
encodedArcsAlias438Member arcsAlias438 =
    Json.Encode.list Json.Encode.int arcsAlias438


encodedArcsAlias439 : List (List Int) -> Json.Encode.Value
encodedArcsAlias439 =
    Json.Encode.list encodedArcsAlias439Member


encodedArcsAlias439Member : List Int -> Json.Encode.Value
encodedArcsAlias439Member arcsAlias439 =
    Json.Encode.list Json.Encode.int arcsAlias439


encodedArcsAlias440 : List (List Int) -> Json.Encode.Value
encodedArcsAlias440 =
    Json.Encode.list encodedArcsAlias440Member


encodedArcsAlias440Member : List Int -> Json.Encode.Value
encodedArcsAlias440Member arcsAlias440 =
    Json.Encode.list Json.Encode.int arcsAlias440


encodedArcsAlias441 : List (List Int) -> Json.Encode.Value
encodedArcsAlias441 =
    Json.Encode.list encodedArcsAlias441Member


encodedArcsAlias441Member : List Int -> Json.Encode.Value
encodedArcsAlias441Member arcsAlias441 =
    Json.Encode.list Json.Encode.int arcsAlias441


encodedArcsAlias442 : List (List Int) -> Json.Encode.Value
encodedArcsAlias442 =
    Json.Encode.list encodedArcsAlias442Member


encodedArcsAlias442Member : List Int -> Json.Encode.Value
encodedArcsAlias442Member arcsAlias442 =
    Json.Encode.list Json.Encode.int arcsAlias442


encodedArcsAlias443 : List (List Int) -> Json.Encode.Value
encodedArcsAlias443 =
    Json.Encode.list encodedArcsAlias443Member


encodedArcsAlias443Member : List Int -> Json.Encode.Value
encodedArcsAlias443Member arcsAlias443 =
    Json.Encode.list Json.Encode.int arcsAlias443


encodedArcsAlias444 : List (List Int) -> Json.Encode.Value
encodedArcsAlias444 =
    Json.Encode.list encodedArcsAlias444Member


encodedArcsAlias444Member : List Int -> Json.Encode.Value
encodedArcsAlias444Member arcsAlias444 =
    Json.Encode.list Json.Encode.int arcsAlias444


encodedArcsAlias445 : List (List Int) -> Json.Encode.Value
encodedArcsAlias445 =
    Json.Encode.list encodedArcsAlias445Member


encodedArcsAlias445Member : List Int -> Json.Encode.Value
encodedArcsAlias445Member arcsAlias445 =
    Json.Encode.list Json.Encode.int arcsAlias445


encodedArcsAlias446 : List (List Int) -> Json.Encode.Value
encodedArcsAlias446 =
    Json.Encode.list encodedArcsAlias446Member


encodedArcsAlias446Member : List Int -> Json.Encode.Value
encodedArcsAlias446Member arcsAlias446 =
    Json.Encode.list Json.Encode.int arcsAlias446


encodedArcsAlias447 : List (List Int) -> Json.Encode.Value
encodedArcsAlias447 =
    Json.Encode.list encodedArcsAlias447Member


encodedArcsAlias447Member : List Int -> Json.Encode.Value
encodedArcsAlias447Member arcsAlias447 =
    Json.Encode.list Json.Encode.int arcsAlias447


encodedArcsAlias448 : List (List Int) -> Json.Encode.Value
encodedArcsAlias448 =
    Json.Encode.list encodedArcsAlias448Member


encodedArcsAlias448Member : List Int -> Json.Encode.Value
encodedArcsAlias448Member arcsAlias448 =
    Json.Encode.list Json.Encode.int arcsAlias448


encodedArcsAlias449 : List (List Int) -> Json.Encode.Value
encodedArcsAlias449 =
    Json.Encode.list encodedArcsAlias449Member


encodedArcsAlias449Member : List Int -> Json.Encode.Value
encodedArcsAlias449Member arcsAlias449 =
    Json.Encode.list Json.Encode.int arcsAlias449


encodedArcsAlias450 : List (List Int) -> Json.Encode.Value
encodedArcsAlias450 =
    Json.Encode.list encodedArcsAlias450Member


encodedArcsAlias450Member : List Int -> Json.Encode.Value
encodedArcsAlias450Member arcsAlias450 =
    Json.Encode.list Json.Encode.int arcsAlias450


encodedArcsAlias451 : List (List Int) -> Json.Encode.Value
encodedArcsAlias451 =
    Json.Encode.list encodedArcsAlias451Member


encodedArcsAlias451Member : List Int -> Json.Encode.Value
encodedArcsAlias451Member arcsAlias451 =
    Json.Encode.list Json.Encode.int arcsAlias451


encodedArcsAlias452 : List (List Int) -> Json.Encode.Value
encodedArcsAlias452 =
    Json.Encode.list encodedArcsAlias452Member


encodedArcsAlias452Member : List Int -> Json.Encode.Value
encodedArcsAlias452Member arcsAlias452 =
    Json.Encode.list Json.Encode.int arcsAlias452


encodedArcsAlias453 : List (List Int) -> Json.Encode.Value
encodedArcsAlias453 =
    Json.Encode.list encodedArcsAlias453Member


encodedArcsAlias453Member : List Int -> Json.Encode.Value
encodedArcsAlias453Member arcsAlias453 =
    Json.Encode.list Json.Encode.int arcsAlias453


encodedArcsAlias454 : List (List Int) -> Json.Encode.Value
encodedArcsAlias454 =
    Json.Encode.list encodedArcsAlias454Member


encodedArcsAlias454Member : List Int -> Json.Encode.Value
encodedArcsAlias454Member arcsAlias454 =
    Json.Encode.list Json.Encode.int arcsAlias454


encodedArcsAlias455 : List (List Int) -> Json.Encode.Value
encodedArcsAlias455 =
    Json.Encode.list encodedArcsAlias455Member


encodedArcsAlias455Member : List Int -> Json.Encode.Value
encodedArcsAlias455Member arcsAlias455 =
    Json.Encode.list Json.Encode.int arcsAlias455


encodedArcsAlias456 : List (List Int) -> Json.Encode.Value
encodedArcsAlias456 =
    Json.Encode.list encodedArcsAlias456Member


encodedArcsAlias456Member : List Int -> Json.Encode.Value
encodedArcsAlias456Member arcsAlias456 =
    Json.Encode.list Json.Encode.int arcsAlias456


encodedArcsAlias457 : List (List Int) -> Json.Encode.Value
encodedArcsAlias457 =
    Json.Encode.list encodedArcsAlias457Member


encodedArcsAlias457Member : List Int -> Json.Encode.Value
encodedArcsAlias457Member arcsAlias457 =
    Json.Encode.list Json.Encode.int arcsAlias457


encodedArcsAlias458 : List (List Int) -> Json.Encode.Value
encodedArcsAlias458 =
    Json.Encode.list encodedArcsAlias458Member


encodedArcsAlias458Member : List Int -> Json.Encode.Value
encodedArcsAlias458Member arcsAlias458 =
    Json.Encode.list Json.Encode.int arcsAlias458


encodedArcsAlias459 : List (List Int) -> Json.Encode.Value
encodedArcsAlias459 =
    Json.Encode.list encodedArcsAlias459Member


encodedArcsAlias459Member : List Int -> Json.Encode.Value
encodedArcsAlias459Member arcsAlias459 =
    Json.Encode.list Json.Encode.int arcsAlias459


encodedArcsAlias460 : List (List Int) -> Json.Encode.Value
encodedArcsAlias460 =
    Json.Encode.list encodedArcsAlias460Member


encodedArcsAlias460Member : List Int -> Json.Encode.Value
encodedArcsAlias460Member arcsAlias460 =
    Json.Encode.list Json.Encode.int arcsAlias460


encodedArcsAlias461 : List (List Int) -> Json.Encode.Value
encodedArcsAlias461 =
    Json.Encode.list encodedArcsAlias461Member


encodedArcsAlias461Member : List Int -> Json.Encode.Value
encodedArcsAlias461Member arcsAlias461 =
    Json.Encode.list Json.Encode.int arcsAlias461


encodedArcsAlias462 : List (List Int) -> Json.Encode.Value
encodedArcsAlias462 =
    Json.Encode.list encodedArcsAlias462Member


encodedArcsAlias462Member : List Int -> Json.Encode.Value
encodedArcsAlias462Member arcsAlias462 =
    Json.Encode.list Json.Encode.int arcsAlias462


encodedArcsAlias463 : List (List Int) -> Json.Encode.Value
encodedArcsAlias463 =
    Json.Encode.list encodedArcsAlias463Member


encodedArcsAlias463Member : List Int -> Json.Encode.Value
encodedArcsAlias463Member arcsAlias463 =
    Json.Encode.list Json.Encode.int arcsAlias463


encodedArcsAlias464 : List (List Int) -> Json.Encode.Value
encodedArcsAlias464 =
    Json.Encode.list encodedArcsAlias464Member


encodedArcsAlias464Member : List Int -> Json.Encode.Value
encodedArcsAlias464Member arcsAlias464 =
    Json.Encode.list Json.Encode.int arcsAlias464


encodedArcsAlias465 : List (List Int) -> Json.Encode.Value
encodedArcsAlias465 =
    Json.Encode.list encodedArcsAlias465Member


encodedArcsAlias465Member : List Int -> Json.Encode.Value
encodedArcsAlias465Member arcsAlias465 =
    Json.Encode.list Json.Encode.int arcsAlias465


encodedArcsAlias466 : List (List Int) -> Json.Encode.Value
encodedArcsAlias466 =
    Json.Encode.list encodedArcsAlias466Member


encodedArcsAlias466Member : List Int -> Json.Encode.Value
encodedArcsAlias466Member arcsAlias466 =
    Json.Encode.list Json.Encode.int arcsAlias466


encodedArcsAlias467 : List (List Int) -> Json.Encode.Value
encodedArcsAlias467 =
    Json.Encode.list encodedArcsAlias467Member


encodedArcsAlias467Member : List Int -> Json.Encode.Value
encodedArcsAlias467Member arcsAlias467 =
    Json.Encode.list Json.Encode.int arcsAlias467


encodedArcsAlias468 : List (List Int) -> Json.Encode.Value
encodedArcsAlias468 =
    Json.Encode.list encodedArcsAlias468Member


encodedArcsAlias468Member : List Int -> Json.Encode.Value
encodedArcsAlias468Member arcsAlias468 =
    Json.Encode.list Json.Encode.int arcsAlias468


encodedArcsAlias469 : List (List Int) -> Json.Encode.Value
encodedArcsAlias469 =
    Json.Encode.list encodedArcsAlias469Member


encodedArcsAlias469Member : List Int -> Json.Encode.Value
encodedArcsAlias469Member arcsAlias469 =
    Json.Encode.list Json.Encode.int arcsAlias469


encodedArcsAlias470 : List (List Int) -> Json.Encode.Value
encodedArcsAlias470 =
    Json.Encode.list encodedArcsAlias470Member


encodedArcsAlias470Member : List Int -> Json.Encode.Value
encodedArcsAlias470Member arcsAlias470 =
    Json.Encode.list Json.Encode.int arcsAlias470


encodedArcsAlias471 : List (List Int) -> Json.Encode.Value
encodedArcsAlias471 =
    Json.Encode.list encodedArcsAlias471Member


encodedArcsAlias471Member : List Int -> Json.Encode.Value
encodedArcsAlias471Member arcsAlias471 =
    Json.Encode.list Json.Encode.int arcsAlias471


encodedArcsAlias472 : List (List Int) -> Json.Encode.Value
encodedArcsAlias472 =
    Json.Encode.list encodedArcsAlias472Member


encodedArcsAlias472Member : List Int -> Json.Encode.Value
encodedArcsAlias472Member arcsAlias472 =
    Json.Encode.list Json.Encode.int arcsAlias472


encodedArcsAlias473 : List (List Int) -> Json.Encode.Value
encodedArcsAlias473 =
    Json.Encode.list encodedArcsAlias473Member


encodedArcsAlias473Member : List Int -> Json.Encode.Value
encodedArcsAlias473Member arcsAlias473 =
    Json.Encode.list Json.Encode.int arcsAlias473


encodedArcsAlias474 : List (List Int) -> Json.Encode.Value
encodedArcsAlias474 =
    Json.Encode.list encodedArcsAlias474Member


encodedArcsAlias474Member : List Int -> Json.Encode.Value
encodedArcsAlias474Member arcsAlias474 =
    Json.Encode.list Json.Encode.int arcsAlias474


encodedArcsAlias475 : List (List Int) -> Json.Encode.Value
encodedArcsAlias475 =
    Json.Encode.list encodedArcsAlias475Member


encodedArcsAlias475Member : List Int -> Json.Encode.Value
encodedArcsAlias475Member arcsAlias475 =
    Json.Encode.list Json.Encode.int arcsAlias475


encodedArcsAlias476 : List (List Int) -> Json.Encode.Value
encodedArcsAlias476 =
    Json.Encode.list encodedArcsAlias476Member


encodedArcsAlias476Member : List Int -> Json.Encode.Value
encodedArcsAlias476Member arcsAlias476 =
    Json.Encode.list Json.Encode.int arcsAlias476


encodedArcsAlias477 : List (List Int) -> Json.Encode.Value
encodedArcsAlias477 =
    Json.Encode.list encodedArcsAlias477Member


encodedArcsAlias477Member : List Int -> Json.Encode.Value
encodedArcsAlias477Member arcsAlias477 =
    Json.Encode.list Json.Encode.int arcsAlias477


encodedArcsAlias478 : List (List Int) -> Json.Encode.Value
encodedArcsAlias478 =
    Json.Encode.list encodedArcsAlias478Member


encodedArcsAlias478Member : List Int -> Json.Encode.Value
encodedArcsAlias478Member arcsAlias478 =
    Json.Encode.list Json.Encode.int arcsAlias478


encodedArcsAlias479 : List (List Int) -> Json.Encode.Value
encodedArcsAlias479 =
    Json.Encode.list encodedArcsAlias479Member


encodedArcsAlias479Member : List Int -> Json.Encode.Value
encodedArcsAlias479Member arcsAlias479 =
    Json.Encode.list Json.Encode.int arcsAlias479


encodedArcsAlias480 : List (List Int) -> Json.Encode.Value
encodedArcsAlias480 =
    Json.Encode.list encodedArcsAlias480Member


encodedArcsAlias480Member : List Int -> Json.Encode.Value
encodedArcsAlias480Member arcsAlias480 =
    Json.Encode.list Json.Encode.int arcsAlias480


encodedArcsAlias481 : List (List Int) -> Json.Encode.Value
encodedArcsAlias481 =
    Json.Encode.list encodedArcsAlias481Member


encodedArcsAlias481Member : List Int -> Json.Encode.Value
encodedArcsAlias481Member arcsAlias481 =
    Json.Encode.list Json.Encode.int arcsAlias481


encodedArcsAlias482 : List (List Int) -> Json.Encode.Value
encodedArcsAlias482 =
    Json.Encode.list encodedArcsAlias482Member


encodedArcsAlias482Member : List Int -> Json.Encode.Value
encodedArcsAlias482Member arcsAlias482 =
    Json.Encode.list Json.Encode.int arcsAlias482


encodedArcsAlias483 : List (List Int) -> Json.Encode.Value
encodedArcsAlias483 =
    Json.Encode.list encodedArcsAlias483Member


encodedArcsAlias483Member : List Int -> Json.Encode.Value
encodedArcsAlias483Member arcsAlias483 =
    Json.Encode.list Json.Encode.int arcsAlias483


encodedArcsAlias484 : List (List Int) -> Json.Encode.Value
encodedArcsAlias484 =
    Json.Encode.list encodedArcsAlias484Member


encodedArcsAlias484Member : List Int -> Json.Encode.Value
encodedArcsAlias484Member arcsAlias484 =
    Json.Encode.list Json.Encode.int arcsAlias484


encodedArcsAlias485 : List (List Int) -> Json.Encode.Value
encodedArcsAlias485 =
    Json.Encode.list encodedArcsAlias485Member


encodedArcsAlias485Member : List Int -> Json.Encode.Value
encodedArcsAlias485Member arcsAlias485 =
    Json.Encode.list Json.Encode.int arcsAlias485


encodedArcsAlias486 : List (List Int) -> Json.Encode.Value
encodedArcsAlias486 =
    Json.Encode.list encodedArcsAlias486Member


encodedArcsAlias486Member : List Int -> Json.Encode.Value
encodedArcsAlias486Member arcsAlias486 =
    Json.Encode.list Json.Encode.int arcsAlias486


encodedArcsAlias487 : List (List Int) -> Json.Encode.Value
encodedArcsAlias487 =
    Json.Encode.list encodedArcsAlias487Member


encodedArcsAlias487Member : List Int -> Json.Encode.Value
encodedArcsAlias487Member arcsAlias487 =
    Json.Encode.list Json.Encode.int arcsAlias487


encodedArcsAlias488 : List (List Int) -> Json.Encode.Value
encodedArcsAlias488 =
    Json.Encode.list encodedArcsAlias488Member


encodedArcsAlias488Member : List Int -> Json.Encode.Value
encodedArcsAlias488Member arcsAlias488 =
    Json.Encode.list Json.Encode.int arcsAlias488


encodedArcsAlias489 : List (List Int) -> Json.Encode.Value
encodedArcsAlias489 =
    Json.Encode.list encodedArcsAlias489Member


encodedArcsAlias489Member : List Int -> Json.Encode.Value
encodedArcsAlias489Member arcsAlias489 =
    Json.Encode.list Json.Encode.int arcsAlias489


encodedArcsAlias490 : List (List Int) -> Json.Encode.Value
encodedArcsAlias490 =
    Json.Encode.list encodedArcsAlias490Member


encodedArcsAlias490Member : List Int -> Json.Encode.Value
encodedArcsAlias490Member arcsAlias490 =
    Json.Encode.list Json.Encode.int arcsAlias490


encodedArcsAlias491 : List (List Int) -> Json.Encode.Value
encodedArcsAlias491 =
    Json.Encode.list encodedArcsAlias491Member


encodedArcsAlias491Member : List Int -> Json.Encode.Value
encodedArcsAlias491Member arcsAlias491 =
    Json.Encode.list Json.Encode.int arcsAlias491


encodedArcsAlias492 : List (List Int) -> Json.Encode.Value
encodedArcsAlias492 =
    Json.Encode.list encodedArcsAlias492Member


encodedArcsAlias492Member : List Int -> Json.Encode.Value
encodedArcsAlias492Member arcsAlias492 =
    Json.Encode.list Json.Encode.int arcsAlias492


encodedArcsAlias493 : List (List Int) -> Json.Encode.Value
encodedArcsAlias493 =
    Json.Encode.list encodedArcsAlias493Member


encodedArcsAlias493Member : List Int -> Json.Encode.Value
encodedArcsAlias493Member arcsAlias493 =
    Json.Encode.list Json.Encode.int arcsAlias493


encodedArcsAlias494 : List (List Int) -> Json.Encode.Value
encodedArcsAlias494 =
    Json.Encode.list encodedArcsAlias494Member


encodedArcsAlias494Member : List Int -> Json.Encode.Value
encodedArcsAlias494Member arcsAlias494 =
    Json.Encode.list Json.Encode.int arcsAlias494


encodedArcsAlias495 : List (List Int) -> Json.Encode.Value
encodedArcsAlias495 =
    Json.Encode.list encodedArcsAlias495Member


encodedArcsAlias495Member : List Int -> Json.Encode.Value
encodedArcsAlias495Member arcsAlias495 =
    Json.Encode.list Json.Encode.int arcsAlias495


encodedArcsAlias496 : List (List Int) -> Json.Encode.Value
encodedArcsAlias496 =
    Json.Encode.list encodedArcsAlias496Member


encodedArcsAlias496Member : List Int -> Json.Encode.Value
encodedArcsAlias496Member arcsAlias496 =
    Json.Encode.list Json.Encode.int arcsAlias496


encodedArcsAlias497 : List (List Int) -> Json.Encode.Value
encodedArcsAlias497 =
    Json.Encode.list encodedArcsAlias497Member


encodedArcsAlias497Member : List Int -> Json.Encode.Value
encodedArcsAlias497Member arcsAlias497 =
    Json.Encode.list Json.Encode.int arcsAlias497


encodedArcsAlias498 : List (List Int) -> Json.Encode.Value
encodedArcsAlias498 =
    Json.Encode.list encodedArcsAlias498Member


encodedArcsAlias498Member : List Int -> Json.Encode.Value
encodedArcsAlias498Member arcsAlias498 =
    Json.Encode.list Json.Encode.int arcsAlias498


encodedArcsAlias499 : List (List Int) -> Json.Encode.Value
encodedArcsAlias499 =
    Json.Encode.list encodedArcsAlias499Member


encodedArcsAlias499Member : List Int -> Json.Encode.Value
encodedArcsAlias499Member arcsAlias499 =
    Json.Encode.list Json.Encode.int arcsAlias499


encodedArcsAlias500 : List (List Int) -> Json.Encode.Value
encodedArcsAlias500 =
    Json.Encode.list encodedArcsAlias500Member


encodedArcsAlias500Member : List Int -> Json.Encode.Value
encodedArcsAlias500Member arcsAlias500 =
    Json.Encode.list Json.Encode.int arcsAlias500


encodedArcsAlias501 : List (List Int) -> Json.Encode.Value
encodedArcsAlias501 =
    Json.Encode.list encodedArcsAlias501Member


encodedArcsAlias501Member : List Int -> Json.Encode.Value
encodedArcsAlias501Member arcsAlias501 =
    Json.Encode.list Json.Encode.int arcsAlias501


encodedArcsAlias502 : List (List Int) -> Json.Encode.Value
encodedArcsAlias502 =
    Json.Encode.list encodedArcsAlias502Member


encodedArcsAlias502Member : List Int -> Json.Encode.Value
encodedArcsAlias502Member arcsAlias502 =
    Json.Encode.list Json.Encode.int arcsAlias502


encodedArcsAlias503 : List (List Int) -> Json.Encode.Value
encodedArcsAlias503 =
    Json.Encode.list encodedArcsAlias503Member


encodedArcsAlias503Member : List Int -> Json.Encode.Value
encodedArcsAlias503Member arcsAlias503 =
    Json.Encode.list Json.Encode.int arcsAlias503


encodedArcsAlias504 : List (List Int) -> Json.Encode.Value
encodedArcsAlias504 =
    Json.Encode.list encodedArcsAlias504Member


encodedArcsAlias504Member : List Int -> Json.Encode.Value
encodedArcsAlias504Member arcsAlias504 =
    Json.Encode.list Json.Encode.int arcsAlias504


encodedArcsAlias505 : List (List Int) -> Json.Encode.Value
encodedArcsAlias505 =
    Json.Encode.list encodedArcsAlias505Member


encodedArcsAlias505Member : List Int -> Json.Encode.Value
encodedArcsAlias505Member arcsAlias505 =
    Json.Encode.list Json.Encode.int arcsAlias505


encodedArcsAlias506 : List (List Int) -> Json.Encode.Value
encodedArcsAlias506 =
    Json.Encode.list encodedArcsAlias506Member


encodedArcsAlias506Member : List Int -> Json.Encode.Value
encodedArcsAlias506Member arcsAlias506 =
    Json.Encode.list Json.Encode.int arcsAlias506


encodedArcsAlias507 : List (List Int) -> Json.Encode.Value
encodedArcsAlias507 =
    Json.Encode.list encodedArcsAlias507Member


encodedArcsAlias507Member : List Int -> Json.Encode.Value
encodedArcsAlias507Member arcsAlias507 =
    Json.Encode.list Json.Encode.int arcsAlias507


encodedArcsAlias508 : List (List Int) -> Json.Encode.Value
encodedArcsAlias508 =
    Json.Encode.list encodedArcsAlias508Member


encodedArcsAlias508Member : List Int -> Json.Encode.Value
encodedArcsAlias508Member arcsAlias508 =
    Json.Encode.list Json.Encode.int arcsAlias508


encodedArcsAlias509 : List (List Int) -> Json.Encode.Value
encodedArcsAlias509 =
    Json.Encode.list encodedArcsAlias509Member


encodedArcsAlias509Member : List Int -> Json.Encode.Value
encodedArcsAlias509Member arcsAlias509 =
    Json.Encode.list Json.Encode.int arcsAlias509


encodedArcsAlias510 : List (List Int) -> Json.Encode.Value
encodedArcsAlias510 =
    Json.Encode.list encodedArcsAlias510Member


encodedArcsAlias510Member : List Int -> Json.Encode.Value
encodedArcsAlias510Member arcsAlias510 =
    Json.Encode.list Json.Encode.int arcsAlias510


encodedArcsAlias511 : List (List Int) -> Json.Encode.Value
encodedArcsAlias511 =
    Json.Encode.list encodedArcsAlias511Member


encodedArcsAlias511Member : List Int -> Json.Encode.Value
encodedArcsAlias511Member arcsAlias511 =
    Json.Encode.list Json.Encode.int arcsAlias511


encodedArcsAlias512 : List (List Int) -> Json.Encode.Value
encodedArcsAlias512 =
    Json.Encode.list encodedArcsAlias512Member


encodedArcsAlias512Member : List Int -> Json.Encode.Value
encodedArcsAlias512Member arcsAlias512 =
    Json.Encode.list Json.Encode.int arcsAlias512


encodedArcsAlias513 : List (List Int) -> Json.Encode.Value
encodedArcsAlias513 =
    Json.Encode.list encodedArcsAlias513Member


encodedArcsAlias513Member : List Int -> Json.Encode.Value
encodedArcsAlias513Member arcsAlias513 =
    Json.Encode.list Json.Encode.int arcsAlias513


encodedArcsAlias514 : List (List Int) -> Json.Encode.Value
encodedArcsAlias514 =
    Json.Encode.list encodedArcsAlias514Member


encodedArcsAlias514Member : List Int -> Json.Encode.Value
encodedArcsAlias514Member arcsAlias514 =
    Json.Encode.list Json.Encode.int arcsAlias514


encodedArcsAlias515 : List (List Int) -> Json.Encode.Value
encodedArcsAlias515 =
    Json.Encode.list encodedArcsAlias515Member


encodedArcsAlias515Member : List Int -> Json.Encode.Value
encodedArcsAlias515Member arcsAlias515 =
    Json.Encode.list Json.Encode.int arcsAlias515


encodedArcsAlias516 : List (List Int) -> Json.Encode.Value
encodedArcsAlias516 =
    Json.Encode.list encodedArcsAlias516Member


encodedArcsAlias516Member : List Int -> Json.Encode.Value
encodedArcsAlias516Member arcsAlias516 =
    Json.Encode.list Json.Encode.int arcsAlias516


encodedArcsAlias517 : List (List Int) -> Json.Encode.Value
encodedArcsAlias517 =
    Json.Encode.list encodedArcsAlias517Member


encodedArcsAlias517Member : List Int -> Json.Encode.Value
encodedArcsAlias517Member arcsAlias517 =
    Json.Encode.list Json.Encode.int arcsAlias517


encodedArcsAlias518 : List (List Int) -> Json.Encode.Value
encodedArcsAlias518 =
    Json.Encode.list encodedArcsAlias518Member


encodedArcsAlias518Member : List Int -> Json.Encode.Value
encodedArcsAlias518Member arcsAlias518 =
    Json.Encode.list Json.Encode.int arcsAlias518


encodedArcsAlias519 : List (List Int) -> Json.Encode.Value
encodedArcsAlias519 =
    Json.Encode.list encodedArcsAlias519Member


encodedArcsAlias519Member : List Int -> Json.Encode.Value
encodedArcsAlias519Member arcsAlias519 =
    Json.Encode.list Json.Encode.int arcsAlias519


encodedArcsAlias520 : List (List Int) -> Json.Encode.Value
encodedArcsAlias520 =
    Json.Encode.list encodedArcsAlias520Member


encodedArcsAlias520Member : List Int -> Json.Encode.Value
encodedArcsAlias520Member arcsAlias520 =
    Json.Encode.list Json.Encode.int arcsAlias520


encodedArcsAlias521 : List (List Int) -> Json.Encode.Value
encodedArcsAlias521 =
    Json.Encode.list encodedArcsAlias521Member


encodedArcsAlias521Member : List Int -> Json.Encode.Value
encodedArcsAlias521Member arcsAlias521 =
    Json.Encode.list Json.Encode.int arcsAlias521


encodedArcsAlias522 : List (List Int) -> Json.Encode.Value
encodedArcsAlias522 =
    Json.Encode.list encodedArcsAlias522Member


encodedArcsAlias522Member : List Int -> Json.Encode.Value
encodedArcsAlias522Member arcsAlias522 =
    Json.Encode.list Json.Encode.int arcsAlias522


encodedArcsAlias523 : List (List Int) -> Json.Encode.Value
encodedArcsAlias523 =
    Json.Encode.list encodedArcsAlias523Member


encodedArcsAlias523Member : List Int -> Json.Encode.Value
encodedArcsAlias523Member arcsAlias523 =
    Json.Encode.list Json.Encode.int arcsAlias523


encodedArcsAlias524 : List (List Int) -> Json.Encode.Value
encodedArcsAlias524 =
    Json.Encode.list encodedArcsAlias524Member


encodedArcsAlias524Member : List Int -> Json.Encode.Value
encodedArcsAlias524Member arcsAlias524 =
    Json.Encode.list Json.Encode.int arcsAlias524


encodedArcsAlias525 : List (List Int) -> Json.Encode.Value
encodedArcsAlias525 =
    Json.Encode.list encodedArcsAlias525Member


encodedArcsAlias525Member : List Int -> Json.Encode.Value
encodedArcsAlias525Member arcsAlias525 =
    Json.Encode.list Json.Encode.int arcsAlias525


encodedArcsAlias526 : List (List Int) -> Json.Encode.Value
encodedArcsAlias526 =
    Json.Encode.list encodedArcsAlias526Member


encodedArcsAlias526Member : List Int -> Json.Encode.Value
encodedArcsAlias526Member arcsAlias526 =
    Json.Encode.list Json.Encode.int arcsAlias526


encodedArcsAlias527 : List (List Int) -> Json.Encode.Value
encodedArcsAlias527 =
    Json.Encode.list encodedArcsAlias527Member


encodedArcsAlias527Member : List Int -> Json.Encode.Value
encodedArcsAlias527Member arcsAlias527 =
    Json.Encode.list Json.Encode.int arcsAlias527


encodedArcsAlias528 : List (List Int) -> Json.Encode.Value
encodedArcsAlias528 =
    Json.Encode.list encodedArcsAlias528Member


encodedArcsAlias528Member : List Int -> Json.Encode.Value
encodedArcsAlias528Member arcsAlias528 =
    Json.Encode.list Json.Encode.int arcsAlias528


encodedArcsAlias529 : List (List Int) -> Json.Encode.Value
encodedArcsAlias529 =
    Json.Encode.list encodedArcsAlias529Member


encodedArcsAlias529Member : List Int -> Json.Encode.Value
encodedArcsAlias529Member arcsAlias529 =
    Json.Encode.list Json.Encode.int arcsAlias529


encodedArcsAlias530 : List (List Int) -> Json.Encode.Value
encodedArcsAlias530 =
    Json.Encode.list encodedArcsAlias530Member


encodedArcsAlias530Member : List Int -> Json.Encode.Value
encodedArcsAlias530Member arcsAlias530 =
    Json.Encode.list Json.Encode.int arcsAlias530


encodedArcsAlias531 : List (List Int) -> Json.Encode.Value
encodedArcsAlias531 =
    Json.Encode.list encodedArcsAlias531Member


encodedArcsAlias531Member : List Int -> Json.Encode.Value
encodedArcsAlias531Member arcsAlias531 =
    Json.Encode.list Json.Encode.int arcsAlias531


encodedArcsAlias532 : List (List Int) -> Json.Encode.Value
encodedArcsAlias532 =
    Json.Encode.list encodedArcsAlias532Member


encodedArcsAlias532Member : List Int -> Json.Encode.Value
encodedArcsAlias532Member arcsAlias532 =
    Json.Encode.list Json.Encode.int arcsAlias532


encodedArcsAlias533 : List (List Int) -> Json.Encode.Value
encodedArcsAlias533 =
    Json.Encode.list encodedArcsAlias533Member


encodedArcsAlias533Member : List Int -> Json.Encode.Value
encodedArcsAlias533Member arcsAlias533 =
    Json.Encode.list Json.Encode.int arcsAlias533


encodedArcsAlias534 : List (List Int) -> Json.Encode.Value
encodedArcsAlias534 =
    Json.Encode.list encodedArcsAlias534Member


encodedArcsAlias534Member : List Int -> Json.Encode.Value
encodedArcsAlias534Member arcsAlias534 =
    Json.Encode.list Json.Encode.int arcsAlias534


encodedArcsAlias535 : List (List Int) -> Json.Encode.Value
encodedArcsAlias535 =
    Json.Encode.list encodedArcsAlias535Member


encodedArcsAlias535Member : List Int -> Json.Encode.Value
encodedArcsAlias535Member arcsAlias535 =
    Json.Encode.list Json.Encode.int arcsAlias535


encodedArcsAlias536 : List (List Int) -> Json.Encode.Value
encodedArcsAlias536 =
    Json.Encode.list encodedArcsAlias536Member


encodedArcsAlias536Member : List Int -> Json.Encode.Value
encodedArcsAlias536Member arcsAlias536 =
    Json.Encode.list Json.Encode.int arcsAlias536


encodedArcsAlias537 : List (List Int) -> Json.Encode.Value
encodedArcsAlias537 =
    Json.Encode.list encodedArcsAlias537Member


encodedArcsAlias537Member : List Int -> Json.Encode.Value
encodedArcsAlias537Member arcsAlias537 =
    Json.Encode.list Json.Encode.int arcsAlias537


encodedArcsAlias538 : List (List Int) -> Json.Encode.Value
encodedArcsAlias538 =
    Json.Encode.list encodedArcsAlias538Member


encodedArcsAlias538Member : List Int -> Json.Encode.Value
encodedArcsAlias538Member arcsAlias538 =
    Json.Encode.list Json.Encode.int arcsAlias538


encodedArcsAlias539 : List (List Int) -> Json.Encode.Value
encodedArcsAlias539 =
    Json.Encode.list encodedArcsAlias539Member


encodedArcsAlias539Member : List Int -> Json.Encode.Value
encodedArcsAlias539Member arcsAlias539 =
    Json.Encode.list Json.Encode.int arcsAlias539


encodedArcsAlias540 : List (List Int) -> Json.Encode.Value
encodedArcsAlias540 =
    Json.Encode.list encodedArcsAlias540Member


encodedArcsAlias540Member : List Int -> Json.Encode.Value
encodedArcsAlias540Member arcsAlias540 =
    Json.Encode.list Json.Encode.int arcsAlias540


encodedArcsAlias541 : List (List Int) -> Json.Encode.Value
encodedArcsAlias541 =
    Json.Encode.list encodedArcsAlias541Member


encodedArcsAlias541Member : List Int -> Json.Encode.Value
encodedArcsAlias541Member arcsAlias541 =
    Json.Encode.list Json.Encode.int arcsAlias541


encodedArcsAlias542 : List (List Int) -> Json.Encode.Value
encodedArcsAlias542 =
    Json.Encode.list encodedArcsAlias542Member


encodedArcsAlias542Member : List Int -> Json.Encode.Value
encodedArcsAlias542Member arcsAlias542 =
    Json.Encode.list Json.Encode.int arcsAlias542


encodedArcsAlias543 : List (List Int) -> Json.Encode.Value
encodedArcsAlias543 =
    Json.Encode.list encodedArcsAlias543Member


encodedArcsAlias543Member : List Int -> Json.Encode.Value
encodedArcsAlias543Member arcsAlias543 =
    Json.Encode.list Json.Encode.int arcsAlias543


encodedArcsAlias544 : List (List Int) -> Json.Encode.Value
encodedArcsAlias544 =
    Json.Encode.list encodedArcsAlias544Member


encodedArcsAlias544Member : List Int -> Json.Encode.Value
encodedArcsAlias544Member arcsAlias544 =
    Json.Encode.list Json.Encode.int arcsAlias544


encodedArcsAlias545 : List (List Int) -> Json.Encode.Value
encodedArcsAlias545 =
    Json.Encode.list encodedArcsAlias545Member


encodedArcsAlias545Member : List Int -> Json.Encode.Value
encodedArcsAlias545Member arcsAlias545 =
    Json.Encode.list Json.Encode.int arcsAlias545


encodedArcsAlias546 : List (List Int) -> Json.Encode.Value
encodedArcsAlias546 =
    Json.Encode.list encodedArcsAlias546Member


encodedArcsAlias546Member : List Int -> Json.Encode.Value
encodedArcsAlias546Member arcsAlias546 =
    Json.Encode.list Json.Encode.int arcsAlias546


encodedArcsAlias547 : List (List Int) -> Json.Encode.Value
encodedArcsAlias547 =
    Json.Encode.list encodedArcsAlias547Member


encodedArcsAlias547Member : List Int -> Json.Encode.Value
encodedArcsAlias547Member arcsAlias547 =
    Json.Encode.list Json.Encode.int arcsAlias547


encodedArcsAlias548 : List (List Int) -> Json.Encode.Value
encodedArcsAlias548 =
    Json.Encode.list encodedArcsAlias548Member


encodedArcsAlias548Member : List Int -> Json.Encode.Value
encodedArcsAlias548Member arcsAlias548 =
    Json.Encode.list Json.Encode.int arcsAlias548


encodedArcsAlias549 : List (List Int) -> Json.Encode.Value
encodedArcsAlias549 =
    Json.Encode.list encodedArcsAlias549Member


encodedArcsAlias549Member : List Int -> Json.Encode.Value
encodedArcsAlias549Member arcsAlias549 =
    Json.Encode.list Json.Encode.int arcsAlias549


encodedArcsAlias550 : List (List Int) -> Json.Encode.Value
encodedArcsAlias550 =
    Json.Encode.list encodedArcsAlias550Member


encodedArcsAlias550Member : List Int -> Json.Encode.Value
encodedArcsAlias550Member arcsAlias550 =
    Json.Encode.list Json.Encode.int arcsAlias550


encodedArcsAlias551 : List (List Int) -> Json.Encode.Value
encodedArcsAlias551 =
    Json.Encode.list encodedArcsAlias551Member


encodedArcsAlias551Member : List Int -> Json.Encode.Value
encodedArcsAlias551Member arcsAlias551 =
    Json.Encode.list Json.Encode.int arcsAlias551


encodedArcsAlias552 : List (List Int) -> Json.Encode.Value
encodedArcsAlias552 =
    Json.Encode.list encodedArcsAlias552Member


encodedArcsAlias552Member : List Int -> Json.Encode.Value
encodedArcsAlias552Member arcsAlias552 =
    Json.Encode.list Json.Encode.int arcsAlias552


encodedArcsAlias553 : List (List Int) -> Json.Encode.Value
encodedArcsAlias553 =
    Json.Encode.list encodedArcsAlias553Member


encodedArcsAlias553Member : List Int -> Json.Encode.Value
encodedArcsAlias553Member arcsAlias553 =
    Json.Encode.list Json.Encode.int arcsAlias553


encodedArcsAlias554 : List (List Int) -> Json.Encode.Value
encodedArcsAlias554 =
    Json.Encode.list encodedArcsAlias554Member


encodedArcsAlias554Member : List Int -> Json.Encode.Value
encodedArcsAlias554Member arcsAlias554 =
    Json.Encode.list Json.Encode.int arcsAlias554


encodedArcsAlias555 : List (List Int) -> Json.Encode.Value
encodedArcsAlias555 =
    Json.Encode.list encodedArcsAlias555Member


encodedArcsAlias555Member : List Int -> Json.Encode.Value
encodedArcsAlias555Member arcsAlias555 =
    Json.Encode.list Json.Encode.int arcsAlias555


encodedArcsAlias556 : List (List Int) -> Json.Encode.Value
encodedArcsAlias556 =
    Json.Encode.list encodedArcsAlias556Member


encodedArcsAlias556Member : List Int -> Json.Encode.Value
encodedArcsAlias556Member arcsAlias556 =
    Json.Encode.list Json.Encode.int arcsAlias556


encodedArcsAlias557 : List (List Int) -> Json.Encode.Value
encodedArcsAlias557 =
    Json.Encode.list encodedArcsAlias557Member


encodedArcsAlias557Member : List Int -> Json.Encode.Value
encodedArcsAlias557Member arcsAlias557 =
    Json.Encode.list Json.Encode.int arcsAlias557


encodedArcsAlias558 : List (List Int) -> Json.Encode.Value
encodedArcsAlias558 =
    Json.Encode.list encodedArcsAlias558Member


encodedArcsAlias558Member : List Int -> Json.Encode.Value
encodedArcsAlias558Member arcsAlias558 =
    Json.Encode.list Json.Encode.int arcsAlias558


encodedArcsAlias559 : List (List Int) -> Json.Encode.Value
encodedArcsAlias559 =
    Json.Encode.list encodedArcsAlias559Member


encodedArcsAlias559Member : List Int -> Json.Encode.Value
encodedArcsAlias559Member arcsAlias559 =
    Json.Encode.list Json.Encode.int arcsAlias559


encodedArcsAlias560 : List (List Int) -> Json.Encode.Value
encodedArcsAlias560 =
    Json.Encode.list encodedArcsAlias560Member


encodedArcsAlias560Member : List Int -> Json.Encode.Value
encodedArcsAlias560Member arcsAlias560 =
    Json.Encode.list Json.Encode.int arcsAlias560


encodedArcsAlias561 : List (List Int) -> Json.Encode.Value
encodedArcsAlias561 =
    Json.Encode.list encodedArcsAlias561Member


encodedArcsAlias561Member : List Int -> Json.Encode.Value
encodedArcsAlias561Member arcsAlias561 =
    Json.Encode.list Json.Encode.int arcsAlias561


encodedArcsAlias562 : List (List Int) -> Json.Encode.Value
encodedArcsAlias562 =
    Json.Encode.list encodedArcsAlias562Member


encodedArcsAlias562Member : List Int -> Json.Encode.Value
encodedArcsAlias562Member arcsAlias562 =
    Json.Encode.list Json.Encode.int arcsAlias562


encodedArcsAlias563 : List (List Int) -> Json.Encode.Value
encodedArcsAlias563 =
    Json.Encode.list encodedArcsAlias563Member


encodedArcsAlias563Member : List Int -> Json.Encode.Value
encodedArcsAlias563Member arcsAlias563 =
    Json.Encode.list Json.Encode.int arcsAlias563


encodedArcsAlias564 : List (List Int) -> Json.Encode.Value
encodedArcsAlias564 =
    Json.Encode.list encodedArcsAlias564Member


encodedArcsAlias564Member : List Int -> Json.Encode.Value
encodedArcsAlias564Member arcsAlias564 =
    Json.Encode.list Json.Encode.int arcsAlias564


encodedArcsAlias565 : List (List Int) -> Json.Encode.Value
encodedArcsAlias565 =
    Json.Encode.list encodedArcsAlias565Member


encodedArcsAlias565Member : List Int -> Json.Encode.Value
encodedArcsAlias565Member arcsAlias565 =
    Json.Encode.list Json.Encode.int arcsAlias565


encodedArcsAlias566 : List (List Int) -> Json.Encode.Value
encodedArcsAlias566 =
    Json.Encode.list encodedArcsAlias566Member


encodedArcsAlias566Member : List Int -> Json.Encode.Value
encodedArcsAlias566Member arcsAlias566 =
    Json.Encode.list Json.Encode.int arcsAlias566


encodedArcsAlias567 : List (List Int) -> Json.Encode.Value
encodedArcsAlias567 =
    Json.Encode.list encodedArcsAlias567Member


encodedArcsAlias567Member : List Int -> Json.Encode.Value
encodedArcsAlias567Member arcsAlias567 =
    Json.Encode.list Json.Encode.int arcsAlias567


encodedArcsAlias568 : List (List Int) -> Json.Encode.Value
encodedArcsAlias568 =
    Json.Encode.list encodedArcsAlias568Member


encodedArcsAlias568Member : List Int -> Json.Encode.Value
encodedArcsAlias568Member arcsAlias568 =
    Json.Encode.list Json.Encode.int arcsAlias568


encodedArcsAlias569 : List (List Int) -> Json.Encode.Value
encodedArcsAlias569 =
    Json.Encode.list encodedArcsAlias569Member


encodedArcsAlias569Member : List Int -> Json.Encode.Value
encodedArcsAlias569Member arcsAlias569 =
    Json.Encode.list Json.Encode.int arcsAlias569


encodedArcsAlias570 : List (List Int) -> Json.Encode.Value
encodedArcsAlias570 =
    Json.Encode.list encodedArcsAlias570Member


encodedArcsAlias570Member : List Int -> Json.Encode.Value
encodedArcsAlias570Member arcsAlias570 =
    Json.Encode.list Json.Encode.int arcsAlias570


encodedArcsAlias571 : List (List Int) -> Json.Encode.Value
encodedArcsAlias571 =
    Json.Encode.list encodedArcsAlias571Member


encodedArcsAlias571Member : List Int -> Json.Encode.Value
encodedArcsAlias571Member arcsAlias571 =
    Json.Encode.list Json.Encode.int arcsAlias571


encodedArcsAlias572 : List (List Int) -> Json.Encode.Value
encodedArcsAlias572 =
    Json.Encode.list encodedArcsAlias572Member


encodedArcsAlias572Member : List Int -> Json.Encode.Value
encodedArcsAlias572Member arcsAlias572 =
    Json.Encode.list Json.Encode.int arcsAlias572


encodedArcsAlias573 : List (List Int) -> Json.Encode.Value
encodedArcsAlias573 =
    Json.Encode.list encodedArcsAlias573Member


encodedArcsAlias573Member : List Int -> Json.Encode.Value
encodedArcsAlias573Member arcsAlias573 =
    Json.Encode.list Json.Encode.int arcsAlias573


encodedArcsAlias574 : List (List Int) -> Json.Encode.Value
encodedArcsAlias574 =
    Json.Encode.list encodedArcsAlias574Member


encodedArcsAlias574Member : List Int -> Json.Encode.Value
encodedArcsAlias574Member arcsAlias574 =
    Json.Encode.list Json.Encode.int arcsAlias574


encodedArcsAlias575 : List (List Int) -> Json.Encode.Value
encodedArcsAlias575 =
    Json.Encode.list encodedArcsAlias575Member


encodedArcsAlias575Member : List Int -> Json.Encode.Value
encodedArcsAlias575Member arcsAlias575 =
    Json.Encode.list Json.Encode.int arcsAlias575


encodedArcsAlias576 : List (List Int) -> Json.Encode.Value
encodedArcsAlias576 =
    Json.Encode.list encodedArcsAlias576Member


encodedArcsAlias576Member : List Int -> Json.Encode.Value
encodedArcsAlias576Member arcsAlias576 =
    Json.Encode.list Json.Encode.int arcsAlias576


encodedArcsAlias577 : List (List Int) -> Json.Encode.Value
encodedArcsAlias577 =
    Json.Encode.list encodedArcsAlias577Member


encodedArcsAlias577Member : List Int -> Json.Encode.Value
encodedArcsAlias577Member arcsAlias577 =
    Json.Encode.list Json.Encode.int arcsAlias577


encodedArcsAlias578 : List (List Int) -> Json.Encode.Value
encodedArcsAlias578 =
    Json.Encode.list encodedArcsAlias578Member


encodedArcsAlias578Member : List Int -> Json.Encode.Value
encodedArcsAlias578Member arcsAlias578 =
    Json.Encode.list Json.Encode.int arcsAlias578


encodedArcsAlias579 : List (List Int) -> Json.Encode.Value
encodedArcsAlias579 =
    Json.Encode.list encodedArcsAlias579Member


encodedArcsAlias579Member : List Int -> Json.Encode.Value
encodedArcsAlias579Member arcsAlias579 =
    Json.Encode.list Json.Encode.int arcsAlias579


encodedArcsAlias580 : List (List Int) -> Json.Encode.Value
encodedArcsAlias580 =
    Json.Encode.list encodedArcsAlias580Member


encodedArcsAlias580Member : List Int -> Json.Encode.Value
encodedArcsAlias580Member arcsAlias580 =
    Json.Encode.list Json.Encode.int arcsAlias580


encodedArcsAlias581 : List (List Int) -> Json.Encode.Value
encodedArcsAlias581 =
    Json.Encode.list encodedArcsAlias581Member


encodedArcsAlias581Member : List Int -> Json.Encode.Value
encodedArcsAlias581Member arcsAlias581 =
    Json.Encode.list Json.Encode.int arcsAlias581


encodedArcsAlias582 : List (List Int) -> Json.Encode.Value
encodedArcsAlias582 =
    Json.Encode.list encodedArcsAlias582Member


encodedArcsAlias582Member : List Int -> Json.Encode.Value
encodedArcsAlias582Member arcsAlias582 =
    Json.Encode.list Json.Encode.int arcsAlias582


encodedArcsAlias583 : List (List Int) -> Json.Encode.Value
encodedArcsAlias583 =
    Json.Encode.list encodedArcsAlias583Member


encodedArcsAlias583Member : List Int -> Json.Encode.Value
encodedArcsAlias583Member arcsAlias583 =
    Json.Encode.list Json.Encode.int arcsAlias583


encodedArcsAlias584 : List (List Int) -> Json.Encode.Value
encodedArcsAlias584 =
    Json.Encode.list encodedArcsAlias584Member


encodedArcsAlias584Member : List Int -> Json.Encode.Value
encodedArcsAlias584Member arcsAlias584 =
    Json.Encode.list Json.Encode.int arcsAlias584


encodedArcsAlias585 : List (List Int) -> Json.Encode.Value
encodedArcsAlias585 =
    Json.Encode.list encodedArcsAlias585Member


encodedArcsAlias585Member : List Int -> Json.Encode.Value
encodedArcsAlias585Member arcsAlias585 =
    Json.Encode.list Json.Encode.int arcsAlias585


encodedArcsAlias586 : List (List Int) -> Json.Encode.Value
encodedArcsAlias586 =
    Json.Encode.list encodedArcsAlias586Member


encodedArcsAlias586Member : List Int -> Json.Encode.Value
encodedArcsAlias586Member arcsAlias586 =
    Json.Encode.list Json.Encode.int arcsAlias586


encodedArcsAlias587 : List (List Int) -> Json.Encode.Value
encodedArcsAlias587 =
    Json.Encode.list encodedArcsAlias587Member


encodedArcsAlias587Member : List Int -> Json.Encode.Value
encodedArcsAlias587Member arcsAlias587 =
    Json.Encode.list Json.Encode.int arcsAlias587


encodedArcsAlias588 : List (List Int) -> Json.Encode.Value
encodedArcsAlias588 =
    Json.Encode.list encodedArcsAlias588Member


encodedArcsAlias588Member : List Int -> Json.Encode.Value
encodedArcsAlias588Member arcsAlias588 =
    Json.Encode.list Json.Encode.int arcsAlias588


encodedArcsAlias589 : List (List Int) -> Json.Encode.Value
encodedArcsAlias589 =
    Json.Encode.list encodedArcsAlias589Member


encodedArcsAlias589Member : List Int -> Json.Encode.Value
encodedArcsAlias589Member arcsAlias589 =
    Json.Encode.list Json.Encode.int arcsAlias589


encodedArcsAlias590 : List (List Int) -> Json.Encode.Value
encodedArcsAlias590 =
    Json.Encode.list encodedArcsAlias590Member


encodedArcsAlias590Member : List Int -> Json.Encode.Value
encodedArcsAlias590Member arcsAlias590 =
    Json.Encode.list Json.Encode.int arcsAlias590


encodedArcsAlias591 : List (List Int) -> Json.Encode.Value
encodedArcsAlias591 =
    Json.Encode.list encodedArcsAlias591Member


encodedArcsAlias591Member : List Int -> Json.Encode.Value
encodedArcsAlias591Member arcsAlias591 =
    Json.Encode.list Json.Encode.int arcsAlias591


encodedArcsAlias592 : List (List Int) -> Json.Encode.Value
encodedArcsAlias592 =
    Json.Encode.list encodedArcsAlias592Member


encodedArcsAlias592Member : List Int -> Json.Encode.Value
encodedArcsAlias592Member arcsAlias592 =
    Json.Encode.list Json.Encode.int arcsAlias592


encodedArcsAlias593 : List (List Int) -> Json.Encode.Value
encodedArcsAlias593 =
    Json.Encode.list encodedArcsAlias593Member


encodedArcsAlias593Member : List Int -> Json.Encode.Value
encodedArcsAlias593Member arcsAlias593 =
    Json.Encode.list Json.Encode.int arcsAlias593


encodedArcsAlias594 : List (List Int) -> Json.Encode.Value
encodedArcsAlias594 =
    Json.Encode.list encodedArcsAlias594Member


encodedArcsAlias594Member : List Int -> Json.Encode.Value
encodedArcsAlias594Member arcsAlias594 =
    Json.Encode.list Json.Encode.int arcsAlias594


encodedArcsAlias595 : List (List Int) -> Json.Encode.Value
encodedArcsAlias595 =
    Json.Encode.list encodedArcsAlias595Member


encodedArcsAlias595Member : List Int -> Json.Encode.Value
encodedArcsAlias595Member arcsAlias595 =
    Json.Encode.list Json.Encode.int arcsAlias595


encodedArcsAlias596 : List (List Int) -> Json.Encode.Value
encodedArcsAlias596 =
    Json.Encode.list encodedArcsAlias596Member


encodedArcsAlias596Member : List Int -> Json.Encode.Value
encodedArcsAlias596Member arcsAlias596 =
    Json.Encode.list Json.Encode.int arcsAlias596


encodedArcsAlias597 : List (List Int) -> Json.Encode.Value
encodedArcsAlias597 =
    Json.Encode.list encodedArcsAlias597Member


encodedArcsAlias597Member : List Int -> Json.Encode.Value
encodedArcsAlias597Member arcsAlias597 =
    Json.Encode.list Json.Encode.int arcsAlias597


encodedArcsAlias598 : List (List Int) -> Json.Encode.Value
encodedArcsAlias598 =
    Json.Encode.list encodedArcsAlias598Member


encodedArcsAlias598Member : List Int -> Json.Encode.Value
encodedArcsAlias598Member arcsAlias598 =
    Json.Encode.list Json.Encode.int arcsAlias598


encodedArcsAlias599 : List (List Int) -> Json.Encode.Value
encodedArcsAlias599 =
    Json.Encode.list encodedArcsAlias599Member


encodedArcsAlias599Member : List Int -> Json.Encode.Value
encodedArcsAlias599Member arcsAlias599 =
    Json.Encode.list Json.Encode.int arcsAlias599


encodedArcsAlias600 : List (List Int) -> Json.Encode.Value
encodedArcsAlias600 =
    Json.Encode.list encodedArcsAlias600Member


encodedArcsAlias600Member : List Int -> Json.Encode.Value
encodedArcsAlias600Member arcsAlias600 =
    Json.Encode.list Json.Encode.int arcsAlias600


encodedArcsAlias601 : List (List Int) -> Json.Encode.Value
encodedArcsAlias601 =
    Json.Encode.list encodedArcsAlias601Member


encodedArcsAlias601Member : List Int -> Json.Encode.Value
encodedArcsAlias601Member arcsAlias601 =
    Json.Encode.list Json.Encode.int arcsAlias601


encodedBbox : List Bbox -> Json.Encode.Value
encodedBbox =
    Json.Encode.list encodedBboxMember


encodedBboxMember : Bbox -> Json.Encode.Value
encodedBboxMember bbox =
    case bbox of
        Bbox0 value ->
            Json.Encode.float value

        Bbox1 value ->
            Json.Encode.int value


encodedTransform : Transform -> Json.Encode.Value
encodedTransform transform = 
    Json.Encode.object
        [ ( "scale", Json.Encode.list Json.Encode.float transform.scale )
        , ( "translate", encodedTransformTranslate transform.translate )
        ]


encodedTransformTranslate : List TransformTranslate -> Json.Encode.Value
encodedTransformTranslate =
    Json.Encode.list encodedTransformTranslateMember


encodedTransformTranslateMember : TransformTranslate -> Json.Encode.Value
encodedTransformTranslateMember transformTranslate =
    case transformTranslate of
        TransformTranslate0 value ->
            Json.Encode.float value

        TransformTranslate1 value ->
            Json.Encode.int value