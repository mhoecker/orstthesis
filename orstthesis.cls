% Oregon State University Thesis class
% by Martin Hoecker-Martinez
% mhoecker@coas.oregonstate.edu
%
%
%
%
% Documentation is in the companion document (orstthesis.tex)
%

\ProvidesClass{orstthesis}[2010/04/09]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[letterpaper,openany,twoside]{book}
\special{papersize=8.5in,11in}
\setlength{\paperheight}{11in}
\setlength{\paperwidth}{8.5in}
\usepackage{geometry}
\geometry{paperheight=11in,paperwidth=8.5in,includehead,left=1.6in,right=1in,top=1.5in,bottom=1in}
\usepackage[nottoc,notlof,notlot]{tocbibind}
\usepackage{fancyhdr}
\usepackage{ifthen}
\usepackage{calc}
\usepackage{setspace}
\usepackage{makeidx}
\usepackage{tocloft}
\usepackage{hyperref}
\let\ps@plain\ps@empty
\ps@empty

\newlength{\figwidth}
\setlength{\figwidth}{.9\textwidth}
\newlength{\figheight}
\setlength{\figheight}{.6\textheight}


\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}


\renewcommand{\cftdotsep}{1}
\renewcommand{\cftchapdotsep}{\cftdotsep}
\renewcommand{\cftdot}{\ensuremath{\cdot}}
\renewcommand{\cftchapfont}{\normalfont}
\renewcommand{\cftchappagefont}{\normalfont}


\addtocontents{toc}{\protect{\hfill\underline{Page}\par}}
\addtocontents{lof}{\protect{\underline{Figures}\hfill\underline{Page}\par}}
\addtocontents{lot}{\protect{\underline{Tables}\hfill\underline{Page}\par}}


\newlength{\sigheight}
\setlength{\sigheight}{.5in}


\newlength{\sigwidth}
\setlength{\sigwidth}{.9\textwidth}

\newcommand{\sig}[1]{\begin{center}\vspace{\sigheight}\rule{\sigwidth}{1pt}\\#1\end{center}}

\renewcommand{\chapter}{\cleardoublepage\suppressfloats[t]\@startsection{chapter}{1}{0pt}{0em}{3em}{\clearpage\centering\singlespace\LARGE\bfseries\MakeUppercase}}
\renewcommand{\section}{\@startsection{section}{2}{0pt}{2em}{2em}{\centering\Large\bfseries}}
\renewcommand{\subsection}{\@startsection{subsection}{3}{0pt}{1em}{1em}{\large\bfseries}}
\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{1em}{1ex}{1ex}{\normalsize\bfseries}}

\newcommand{\osu}{Oregon State University}

\newcommand{\dept}{Department}
\newcommand{\deptis}[1]{\renewcommand{\dept}{#1}}

\newcommand{\prof}{Major I. Professor}
\newcommand{\profis}[1]{\renewcommand{\prof}{#1}}

\newcommand{\name}{Degree S. Student}
\newcommand{\nameis}[1]{\renewcommand{\name}{#1}}

\newcommand{\degreename}{Doctor of Science}
\newcommand{\degreeis}[1]{\renewcommand{\degreename}{#1}}

\newcommand{\major}{Major}
\newcommand{\majoris}[1]{\renewcommand{\major}{#1}}

\newcommand{\defensedate}{\today}
\newcommand{\defensedateis}[1]{\renewcommand{\defensedate}{#1}}

\newcommand{\commencement}{June \number\year}
\newcommand{\commencementis}[1]{\renewcommand{\commencement}{June #1}}

\newcommand{\thesistitle}{Thesis Title}
\newcommand{\thesistitleis}[1]{\renewcommand{\thesistitle}{#1}}

\newcommand{\depthead}{Head}
\newcommand{\deptheadis}[1]{\renewcommand{\depthead}{#1}}

\newcommand{\flyleaf}{
\newpage
\pagestyle{empty} \ 
\newpage
}

\newcommand{\phdabstract}[1]{
\thispagestyle{empty}
\begin{center}
AN ABSTRACT OF THE DISSERTATION OF
\end{center}
\underline{\name} for the degree of \underline{\degreename} in \underline{\major} presented on \underline{\defensedate}.\\
Title:\ \underline{\thesistitle}.\\
Abstract Approved:\\
\sig{\prof}
#1
}

\newcommand{\copyrightpage}{
\newpage
\ \vspace{10\baselineskip}
\begin{center}
\copyright by \name\\
\defensedate\\
All Rights Reserved
\end{center}
\vfill
\newpage
}

\newcommand{\osutitle}{
\newpage
\begin{center}
\thesistitle\\
\vfill
by\\
\name\\
\vfill
A DISSERTATION\\
submitted to\\
\vfill
\osu\\
\vfill
in partial fulfillment of\\
the requirements for\\
the degree of\\
\vfill
\degreename\\
\vfill
Presented \defensedate\\
Commencement \commencement
\end{center}
\newpage
}

\newcommand{\approval}{
\newpage
\underline{\degreename} dissertation of \underline{\name} presented \underline{\defensedate}.
\vfill
APPROVED:
\sig{\prof, representing \major}
\sig{\depthead{} of the \dept}
\sig{Dean of the Graduate School}
\vfill
I understand that my dissertation will become a part of the permanent collection of \osu libraries. My signature below authorizes release of my thesis to any reader upon request.
\sig{\name, Author}
\newpage
}

\newcommand{\acknowledge}[1]{
\newpage
\begin{center}
ACKNOWLEDGEMENTS
\end{center}
\doublespacing
#1
\singlespace
\newpage
}

\newcommand{\authors}[1]{
\newpage
\begin{center}
CONTRIBUTION OF AUTHORS
\end{center}
\doublespacing
#1
\singlespace
\newpage
}

\newcommand{\dedication}[1]{
\newpage
\begin{center}
Preface
\end{center}
\doublespacing
#1
\singlespace
\newpage
}

\newcommand{\preface}[1]{
\newpage
\begin{center}
Preface
\end{center}
\doublespacing
#1
\singlespace
\newpage
}

\renewcommand\frontmatter{%
  \@mainmatterfalse
  \pagestyle{empty}
  \sloppy
}


\newcommand\mainmatters{
\mainmatter
\fussy
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\fancyhead[RO,LE]{\ifthenelse{\value{page}>1}{\thepage}{}}
}



\newcommand\appendices{
\appendix
\rule{0pt}{.3\textheight}\\
\begin{center}
\addcontentsline{toc}{chapter}{{Appendices}}
\Large\textbf{APPENDICES}
\addtocontents{toc}{\protect\setcounter{tocdepth}{-1}}
\addtocontents{toc}{\protect\setcounter{tocdepth}{0}}
\end{center}
\vfill
\pagebreak
\def\thechapter{\Alph{chapter}}
\def\thesection{\thechapter.\arabic{section}}
}

