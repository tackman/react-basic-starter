module Components.App where

import Prelude

import Components.Toggle (toggle)
import React.Basic (Component, JSX, createComponent, makeStateless)
import React.Basic.DOM as R

component :: Component Unit
component = createComponent "App"

app :: JSX
app = unit # makeStateless component \_ ->
  R.div_
    [ R.h1_ [ R.text "Hello world" ]
    , toggle { initialValue: true }
    , toggle { initialValue: false }
    , R.div {className: "bg-white mx-auto max-w-sm shadow-lg rounded-lg overflow-hidden"
        ,children: [ R.text "あなたの町の駆けつけ一本おまもり桜"]
       }
    ]
