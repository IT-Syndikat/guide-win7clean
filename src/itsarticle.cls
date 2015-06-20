% vim: set filetype=tex :

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{itsarticle}[2015/06/02 ITS Article Class]
\LoadClass[10pt,a4paper,parskip=half,titlepage,xetex]{scrartcl}

% fixes
\usepackage{fixltx2e}
\usepackage{lmodern}

% font
\usepackage{cmbright}
\usepackage{fontspec}
    \setsansfont{Ubuntu Light}
    \setmonofont{DroidSansMono}[Scale=0.8]

% color
\usepackage{xcolor}
    \definecolor{uibkblue}{cmyk}{1.0, 0.6, 0.0, 0.56}
    \definecolor{uibkorange}{cmyk}{0.0, 0.5, 1.0, 0.0}

% page
\usepackage[cm,plain]{fullpage}

% math
\usepackage{amsmath}
\usepackage{amssymb}
    \let\emptyset\varnothing
\usepackage{mathtools}
    \mathtoolsset{centercolon}
\usepackage{amsthm}
    \newtheoremstyle{plain}{\topsep}{\topsep}{\normalfont}{10pt}{\bfseries}{\normalfont:}{5pt}{}
    \theoremstyle{plain}
    \newtheorem{theorem}{Theorem}[section]
    \newtheorem{corollary}[theorem]{Corollary}
    \newtheorem{notation}[theorem]{Notation}
    \newtheorem{definition}[theorem]{Definition}
    \renewcommand{\proofname}{Proof:}

% SI units
\usepackage[binary-units,per-mode=symbol]{siunitx}
    \sisetup{detect-all}

% keys and menus
\usepackage[os=win]{menukeys}
    \changemenuelement{hyphenatepathswithfolder}{sep}{/}
    \renewmenumacro{\directory}{hyphenatepathswithfolder}

% graphics
\usepackage{tikz}
\usepackage{graphicx}
    \graphicspath{{gfx/}}

% quote
\usepackage{mdframed}
    \newmdenv[
        topline=false,
        bottomline=false,
        rightline=false,
    ]{sidequote}
\renewenvironment{quote}
    {\begin{center}\begin{minipage}{0.95\textwidth}\begin{sidequote}}
    {\end{sidequote}\end{minipage}\end{center}}

% links
\usepackage{hyperref}
    \hypersetup{
        colorlinks      = true,
        citecolor       = uibkblue,
        citebordercolor = uibkblue,
        linkcolor       = uibkblue,
        linkbordercolor = uibkblue!40,
        urlcolor        = uibkblue,
        pdfstartview    = {XYZ null null null},
        pdfpagemode     = UseOutlines,
    }
    \renewcommand{\equationautorefname}{equation}
    \renewcommand{\figureautorefname}{figure}
    \renewcommand{\tableautorefname}{table}
    \urlstyle{same}
    \usepackage[all]{hypcap}

% PDFs
\usepackage{pdfpages}

% references
\usepackage{cleveref}
\usepackage[numbers]{natbib}
    \bibliographystyle{plainnat}

% additional symbols
\usepackage{MnSymbol}

% source code
\usepackage{listings}
    \lstset{
        basicstyle=\scriptsize\ttfamily,
        breaklines=true,
        breakindent=0pt,
        prebreak=\raisebox{0ex}[0ex][0ex]{\ensuremath{\lcurvearrowdown}},
        xleftmargin=0.05\linewidth,
        xrightmargin=0.05\linewidth,
    }
    \newcommand{\exec}[1]{\lstinputlisting{|#1}}

\usepackage{minted}
    \renewcommand{\theFancyVerbLine}{\sffamily{\tiny\arabic{FancyVerbLine}}}
    \renewcommand{\listingscaption}{\sffamily Listing}
    \renewcommand{\listoflistingscaption}{List of Listings}
    \newminted[code]{text}{fontsize=\scriptsize,frame=leftline,framesep=2mm,linenos}
    \newminted[plaincode]{text}{fontsize=\scriptsize,framesep=2mm}
    \newminted{c}{fontsize=\scriptsize,frame=leftline,framesep=2mm,linenos}

% tables
\let\@uibktoc\tableofcontents
\def\tableofcontents{
    \phantomsection
    \@uibktoc
}
\let\@uibktof\listoffigures
\def\listoffigures{
    \phantomsection
    \@uibktof
}
\let\@uibktot\listoftables
\def\listoftables{
    \phantomsection
    \@uibktot
}
\let\@uibktol\listoflistings
\def\listoflistings{
    \phantomsection
    \@uibktol
}
\let\@uibkbib\bibliography
\def\bibliography{
    \phantomsection
    \@uibkbib
}

% title
\usepackage{titling}
    \pretitle{
        \begin{center}
        \includegraphics[width=0.4\linewidth]{its_logo}\\
        \end{center}
        \vspace{40mm}
        \begin{flushright}
        \LARGE
    }
    \posttitle{
        \par\end{flushright}\vspace{10mm}
    }
    \preauthor{
        \begin{flushright}
        \vspace{20mm}
        \large\bf
    }
    \postauthor{
        \end{flushright}
    }
    \predate{
        \begin{flushright}\large
    }
    \postdate{
        \par\end{flushright}
    }

% fixes
\usepackage{scrhack}

% minted style
\usemintedstyle{tango}
