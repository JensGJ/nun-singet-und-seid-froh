%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% this is not based on any template!
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                  the PDF & main MIDI producing part:             %
%                       4 staves for 4 voices                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \include "../../../include/header.ily"

  \markup{ \magnify #1.5 { Strophe 1 } }
  \score { %score for first stanza
    \new SemiChoirStaff <<
      \new Staff \with {
        \consists "Ambitus_engraver"
        \consists "Volta_engraver"
      } <<
        \set Staff.instrumentName = "Sopran"
        \new Voice = "sop" { \globalOne << \sopVoiceVerseOne \breaksOne >> }
      >>
      \new Lyrics \lyricsto "sop" { \sopLyricsVerseOne }

      \new Staff \with { \consists "Ambitus_engraver" } <<
        \set Staff.instrumentName = "Alt"
        \new Voice = "alt" { \globalOne << \altVoiceVerseOne \breaksOne >> }
      >>
      \new Lyrics \lyricsto "alt" { \altLyricsVerseOne }

      \new Staff \with { \consists "Ambitus_engraver" } <<
        \set Staff.instrumentName = "Tenor"
        \new Voice = "ten" { \clef "G_8" \globalOne << \tenVoiceVerseOne \breaksOne >> }
      >>
      \new Lyrics \lyricsto "ten" { \tenLyricsVerseOne }


      \new Staff \with { \consists "Ambitus_engraver" } <<
        \set Staff.instrumentName = "Bass"
        \new Voice = "bas" { \clef bass \globalOne << \basVoiceVerseOne \breaksOne >> }
      >>
      \new Lyrics \lyricsto "bas" { \basLyricsVerseOne }
    >> %end of SemiChoirStaff
    \layout {
      \context {
        \Score
        \remove "Timing_translator"
        \remove "Default_bar_line_engraver"
        \remove "Repeat_acknowledge_engraver"
        \remove "Volta_engraver"
        \remove "Forbid_line_break_engraver"
      }
      \context {
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
  } %end of first stanza score
  \pageBreak

  \markup{ \magnify #1.5 { Strophe 2 } }
  \score { %score for second stanza
    \new SemiChoirStaff <<
      \new Staff \with {
        \consists "Ambitus_engraver"
        \consists "Volta_engraver"
      } <<
        \set Staff.instrumentName = "Sopran"
        \new Voice = "sop" { \globalTwo << \sopVoiceVerseTwo \breaksTwo >> }
        \new Lyrics { \sopLyricsVerseTwoFirstVolta }
        \new Lyrics { \sopLyricsVerseTwoSecondVolta }
      >>

      \new Staff \with {
        \consists "Ambitus_engraver"
      } <<
        \set Staff.instrumentName = "Alt"
        \new Voice = "alt" { \globalTwo << \altVoiceVerseTwo \breaksTwo >> }
        \new Lyrics \lyricsto "alt" { \altLyricsVerseTwoFirstVolta }
        \new Lyrics { \altLyricsVerseTwoSecondVolta }
      >>

      \new Staff \with {
        \consists "Ambitus_engraver"
      } <<
        \set Staff.instrumentName = "Tenor"
        \new Voice = "ten" { \clef "G_8" \globalTwo << \tenVoiceVerseTwo \breaksTwo >> }
        \new Lyrics \lyricsto "ten" { \tenLyricsVerseTwoFirstVolta }
        \new Lyrics { \tenLyricsVerseTwoSecondVolta }
      >>

      \new Staff \with {
        \consists "Ambitus_engraver"
      } <<
        \set Staff.instrumentName = "Bass"
        \new Voice = "bas" { \clef bass \globalTwo << \basVoiceVerseTwo \breaksTwo >> }
        \new Lyrics \lyricsto "bas" { \basLyricsVerseTwoFirstVolta }
        \new Lyrics { \basLyricsVerseTwoSecondVolta }
      >>
    >>%end of SemiChoirStaff
    \layout {
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
  }%end of second stanza score
  
  \pageBreak


% Magnificat / strophe 3 in here

 \markup{ \magnify #1.2 { Strophe 3  }
  \score { 
    %score for Die Hirten
    \new StaffGroup <<
      % Maria:
      \new SemiChoirStaff<<
        \new Staff  \with {
          %printPartCombineTexts = ##f
          \consists "Ambitus_engraver"
          \consists "Volta_engraver"
        }
        <<
          \set Staff.instrumentName =    "Maria *)" 
          
          \new Voice = "MariaOld" { \globalThreeX << \MariaOldVerseThreeX \breaksThreeX >> }
        >>
        \new Lyrics \lyricsto "MariaOld" { \MariaLyricsVerseThreeX }

        \new Staff \with {
          \consists "Ambitus_engraver"
        } <<
          \set Staff.instrumentName = "Maria"
          \new Voice = "Maria" { \globalThreeX << \MariaVerseThreeX \breaksThreeX >> }
        >>
        \new Lyrics \lyricsto "Maria" { \MariaLyricsVerseThreeX }

      >>
      
      % Choir:
      \new SemiChoirStaff  <<
        \new Staff \with {
          %printPartCombineTexts = ##f
          \consists "Ambitus_engraver"
          \consists "Volta_engraver"
        }
        <<
          \set Staff.instrumentName =  "Sopran"
            
          \new Voice = "sop" { \globalThreeX << \sopVoiceVerseThreeX \breaksThreeXCII >> }
        >>
        \new Lyrics \lyricsto "sop" { \sopLyricsVerseThreeX }


        \new Staff \with {
          \consists "Ambitus_engraver"
        } <<
          \set Staff.instrumentName = "Alt"
          \new Voice = "alt" { \globalThreeX << \altVoiceVerseThreeX \breaksThreeX >> }
        >>
        \new Lyrics \lyricsto "alt" { \altLyricsVerseThreeX }


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
    >>%end of StaffGroup
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

%  \markup{ \magnify #1.5 { Strophe 3 } }
  \markup{ \magnify #1.5 { Strophe 4 } }
  \score { %score for third stanza
    \new StaffGroup <<
      \new SemiChoirStaff<<
        \new Staff \with {
          %printPartCombineTexts = ##f
          \consists "Ambitus_engraver"
          \consists "Volta_engraver"
        }
        <<
          \set Staff.instrumentName = "Sopran"
          \new Voice = "sop" { \globalThree << \sopVoiceVerseThree \breaksThree >> }
        >>
        \new Lyrics \lyricsto "sop" { \sopLyricsVerseThree }

        \new Staff \with {
          \consists "Ambitus_engraver"
        } <<
          \set Staff.instrumentName = "Alt"
          \new Voice = "alt" { \globalThree << \altVoiceVerseThree \breaksThree >> }
        >>
        \new Lyrics \lyricsto "alt" { \altLyricsVerseThree }

        \new Staff \with {
          \consists "Ambitus_engraver"
        } <<
          \set Staff.instrumentName = "Tenor"
          \new Voice = "ten" { \clef "G_8" \globalThree << \tenVoiceVerseThree \breaksThree >> }
        >>
        \new Lyrics \lyricsto "ten" { \tenLyricsVerseThree }
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
  }%end of third stanza score

% 5 - Die Hirten ...

  \markup{ \magnify #1.2 { Strophe 5 \footnote "*"  \line \small { * Die beiden \italic {c.f.} zart hervor! } } }
  \score { %score for Die Hirten
    \new StaffGroup <<
      % Choir 1:
      \new SemiChoirStaff<<
        \new Staff \with {
          %printPartCombineTexts = ##f
          \consists "Ambitus_engraver"
          \consists "Volta_engraver"
        }
        <<
          \set Staff.instrumentName =   
                    \markup {
            \center-column  {
              "Sopran I"
                \line { \smaller \italic "*) (c.f.)" }
            }
          }
        
          
          \new Voice = "sop1" { \globalFiveX << \sopIVoiceVerseFiveX \breaksFiveX >> }
        >>
        \new Lyrics \lyricsto "sop1" { \sopLyricsVerseFiveX }

        \new Staff \with {
          \consists "Ambitus_engraver"
        } <<
          \set Staff.instrumentName = "Alt I"
          \new Voice = "alt1" { \globalFiveX << \altIVoiceVerseFiveX \breaksFiveX >> }
        >>
        \new Lyrics \lyricsto "alt1" { \altLyricsVerseFiveX }

        \new Staff \with {
          \consists "Ambitus_engraver"
        } <<
          \set Staff.instrumentName = "Tenor I"
          \new Voice = "ten1" { \clef "G_8" \globalFiveX << \tenIVoiceVerseFiveX \breaksFiveX >> }
        >>
        \new Lyrics \lyricsto "ten1" { \tenLyricsVerseFiveX }
        
        \new Staff \with {
          \consists "Ambitus_engraver"
        } <<
          \set Staff.instrumentName = "Bass I"
          \new Voice = "bas1" { \clef bass \globalFiveX << \basIVoiceVerseFiveX \breaksFiveX >> }
        >>
         \new Lyrics \lyricsto "bas1" { \basLyricsVerseFiveX }
      >>
      
      % Choir 2:
      \new SemiChoirStaff  <<
        \new Staff \with {
          %printPartCombineTexts = ##f
          \consists "Ambitus_engraver"
          \consists "Volta_engraver"
        }
        <<
          \set Staff.instrumentName = 
          \markup {
            \center-column  {
              "Sopran II"
                \line { \smaller \italic "*) (c.f.)" }
            }
          }
          \new Voice = "sop2" { \globalFiveX << \sopIIVoiceVerseFiveX \breaksFiveXCII >> }
        >>
        \new Lyrics \lyricsto "sop2" { \sopLyricsVerseFiveX }


        \new Staff \with {
          \consists "Ambitus_engraver"
        } <<
          \set Staff.instrumentName = "Alt II"
          \new Voice = "alt2" { \globalFiveX << \altIIVoiceVerseFiveX \breaksFiveX >> }
        >>
        \new Lyrics \lyricsto "alt2" { \altLyricsVerseFiveX }


        \new Staff \with {
          \consists "Ambitus_engraver"
        } <<
          \set Staff.instrumentName = "Tenor II"
          \new Voice = "ten2" { \clef "G_8" \globalFiveX << \tenIIVoiceVerseFiveX \breaksFiveX >> }
        >>
        \new Lyrics \lyricsto "ten2" { \basLyricsVerseFiveX }

        \new Staff \with {
          \consists "Ambitus_engraver"
        } <<
          \set Staff.instrumentName = "Bass II"
          \new Voice = "bas2" { \clef bass \globalFiveX << \basIIVoiceVerseFiveX \breaksFiveX >> }
        >>
        
        \new Lyrics \lyricsto "bas2" { \basLyricsVerseFiveX }

      >> % end of SemiChoirStaff (choir 2)
    >>%end of StaffGroup
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
  }%end of Die Hirten ....





% 6 - Lob, Ehr
\markup{ \magnify #1.2 { Strophe 6 } }
  \score { %score for fourth stanza
    \new SemiChoirStaff<<
      \new Staff \with {
        printPartCombineTexts = ##f
        \consists "Ambitus_engraver"
        \consists "Volta_engraver"
      } <<
        \set Staff.instrumentName = "Sopran"
        \new Voice = "sop" { \globalFour << \sopVoiceVerseFour \breaksFour >> }
      >>
      \new Lyrics \lyricsto "sop" { \sopLyricsVerseFour }

      \new Staff \with {
        printPartCombineTexts = ##f
        \consists "Ambitus_engraver"
      } <<
        \set Staff.instrumentName = "Alt"
        \new Voice = "alt" { \globalFour << \altVoiceVerseFour \breaksFour >> }
      >>
      \new Lyrics \lyricsto "alt" { \altLyricsVerseFour }

      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = "Tenor"
        \new Voice = "ten" { \clef "G_8" \globalFour << \tenVoiceVerseFour \breaksFour >> }
      >>
      \new Lyrics \lyricsto "ten" { \tenLyricsVerseFour }

      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = "Bass"
        \new Voice = "bas" { \clef bass \globalFour << \basVoiceVerseFour \breaksFour >> }
      >>
      \new Lyrics \lyricsto "bas" { \basLyricsVerseFour }
    >>%end of StaffGroup
    \layout {
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
  }%end of fourth stanza score


% 7 - ending

  \markup{ \magnify #1.5 { Strophe 7 } }
  \score { %score for fifth stanza
    \new SemiChoirStaff<<
      \new Staff \with {
        \consists "Ambitus_engraver"
        \consists "Volta_engraver"
      } <<
        \set Staff.instrumentName = "Sopran"
        \new Voice = "sop" { \globalFive << \sopVoiceVerseFive \breaksFive >> }
      >>
      \new Lyrics \lyricsto "sop" { \sopLyricsVerseFive }

      \new Staff \with { \consists "Ambitus_engraver" } <<
        \set Staff.instrumentName = "Alt"
        \new Voice = "alt" { \globalFive << \altVoiceVerseFive \breaksFive >> }
      >>
      \new Lyrics \lyricsto "alt" { \altLyricsVerseFive }

      \new Staff \with { \consists "Ambitus_engraver" } <<
        \set Staff.instrumentName = "Tenor"
        \new Voice = "ten" { \clef "G_8" \globalFive << \tenVoiceVerseFive \breaksFive >>}
      >>
      \new Lyrics \lyricsto "ten" { \tenLyricsVerseFive }


      \new Staff \with { \consists "Ambitus_engraver" } <<
        \set Staff.instrumentName = "Bass"
        \new Voice = "bas" { \clef bass \globalFive << \basVoiceVerseFive \breaksFive >>}
      >>
      \new Lyrics \lyricsto "bas" { \basLyricsVerseFive }
    >>%end of StaffGroup
    \layout {
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
  }%end of fifth stanza score

}%end of book

% \include "midi.ily"