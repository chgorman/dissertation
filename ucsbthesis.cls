% Christopher H. Gorman
% Initial Verions: 1 December 2017
%
% This class is designed to fulfill all of the requirements
% for the University of California, Santa Barbara
% dissertation requirements.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ucsbthesis}[2017/12/01 UCSB Thesis Class]

% Options
\DeclareOption{10pt}{
    \PassOptionsToClass{\CurrentOption}{book}
}
\DeclareOption{11pt}{
    \PassOptionsToClass{\CurrentOption}{book}
}
\DeclareOption{12pt}{
    \PassOptionsToClass{\CurrentOption}{book}
}
\DeclareOption{letterpaper}{
    \PassOptionsToPackage{\CurrentOption}{geometry}
}
\DeclareOption{a4paper}{
    \PassOptionsToPackage{\CurrentOption}{geometry}
}

\DeclareOption{proper}{
    \PassOptionsToClass{oneside}{book}
    \PassOptionsToPackage{top=1in,bottom=1in,left=1.25in,right=1in,
        footskip=0.25in}{geometry}
    \PassOptionsToPackage{doublespacing,nodisplayskipstretch}{setspace}
    \newif\ifproper
    \propertrue
}
\DeclareOption{pretty}{
    \PassOptionsToPackage{margin=1in,footskip=0.25in}{geometry}
    \PassOptionsToPackage{singlespacing}{setspace}
    \newif\ifproper
    \properfalse
}
\DeclareOption{boundcopy}{
    \PassOptionsToClass{twoside}{book}
    \PassOptionsToPackage{top=1in,bottom=1in,left=1.25in,right=1in,
        footskip=0.25in}{geometry}
    \PassOptionsToPackage{singlespacing}{setspace}
    \newif\ifproper
    \propertrue
}

\newif\ifprettymath
\prettymathfalse
\DeclareOption{prettymath}{
    \prettymathtrue
}

\newif\ifadvisors
\advisorsfalse
\DeclareOption{advisors}{
    % Use if there are two (co-)advisors
    \advisorstrue
}

\newif\ifmembersthree
\membersthreefalse
\DeclareOption{members3}{
    % Use if there are three committee members, not including advisor(s)
    \membersthreetrue
}

\newif\ifmembersfour
\membersfourfalse
\DeclareOption{members4}{
    % Use if there are four committee members, not including advisor(s)
    \membersfourtrue
}


% Option Fallback (Failure)
\DeclareOption*{
    \ClassWarning{ucsbthesis}{Unknown option '\CurrentOption'}
}

% Execute Default Options
\ExecuteOptions{12pt}
\ExecuteOptions{letterpaper}


% Process given options
\ProcessOptions\relax

% Load Base Class
\LoadClass{book}

% Required Packages
% 
% We only load the packages which are necessary

\RequirePackage{etoolbox}
\RequirePackage{fancyhdr}
\RequirePackage{geometry}
\RequirePackage{setspace}

% If there are Co-Advisors
\newtoggle{advisors}
\ifadvisors
    \toggletrue{advisors}
\else
    \togglefalse{advisors}
\fi

% If there are three committee members, not including advisor(s)
\newtoggle{members3}
\ifmembersthree
    \toggletrue{members3}
\else
    \togglefalse{members3}
\fi

% If there are four committee members, not including advisor(s)
\newtoggle{members4}
\ifmembersfour
    \toggletrue{members4}
\else
    \togglefalse{members4}
\fi

% Header and Footer information
\fancypagestyle{fancyfront}{
    % Header and footer information for front matter
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
    \cfoot{\thepage}
}

\fancypagestyle{fancymain}{
    % Header and footer information for front matter
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
    \cfoot{\thepage}
}

\fancypagestyle{fancyback}{
    % Header and footer information for front matter
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
    \cfoot{\thepage}
}

