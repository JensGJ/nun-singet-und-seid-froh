%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          Verse 5 - Die Hirten zu der Stunden   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PDF version https://www.cpdl.org/wiki/images/9/9f/DistlerWeihnachtsgeschichte.pdf (p 43-47 in pdf, pagenum 35-39)

\pageBreak

%%%% Magnificat - Strophhe 3

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



globalThreeX = {
  \global
  \dynamicUp
  \override Score.NonMusicalPaperColumn.padding = #0.35
}

MariaIntro = \relative c'' {
  \time 4/4
  \tempo 4=100
   \partial 2
  gis4\p^\markup {\italic ausdrucksvoll} gis |
 % \time 4/4
  b2 gis4 gis |
  gis a2 gis4 |
  \time 6/4 
  fis2 e4 \breathe gis2 b4 | 
  fis fis2 \bar ""       fis4 \breathe

 % end introduction  
}

MariaContinuedNotes = {
  fis4. fis8 |
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
\tempo \markup { "zögern" }
%\override TextSpanner #'(bound-details left text) = "zögern.."
%\startTextSpan


gis8 ( fis4 \breathe fis8^\markup { \italic "frei" } [
  e cis e fis gis fis]) fis4 |
  \mark \default % C
  e dis cis2 r8 gis'\f gis fis |
  %\stopTextSpan
  \time 5/4
  \tempo \markup { Tempo I }
  b2 b4 gis gis8 gis |
  \time 4/4
  a4. gis8 \breathe \bar "" fis4 fis |
  e2 r4 gis |
  \time 3/4 
  b b \breathe 
  \tempo \markup { zögern }
  fis8 gis |
  \time 4/4
  e2 ( dis4 cis\> ~ |
  cis8 [b] cis4) cis r\! | 
  R1  \bar "||"


}


MariaVerseThreeX = \relative c' {
  %\MariaIntro
 \MariaContinuedNotes
}


MariaContinued = \relative c' {
  %\MariaIntro
  \globalThreeX
  \bar "!"
  % \once \override Staff.TimeSignature.stencil = ##f
  %\override Staff.TimeSignature.color = #red
  %\override Staff.KeySignature.color = #blue
  \once \omit Staff.TimeSignature
  \once \omit Staff.KeySignature
  \once \omit Staff.Clef
 \partial 2
  \MariaContinuedNotes
}

MariaOldVerseThreeX = \relative c'' {

}

choirPause = { 
  \partial 2
  s4
}
oldChoirPause = {
  \partial 2
  R2 |
  R1 |
  R1 |
  R1 |
  R1 |
  r2 r4 
}

sopVoiceVerseThreeX = \relative c'' {
 \choirPause
 \tempo \markup { Choral, stets sehr zurückhaltend } 4=100
   b4\pp | 
   \time 5/4
   b2 b4 cis b |
 \time 3/4
  b2 gis4 \breathe |
  \time 4/4
  a2 gis4 fis |
  \time 3/2
  e8.^\markup { \italic "ruhig" } ([fis16]  \bar "" gis8 a4 gis8. [fis16 e8] fis4) fis |
  \time 3/4
  e2. |
  r4 b'\p b ~ |
  \time 4/4
  b b cis b |
  b2 ( gis4 \breathe b |
  cis dis cis \breathe b |
  \time 6/4
  cis dis fis dis4. cis8 b4 |
  \time 4/4
  cis2) gis
  \time 3/4
  r4 a\p
  
  << 
    {  \voiceOne
    gis |
  \time 4/4
  fis e2 dis4 |
  \time 3/2
  e1. }
  \new Voice {   \voiceTwo \partial 4 s4^\> |  
                \time 4/4 s1 |
                 \time 3/2  s1 s4 s8 s8\! }
  >>
  
 \oneVoice
 R1. |
 R1. |
 \time 3/4
 b'4\mf \breathe b2 |
 \time 4/4
 b4 b cis b |
 \time 3/4 
 b2\> gis4\! \breathe |
 \time 3/2
 a4\p gis2 fis4 e cis |
\time 4/4
<<
   {
     \voiceOne
     e4. ( fis8 [ gis b cis\> dis] |
     cis4. dis8 cis4. dis8 |
     cis1\pp)
   }
   \new Voice {
     \voiceTwo
     e,1 ~ | e ~ | e
   }
   
 >>
 
 \oneVoice
\bar "||"
  
   

}


