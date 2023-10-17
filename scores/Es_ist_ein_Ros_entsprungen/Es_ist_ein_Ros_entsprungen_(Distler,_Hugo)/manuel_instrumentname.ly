\version "2.22.2"
\new StaffGroup
\relative c'' <<
  \override StaffGroup.SystemStartSquare.collapse-height = #4
  \once \override StaffGroup.SystemStartSquare.stencil = #ly:text-interface::print
      \once \override StaffGroup.SystemStartSquare.text = \markup { "Sopran" }
  \set StaffGroup.systemStartDelimiterHierarchy
    = #'(SystemStartSquare (SystemStartBrace (SystemStartBracket a
                             (SystemStartSquare b)  ) c ) d)
    
  \new Staff {   \startstaff c1 }
  \new Staff \with 
   {
      \once \override SystemStartSquare.stencil = #ly:text-interface::print
      \once \override SystemStartSquare.text = \markup { "Sopran" }
      
   }
  { 
    b1 }
  \new Staff { a1 }
  \new Staff { g1 }
  \new Staff { f1 }
>>