\version "2.18.2"

\header {
  title = "Wenn Felder dürre stehen"
  subtitle = "Ökologisches Glaubenslied zur Dürre"
  composer = "Melodie: Heinrich Schütz, „Wohl denen, die da wandeln“"
  poet = "Text: neu"
  tagline = ##f
}

\paper {
  #(set-paper-size "a5")
  top-margin = 8\mm
  bottom-margin = 8\mm
  left-margin = 9\mm
  right-margin = 9\mm
}

\layout {
  indent = #0
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

global = {
  \key f \major
  \time 2/2
  \numericTimeSignature
}

melody = \relative c' {
  \global
  \autoBeamOff

  \partial 4 c4
  f4 g4 a4 c4 |
  b2 a4 g4 |
  f4 g4 a4 g8( f8) |
  g2 r4 c,4 |

  f4 g4 a4 c4 |
  b2 a4 g4 |
  f4 g4 a4 g8( f8) |
  g2 r4 g4 |

  g4 g4 a4 g4 |
  f4 g4 e4 d4 |
  f4 g4 a4 b4 |
  a2 g4 c4 |
  b4 g4 a2 |
  g4 f2.

  \bar "|."
}

verseOne = \lyricmode {
  \set stanza = #"1."
  Wenn Fel -- der dür -- re ste -- hen
  und heiß der Ost -- wind weht,
  wenn Brun -- nen tie -- fer ge -- hen
  und Halm bei Halm ver -- geht,
  wir su -- chen Gott in die -- ser Welt,
  bei Men -- schen, Tier und Bäu -- men
  und tei -- len Was -- ser recht.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Die Er -- de birgt die Saa -- ten,
  kein Tau die Hal -- me nährt,
  wir hü -- ten ih -- re Ga -- ben,
  bis Re -- gen wie -- der -- kehrt.
  Sie trägt, was mor -- gen wach -- sen will;
  wir ler -- nen von den Sa -- men
  Ge -- duld, die hof -- fen lehrt.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Wo Brun -- nen tie -- fer sin -- ken
  und Hit -- ze Men -- schen quält,
  wo Tie -- re schwe -- rer trin -- ken
  und Was -- ser al -- len fehlt,
  lass Recht bei al -- len Brun -- nen stehn
  und Was -- ser ge -- recht tei -- len
  mit al -- lem, was da lebt.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Wenn Wol -- ken Re -- gen brin -- gen
  und Duft aus Er -- de steigt,
  wenn Kör -- ner neu ent -- sprin -- gen
  und Grün die Fur -- chen zeigt,
  dann gib uns Gott den rech -- ten Sinn,
  mit al -- lem Land zu le -- ben,
  zu dei -- nem Frie -- den hin.
}

\score {
  <<
    \new Staff {
      \new Voice = "melody" {
        \melody
      }
    }
    \new Lyrics \lyricsto "melody" { \verseOne }
    \new Lyrics \lyricsto "melody" { \verseTwo }
    \new Lyrics \lyricsto "melody" { \verseThree }
    \new Lyrics \lyricsto "melody" { \verseFour }
  >>
  \layout { }
}

\score {
  \unfoldRepeats \melody
  \midi { }
}