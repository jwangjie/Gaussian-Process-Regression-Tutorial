% OFFROAD-REPORT: Report class for Offroad Robotics
% Copyright (c) 2013, 2014, 2018 Joshua A. Marshall
% Originally created by Joshua A. Marshall on 11 July 2013

\LoadClass[12pt,letterpaper,fleqn,oneside]{article}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{offroad-report}[2013/07/11 OFFROAD-REPORT class by Joshua A. Marshall]

% Set up page geometry
\RequirePackage[letterpaper,margin=1.25in]{geometry}

% Set up page numbers and headers
\RequirePackage{fancyhdr,lastpage}

% Set up document fonts (Palatino is the offical Queen's font)
% Seee also http://www.queensu.ca/identity for more about Queen's visual standards
\RequirePackage{mathpazo}
\RequirePackage[scaled=0.85]{beramono}
\RequirePackage[T1]{fontenc}

% Set up some nice text spacing, for report readability
\newcommand{\spread}{1.15}
\linespread{\spread}

% Set up the section fonts
\RequirePackage{sectsty}
% \allsectionsfont{}

% Set the caption labeling font
\RequirePackage{caption}
\renewcommand{\captionlabelfont}{\bfseries}

% Load the graphics package for images
\RequirePackage{graphicx}

% Queen's official colors
\RequirePackage{color}
\definecolor{qred}{RGB}{157,25,57} % Primary color
\definecolor{qblue}{RGB}{17,51,93} % Primary color
\definecolor{qgold}{RGB}{238,189,49} % Secondary color
\definecolor{qcgray}{RGB}{104,102,99} % Goes with qred
\definecolor{qwgray}{RGB}{140,127,112} % Goes with qblue

% Define the basic page style for multipage documents
\fancypagestyle{plain}{%
    \fancyhf{}%
    \fancyfoot[C]{}%
    \fancyhead[R]{\bf\small\thepage}%
    \fancyhead[L]{\bf\small \@title}%
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}}

% Define the basic page style for single page documents
\fancypagestyle{empty}{%
    \fancyhf{}%
    \fancyfoot[C]{}%
    \fancyhead[R]{}%
    \fancyhead[L]{}%
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}}

% Set the PDF document settings
\RequirePackage{titling}
\RequirePackage[colorlinks]{hyperref}
\hypersetup{
    colorlinks=false,
    urlcolor=qred,
    pdfborder={0 0 0},
}

% Set up hyperlinks
\RequirePackage{url}
\url@rmstyle

% Customize the abstract
\newenvironment{qabstract}
{\subsubsection*{Abstract}\begin{small}}
{\end{small}}
