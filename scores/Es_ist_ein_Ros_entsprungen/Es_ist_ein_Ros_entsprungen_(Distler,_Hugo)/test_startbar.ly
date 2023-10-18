\version "2.12.3"

highlight = {
  \override Staff.VerticalAxisGroup #'layer = #-1
  \override Staff.VerticalAxisGroup #'stencil =
  #(lambda (grob)
     (let ((x-ext (ly:grob-property grob 'X-extent))
           (y-ext (ly:grob-property grob 'Y-extent)))
       (grob-interpret-markup grob
                              (markup #:with-color yellow
                                      #:filled-box x-ext y-ext 0))))
}

\new StaffGroup
\with {
  \override SystemStartBracket.color = #blue
  \override SystemStartBar.color = #red
  \override VerticalAxisGroup #'color = #red
  \override SystemStartSquare.color = #yellow
  \override LeftEdge.color = #red
  \override BarLine.color = #green
  \override StaffSymbol.color = #red
  
}
<<
  \new Staff 
  \with {
    \override SystemStartBar.color = #red
  \override LeftEdge.color = #green
  
  
  }
  \relative c' {
     \override Staff.VerticalAxisGroup #'color = #red
     \override SystemStartBar.color = #red
     \tempo 4=100
    c1
  }
  \new Staff \relative c' {
    \highlight
    c1
  }
>>
