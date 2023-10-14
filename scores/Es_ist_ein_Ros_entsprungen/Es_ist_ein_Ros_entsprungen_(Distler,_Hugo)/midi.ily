%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                            the MIDI producing part:           	                 %
%    1 midi per each voice per each stanza with the respective voice highlighted   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

stafftovoice = \midi {
  \context {
    \Score
    \remove "Timing_translator"
    \remove "Repeat_acknowledge_engraver"
  }
  \context {
    \Staff
    \remove "Staff_performer"
    \consists "Timing_translator"
    \consists "Default_bar_line_engraver"
    \consists "Repeat_acknowledge_engraver"
  }
  \context {
    \Voice
    \consists "Staff_performer"
    \consists "Timing_translator"
    \consists "Default_bar_line_engraver"
    \consists "Repeat_acknowledge_engraver"
  }
}

%%%%%%%%%%%%%%%%%%%%
%   first stanza   %
%%%%%%%%%%%%%%%%%%%%

% sopran
\book {
  \bookOutputSuffix "1-sopran"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \highlightedVoice  \globalOne \sopVoiceVerseOne }
      \new Voice = "alt" { \globalOne \altVoiceVerseOne }
      \new Voice = "ten" { \globalOne \tenVoiceVerseOne }
      \new Voice = "bas" { \globalOne \basVoiceVerseOne }
    >>
    \stafftovoice
  }
}

% alt
\book {
  \bookOutputSuffix "1-alt"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseOne }
      \new Voice = "alt" { \highlightedVoice \global \altVoiceVerseOne }
      \new Voice = "ten" { \global \tenVoiceVerseOne }
      \new Voice = "bas" { \global \basVoiceVerseOne }
    >>
    \stafftovoice
  }
}

% tenor
\book {
  \bookOutputSuffix "1-tenor"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseOne }
      \new Voice = "alt" { \global \altVoiceVerseOne }
      \new Voice = "ten" { \highlightedVoice \global \tenVoiceVerseOne }
      \new Voice = "bas" { \global \basVoiceVerseOne }
    >>
    \stafftovoice
  }
}

% bass
\book {
  \bookOutputSuffix "1-bass"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseOne }
      \new Voice = "alt" { \global \altVoiceVerseOne }
      \new Voice = "ten" { \global \tenVoiceVerseOne }
      \new Voice = "bas" { \highlightedVoice \global \basVoiceVerseOne }
    >>
    \stafftovoice
  }
}

%%%%%%%%%%%%%%%%%%%%
%  second stanza   %
%%%%%%%%%%%%%%%%%%%%

% sopran
\book {
  \bookOutputSuffix "2-sopran"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \highlightedVoice  \global \sopVoiceVerseTwo }
      \new Voice = "alt" { \global \altVoiceVerseTwo }
      \new Voice = "ten" { \global \tenVoiceVerseTwo }
      \new Voice = "bas" { \global \basVoiceVerseTwo }
    >>
    \stafftovoice
  }
}

% alt
\book {
  \bookOutputSuffix "2-alt"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseTwo }
      \new Voice = "alt" { \highlightedVoice \global \altVoiceVerseTwo }
      \new Voice = "ten" { \global \tenVoiceVerseTwo }
      \new Voice = "bas" { \global \basVoiceVerseTwo }
    >>
    \stafftovoice
  }
}

% tenor
\book {
  \bookOutputSuffix "2-tenor"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseTwo }
      \new Voice = "alt" { \global \altVoiceVerseTwo }
      \new Voice = "ten" { \highlightedVoice \global \tenVoiceVerseTwo }
      \new Voice = "bas" { \global \basVoiceVerseTwo }
    >>
    \stafftovoice
  }
}

% bass
\book {
  \bookOutputSuffix "2-bass"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseTwo }
      \new Voice = "alt" { \global \altVoiceVerseTwo }
      \new Voice = "ten" { \global \tenVoiceVerseTwo }
      \new Voice = "bas" { \highlightedVoice \global \basVoiceVerseTwo }
    >>
    \stafftovoice
  }
}

%%%%%%%%%%%%%%%%%%%%
%  third stanza   %
%%%%%%%%%%%%%%%%%%%%

% sopran
\book {
  \bookOutputSuffix "3-sopran"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \highlightedVoice  \global \sopVoiceVerseThree }
      \new Voice = "alt" { \global \altVoiceVerseThree }
      \new Voice = "ten" { \global \tenVoiceVerseThree }
      \new Voice = "basI" { \global \basIVoiceVerseThree }
      \new Voice = "basII" { \global \basIIVoiceVerseThree }
    >>
    \stafftovoice
  }
}

