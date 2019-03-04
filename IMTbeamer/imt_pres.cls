\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{imt_pres}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax
\LoadClass{beamer}
\usepackage[newPxFont,fullfooter,sectionpages]{IMTbeamer/beamerthemeimt}
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
    
	\usebackgroundtemplate{
    	\begin{tikzpicture}[very thick,top color=white,bottom color=gray]
    	\fill[imtBlue] (0,0) rectangle (\paperwidth,\paperheight);
    	\fill[color=imtDarkBlue] (\paperwidth-.6\paperheight,0) -- (\paperwidth,0) -- (\paperwidth,.6\paperheight) -- cycle;
    	\fill[imtRed] (\paperwidth-.75\paperheight,\paperheight) -- (\paperwidth,\paperheight) -- (\paperwidth,.2\paperheight) -- cycle;
        \fill[white] (0,.25\paperheight) -- (0,\paperheight) -- (.75\paperheight,\paperheight) -- cycle;
        \node [below right] (B) at (3ex,\paperheight-3ex) {\includegraphics[height=1.5cm]{IMTbeamer/logo_s}};
    	\end{tikzpicture}
    }
    \removefootline
	\maketitle
    \usebackgroundtemplate{}
    \addfootline 
}

\newenvironment{imttoc}{
	\usebackgroundtemplate{
    	\begin{tikzpicture}[very thick,top color=white,bottom color=gray]
    	\fill[white] (0,0) rectangle (\paperwidth,\paperheight);
    	\fill[imtGrey] (0,0) -- (.7\paperheight,0) -- (0,.7\paperheight) -- cycle;
    	\fill[imtRed] (0,\paperheight) -- (.7\paperheight,\paperheight) -- (0,.3\paperheight) -- cycle;
        \node [below right] (A) at (1,\textheight) {\usebeamerfont{title}\usebeamercolor[fg]{title page}OUTLINE};
    	\node [above right] (B) at (1,1) {\includegraphics[height=1cm]{IMTbeamer/logo_s}};
    	\end{tikzpicture}
    }
    \addtolength{\headsep}{1.5em}
	\begin{frame}[plain,t,allowframebreaks]}
	{\end{frame}
    \addtolength{\headsep}{-1.5em}
    \usebackgroundtemplate{}
    }