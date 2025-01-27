% Modified book class.
%
% Copyright 2004:
% Lance A. Endres
%
% Created:
% April 28, 2004
%
% Author:
% Lance A. Endres
%
% Notes:
%
% Any page numbers in parenthesis refer to:
% "A Guide to LaTeX", 3rd Edition
% by Helmut Kopka & Patrick W. Daly

\def\update{2004/04/28 v1.0}
\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{lebook}[\update\ Lance A. Endres]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}

% Section options.
\newcommand*{\sectionoptions}{}
\DeclareOption{useleftjustifiedchapterstyle}
{
	\renewcommand*{\sectionoptions}{useleftjustifiedchapterstyle}
}
\DeclareOption{usechapterstylenumberandname}
{
	\renewcommand*{\sectionoptions}{usechapterstylenumberandname}
}

\newcommand*{\contentsindexbiboptions}{chapterdottedleaders}
\DeclareOption{nobib}
{
	% Use expanded definition to expand the previous defintion first. Otherwise, it doesn't get
	% passed as an option correctly.
	\edef\contentsindexbiboptions{\contentsindexbiboptions,nobib}
}

\ProcessOptions

\LoadClass[12pt, titlepage, oneside, letterpaper]{book}

% SECTIONING COMMANDS.
\usepackage[\sectionoptions]{lesections}


% Used to calculated lengths.
\usepackage{calc}

% FONTS.
\usepackage{lefontsizes}

% CHANGE PREPROGRAMMED TEXT AND ADD SOME NEW (pg. 351)
\usepackage{lecaptions}

% SETUP THE PAGE SIZE AND MARGINS.
\usepackage{lepageformat}

% Single (1) or double (2) spaced.
\renewcommand*{\baselinestretch}{1}

% FLOATS
\usepackage{lefloats}
% Tweaks to the amount of space floats can occupy on a page.
%\textfraction       minimum fraction of page for text	0.2
%\topfraction        maximum fraction of page for floats at top	0.7
%\bottomfraction     maximum fraction of page for floats at bottom	0.3
%\floatpagefraction	 minimum fraction of floatpage that should have floats	0.5
\renewcommand{\textfraction}{0.05}
\renewcommand{\topfraction}{0.95}
\renewcommand{\bottomfraction}{0.95}
\renewcommand{\floatpagefraction}{0.85}


% TABLE OF CONTENTS, INDEX, AND BIBLIOGRAPHY.
%\usepackage[hrefbib]{lecontentsindexbibformat}
\usepackage[\contentsindexbiboptions]{lecontentsindexbibformat}

\tocbaselinestretch{1.0}
\bibbaselinestretch{1.0}
\lofbaselinestretch{1.0}
\lotbaselinestretch{1.0}
\idxbaselinestretch{1.0}

% PROVIDE STANDARD HEADERS AND FOOTERS.
\usepackage{leheadersandfooters}

% COMMANDS
\newcommand*{\printtitlepage}[4]
{
	\begin{titlepage}
		\begin{center}
%			\includegraphics[width=\textwidth]{hccheader}\\
			\vspace*{12pt}
			\Huge \bfseries
			#1 \\
			\vfill \Large \bfseries
			#2
			\vfill \large
			#3 \\
			#4\footnote{Last updated: \today}
		\end{center} \normalsize \mdseries
	\end{titlepage}
}
