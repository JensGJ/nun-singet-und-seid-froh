%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATTB/modern/voices.ily

% common settings of all voices
global = {
  \key g \major
  \time 6/4
  \partial 4
  \dynamicUp
  \autoBeamOff
  \override DynamicLineSpanner.staff-padding = #3
}

% articulation, dynamics, fermata and breathing marks
sopIArt = {

}

sopIIArt = \sopIIArt

altArt = \sopIIArt

% the tunes
sopITune = \relative c'' {
    r4 
    r4 b b b g a
    b4.( d8 e4) dis \breathe e2
    \time 5/4
    d!4 b g2 a4
    \time 2/4
    b\breathe g
    \time 4/4
    b d e e 
    \time 8/4
    d4( b4. d8[ e] d4 b8.[ a16 g8] a2)
    \time 2/4
    g4\breathe a 
    \time 5/4
    b4 a g fis2
    \time 6/4
    e1.~
    e1 r4 
    \bar "|."
}


sopIVoice = <<
	\sopIArt
	\sopITune
>>

sopIITune = \relative c' {
    e4
    e2 e4 fis2 fis4
    g(a b) b2\breathe b4
    \time 5/4
    a4 a e2 fis4
    \time 2/4
    g4\breathe g
    \time 4/4 
    fis a b b
    \time 8/4
    a( fis4. g8[ a d a g] f4. g8 a4)
    \time 2/4
    b\breathe fis
    \time 5/4
    g4 fis e2 dis!4 
    \time 6/4
    e4.( fis8[ a b d b] a2
    b1) r4
}

sopIIVoice = <<
	\sopIIArt
	\sopIITune
>>

altTune = \relative c' {
    r4
    r e d c e2 
    e4 e2 b4 \breathe g'2
    \time 5/4
    e4 d c4.( b8) a4 
    \time 2/4
    e'2~
    \time 4/4
    e2 r4 g, 
    b d e2~
    e4 e <<{\voiceOne c d \breathe d} \newVoice {\voiceTwo c a d}>> \oneVoice d
    \time 5/4
    b d e b2
    \time 6/4
    e4.( c8[ e fis a] fis4 e8 fis4
    gis!1) r4
}

altVoice = <<
	\altArt
	\altTune
>>
