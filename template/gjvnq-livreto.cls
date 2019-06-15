%!TEX TS-program = xelatex
%!TEX encoding = UTF-8 Unicode
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gjvnq-livreto}
\LoadClass[a5paper,twoside,openany,10pt]{memoir}
\RequireXeTeX

\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\RequirePackage{memhfixc}
\RequirePackage{listings}
\RequirePackage{tcolorbox}
\RequirePackage{longtable}
\RequirePackage{makecell}

\tcbuselibrary{listings,breakable,skins}
\lstset{
	basicstyle=\small\ttfamily,
	columns=flexible,
	breaklines=true
}

% Set font to Adobe Palatino
\RequirePackage{fontspec}
% \RequirePackage{mathpazo}
\setmainfont
     [ BoldFont       = texgyrepagella-bold.otf ,
       ItalicFont     = texgyrepagella-italic.otf ,
       BoldItalicFont = texgyrepagella-bolditalic.otf ]
     {texgyrepagella-regular.otf}
% \setmonofont{Source Code Pro}


\newtcolorbox{inputBox}{enhanced jigsaw,breakable,pad at break*=1mm,colback=purple!5!white,colframe=purple!75!black}
\newtcolorbox{codeBox}{enhanced jigsaw,breakable,pad at break*=1mm,colback=orange!5!white,colframe=orange!75!black}
\newtcolorbox{outputBox}{enhanced jigsaw,breakable,pad at break*=1mm,colback=gray!5!white,colframe=gray!75!black}
\newtcblisting{latexExample}{enhanced jigsaw,breakable,pad at break*=1mm,colback=orange!5!white,colframe=orange!75!black}
\newtcblisting{latexExampleSide}{listing side text,enhanced jigsaw,breakable,pad at break*=1mm,colback=orange!5!white,colframe=orange!75!black}

\newcommand{\mailto}[1]{\href{mailto:{#1}}{#1}}
\newcommand{\link}[2]{\href{#2}{#1}}