% vim: set filetype=tex :

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{itsarticle}[2015/06/02 ITS Article Class]
\LoadClass[a4paper,parskip=half,titlepage]{scrartcl}

% fixes

\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{fixltx2e}
\RequirePackage{lmodern}
\RequirePackage{scrhack}
\RequirePackage{textcomp}

% page

\RequirePackage{anysize}

% math

\RequirePackage{amsmath}

\RequirePackage{amssymb}
    \let\emptyset\varnothing

\RequirePackage{amsthm}
    \newtheoremstyle{plain}
        {\topsep}                % abovespace
        {\topsep}                % belowspace
        {\itshape}               % bodyfont
        {0pt}                    % indent (empty value is the same as 0pt)
        {\bfseries}              % headfont
        {:}                      % headpunct
        {5pt plus 1pt minus 1pt} % headspace
        {}                       % custom-HEAD-SPEC
    \newtheoremstyle{definition}
        {\topsep}                % abovespace
        {\topsep}                % belowspace
        {\normalfont}            % bodyfont
        {0pt}                    % indent (empty value is the same as 0pt)
        {\bfseries}              % headfont
        {:}                      % headpunct
        {5pt plus 1pt minus 1pt} % headspace
        {}                       % custom-HEAD-SPEC
    \newtheoremstyle{remark}
        {0.5\topsep}             % abovespace
        {0.5\topsep}             % belowspace
        {\normalfont}            % bodyfont
        {0pt}                    % indent (empty value is the same as 0pt)
        {\itshape}               % headfont
        {:}                      % headpunct
        {5pt plus 1pt minus 1pt} % headspace
        {}                       % custom-HEAD-SPEC
    \theoremstyle{plain}
    \newtheorem{theorem}{Theorem}[section]
    \newtheorem{corollary}[theorem]{Corollary}
    \theoremstyle{definition}
    \newtheorem{notation}[theorem]{Notation}
    \let\definition\relax
    \newtheorem{definition}[theorem]{Definition}
    \theoremstyle{remark}
    \let\proof\relax
    \def\@endtheorem{\qed\endtrivlist\@endpefalse }
    \newtheorem*{proof}{Proof}

\RequirePackage{mathtools}

% SI units

\RequirePackage[binary-units,per-mode=symbol]{siunitx}
    \sisetup{
        detect-family,
        detect-weight,
        math-rm=\mathsf,
        text-rm=\sffamily,
    }

% keys and menus

\RequirePackage[os=win]{menukeys}
    \renewmenumacro{\directory}{pathswithfolder}

% graphics

\RequirePackage{tikz}
\RequirePackage{graphicx}
    \graphicspath{{gfx/}}

% color

\RequirePackage{xcolor}
    \definecolor{uibkblue}{cmyk}{1.0, 0.6, 0.0, 0.56}
    \definecolor{uibkorange}{cmyk}{0.0, 0.5, 1.0, 0.0}

% links

\RequirePackage{hyperref}
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
    \RequirePackage[all]{hypcap}

% PDFs

\RequirePackage{pdfpages}

% references

\RequirePackage{cleveref}

\RequirePackage[numbers]{natbib}
    \bibliographystyle{plainnat}

% source code

\RequirePackage{minted}
    \renewcommand{\listingscaption}{\sffamily Listing}
    \renewcommand{\listoflistingscaption}{List of Listings}
    \newminted{bash}{
    }
    \newminted{c}{
        fontsize=\tiny,
        frame=lines,
        framesep=2mm,
        linenos=true,
    }
    \newminted{python}{
        fontsize=\tiny,
        frame=lines,
        framesep=2mm,
        linenos=true,
    }
    \newminted{java}{
        fontsize=\tiny,
        frame=lines,
        framesep=2mm,
        linenos=true,
    }
    \newminted{xml}{
        fontsize=\tiny,
        frame=lines,
        framesep=2mm,
        linenos=true,
    }

% fonts

\RequirePackage[scaled]{helvet}
    \let\familydefault\sfdefault

\RequirePackage[defaultmono,scale=0.8]{droidmono}

\RequirePackage{sansmath}
    \sansmath

\newcommand*{\@uibkLarge}{\sffamily\mdseries\upshape\fontsize{12}{12}\selectfont}
\newcommand*{\@uibkLARGE}{\sffamily\mdseries\upshape\fontsize{16}{16}\selectfont}

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

\RequirePackage{titling}
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

% minted style

\usemintedstyle{tango}
