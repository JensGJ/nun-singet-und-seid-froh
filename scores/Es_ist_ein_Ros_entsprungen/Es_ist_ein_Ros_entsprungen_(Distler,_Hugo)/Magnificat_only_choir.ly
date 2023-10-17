\version "2.22.2"
% local information (for this particular piece)
\include "meta.ily"             % metadata for this piece
\include "voices.ily"           % the tunes, dynamic and articulation marks
\include "newvoices.ily"
\include "newlyrics.ily"

\include "lyrics.ily"            % the lyrics within the staves
\include "output.ily"           % the paper and midi settings for this piece

% global information (identical for all pieces)
\include "../../../include/version.ily"    % the lilypond version
\include "../../../include/paper.ily"      % the layout information
\include "../../../include/sound.ily"      % variable declarations for midi


global = {
  \autoBeamOff
  \dynamicUp
  \set Score.markFormatter = #format-mark-circle-letters
  \key e \major
  \numericTimeSignature
}

\markup{ \magnify #1.2 { Strophe 3  } }
  \score { 
        % Choir:
      \new SemiChoirStaff 
      \with {
          %\override SystemStartBracket.color = #red
          \override SystemStartBracket.X-offset = #-1.2
       %\override LeftEdge.break-visibility = #(#f #f #t)
      }
      
      <<
        \new Staff \with {
          %printPartCombineTexts = ##f
          \consists "Ambitus_engraver"
          \consists "Volta_engraver"
          \consists "Instrument_name_engraver"
        % printPartCombineTexts = ##t
         
        }
        <<
          \set Staff.instrumentName =  "Sopran"
          % \override InstrumentName.self-alignment-X = #LEFT
         % \override Score.LeftEdge.break-visibility = #begin-of-line-visible
          % \set LeftEdge.break-visibility =  #(#t #t #t)
          % \set Staff.shortInstrumentName ="Sop" 
          \new Voice = "sop" { \globalThreeX << \sopVoiceVerseThreeX \breaksThreeXCII >> }
        >>
        \new Lyrics \lyricsto "sop" { \sopLyricsVerseThreeX }

        \new Staff \with {
          \consists "Ambitus_engraver"
        } <<
          \set Staff.instrumentName = "Alt"
          \new Voice = "alt" { \globalThreeX << \altVoiceVerseThreeX \breaksThreeX >> }
        >>
       <<
       \new Lyrics \lyricsto "alt" { \altLyricsVerseThreeX }
       \new Lyrics  \with { 
        alignAboveContext = "staff" 
        \override VerticalAxisGroup.staff-affinity = #DOWN
    } \lyricsto "tenIsplit" {
      Jam -- mer -- tal.
      Du wol -- lest
    }
     >>

        \new Staff \with {
          \consists "Ambitus_engraver"
        } <<
          \set Staff.instrumentName = "Tenor"
          
          \new Voice = "ten" { \clef "G_8" \globalThreeX << \tenVoiceVerseThreeX \breaksThreeX >> }
        >>
     \new Lyrics \lyricsto "ten" { \tenLyricsVerseThreeX }
     
     
        \new Staff \with {
          \consists "Ambitus_engraver"
        } <<
          \set Staff.instrumentName = "Bass"
          \new Voice = "bas" { \clef bass \globalThreeX << \basVoiceVerseThreeX \breaksThreeX >> }
        >>
        
        \new Lyrics \lyricsto "bas" { \basLyricsVerseThreeX }

      >> % end of SemiChoirStaff (choir 2)
 
 \layout {
      \context {
        \StaffGroup
        \remove "Forbid_line_break_engraver"
        
        
      }
      \context {
        \SemiChoirStaff
        \remove "Forbid_line_break_engraver"
      }
      \context {
        \Score
        \remove "Timing_translator"
        \remove "Default_bar_line_engraver"
        \remove "Repeat_acknowledge_engraver"
        \remove "Volta_engraver"
        \remove "Forbid_line_break_engraver"
      }
      \context{
        \Staff
        \consists "Timing_translator"
        \consists "Default_bar_line_engraver"
        \consists "Repeat_acknowledge_engraver"
        \remove "Forbid_line_break_engraver"
      }
      \context {
        \Voice
        \remove "Forbid_line_break_engraver"
      }
    }
  }% end of Magnificat / Maria 

% end Magnificat insert