altVoiceVerseThreeX = \relative c' {
  \choirPause
  fis4\pp |

  e d cis fis |
  \time 3/4
  fis4. ( gis8 fis4 ) |
  e \breathe e2 |
  e e4 |
  \time 5/4
  dis4. ( cis8 b4 a ) cis |
  \time 4/4
  e2. \bar "!" r4 |
  \time 3/2
  b'2\p gis4 b e, e |
  \time 4/4
  b'4. ( a8 gis4) fis \breathe |
  \time 3/4
  cis'4. ( b8 a4 |
  gis2 \breathe b4 |
  cis4.  b8 a4 |
  \time 4/4
  gis4 ~ \bar "" gis fis2\> ) |
  e4 \bar "!" r\! dis\p e\> |
  \time 3/2
  dis4. ( gis8 dis4) dis cis2 |
  \time 4/4
  b1 |
  \time 3/2
  R1.\!
  \bar ""
  \time 4/4
  b2\pp ais4 gis |
  \time 5/4
  cis4. e8\> b2 \breathe fis'4\mf |
  \time 4/4 
  gis4. b8 gis4 fis |
  \time 3/4
  cis2\> b4 \breathe |
  \time 3/2
  e4\p dis2 cis4 b4. a8 |
  \time 4/4
  <<
    {
      \voiceOne
      % Alto 1
      gis4. ( b8 [ cis dis] gis4\> ~ |
      gis8 [ fis] gis4. fis8 [ gis fis ] |
      gis1\! )
    }
    % Alto 2
    \new Voice {
      \voiceTwo
      gis,1 ( ~ | 
      gis4\> cis4. dis8 gis4 |
      dis2 cis\pp )
      \bar "||"
    }
  >>
  
  
}


tenVoiceVerseThreeX = \relative c {
  \choirPause
  fis4\pp |
  \time 5/4
  fis2 fis4 gis cis |
  \time 3/4
  cis2 cis4 \breathe |
  \time 5/4
  cis2 b a4 |
  gis4. ( a8 b4 cis) a |
  \time 4/4 
  b2. r4 |
  \time 3/2
  b\p gis2 fis4 e e |
  \time 3/4
  dis2 cis4 \breathe |
  e2 dis4 \breathe |
  \time 4/4
  fis2 ( e4 \breathe gis |
  a gis4. fis8 e4 ~ |
  e dis\>) cis2 |
  \time 3/4
  r4\! cis'\p b\> |
  \time 4/4
  cis4. ( b8 gis4 a ~ |
  \time 3/2
  a) e2 fis4 gis2 |
  R1.\! |
  \time 4/4
  gis2\pp_\markup {\italic "(c.f.)" } fis4 dis |
% todo: split voice\

<<
    % tenor 1
    \new Voice = "tenIsplit" {
      
      \voiceOne
      %\override Script.padding = #2
      e4.^\markup { Jam - } fis8\>^\markup { er -} \once \override Stem.length-fraction = #0.9 gis2^\markup { tal } \breathe | 
      \time 5/4 
      e4\mf^\markup { Du } e^\markup { wol - } e  
      }
    
    %tenor 2
    % TODO: Fix lyrics and breath mark placement
    {
      \voiceTwo
      e4 cis b \tweak direction #DOWN \breathe e\mf |
      \time 5/4
      e2 e4 
      
    }

>>

\oneVoice
      e e | 

\time 3/4
 fis2\> gis4 \breathe |
  
 \time 3/2
  e2\p e4 fis b8 ( gis4^\markup { \italic "ruhig" } ) fis8 |
  \time 4/4
  gis1\> ~ |
  gis1 ~ |
  gis1\pp  \bar "||"

}





basVoiceVerseThreeX = \relative c {
   \choirPause
   b4\pp |
   \time 5/4
   b2 b4 a gis |
   fis2 cis'4 \breathe a2 |
   \time 3/2
   e'4. (dis8) cis4 \breathe \bar ""
   b fis' e | 
   a a e2. \bar "!" r4 | 
   e\p e2 e4 cis e |
   \time 4/4
   b2 ( cis4 b |
   a gis a \breathe b |
   \time 6/4 
   a gis fis gis4. a8 b4 |
   \time 4/4
   fis2\>) cis' |
   \time 3/4 
   r4\! cis\p gis'\> |
   \time 4/4
   cis,2. ( b4 |
   \time 3/2 
   a2) gis4 fis e2 |
   R1.\! |
   \time 4/4
   e2\pp fis4. gis8 |
   a4 a\> e \breathe e'\mf |
   \time 5/4
   e2 dis4 cis e |
   \time 3/4
   b2\> e4 \breathe |
   \time 3/2
   cis2\p b4 a gis fis |
   \time 4/4
   <<
     {
       \voiceOne
     cis'1\> ~ |
     cis1 ~ |
     cis1\pp
     }
     \new Voice {
         \voiceTwo
     cis,1 ~ |
     cis1 ~ |
     cis1
       
     }
   >>
   \bar "||"
 }


