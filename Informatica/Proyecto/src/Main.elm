module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Attributes as Hta

main =
    div [ Hta.class "from" ] 
    [
        form [ Hta.action "info.php", Hta.method "post" ] 
        [
            label [ Hta.for "carnet" ] [ Html.text "C A R N E T" ]
            ,br [] []
            , input [ Hta.type_ "text", Hta.name "carnet", Hta.required True ] []
            , br [] []
            , input [ Hta.type_ "submit", Hta.value "Enviar" ] []
        ]
    ]
