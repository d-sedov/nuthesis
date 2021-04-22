\NeedsTeXFormat{LaTeX2e}

% Define the NU Dissertation class
\ProvidesClass{nudissertation}[April 2021, Dmitry Sedov]

% Start with the standard book class
\LoadClass[12pt, letterpaper, intlimits, oneside]{book}

% Set 1-inch margins
\RequirePackage[margin=1in,includefoot,includehead,headheight=15pt]{geometry}

% Header/footer settings
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhead{}
\fancyhead[L]{\leftmark}
\fancyhead[C]{}
\fancyhead[R]{\thepage}
\fancyfoot[L,C,R]{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\RequirePackage{setspace} % Spacing 
\RequirePackage{titlesec} % Title formatting/spacing
\RequirePackage{tocbibind} % Add bibliography to Table of Contents
\RequirePackage[colorlinks=true,linkcolor=black,urlcolor=black,citecolor=black]{hyperref} % Links
\RequirePackage{natbib} % Bibliography
\RequirePackage{graphicx} % Graphics

% Personal details parameters definition:
% Degree, field, campus, graduation date
% Adapted from McCormick template:
% https://www.mccormick.northwestern.edu/applied-math/students/computing/latex.html
\def\degree#1{\gdef\@degree{#1}}
\def\field#1{\gdef\@field{#1}}
\def\campus#1{\def\@campus{#1}}
\def\graduationmonth#1{\def\@graduationmonth{#1}}
\def\graduationyear#1{\def\@graduationyear{#1}}
\def\@date{{\@graduationmonth} {\@graduationyear}}

% Chapter title format settings:
% \huge chapter label
% \Huge chapter title
% Reduced spaced from top page to title relative to default
% Adjust to needs, see package titlesec docs
\titleformat{\chapter}[display]
  {\normalsize\huge\bfseries}
  {\chaptertitlename\ \thechapter}{20pt}{\Huge}
\titlespacing*{\chapter}{0pt}{-50pt}{40pt}

% Rename table of contents 
\renewcommand{\contentsname}{Table of Contents}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% Title page formatting %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Adapted from McCormick template

\def\maketitle{\par
  %\@topnum\z@ % this prevents figures from falling at the top of page 1
\begin{titlepage}
\begin{center}

% School
NORTHWESTERN UNIVERSITY\par
\vfill

% Dissertation title line
{\@title}\par
\vfill

% Formal part
A DISSERTATION\par
\vspace{0.2125cm}
SUBMITTED TO THE GRADUATE SCHOOL\par
IN PARTIAL FULFILLMENT OF THE REQUIREMENTS\par
\vspace{1.0cm}
for the degree\par
\vspace{1.0cm}

% Degree line
\@degree\par
\vspace{0.5cm}

% Field line
Field of \@field\par
\vfill

% Author
By\par
\vspace{0.175cm}
\@author
\vfill

%Campus
\@campus\par
\vspace{0.25cm}

% Date
{\@date}

\end{center}
\end{titlepage}

% Increment the page counter
\stepcounter{page}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%% Copyright page formatting %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\makecopyright{
\begin{center}
\hspace{0pt}
\vfill
\copyright \ Copyright by {\@author} {\@graduationyear} \\
All Rights Reserved
\vfill
\hspace{0pt}
\end{center}
\newpage    
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% Abstract page formatting %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\abstract}[1]{
\section*{Abstract}
\label{abstract}
\addcontentsline{toc}{chapter}{\ref{abstract}{Abstract}}
#1
\newpage
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%% Acknowledgements page formatting %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\acknowledgements}[1]{
\section*{Acknowledgements}
\label{acknowledgements}
\addcontentsline{toc}{chapter}{\ref{acknowledgements}{Acknowledgements}}
#1 
\newpage
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% Preface page formatting %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\preface}[1]{
\section*{Preface}
\label{preface}
\addcontentsline{toc}{chapter}{\ref{preface}{Preface}}
#1
\newpage
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%