breaksThreeX = {
  % \tempo \markup{ "Choral, stets sehr zurückhaltend" } 4 = 100
  
}

breaksThreeXCII = {
  
   
}




%%%% DIE HIRTEN - Strophe 5

globalFiveX = {
  \global
  \dynamicUp
}

sopIVoiceVerseFiveX = \relative c'' {
  \time 4/4
  \partial 2
  b4\p b ~ | b b cis b | 
  b4. (a8) gis2 \breathe |
  a gis4 fis ~ |
  fis << {
      e2 dis4 |
       e2 }
          \new Voice { \dynamicUp s4 s2\> | s4.. s16\!} 
  >> 
  \oneVoice 
  \breathe 
  b'4\p b ~ | 
  b b cis b | 
  b4. (a8) gis2 \breathe |
  a \bar "" gis4 fis ( |
  fis) e2\> dis4 |
  e2 r4\! gis\mf |
  % Rehearsal mark A
  fis gis e4. ( dis8 |
  cis4) dis \bar ""
  b \breathe b'\f |
  b b cis b |
  b4. (a8 ) gis2 \breathe |
  a-\piuF \bar "" gis4 fis ~ |
  fis e2 dis4 | 
  \time 2/4 e2 \bar "||"

}

sopIIVoiceVerseFiveX = \relative c'' {
  \time 4/4

R1 | r2
  b4\p b ~ | b b cis b | 
  b4. (a8) \bar "" gis2 \breathe |
  a gis4 fis ~ |
  fis e2\> dis4 |
  e2 \breathe 
  b'4\p b ~ | 
  b b cis b | 
  b4. (a8) gis2 \breathe |
  a gis4 fis ~ |
  fis\>  
  %e2
   << {e2 \noBreak } \new Voice { s4 \bar "!" s4 } >>
  dis4 |
  e2 r4\!
  gis\mf |
  fis gis e4. (dis8 |
  cis4) dis b \breathe b'\f |
  b b cis b |
  b4. ( a8) gis2 \breathe |
  a-\piuF gis4 fis ~ |
  fis e2 dis4 | 
  \time 2/4
  e2 \parenthesize \fermata \bar "||"


}

altIVoiceVerseFiveX = \relative c'' {
  \time 4/4
  \partial 2
  gis4\p gis ~ |
  gis fis e b' |
  \time 3/2 
  gis4. ( fis8 [gis b gis fis]) e2 \breathe |
  \time 6/4 
  dis4. dis8 \bar "" cis4 b cis2\> |
  \time 4/4
  b2. \breathe gis'4\p |
   gis fis e b' |
  \time 3/2 
  gis4. ( fis8 [gis b gis fis]) e2 \breathe |
  \time 6/4 
  dis4. dis8 cis4 b\> cis2 |
  \time 4/4
  b2 r4\!
  e\mf |
  fis b gis4. (fis8 |
  e4) e \bar "" dis \breathe b'\f |
  gis fis e b' |
  \time 3/2
  gis4. ( fis8 [ gis b gis fis]) e2 \breathe |
  \time 6/4
  dis4.-\piuF dis8 cis4 b cis2 |
  \time 2/4
  b \bar "||"
  
 
}


altIIVoiceVerseFiveX = \relative c' {
  \time 4/4
 R1 | 
 r2 cis4\p e( ~ |
 e8 [fis]) e4 e b' |
 \time 3/2 
 gis4. ( b8 \bar "" gis4 \breathe b4. cis8 b4) |
 b \breathe e,4. d8 cis4\> b a |
\time 4/4
gis2 \breathe cis4\p e( ~ |
 e8 [fis]) e4 e b' |
 \time 3/2 
 gis4. ( b8 gis4  b4. cis8 b4) |
 b \breathe e,4. d8\> cis4 \bar "!" b cis |
 \time 4/4
 b2 r4\!
 e\mf |
 fis b b8. ([a16 gis8 fis] |
 gis4) fis e8 \breathe e e4\f ( ~ |
 e8 [fis]) e4 e b' |
 \time 3/2
 gis4. (b8 gis4 \breathe b4. cis8 b4) |
 b \breathe e,4.-\piuF d8 cis4 
 <<
   \voiceOne
   {
 b a |
 \time 2/4
 b2 \parenthesize \fermata \bar "||"
   }
   \new Voice {
     \voiceTwo
     b4 a |
     \time 2/4
     gis2
   }

   >>
 
 
}