% Commands
\newcommand{\degreeobjective}[3]{\gdef\@degreename{#1}
                                  \gdef\@degreethesisname{#2}
                                  \gdef\@major{#3}}

\iftoggle{advisors}{
    \newcommand{\advisorA}[2]{\gdef\@advisorAname{#1}
                              \gdef\@advisorAtitle{#2}}
    \newcommand{\advisorB}[2]{\gdef\@advisorBname{#1}
                              \gdef\@advisorBtitle{#2}}
}{
    \newcommand{\advisor}[2]{\gdef\@advisorname{#1}
                              \gdef\@advisortitle{#2}}
}

\newcommand{\committeeA}[2]{\gdef\@committeeAname{#1}
                             \gdef\@committeeAtitle{#2}}
\newcommand{\committeeB}[2]{\gdef\@committeeBname{#1}
                             \gdef\@committeeBtitle{#2}}

\iftoggle{members3}{
    \newcommand{\committeeC}[2]{\gdef\@committeeCname{#1}
                                 \gdef\@committeeCtitle{#2}}
    \iftoggle{members4}{
        \newcommand{\committeeD}[2]{\gdef\@committeeDname{#1}
                                     \gdef\@committeeDtitle{#2}}
    }{
    }
}{
}

\newcommand{\graduationdate}[2]{
    \gdef\@gradmonth{#1}
    \gdef\@gradyear{#2}}
\newcommand{\committeesignsdate}[2]{
    \gdef\@signmonth{#1}
    \gdef\@signyear{#2}}
\newcommand{\dedication}[1]{
    \gdef\@dedication{#1}}
\newcommand{\acknowledgements}[1]{
    \gdef\@acknowledgements{#1}}
\newcommand{\cv}[1]{
    \gdef\@cv{#1}}
\newcommand{\abstract}[1]{
    \gdef\@abstract{#1}}

% Make the title page
\renewcommand{\maketitle}{
    \thispagestyle{empty}
    \null
    \vfill
    {
        \doublespacing
        \begin{center}
        University of California \\ Santa Barbara \\
        \vspace{0.35in}
        \textbf{\Large \@title} \\
        \vspace{0.35in}
        A \MakeLowercase{\@degreethesisname} submitted in partial satisfaction\\
        of the requirements for the degree \\ 
        \@degreename \\ in \\ \@major \\ by \\ \@author
        \end{center}
        \vspace{0.35in}
        Committee in charge: \\
        \iftoggle{advisors}{
            \indent \indent {\@advisorAtitle}~{\@advisorAname}, Co-Chair \\
            \indent \indent {\@advisorBtitle}~{\@advisorBname}, Co-Chair \\
        }{
            \indent \indent {\@advisortitle}~{\@advisorname}, Chair \\
        }
        \indent \indent {\@committeeAtitle}~\@committeeAname \\
        \indent \indent {\@committeeBtitle}~\@committeeBname \\
        \iftoggle{members3}{
            \indent \indent {\@committeeCtitle}~\@committeeCname \\
            \iftoggle{members4}{
                \indent \indent {\@committeeDtitle}~\@committeeDname \\
            }{
            }
        }{
        }
        \begin{center} {\@gradmonth}~{\@gradyear} \end{center}
    }
    \vfill
    \clearpage
}

% Make the signature page
\newcommand{\makesignature}{
    \thispagestyle{empty}
    \null
    \vfill
    \vspace*{\fill}
    {
        \doublespacing
        \begin{center}
        The \MakeLowercase{\@degreethesisname} of {\@author} is approved. \\
        \vspace{0.65in}
        \rule{3.5in}{0.4pt} \\
        {\@committeeAtitle} \@committeeAname \\
        \vspace{0.65in}
        \rule{3.5in}{0.4pt} \\
        {\@committeeBtitle} \@committeeBname \\
        \iftoggle{members3}{
            \vspace{0.65in}
            \rule{3.5in}{0.4pt} \\
            {\@committeeCtitle} \@committeeCname \\
            \iftoggle{members4}{
                \vspace{0.65in}
                \rule{3.5in}{0.4pt} \\
                {\@committeeDtitle} \@committeeDname \\
            }{
            }
        }{
        }
        \iftoggle{advisors}{
            \vspace{0.65in}
            \rule{3.5in}{0.4pt} \\
            {\@advisorAtitle} {\@advisorAname}, Co-Chair \\
            \vspace{0.65in}
            \rule{3.5in}{0.4pt} \\
            {\@advisorBtitle} {\@advisorBname}, Co-Chair \\
        }{
            \vspace{0.65in}
            \rule{3.5in}{0.4pt} \\
            {\@advisortitle} {\@advisorname}, Chair \\
        }
        \vspace{1in}
        {\@signmonth}~{\@signyear}
        \end{center}
    }
    \vfill
    \null
    \newpage
}

% Make the copyright page
\newcommand{\makecopyright}{
    % This will need to be fixed
    \null
    \vspace{0.75in}
    {\doublespacing
    \begin{center}
    {\@title} \\
    \vspace{0.75in}
    Copyright {\textcopyright} {\@gradyear} \\
    by \\
    \@author
    \end{center}
    }
    \vfill
    \null
    \newpage
}

% Make the dedication page
\newcommand{\makededication}{
    % This will need to be fixed
    \null
    {\@dedication}
    \null
    \clearpage
}

% Make the acknowledgements page
\newcommand{\makeacknowledgements}{
    % This will need to be fixed
    \null
    \begin{center}
    \textbf{\large Acknowledgements}
    \end{center}
    {\@acknowledgements}
    \vfill
    \clearpage
}

% Make the CV page
\newcommand{\makecv}{
    % This will need to be fixed
    \null
    {\@cv}
    \vfill
    \clearpage
}

% Make the Abstract
\newcommand{\makeabstract}{
    % This will need to be fixed
    \null
    {\doublespacing
    \begin{center}
    \textbf{Abstract} \\
    \vspace{1cm}
    {\@title} \\ by \\ {\@author} \\
    \end{center}
    }
    {\@abstract}
    \vfill
    \clearpage
}

% Fix frontmatter, mainmatter, and backmatter
\renewcommand{\frontmatter}{
    \clearpage
    \pagenumbering{roman}
    \pagestyle{fancyfront}
}
\renewcommand{\mainmatter}{
    \clearpage
    \pagenumbering{arabic}
    \pagestyle{fancymain}
}
\renewcommand{\backmatter}{
    \clearpage
    \pagestyle{fancyback}
}

% This looks good for right now but I have not checked to see
% if it breaks \[ \] or \( \) or anything like that.
% I should also add gather and gather* environments just because I can.

\ifprettymath
    \BeforeBeginEnvironment{equation}{\begin{singlespace}}
    \AfterEndEnvironment{equation}{\end{singlespace}\noindent\ignorespaces}
    \BeforeBeginEnvironment{equation*}{\begin{singlespace}}
    \AfterEndEnvironment{equation*}{\end{singlespace}\noindent\ignorespaces}
    \BeforeBeginEnvironment{align}{\begin{singlespace}}
    \AfterEndEnvironment{align}{\end{singlespace}\noindent\ignorespaces}
    \BeforeBeginEnvironment{align*}{\begin{singlespace}}
    \AfterEndEnvironment{align*}{\end{singlespace}\noindent\ignorespaces}
    \BeforeBeginEnvironment{gather}{\begin{singlespace}}
    \AfterEndEnvironment{gather}{\end{singlespace}\noindent\ignorespaces}
    \BeforeBeginEnvironment{gather*}{\begin{singlespace}}
    \AfterEndEnvironment{gather*}{\end{singlespace}\noindent\ignorespaces}
\fi


\endinput
