\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_cv}[07/16/2017 My custom CV class]
\LoadClass{article}
\RequirePackage{titlesec}
\RequirePackage{geometry}
\RequirePackage{tabu}
\RequirePackage{relsize}
\RequirePackage{color}
\usepackage[sfdefault]{roboto}

\definecolor{light-gray}{RGB}{75, 75, 75}
\definecolor{gray}{RGB}{50, 50, 50}

\pagenumbering{gobble}
\titleformat{\section}    
       {\Large\scshape}{}{0em}{}[\titlerule]

%Customize Subsections
\titleformat{\subsection}
     {\large\scshape}{}{0em}{}{}


\newenvironment{wideitemize}{
\begin{list}{\labelitemi}{\leftmargin=2.5em}
\normalsize
\color{gray}
\setlength{\itemsep}{1pt}
}{\end{list}
}


\renewcommand\labelitemi{\small$\bullet$}
%Customize Date takes in two argument, Title and date
\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}% %hfill pushes it all the way to the right
}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill \small{\it{#2}}}%
}


%Customize Name
\newcommand{\name}[1]{
  \centerline{\scshape\Huge{#1}}
}

%Contact
\newcommand{\contact}[5]{
    \small{\centerline{\textcolor{light-gray}{#1 #2}}}
    \small{\centerline{#3 \small$\bullet$ #4 \small$\bullet$ #5}}
}

%set margin
 \geometry{
 a4paper,
 total={180mm,257mm},
 left=13mm,
 top=15mm,
 }
 
 %Education section
 \newcommand{\education}[4]{   
  \begin{tabu} to 1.0\textwidth { X[l]  X[l]  X[r]  }
     \large{\textbf{#1}} & \qquad#2 & \small{\textit{#3}} \\
   		& \qquad#4 &\\ 
  \end{tabu}


 }
 
 \newcommand{\subsectionWDes}[3]{
     $\enspace${\large{\textbf{#1}}} - \small{\scshape{#2}} \hfill \textit{#3}
 }
 
 \newcommand{\skills}[6]{   
  \begin{tabular}{ m{2.5cm} m{15cm} }
     \raggedleft{\large{\textbf{#1}}}: & \textcolor{gray}{\normalsize{#2}} \\
     \raggedleft{\large{\textbf{#3}}}: & \textcolor{gray}{\normalsize{#4}} \\
     \raggedleft{\large{\textbf{#5}}}: & \textcolor{gray}{\normalsize{#6}} \\
  \end{tabular}
 }
 
 \newcommand{\coursework}[9]{
 {\color{gray}{\normalsize{
  \begin{tabular}{ m{4cm} m{6cm} m{7cm} }
     	{\large$\cdot$} #1 & {\large$\cdot$} #2 & {\large$\cdot$} #3 \\
     	{\large$\cdot$} #4 & {\large$\cdot$} #5 & {\large$\cdot$} #6 \\
     	{\large$\cdot$} #7 & {\large$\cdot$} #8 & {\large$\cdot$} #9 \\
  \end{tabular}
  }}}
 }
 
 