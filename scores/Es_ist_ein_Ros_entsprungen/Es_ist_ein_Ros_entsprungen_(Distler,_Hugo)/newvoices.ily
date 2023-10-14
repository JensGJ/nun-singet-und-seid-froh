%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          Verse 5 - Die Hirten zu der Stunden   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PDF version https://www.cpdl.org/wiki/images/9/9f/DistlerWeihnachtsgeschichte.pdf (p 43-47 in pdf, pagenum 35-39)

\pageBreak

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
 e4 dis e \breathe b8\f b^\markup{ \italic "ruhig" } ( [ ~ |
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



 