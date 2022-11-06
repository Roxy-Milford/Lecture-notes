%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%% Class for writing a book %%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% *********************************************************
% 					Ідентифікуємо клас
% *********************************************************
\ProvidesClass{ext_book}[2022/08/31 v2.1 Книга по лекційним записам (theorver)]
\NeedsTeXFormat{LaTeX2e} % потрібний формат який був там, звідки я все скатав


% *********************************************************
% 				Завантажуємо "батьківський клас"
% *********************************************************
\LoadClass[draft, 12pt]{report}


% *********************************************************
% 						Page configuration
% *********************************************************
% \RequirePackage[includehead, headsep=0pt, footskip=0pt, top=2cm, bottom=2cm, left=2.5cm, right=1.5cm]{geometry}
\usepackage{geometry}
\geometry{
	a4paper,  % a5: (148 x 210), a4: (21.0 x 29.7)
	total={160mm,257mm},
	left=25mm,
	top=20mm,
}

\frenchspacing  % for usual spasing
\raggedbottom % to disable extra spaces at the last page of chapter


% *********************************************************
% 					Завантажуємо пакети
% *********************************************************
\usepackage[T2A, T2A]{fontenc}
\usepackage[utf8]{inputenc}             % for cyrillic font
\usepackage[english, ukrainian]{babel}   % for Ukrainian language
\usepackage{amsmath}                    % for math
\usepackage{amssymb}                    % for math
\usepackage{amsthm}                     % for math
%\usepackage{biblatex}                   % for bibliografy
\usepackage{enumitem}                   % for beautiful enumeration
\usepackage{tikz}                       % for beautiful math images
\usetikzlibrary{patterns}				% for field figurs
%\usepackage{tkz-fct}  					% for function ploting
\usepackage{pgfplots}					% for function ploting
\pgfplotsset{compat = newest}			% use last version of {pgfplots}
\usepgfplotslibrary{polar}				% for polar system
\usepgfplotslibrary{fillbetween}
\usepackage{wrapfig} 					% for wrapping the text
\usepackage{calc}						% for using 
\usepackage[hidelinks]{hyperref}                   % for table of contents with references
\hypersetup{
	unicode=true,             % non-Latin characters in Acrobat’s bookmarks
}
\usepackage{mathtools}        % for text over \mapsto, to use write \xmapsto{text}

% *********************************************************
% 						Theorem styles
% *********************************************************
\newtheorem{theorem}{Теорема}[chapter]  							% Оточення теореми
\renewenvironment{proof}{\noindent$\blacktriangleright$~}{\begin{flushright} $\blacktriangleleft$ \end{flushright}}  	% [\qed] Оточення доведення v1
\newtheorem{claim}{\indent Твердження}[chapter]  					% Оточення твердження
\newtheorem{lemma}{\indent Лема}[chapter]  							% Оточення леми
\theoremstyle{definition}  											% Оточення визначення
\newtheorem{definition}{\indent Означення}[chapter]
\newtheorem{algorithm}{\indent Алгоритм}[chapter] 	 				% Оточення алгоритму
\newtheorem{problem}{\indent Задача}[chapter]  						% Оточення задачі
\newtheorem{example}{\indent Приклад:}[chapter]  					% Оточення прикладу
\newtheorem*{remark}{\indent Зауваження}							% Оточення зауваження
\newtheorem*{solution}{\indent \normalfont \textit{Розв'язання}}	% Оточення розвязку
\newtheorem{corollary}{\indent Наслідок}[theorem]							% Оточення наслідку


% *********************************************************
% 					Основные сведения
% *********************************************************
%\newcommand{\reportAuthor}{боженька}


% *********************************************************
%  						User commands
% *********************************************************
%\newcommand{\setfontsize}[1]{\fontsize{#1pt}{#1pt}\selectfont}  % команда для задавання розміру шрифта
%\DeclareRobustCommand{\divby}{% three vertical dots for a formulas where a can be divided by b without remainder from division: a \divby b
%  \mathrel{\text{\vbox{\baselineskip.65ex\lineskiplimit0pt\hbox{.}\hbox{.}\hbox{.}}}}%
%}
%\newcommand*{\xor}{\ensuremath \oplus}                              % \xor = (+)


% *********************************************************
%  					User math operators
% *********************************************************
%\DeclareMathOperator{\rang}{rang}
%\DeclareMathOperator{\Ker}{Ker}
%\DeclareMathOperator{\im}{Im}


% *********************************************************
% 					User environments
% *********************************************************
%\newenvironment{example}{}{}


% *********************************************************
% 						Table of contents
% *********************************************************
%\makeatletter
%\renewcommand{\l@section}{\@dottedtocline{1}{1.5em}{2.6em}}					% numbering sizes for section (15.13 xxx .....)
%\renewcommand{\l@subsection}{\@dottedtocline{2}{4.0em}{3.6em}}
%\renewcommand{\l@subsubsection}{\@dottedtocline{3}{7.4em}{4.5em}}
%\makeatother
%\hypersetup{pdfborder=0 0 0}												% removing red box around the link in table of contents




