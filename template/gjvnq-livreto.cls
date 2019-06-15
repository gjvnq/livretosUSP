%!TEX TS-program = xelatex
%!TEX encoding = UTF-8 Unicode
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gjvnq-livreto}
\LoadClass[a5paper,oneside,openany,10pt]{memoir}
% \RequireXeTeX

\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\RequirePackage{memhfixc}
\RequirePackage{listings}
\RequirePackage{tcolorbox}
\RequirePackage{longtable}
\RequirePackage{makecell}
\RequirePackage{accsupp}
\RequirePackage[english,portuguese]{babel}
\RequirePackage{amsmath}
\RequirePackage{mathtools}
\RequirePackage{unicode-math}
\RequirePackage{textcomp}
\RequirePackage{emf}

\tcbuselibrary{listings,breakable,skins}
\lstset{
	basicstyle=\small\ttfamily,
	columns=flexible,
	breaklines=true
}

% Work arround for accesibility
% https://tex.stackexchange.com/questions/262492/xelatex-misplaces-actualtext-box
\makeatletter
\def\ACCSUPP@bdc{%
  \special{pdf:code \ACCSUPP@span BDC}%
}
\def\ACCSUPP@emc{%
  \special{pdf:code EMC}%
}
\makeatother

\RequirePackage{fontspec}
\setmainfont
     [ BoldFont       = texgyrepagella-bold.otf ,
       ItalicFont     = texgyrepagella-italic.otf ,
       BoldItalicFont = texgyrepagella-bolditalic.otf ]
     {texgyrepagella-regular.otf}


\newtcolorbox{inputBox}{enhanced jigsaw,breakable,pad at break*=1mm,colback=purple!5!white,colframe=purple!75!black}
\newtcolorbox{codeBox}{enhanced jigsaw,breakable,pad at break*=1mm,colback=orange!5!white,colframe=orange!75!black}
\newtcolorbox{outputBox}{enhanced jigsaw,breakable,pad at break*=1mm,colback=gray!5!white,colframe=gray!75!black}
\newtcblisting{latexExample}{enhanced jigsaw,breakable,pad at break*=1mm,colback=orange!5!white,colframe=orange!75!black}
\newtcblisting{latexExampleSide}{listing side text,enhanced jigsaw,breakable,pad at break*=1mm,colback=orange!5!white,colframe=orange!75!black}

\newcommand{\mailto}[1]{\href{mailto:{#1}}{#1}}
\newcommand{\link}[2]{\href{#2}{#1}}

% Other symbols
\renewcommand{\textnumero}{№}
\newcommand{\BRL}{R\textdollaroldstyle}
\newcommand{\EUR}{€}
\makeatletter
\DeclareRobustCommand{\vol}{\text{\volumedash}V}
\DeclareRobustCommand{\vc}{\text{\vol C}}
\newcommand{\volumedash}{%
  \makebox[0pt][l]{%
    \ooalign{\hfil\hphantom{$\m@th V$}\hfil\cr\kern0.08em--\hfil\cr}%
  }%
}
\makeatother