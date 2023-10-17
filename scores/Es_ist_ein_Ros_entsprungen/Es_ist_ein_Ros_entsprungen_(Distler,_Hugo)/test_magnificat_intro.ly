\version "2.22.2"

TimeThreeFourSixEight = {
  \once \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \once\override Staff.TimeSignature.text = \markup { \combine \musicglyph "three" \lower #2 \musicglyph "four" \parenthesize \combine \musicglyph "six" \lower #2 \musicglyph "eight" }
  \time 3/4
}

TimeSixFourSixEight = {
  \once \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \once\override Staff.TimeSignature.text = \markup { \combine \musicglyph "six" \lower #2 \musicglyph "four" \parenthesize \combine \musicglyph "six" \lower #2 \musicglyph "eight" }
  \time 6/4
}


MariaIntro = \relative c'' {
  \time 4/4
   \partial 2
  gis4\p^\markup {\italic ausdrucksvoll} gis |
 % \time 4/4
  b2 gis4 gis |
  gis a2 gis4 |
  \time 6/4 
  fis2 e4 \breathe gis2 b4 |
  fis fis2 \bar ""
 % end introduction  
}

MariaVerseThreeX = \relative c'' {
  fis4 \breathe fis4. fis8 |
  \time 4/4 
  fis4 fis \breathe fis cis |
  \time 6/4
  e2 ( dis4) cis2 r4 |
  \time 4/4 
  gis'4.\mp gis8 gis4 \bar "" gis |
  \TimeThreeFourSixEight
b8 b gis gis4 gis8 |
\time 4/4
  a4 ( gis4. ) fis8 e4 |
  \mark \default fis2 
  e8 \breathe gis4 (b8) |
  \TimeSixFourSixEight
fis4 \breathe fis8 fis4 fis8 \bar "!"
fis fis fis fis4 fis8 |
fis2 cis4 e dis cis \breathe |
\time 4/4
gis'4.\mf gis8 gis4 gis8 gis |
\time 3/4 
b4 \bar "" gis \breathe gis8 gis |
\time 4/4 
b4 gis \bar "!" \mark \default gis8 gis4 fis8 |
\time 3/4 
gis4 \breathe a gis |
\time 4/4 
gis4. fis8 e2 \breathe |
gis2. b4 |
\time 3/2
gis8 ( fis4 \breathe fis8^\markup { \italic "frei" } [
  e cis e fis gis fis]) fis4 |
  \mark \default % C
  e dis cis2 r8 gis'\f gis fis |
  \time 5/4
  b2 b4 gis gis8 gis |
  \time 4/4
  a4. gis8 \breathe \bar "" fis4 fis |
  e2 r4 gis |
  \time 3/4 
  b b \breathe fis8 gis |
  \time 4/4
  e2 ( dis4 cis\> ~ |
  cis8 [b] cis4) cis r\! | 
  R1  \bar "||"


}

\score {
  <<
    new Staff \with {
          \consists "Ambitus_engraver"
          instrumentName = "Maria"
        } 
  %         \new Voice = "Maria" { \globalThreeX << \MariaVerseThreeX    \breaksThreeX >> }
        \new Voice = "Maria" { \MariaIntro 
                               
      <<
        \new SemiChoirStaff<<
        \new Staff \with {
          %printPartCombineTexts = ##f
          \consists "Ambitus_engraver"
          \consists "Volta_engraver"
        }
        <<
          \set Staff.instrumentName = "Sopran"
          \new Voice = "sop" { c4 c c d }
        >>
       % \new Lyrics \lyricsto "sop" { \sopLyricsVerseThree }

        \new Staff \with {
          \consists "Ambitus_engraver"
        } <<
          \set Staff.instrumentName = "Alt"
          \new Voice = "alt" {  c d e } %\globalThree << \altVoiceVerseThree \breaksThree >> }
        >>
%        \new Lyrics \lyricsto "alt" { \altLyricsVerseThree }

        \new Staff \with {
          \consists "Ambitus_engraver"
        } <<
          \set Staff.instrumentName = "Tenor"
          \new Voice = "ten" { \clef "G_8" f e d } % \globalThree << \tenVoiceVerseThree \breaksThree >> }
        >>
%        \new Lyrics \lyricsto "ten" { \tenLyricsVerseThree }
      >>
      \new SemiChoirStaff \with { instrumentName = "Bass" } <<
        \new Staff \with {
          \consists "Ambitus_engraver"
        } <<
          \new Voice = "basI" { \clef bass \globalThree << \basIVoiceVerseThree \breaksThree >> }
        >>
        \new Lyrics \lyricsto "basI" { \basLyricsVerseThree }

        \new Staff \with {
          \consists "Ambitus_engraver"
        } <<
          \new Voice = "basII" { \clef bass \globalThree << \basIIVoiceVerseThree \breaksThree >> }
        >>
      >> % end of SemiChoirStaff (basses)
    >>%end of StaffGroup
        
      >>
    }
    
    \new StaffGroup \relative c'' {
      \new Staff {
        c1 | c
        <<
          {
            c1 | d
          }
          \new Staff {
            \once \omit Staff.TimeSignature
            c1 | b
          }
        >>
        c1
      }
    }
  >>
}