tenIVoiceVerseFiveX = \relative c' {
  \time 4/4
  \partial 2
  b4\p b ~ | b b gis e | 
  b'2 b \breathe |
  e,4. fis8 gis4 gis ~ ( |
  gis8  [b] gis4. \breathe b8\>  [gis]) fis |
  e2 \breathe
  % 2nd phrase
  b4\p b' ~ |
  b b gis e | 
  b'2 b \breathe |
  e,4. fis8 \bar "" gis4 gis ~ ( |
  gis8  [b] gis4.\> \breathe b8  [gis]) fis |
  e2  r4\!
 e\mf |
 \time 6/4
 b'2 b4 b4. (a8) gis4 |
 \time 3/2
 fis4 \breathe b\f b b gis4. a8 |
 \time 4/4
 b2 b \breathe |
 e,4.-\piuF fis8 \bar "" gis4 gis ( ~ |
 gis8 [b] gis4. \breathe b8 [gis]) fis |
  \time 2/4
  e2 \bar "||"
}

tenIIVoiceVerseFiveX = \relative c' {
  \time 4/4
 R1 | r2
 gis4\p b ( ~ |
 b8^\markup{ \italic "ruhig" }   [ cis b8. gis16 e8 fis gis a ] |
 \time 3/2 
 b4) b ~ \bar "" b8 a gis4 fis2 |
 gis4 \breathe b4. a8 gis4\> e b |
 \time 4/4
 e2 \breathe
 %2nd phrase
 gis4\p b ( ~ |
 b8^\markup{ \italic "ruhig" } [ cis b8. gis16 e8 fis gis a ] |
 \time 3/2 
 b4) b4. a8 gis4 fis2 |
 gis4 \breathe b4. a8\> gis4 \bar "!" a a  |
 \time 4/4
 gis2 r4\!
 b\mf |
 b cis e2 ~ |
 e4 dis e \breathe b8\f b^\markup{ \smaller \italic "ruhig" } ( [ ~ |
 b cis b8. gis16 e8 fis gis]) a |
 \time 3/2
 b4 b4. (a8 gis4) fis2 |
 gis4 \breathe b4.-\piuF a8 gis4 e b |
 \time 2/4
 e2 \parenthesize \fermata \bar "||"
 
 
}

basIVoiceVerseFiveX = \relative c {
  \time 4/4
  \partial 2
  b4\p e ~ |
  e b b b |
  \time 6/4
  e2 b4 \breathe e4. d8 cis4 |
  \time 3/2
  b2 ( \bar "" cis4. b8 a4) a\> |
  \time 4/4 e2 \breathe
  b'4\p e ~ |
  e b b b |
  \time 6/4
  e2 b4 \breathe e4. d8 cis4 |
  \time 3/2
  b2 ( \bar "" cis4. b8\> a4) a |
  \time 4/4 e2 r4\!
  e'\mf |
  b b' b4. (ais8 |
  gis4) e \bar ""
  b \breathe b\f |
  e b b b |
  \time 6/4
  e2 b4 \breathe e4.-\piuF d8 cis4 |
  \time 3/2
  b2 ( cis4. b8 a4) a |
  \time 2/4
  e2 \bar "||"
  
 }

basIIVoiceVerseFiveX = \relative c {
%  \dynamicDown
  \time 4/4 
 R1 | r2
 e4 \p b' ~ |
 b e, e e |
 b'2 \bar "" e, \breathe |
 a b4 b ~ |
 b b2\> gis4 |
 e2 \breathe
 %2nd prhase
 e4\p b' ~ |
 b e, e e |
 \time 3/2
 b'2 e, \breathe  a  |
 \time 6/4
 b b4\> << {b,2  } \new Voice { s4 \bar "!" s4 } >> b4 |
 \time 4/4
   e2 r4\!
   e\mf |
   b' b e, b' |
   b2 e,4 b'\f ~ |
   b e, e e |
   b'2 e, \breathe |
   a-\piuF b4 b ~ |
   b b2 gis4 |
   \time 2/4
 e2 \parenthesize \fermata \bar "||"
 
 }

breaksFiveX = {
  \tempo \markup{ "Choral, in gehender Bewegung" } 4 = 104
  
    s4*14 %\origBreak
    s4*18 %\origBreak   
  s4*10 \mark \default \noBreak  
  s4*20 
  \tempo "Zögern"
  
}

breaksFiveXCII = {
  
    s4*14 %\origBreak
    s4*18 %\origBreak   
  s4*10 \mark \default \noBreak  
  s4*20 
  \tempo "Zögern"
  s4*7
  \tempo "Breit"
}



 