%%
%% This is file `eda_thesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% eda_thesis.dtx  (with options: `package')
%% 
%% Please consult the documentation provided by eda_thesis.pdf
%% 
%% If you have to make changes, do not edit eda_thesis.sty but make your
%% changes in eda_thesis.dtx. Do not forget to commit your changes to the
%% institute.
%% 

 \NeedsTeXFormat{LaTeX2e}
 \ProvidesClass{eda_thesis}[2010/09/22 v0.9 mce]


\newcommand{\edathesis@thesisname}{tbd Select thesis type}
\def\edathesis@topicIssued{}
\def\edathesis@submission{}
\def\edathesis@supervisor{}
\def\edathesis@profsupervisor{}
\def\edathesis@address{}
\def\edathesis@period{}
\newif\ifedathesis@outertitle
\edathesis@outertitlefalse
\newif\ifedathesis@twoside
\DeclareOption{msc}{
    \renewcommand{\edathesis@thesisname}{Master Thesis}
\renewcommand{\edathesis@profsupervisor}{N.N.}
\renewcommand{\edathesis@topicIssued}{??.??.????}
\renewcommand{\edathesis@submission}{??.??.????}
}
\DeclareOption{bsc}{
    \renewcommand{\edathesis@thesisname}{Bachelor Thesis}
\renewcommand{\edathesis@profsupervisor}{N.N.}
\renewcommand{\edathesis@topicIssued}{??.??.????}
\renewcommand{\edathesis@submission}{??.??.????}
}
\DeclareOption{da}{
    \renewcommand{\edathesis@thesisname}{Diplomarbeit}
\renewcommand{\edathesis@profsupervisor}{N.N.}
\renewcommand{\edathesis@topicIssued}{??.??.????}
\renewcommand{\edathesis@submission}{??.??.????}
}
\DeclareOption{stua}{
    \renewcommand{\edathesis@thesisname}{Studienarbeit}
\renewcommand{\edathesis@profsupervisor}{N.N.}
\renewcommand{\edathesis@topicIssued}{??.??.????}
\renewcommand{\edathesis@submission}{??.??.????}
}
\DeclareOption{ingp}{
    \renewcommand{\edathesis@thesisname}{Bericht zur Ingenieurpraxis}
\renewcommand{\edathesis@profsupervisor}{N.N.}
\renewcommand{\edathesis@period}{??.??.???? - ??.??.????}
}
\DeclareOption{fp}{
    \renewcommand{\edathesis@thesisname}{Bericht zur Forschungspraxis}
\renewcommand{\edathesis@profsupervisor}{N.N.}
\renewcommand{\edathesis@period}{??.??.???? - ??.??.????}
}
\DeclareOption{ints}{
    \renewcommand{\edathesis@thesisname}{Internship Report}
\renewcommand{\edathesis@period}{??.??.???? - ??.??.????}
}
\DeclareOption{outertitle}{
    \edathesis@outertitletrue
}
\DeclareOption{twoside}{
\edathesis@twosidetrue
}
\DeclareOption{oneside}{
\edathesis@twosidefalse
}
\DeclareOption*{%
    \ClassWarning{eda_thesis}{Unknown option `\CurrentOption'; Passing down to scrreprt}%
\PassOptionsToClass{\CurrentOption}{scrreprt}
}
\ExecuteOptions{twoside}
\ProcessOptions
\LoadClass[openright,abstracton,parskip,bibtotoc,pointednumbers,smallheadings,DIV13]{scrreprt}

\RequirePackage{tumcdTitlePage}
\pagestyle{headings}

\KOMAoptions{headinclude=true,fontsize=11pt}
\ifedathesis@twoside
\KOMAoptions{twoside=true}
\fi
\recalctypearea
\DeclareGraphicsRule{.fig.pdf}{pdf}{*}{}
\DeclareGraphicsRule{.svg.pdf}{pdf}{*}{}

\subtitle{\edathesis@thesisname}
\let\edathesis@tumcd@maketitle\maketitle
\renewcommand{\maketitle}{
    \ifedathesis@outertitle
        \edathesis@tumcd@maketitle
        \cleardoubleemptypage
    \fi
    \titletext{
\setcounter{page}{1}
        \vspace*{2cm}\\
        \hspace*{-2.5mm}\begin{tabular}{ll}
            \if\edathesis@supervisor\empty \else \tumcd@lang{Betreuer}{Supervisor}: & \edathesis@supervisor \\\fi
            \if\edathesis@profsupervisor\empty \else \tumcd@lang{Betreuender Hochschullehrer}{Supervising Professor}: & \edathesis@profsupervisor\\\fi
            \ifx\edathesis@topicIssued\empty \else \tumcd@lang{Ausgabe des Themas}{Topic issued}: &\edathesis@topicIssued\\\fi
            \ifx\edathesis@submission\empty \else  \tumcd@lang{Abgabedatum}{Date of submission}: &\edathesis@submission\\\fi
\ifx\edathesis@period\empty \else \tumcd@lang{Durchführungszeitraum}{Working period}: &\edathesis@period\\\fi
        \end{tabular}
        \vspace*{2cm}\\
\typeout{addr '\edathesis@address' empty '\empty'}
\if\edathesis@address\empty \else
        \noindent\tumcd@authors\\
        \noindent\edathesis@address\\[1cm]
\fi
    }
    \edathesis@tumcd@maketitle
    \cleardoubleemptypage
}
\newcommand{\issueDate}[3]{\renewcommand{\edathesis@topicIssued}{#1.#2.#3}}
\newcommand{\submissionDate}[3]{\renewcommand{\edathesis@submission}{#1.#2.#3}}
\newcommand{\supervisor}[2]{
    \renewcommand{\edathesis@supervisor}{#1}
    \renewcommand{\edathesis@profsupervisor}{#2}
}
\newcommand{\address}[1]{\renewcommand{\edathesis@address}{#1}}
\newcommand{\period}[1]{\renewcommand{\edathesis@period}{#1}}
  \AtBeginDocument{
\abovedisplayskip=16.5pt plus 3pt minus 6pt
\abovedisplayshortskip=11pt plus 3pt minus 6pt
\belowdisplayskip=16.5pt plus 3pt minus 6pt
\belowdisplayshortskip=16.5pt plus 3pt minus 6pt
  }
\endinput
%%
%% End of file `eda_thesis.cls'.
