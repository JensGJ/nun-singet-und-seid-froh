% \version "2.13.29"
\version "2.22.2"


doubleSignature  =
%% Define a function to display custom time signatures
#(define ((custom-time-signature a b c d) grob)
   (grob-interpret-markup grob
           (markup #:override '(baseline-skip . 2.5) #:number
(#:line ((markup (#:fontsize -1 #:column (a b)))
                                     (#:fontsize -1 #:parenthesize (#:column (c d))))))))


#(define ((time-parenthesized-time up down upp downp) grob)
(grob-interpret-markup grob
(markup #:override '(baseline-skip . 0) #:number
(#:line (
(#:center-column (up down))
#:vcenter "("
(#:center-column (upp downp))
#:vcenter ")" )))))
timeTwelveEightC = {
\once \override Staff.TimeSignature.stencil = #(time-parenthesized-time "12" "8" "4" "4")
\time 12/8
}


timeThreeTwoSuggestSixFour = {
  \once \override Score.TimeSignature #'stencil =
    #(custom-time-signature  "3" "2" "6" "4")
\time 3/2
}

timeSixFourSuggestSixEigth = {
\once \override Score.TimeSignature #'stencil =
    #(custom-time-signature  "6" "4" "6" "8")
 \time 6/4
}

timeThreeFourSuggestSixEigth = {
\once \override Score.TimeSignature #'stencil =
    #(custom-time-signature  "3" "4" "6" "8")
 \time 3/4
}


music = \relative c' {
\timeThreeTwoSuggestSixFour
c4 c d e1*1/2 d4 
\time 2/4
c e 

\timeSixFourSuggestSixEigth
 
d e c8 d \bar "!" e g d e c4 |
\time 4/4

c4 c d d4 c e d2  \bar "|."
}

musicTwo = \relative c' {
\timeThreeTwoSuggestSixFour
c4 c d e1*1/2 d4 
\time 2/4
c e 

\timeTwelveEightC
 
d e c8 d \bar "!" e g d e c4 |
\time 4/4

c4 c d d4 c e d2  \bar "|."
}

musicThree = 
\relative c' {
  \time 3/2
  c4 c d d4 c e 
  \time 2/4
  d2
\once \override Staff.TimeSignature.stencil = #ly:text-interface::print
\once\override Staff.TimeSignature.text = \markup { \combine \musicglyph "three" \lower #2 \musicglyph "four" \parenthesize \combine \musicglyph "six" \lower #2 \musicglyph "eight" }
\time 3/4
c8 d e f g a b c
}

\score { \music }

\score { \musicTwo } 

\score { \musicThree } 
