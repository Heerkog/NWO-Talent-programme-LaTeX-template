\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Veni}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions

\LoadClass{article}

%==========================fonts===============================
\usepackage{fontspec}
 
\setmainfont[
BoldFont=Carlito-Bold.ttf,
ItalicFont=Carlito-Italic.ttf,
BoldItalicFont=Carlito-BoldItalic.ttf,
]{Carlito-Regular.ttf}
\defaultfontfeatures{Scale=MatchUppercase}

\usepackage{unicode-math}
\unimathsetup{math-style=TeX}
\setmathfont{latinmodern-math.otf}
\setmathfont[range=up/{num,latin,Latin}]{Carlito-Regular.ttf}
\setmathfont[range=it/{num,latin,Latin}]{Carlito-Italic.ttf}
\setmathfont[range={"2212,"002B,"003D,"0028,"0029,"005B,"005D,"221A,"2211,"2248,"222B,"007C,"2026,"2202,"00D7,"0302,"2261,"0025,"22C5,"00B1,"2194,"21D4}]{latinmodern-math.otf}

\setoperatorfont\normalfont % For log, sin, cos, etc.

\renewcommand\tiny{\@setfontsize\tiny{5pt}{6}}
\renewcommand\scriptsize{\@setfontsize\scriptsize{6.5pt}{7.8}}
\renewcommand\footnotesize{\@setfontsize\footnotesize{8pt}{9.6}}  % 8pt footnote
\renewcommand\small{\@setfontsize\small{8.5pt}{10.2}}
\renewcommand\normalsize{\@setfontsize\normalsize{9.5pt}{11.4}}   % 9.5pt normal text
\renewcommand\large{\@setfontsize\large{11pt}{12.2}}
\renewcommand\Large{\@setfontsize\Large{13pt}{15.6}}              % 13pt subsection
\renewcommand\LARGE{\@setfontsize\LARGE{14pt}{16.8}}              % 14pt subtitle
\renewcommand\huge{\@setfontsize\huge{16pt}{19.2}}
\renewcommand\Huge{\@setfontsize\Huge{18pt}{21.6}}                % 18pt title/section

%=========================underline============================
\usepackage{soul} % \ul command
\setul{0.3ex}{}

%==========================colors==============================
\usepackage[usenames,dvipsnames,table]{xcolor}
\definecolor{nwotext}{HTML}{008B9F}
\definecolor{nwoshade}{HTML}{F2F2F2}
\definecolor{nwoborder}{HTML}{D9D9D9}
\definecolor{nwotable}{HTML}{18657C}

\definecolor{wp1}{HTML}{97E54C} % green
\definecolor{wp2}{HTML}{E4E54C} % yellow
\definecolor{wp3}{HTML}{E5AF4C} % orange

%==========================languages===========================
\usepackage[english]{babel}
\usepackage{csquotes}

%==========================symbols=============================
\usepackage{eurosym,amsmath,wasysym}

%==========================title layout========================
\def \thetitle {Grant application full proposal form}
\def \theapplicationyear {2021}
\def \thesubtitle {NWO Talent Programme --- Veni scheme}
\def \thedomain {Science(ENW)}
\def \theversion {March 2021}

