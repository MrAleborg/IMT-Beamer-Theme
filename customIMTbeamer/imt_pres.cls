\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{imt_pres}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax
\LoadClass{beamer}
\usepackage[newPxFont,fullfooter,sectionpages]{customIMTbeamer/beamerthemeimt}
\usepackage[utf8]{inputenc}
\usepackage{pgfplots}
\pgfplotsset{compat=1.14}
\usepackage{cancel}
\usepackage{setspace}
\usepackage{blindtext}
% \usepackage{showframe}

%==========================
%= BACKGROUND OF TITLE PAGE
%==========================

\newcommand{\imttitlepage}{
\setbeamertemplate{headline}
{
  \vspace{2mm}
  \begin{minipage}[t][.17\paperheight]{\textwidth}
  \hspace{2mm}
  \includegraphics[height=.15\paperheight]{customIMTbeamer/logos/logo}\hfill
  \includegraphics[height=.15\paperheight]{customIMTbeamer/logos/logo2}\hfill
  \includegraphics[height=.15\paperheight]{customIMTbeamer/logos/logo3}\hfill
  \includegraphics[height=.15\paperheight]{customIMTbeamer/logos/logo4}\hspace{2mm}
  \end{minipage}
  \vspace{2mm}
  }
    
	\usebackgroundtemplate{
    	\begin{tikzpicture}[very thick,top color=white,bottom color=gray]
    	\fill[white] (0,0) rectangle (\paperwidth,\paperheight);
    	\fill[imtBlue] (0,0) rectangle (\paperwidth,.8\paperheight);
    	\fill[imtRed] (\paperwidth-.5\paperheight,.8\paperheight) -- (\paperwidth,.8\paperheight) -- (\paperwidth,.3\paperheight) -- cycle;
        \fill[white] (0,.8\paperheight) rectangle (\paperwidth,\paperheight);
    	\fill[color=imtDarkBlue] (\paperwidth-.5\paperheight,0) -- (\paperwidth,0) -- (\paperwidth,.5\paperheight) -- cycle;
    	\end{tikzpicture}
    }
    \removefootline
	\maketitle
    \usebackgroundtemplate{}
    \setbeamertemplate{headline}{} 
    \addfootline 
}

\newenvironment{imttoc}{
	\usebackgroundtemplate{
    	\begin{tikzpicture}[very thick,top color=white,bottom color=gray]
    	\fill[white] (0,0) rectangle (\paperwidth,\paperheight);
    	\fill[imtGrey] (0,0) -- (.7\paperheight,0) -- (0,.7\paperheight) -- cycle;
    	\fill[imtRed] (0,\paperheight) -- (.7\paperheight,\paperheight) -- (0,.3\paperheight) -- cycle;
        \node (A) at (2,.8\paperheight) {\usebeamerfont{title}\usebeamercolor[fg]{title page}OUTLINE};
    	\node [above right] (B) at (.25,2) {\includegraphics[height=1cm]{customIMTbeamer/logos/logo}};
    	\node [above right] (B) at (.25,1) {\includegraphics[height=1cm]{customIMTbeamer/logos/logo2}};
    	\node [above right] (B) at (.25,0) {\includegraphics[height=1cm]{customIMTbeamer/logos/logo4}\includegraphics[height=1cm]{customIMTbeamer/logos/logo3}};
    	\end{tikzpicture}
    }
    \addtolength{\headsep}{1.5em}
	\begin{frame}[plain,t,allowframebreaks]
    }
	{
    \end{frame}
    \addtolength{\headsep}{-1.5em}
    \usebackgroundtemplate{}
    }