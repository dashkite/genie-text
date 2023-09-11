import M from "@dashkite/masonry"
import text from "@dashkite/masonry-text"
import T from "@dashkite/masonry-targets"

export default ( Genie ) ->

  options = Genie.get "text"

  Genie.define "text", M.start [
    T.glob options.targets
    M.read
    M.tr text
    T.extension ".${ build.preset }"
    T.write "build/${ build.target }"
  ]

  Genie.on "build", "text"