\newcommand{\makenwotitle}{%
    \parbox[t][3.38cm]{\textwidth}{%
        \vskip -6pt
        \Huge\color{nwotext}\thetitle~\theapplicationyear\par
        \vskip 6pt
        \LARGE\color{nwotext}\thesubtitle\par
        \vskip 0.4cm
        \normalsize\color{black}{\thedomain}\par
        \vskip 0.2cm
        \normalsize\color{black}\textit{Form Version: \theversion}\par
        
        \begin{tikzpicture}[overlay, remember picture]
            \node[anchor=north east,inner sep=0pt,xshift=-2.5cm,yshift=-2.6cm] at (current page.north east) {\includegraphics[width=2.09cm,height=3.38cm]{NWO.jpg}};
        \end{tikzpicture}
    }
}
\renewcommand{\title}[1]{\def \thetitle {#1}}
\newcommand{\subtitle}[1]{\def \thesubtitle {#1}}
\newcommand{\domain}[1]{\def \thedomain {#1}}
\newcommand{\applicationyear}[1]{\def \theapplicationyear {#1}}
\newcommand{\formversion}[1]{\def \theversion {#1}}

%==========================section layout=======================

\usepackage{sectsty} % Section-header style

\usepackage[compact]{titlesec}

\setcounter{secnumdepth}{4}

\titleformat{\section}[hang]{\Huge\rmfamily\color{nwotext}}{\thesection}{\wordsep}{}
\titleformat{\subsection}[hang]{\Large\rmfamily\color{nwotext}}{\thesubsection}{\wordsep}{}
\titleformat{\subsubsection}[hang]{\normalsize\rmfamily\color{nwotext}}{\thesubsubsection}{\wordsep}{}
\titleformat{\paragraph}[hang]{\normalsize\rmfamily\color{nwotext}}{\theparagraph}{\wordsep}{}
\titleformat{\subparagraph}[hang]{\normalsize\rmfamily\color{nwotext}}{\thesubparagraph}{\wordsep}{}

\titlespacing*{\section} {0pt}{18pt}{11.4pt}[0pt]        % vertical spacing before and after section
\titlespacing*{\subsection} {0pt}{18pt}{6pt}[0pt]        % vertical spacing before and after subsection
\titlespacing*{\subsubsection}{0pt}{6pt}{3pt}[0pt] 	     % vertical spacing before and after subsubsection
\titlespacing*{\paragraph} {0pt}{6pt}{0pt}[0pt]          % vertical spacing before and after paragraph
\titlespacing*{\subparagraph} {0pt}{6pt}{0pt}[0pt]       % vertical spacing before and after subparagraph

% Redefine section labels
\renewcommand{\thesection}{\arabic{section}.}
\renewcommand{\thesubsection}{\arabic{section}\alph{subsection}.}
\renewcommand{\thesubsubsection}{\arabic{section}\alph{subsection}\arabic{subsubsection}.}
\renewcommand{\theparagraph}{\arabic{section}\alph{subsection}\arabic{subsubsection}.\arabic{paragraph}}
\renewcommand{\thesubparagraph}{}

%========================page layout==============================

% Use this to print on A4:
\usepackage[a4paper, top=2.5cm, bottom=1.6cm, left=2.5cm, right=2.5cm]{geometry}
\setlength{\textheight}{25.4cm}
%\setlength{\headheight}{51pt}
\linespread{1.0}  % Distance between lines - default 1.0

%==========================paragraph layout====================

\usepackage{parskip} 			%whitespace before/after each paragraph
\setlength{\parskip}{6pt} 	    %length of whitespace before/after each paragraph
\setlength{\parindent}{0cm} 	%length of indentation at the start of each paragraph
\widowpenalty=300
\clubpenalty=300

\renewcommand{\indent}{\hspace{1em}}

%=========================lists================================
\usepackage{enumitem} 	                                %package to modify enumerate and itemize lists
\setlist{nosep,after=\vspace{\baselineskip},noitemsep}	%No separation,
                                                        %Separation after list and the rest of the text
                     	                                %no separation between items
\newcounter{enumTemp}                       	%new counter to create continuous counting over multiple lists

%========================hyperlinks============================

\usepackage[bookmarks=false]{hyperref}  % No bookmarks (NWO rule)
\hypersetup{
    unicode=true,           % non-Latin characters in Acrobat's bookmarks
    pdftoolbar=true,        % show Acrobat's toolbar?
    pdfmenubar=true,        % show Acrobat's menu?
    pdffitwindow=false,     % window fit to page when opened
    pdfstartview={FitH},    % fits the width of the page to the window
    pdftitle={},    		% title
    pdfauthor={},    		% author
    pdfcreator={},   		% creator of the document
    pdfproducer={Producer}, % producer of the document
    pdfkeywords={}, 		% list of keywords
    pdfnewwindow=true,      % links in new PDF
    colorlinks=true,       	% false: boxed links; true: colored links
    linkcolor=nwotext,      % color of internal links (change box color
							% with linkbordercolor)
    citecolor=nwotext,      % color of links to bibliography
    filecolor=nwotext,      % color of file links
    urlcolor=nwotext        % color of external links
}

%--------------------layout for reference list-------------------

\usepackage[
backend=biber,
citestyle=numeric-comp,
sortcites=true,
doi=true,
isbn=false,
url=true,
eprint=false,
uniquename=init,
bibstyle=numeric,
maxnames=99,
sorting=nyt,
giveninits=true,
defernumbers=true,
natbib=true]{biblatex}

\DeclareNameAlias{default}{family-given}

\renewcommand{\finalnamedelim}{~\&~}

\renewcommand*{\newunitpunct}{\addcomma\space}

\renewbibmacro*{volume+number+eid}{
  \setunit*{\addcomma\space}
  \printfield{volume}
%  \setunit*{\adddot}
  \setunit*{\addcomma\space}
  \printfield{number}
  \setunit{\addcomma\space}
  \printfield{eid}}

\AtEveryBibitem{\clearlist{language}} % clears language

\AtEveryBibitem{
  \ifentrytype{misc}{
  }{
    \clearfield{url}
    \clearfield{urlyear}
  }
}

\defbibheading{bibliographyparagraph}[\bibname]{%
  \paragraph*{#1}%
  \markboth{#1}{#1}}

%------make an author name appear boldface in reference list------------

\newcommand*{\boldname}[3]{%
  \def\lastname{#1}%
  \def\firstname{#2}%
  \def\firstinit{#3}}

% Patch new definitions
\renewcommand{\mkbibnamegiven}[1]{%
  \ifboolexpr{ ( test {\ifdefequal{\firstname}{\namepartgiven}} or test {\ifdefequal{\firstinit}{\namepartgiven}} ) and test {\ifdefequal{\lastname}{\namepartfamily}} }
  {\mkbibbold{#1}}{#1}%
}

\renewcommand{\mkbibnamefamily}[1]{%
  \ifboolexpr{ ( test {\ifdefequal{\firstname}{\namepartgiven}} or test {\ifdefequal{\firstinit}{\namepartgiven}} ) and test {\ifdefequal{\lastname}{\namepartfamily}} }
  {\mkbibbold{#1}}{#1}%
}

%------------NEW COMMAND TO PRINT FULL CITATIONS IN TEXT------------

\DeclareCiteCommand{\fullcite}
  {\hspace{-0.25em}\usebibmacro{prenote}}
  {\usedriver
     {\defcounter{minnames}{6}
      \defcounter{maxnames}{6}}
     {\thefield{entrytype}}}
  {\multicitedelim}
  {\usebibmacro{postnote}}

%-----------NOPRINTBIBLIOGRAPHY------------

\newcommand{\noprintbibliography}{
    \newsavebox\mytempbib
    \savebox\mytempbib{\parbox{\textwidth}{\printbibliography[heading=none]}}}

%=====================tables and figures===========================

\usepackage{pgf,floatrow,tabularx,graphicx,wrapfig}
\usepackage{tikz}

%------extra commands to add space before and after rows----------
%\setlength{\arrayrulewidth}{1}
\renewcommand{\arraystretch}{2}
\arrayrulecolor[HTML]{D9D9D9}

\newenvironment{tab}[2][1]
  {\def\arraystretch{#1}\tabular{#2}}
  {\endtabular}


%------------create cells spanning multiple columns----------------
\usepackage{multicol}

%-----------------create cells spanning multiple rows--------------
\usepackage{multirow}

%-----------------add shaded cells to tables------------------------
\usepackage{colortbl}
\newcolumntype{n}{>{\columncolor{nwoshade}}p}
\newcolumntype{w}{>{\centering\let\newline\\\arraybackslash\hspace{0pt}\columncolor{nwoshade}}p}
\newcolumntype{o}{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}p}
\newcolumntype{q}{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}p}

%--------------------Table Headers--------------------------------

\newcommand{\nth}[1]{\textcolor{nwotable}{#1}}
\newcommand{\bth}[1]{\textcolor{nwotable}{\textbf{#1}}}
\newcommand{\sth}[1]{\textcolor{nwotable}{\footnotesize{#1}}}

%-----------------subfolder where figures are located--------------
\graphicspath{{Figures/}}


%-----------------caption rename----------------------------------
\usepackage{caption}
\captionsetup[figure]{font=small}
\captionsetup[table]{font=small}

\renewcommand{\figurename}{Figure}
\renewcommand{\tablename}{Table}

%========================textboxes============================
\usepackage[framemethod=tikz,linecolor=nwoborder,backgroundcolor=nwoshade,middlelinewidth=0.5pt,skipabove=0.5\baselineskip,skipbelow=0.5\baselineskip,leftmargin=0.8cm,rightmargin=0.8cm,innerleftmargin=\baselineskip,innerrightmargin=\baselineskip,innertopmargin=\baselineskip,innerbottommargin=\baselineskip, roundcorner=0.5\baselineskip]{mdframed}

\newcommand{\mdheader}[1]{\begin{center}\nth{#1}\end{center}}

%=======================headers and footers====================

\usepackage{fancyhdr}
\usepackage{lastpage}

\pagestyle{fancy}
\lhead{}
\rhead{}
\cfoot{\footnotesize\thepage}

\renewcommand{\footnoterule}{\vfill}
\renewcommand{\headrulewidth}{0pt}

%========================comments=====================
\usepackage{comment}

%=======================checkboxes====================
\newcommand{\checkbox}[1][0.05\textwidth]{\hspace*{#1}{\color{nwotext}\LARGE{\ensuremath{\Box}}}\hspace{1em}}
\newcommand{\checkedbox}[1][0.05\textwidth]{\hspace*{#1}{\color{nwotext}\LARGE{\ensuremath{\XBox}}}\hspace{1em}}

%======================custom=========================
\newcommand{\ts}{\textsuperscript}


%====================== NWO instructions==================
\RequirePackage{etoolbox}

\newtoggle{showinstructions}
\togglefalse{showinstructions}  % default: off

\DeclareOption{instructions}{\toggletrue{showinstructions}}
\ProcessOptions\relax

\newcommand{\instructions}[2]{%
  \iftoggle{showinstructions}{%
  	\begin{mdframed}
    		\mdheader{#1}
    		#2
		\end{mdframed}
  }{}%
}



%======================Table of contents==================
\renewcommand\tableofcontents{%
  \section*{Table of Contents}  % or \chapter* for book/report classes
  \@starttoc{toc}%
}





\endinput