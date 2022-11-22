The success of the project depends on an ability to code up  vast numbers
of complicated mathematical expressions containing a wide range of mathematical
variables or symbols, illustrated by over $250$ entries in
Annex B to @pappeqs3. Coding must be done as automatically, reliably and
unambiguously as possible,  starting with source expressions that are presumed
to be in the LaTeX markup language. Unfortunately,
the character set for names of C++ variables is restricted to letters of upper 
and lower case plus underscore '_'. Underscore will be reserved to separate
words, ie. to enable use of 'pothole' convention. There is thus a challenge
as to how to represent the names of variables as set out using LaTeX conventions,
which involve heavy use of the escape character backslash.
To enable conversion, to produce C++ equivalents,
reserve 'o' as the escape character, demanding  that no 
mathematical variable is allowed to use the letter, or its Greek
equivalent omicron, even as a suffix or superfix.

Two character variables
-----------------------

Each keyboard character will be represented by one or two lowercase letters,
normally those which form the first two letters of its name, ommitting 'o', thus :

* 'a' will represent 'a'
* 'aa' will represent 'A'
* 'as' will represent '*' (for asterisk)
* 'bl' will represent bracket on left [
* 'br' will represent bracket on right ]
* 'pl' will represent parenthesis on left {
* 'pr' will represent parenthesis on right }
* 'ti' will represent tilde
* 'ci' will represent circumflex
* 'sq' will represent single quote
* 'dq' will represent double quote
* 'st' will represent stop or dot
* 'ds' will represent double stop or double dot
* 'pu' will represent '+' 
* 'mn' will represent '-'
* 'gt' will represent $>$
* 'lt' will represent $<$
* 'vb' will represent $|$

Should it be necessary to use 'o', then 'ooo' will represent lowercase 'o'
and 'oooo' will represent 'O'.

Greek lowercase letters and other special characters will similarly be represented by
two lowercase letters, apart from 'o', thus:

* 'al' will represent $\alpha$
* 'be' will represent $\beta$
* 'me' will represent $\omega$
* 'ar' will represent arrow to right $\rightarrow$
* 'pa' will represent parallel $\|$
* 'pe' will represent perpendicular $\perp$
* 'un' will represent underscore \_

Variant Greek letters will begin with 'v', followed by the first letter of their
transliteration into Roman letters, and uppercase Greek letters will be
represented by the first and third letters, except for $\Pi$, $\Phi$ and
$\Psi$ where this is not possible, thus:

* 've' will represent $\varepsilon$
* 'dl' will represent $\Delta$
* 'mg' will represent $\Omega$
* 'py' will represent $\Pi$
* 'pf' will represent $\Phi$
* 'pj' will represent $\Psi$

If storage of an expression is required, the following will be useful, thus:

* 'pt' denotes $\partial$
* 'ml' denotes multiplication
* 'dv' denotes division

A single letter followed by a digit will have that as a suffix, thus:

* 'n1' will denote $n_1$
 
Escape sequences
----------------

Use of different fonts will be denoted by 'o' followed by one or two digits, preceding
the above codes, thus :

* 'o1' will denote uppercase, for use in conjunction with Greek alphabet
* 'o2' will denote bold(math)
* 'o3' will denote calligraphic, (math)cal
* 'o4' will denote sans-serif, (math)sf
* 'o5' will denote typewriter, (math)tt 

Some of the higher integer values might be used to denote members of the same 'namespace',
cf. the way sf is used to denote neutral quantities.

Positioning of suffixes and prefixes will be denoted by 'o'
followed by a single letter, thus:

* 'os' indicates underneath, S for South
* 'on' denotes above, N for North
* 'oe' denotes suffix, E for East
* 'ow' denotes prefix, W for West
* 'or' denotes superfix, R for Right
* 'ol' denotes preceding superfix, L for Left

Other LaTeX commands will simply see their leading backslash replaced by 'o', thus:

* 'onabla' indicates $\nabla$
* 'otimes' indicates $\times$
