let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.14.5-20220224/packages.dhall sha256:67cc3d4f0e8fb72bb1413ba94ddd72a3ceb0783eb725e3b22ad7568b3b581163

let overrides = {=}

let additions =
      { webaudio =
        { dependencies = [ "arraybuffer", "web-html" ]
        , repo = "https://github.com/newlandsvalley/purescript-webaudio"
        , version = "1415251eb03c7c1145e68c8fdbf7e84ce3b6a41c"
        }
      }

in  upstream // overrides // additions