% alt
\book {
  \bookOutputSuffix "3-alt"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseThree }
      \new Voice = "alt" { \highlightedVoice \global \altVoiceVerseThree }
      \new Voice = "ten" { \global \tenVoiceVerseThree }
      \new Voice = "basI" { \global \basIVoiceVerseThree }
      \new Voice = "basII" { \global \basIIVoiceVerseThree }
    >>
    \stafftovoice
  }
}

% tenor
\book {
  \bookOutputSuffix "3-tenor"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseThree }
      \new Voice = "alt" { \global \altVoiceVerseThree }
      \new Voice = "ten" { \highlightedVoice \global \tenVoiceVerseThree }
      \new Voice = "basI" { \global \basIVoiceVerseThree }
      \new Voice = "basII" { \global \basIIVoiceVerseThree }
    >>
    \stafftovoice
  }
}

% bass
\book {
  \bookOutputSuffix "3-bass1"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseThree }
      \new Voice = "alt" { \global \altVoiceVerseThree }
      \new Voice = "ten" { \global \tenVoiceVerseThree }
      \new Voice = "basI" { \highlightedVoice \global \basIVoiceVerseThree }
      \new Voice = "basII" { \global \basIIVoiceVerseThree }
    >>
    \stafftovoice
  }
}

% bass
\book {
  \bookOutputSuffix "3-bass2"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseThree }
      \new Voice = "alt" { \global \altVoiceVerseThree }
      \new Voice = "ten" { \global \tenVoiceVerseThree }
      \new Voice = "basI" { \global \basIVoiceVerseThree }
      \new Voice = "basII" { \highlightedVoice \global \basIIVoiceVerseThree }
    >>
    \stafftovoice
  }
}

%%%%%%%%%%%%%%%%%%%%
%  fourth stanza   %
%%%%%%%%%%%%%%%%%%%%

% sopran
\book {
  \bookOutputSuffix "4-sopran"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \highlightedVoice  \global \sopVoiceVerseFour }
      \new Voice = "alt" { \global \altVoiceVerseFour }
      \new Voice = "ten" { \global \tenVoiceVerseFour }
      \new Voice = "bas" { \global \basVoiceVerseFour }
    >>
    \stafftovoice
  }
}

% alt
\book {
  \bookOutputSuffix "4-alt"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseFour }
      \new Voice = "alt" { \highlightedVoice \global \altVoiceVerseFour }
      \new Voice = "ten" { \global \tenVoiceVerseFour }
      \new Voice = "bas" { \global \basVoiceVerseFour }
    >>
    \stafftovoice
  }
}

% tenor
\book {
  \bookOutputSuffix "4-tenor"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseFour }
      \new Voice = "alt" { \global \altVoiceVerseFour }
      \new Voice = "ten" { \highlightedVoice \global \tenVoiceVerseFour }
      \new Voice = "bas" { \global \basVoiceVerseFour }
    >>
    \stafftovoice
  }
}

% bass
\book {
  \bookOutputSuffix "4-bass"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseFour }
      \new Voice = "alt" { \global \altVoiceVerseFour }
      \new Voice = "ten" { \global \tenVoiceVerseFour }
      \new Voice = "bas" { \highlightedVoice \global \basVoiceVerseFour }
    >>
    \stafftovoice
  }
}

%%%%%%%%%%%%%%%%%%%%
%   fifth stanza   %
%%%%%%%%%%%%%%%%%%%%

% sopran
\book {
  \bookOutputSuffix "5-sopran"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \highlightedVoice  \global \sopVoiceVerseOne }
      \new Voice = "alt" { \global \altVoiceVerseOne }
      \new Voice = "ten" { \global \tenVoiceVerseOne }
      \new Voice = "bas" { \global \basVoiceVerseOne }
    >>
    \stafftovoice
  }
}

% alt
\book {
  \bookOutputSuffix "5-alt"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseOne }
      \new Voice = "alt" { \highlightedVoice \global \altVoiceVerseOne }
      \new Voice = "ten" { \global \tenVoiceVerseOne }
      \new Voice = "bas" { \global \basVoiceVerseOne }
    >>
    \stafftovoice
  }
}

% tenor
\book {
  \bookOutputSuffix "5-tenor"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseOne }
      \new Voice = "alt" { \global \altVoiceVerseOne }
      \new Voice = "ten" { \highlightedVoice \global \tenVoiceVerseOne }
      \new Voice = "bas" { \global \basVoiceVerseOne }
    >>
    \stafftovoice
  }
}

% bass
\book {
  \bookOutputSuffix "5-bass"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseOne }
      \new Voice = "alt" { \global \altVoiceVerseOne }
      \new Voice = "ten" { \global \tenVoiceVerseOne }
      \new Voice = "bas" { \highlightedVoice \global \basVoiceVerseOne }
    >>
    \stafftovoice
  }
}
