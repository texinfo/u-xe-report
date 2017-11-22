%!tex program=xelatex
%!tex root=main.tex
%%
%%
%%  This is file `u-xe-report.cls',
%%  A XePersian, U class for Academic Report.
%%
%%  Author: Omid Ghayour (texinfo@gmail.com)
%%  With contributions:
%%  David Carlisle ()
%%  E Grec  
%%  __________________________________
%%  
%%  Copyright © 2011-2016 Omid Ghayour
%%  http://xrad.ir 
%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{u-xe-report}
              [2015/04/10 v2.1 u-xe report class for projects/theses/dissertations with default settings]
%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@altchapteropted \@altchapteroptedfalse
\newif\if@alternative \@alternativefalse
\newif\if@amiriopted \@amirioptedfalse
\newif\if@anydegree \@anydegreefalse
\newif\if@authorisomidghayour \@authorisomidghayourfalse
\newif\if@bachelor \@bachelorfalse
\newif\if@badgeoopted \@badgeooptedfalse
\newif\if@bfontsopted \@bfontsoptedfalse
\newif\if@bookcut \@bookcutfalse
\newif\if@defaulttitles \@defaulttitlesfalse
\newif\if@doctorate \@doctoratefalse
\newif\if@douopted \@douoptedfalse
\newif\if@eulervmopted \@eulervmoptedfalse
\newif\if@fehresttcopcavad \@fehresttcopcavadfalse
\newif\if@fourieropted \@fourieroptedfalse
\newif\if@fourierncopted \@fourierncoptedfalse
\newif\if@furmhotcopcavad \@furmhotcopcavadfalse
\newif\if@indexopted \@indexoptedfalse
\newif\if@lalezarchapteropted \@lalezarchapteroptedfalse
\newif\if@listpersonsopted \@listpersonsoptedfalse
\newif\if@manydegree \@manydegreefalse
\newif\if@mathpazoopted \@mathpazooptedfalse
\newif\if@mathppleopted \@mathppleoptedfalse
\newif\if@mathptmxopted \@mathptmxoptedfalse
\newif\if@mathsubjclassfound \@mathsubjclassfoundfalse
\newif\if@matntcopcavad \@matntcopcavadtrue
\newif\if@master \@masterfalse
\newif\if@nastaliqchapteropted \@nastaliqchapteroptedfalse
\newif\if@ncopted \@ncoptedfalse
\newif\if@nofontsopted \@nofontsoptedfalse
\newif\if@powerpointmodeopted \@powerpointmodeoptedfalse
\newif\if@qiopted \@qioptedfalse
\newif\if@showtutorialintoc \@showtutorialintocfalse
\newif\if@simplereport \@simplereporttrue
\newif\if@soyertcopcavad \@soyertcopcavadfalse
\newif\if@timesopted \@timesoptedfalse
\newif\if@titlebeprinted \@titlebeprintedfalse
\newif\if@unicodemathopted
\newif\if@unvontcopcavad \@unvontcopcavadfalse
\newif\if@vojenomeopted \@vojenomeoptedfalse
\newif\if@wideopted \@wideoptedfalse
\newif\if@zarchapteropted \@zarchapteroptedfalse
	
\newif\if@taqdimiyedorad \@taqdimiyedoradfalse
\newif\if@picguftordorad \@picguftordoradfalse
\newif\if@seposguzoridorad \@seposguzoridoradfalse
\newif\if@muqaddamedorad \@muqaddamedoradfalse

\newif\if@topartify \@topartifyfalse






\newcommand\@sarguzorec{گزارش}%
\newcommand\@reporthead{Report}%
\newcommand\@tahguzorec{~}%
\newcommand\@reporttail{~}%
\newcommand\@unvonemadrak{~}%
\newcommand\@degreetitle{~}%
\newcommand\@dar{~}%
\newcommand\@in{~}%
\newcommand\@rectegeroyec{~}%
\newcommand\@subjectfield{~}%
\newcommand\@pajwhecgar{پژوهشگر}%
\newcommand\@by{By:}

\DeclareOption{alt}{\@alternativetrue}
\DeclareOption{altchapter}{\@altchapteroptedtrue}
\DeclareOption{amiri}{\@amirioptedtrue}
\DeclareOption{badgeo}{\@badgeooptedtrue}
\DeclareOption{bfonts}{\@bfontsoptedtrue}
\DeclareOption{bookcut}{\@bookcuttrue}
\DeclareOption{defaults}{\@defaulttitlestrue}
\DeclareOption{dou}{\@douoptedtrue}
\DeclareOption{eulervm}{\@eulervmoptedtrue}
\DeclareOption{fourier}{\@fourieroptedtrue}
\DeclareOption{index}{\@indexoptedtrue}
\DeclareOption{lalezarchapter}{\@lalezarchapteroptedtrue}
\DeclareOption{listpersons}{\@listpersonsoptedtrue}
\DeclareOption{mathpazo}{\@mathpazooptedtrue}
\DeclareOption{mathpple}{\@mathppleoptedtrue}
\DeclareOption{mathptmx}{\@mathptmxoptedtrue}
\DeclareOption{nastaliqchapter}{\@nastaliqchapteroptedtrue}
\DeclareOption{nc}{\@ncoptedtrue}
\DeclareOption{nofonts}{\@nofontsoptedtrue}
\DeclareOption{omidghayour}{\@authorisomidghayourtrue}
\DeclareOption{powerpointmode}{\@powerpointmodeoptedtrue\@alternativetrue}
\DeclareOption{showtutorialintoc}{\@showtutorialintoctrue}
\DeclareOption{times}{\@timesoptedtrue}
\DeclareOption{unicode-math}{\@unicodemathoptedtrue}
\DeclareOption{vojenome}{\@vojenomeoptedtrue}
\DeclareOption{wide}{\@wideoptedtrue\@powerpointmodeoptedtrue\@alternativetrue}
\DeclareOption{zarchapter}{\@zarchapteroptedtrue}

\DeclareOption{qi}{%
	\@qioptedtrue
	\write18{xindy -L persian-variant2 -C utf8 -M texindy  -o \jobname.fed \jobname.fex}
	\write18{xindy -L english -C utf8 -M texindy  -o \jobname.efd \jobname.efx}
	\write18{xindy -L english -C utf8 -M texindy  -o \jobname.lpd \jobname.lpx}
	\write18{xindy -L persian-variant2 -C utf8 -M texindy  -o \jobname.fpd \jobname.fpx}
	\write18{xindy -L persian-variant2 -C utf8 -M texindy  -o \jobname.ind \jobname.idx}
}

\DeclareOption{bachelor}{%
\@bachelortrue\@simplereportfalse\@anydegreetrue
	\renewcommand\@sarguzorec{پروژه}
	\renewcommand\@reporthead{Bachelor's}%
	\renewcommand\@tahguzorec{~}
	\renewcommand\@reporttail{~}
	\renewcommand\@unvonemadrak{کارشناسی}
	\renewcommand\@degreetitle{Project}%
	\renewcommand\@dar{~}
	\renewcommand\@in{subject:}%
	\renewcommand\@rectegeroyec{\@recte}%
	\renewcommand\@subjectfield{\@subject}%
}

\DeclareOption{master}{%
	\@mastertrue\@simplereportfalse%
	\if@anydegree
		\@manydegreetrue%
	\else
		\@anydegreetrue%
		\renewcommand\@sarguzorec{پایان‌نامه‌ی}%
		\renewcommand\@reporthead{The Thesis}%
		\renewcommand\@tahguzorec{نوشته‌شده به عنوان بخشی از ملزومات دریافت مدرک}%
		\renewcommand\@reporttail{written in partial satisfaction for the degree of}
		\renewcommand\@unvonemadrak{کارشناسی‌ارشد}%
		\renewcommand\@degreetitle{Master of Science}%
		\renewcommand\@dar{رشته‌ی}%
		\renewcommand\@in{subject:}%
		\renewcommand\@rectegeroyec{\@recte، گرایش \@geroyec}%
		\renewcommand\@subjectfield{\@subject\ (\@field)}%
	\fi%
}

\DeclareOption{doctorate}{%
	\@doctoratetrue\@simplereportfalse%
	\if@anydegree
		\@manydegreetrue%
	\else
		\@anydegreetrue%
		\renewcommand\@sarguzorec{رساله‌ی}%
		\renewcommand\@reporthead{The Dissertation}%
		\renewcommand\@tahguzorec{ارسال‌شده به عنوان بخشی از ملزومات دریافت درجه‌ی}%
		\renewcommand\@reporttail{submitted as a partial fulfilment of the requirements for the degree of}%
		\renewcommand\@unvonemadrak{دکتری}%
		\renewcommand\@degreetitle{Doctor of Philosophy}%
		\renewcommand\@dar{در رشته‌ی}%
		\renewcommand\@in{in}%
		\renewcommand\@rectegeroyec{\@recte}%
		\renewcommand\@subjectfield{\@subject}%
	\fi%
}
\if@manydegree
	\@bachelorfalse\@masterfalse\@doctoratefalse%
	\@simplereporttrue%
	\renewcommand\@sarguzorec{گزارش}%
	\renewcommand\@reporthead{Report}%
	\renewcommand\@tahguzorec{~}%
	\renewcommand\@reporttail{~}%
	\renewcommand\@unvonemadrak{~}%
	\renewcommand\@degreetitle{~}%
	\renewcommand\@dar{~}%
	\renewcommand\@in{~}%
	\renewcommand\@rectegeroyec{~}%
	\renewcommand\@subjectfield{~}%
	\ClassError{\@classname}{Options bachelor, master, and doctorate, could not be selected in the sametime.}%
\fi

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions

\if@alternative
	\LoadClass[openany,12pt]{book}
	\if@powerpointmodeopted
		\RequirePackage
		[paperheight=105mm,paperwidth=\if@wideopted 168mm\else 140mm\fi,margin=5mm,top=8mm,left=10mm,right=10mm, 				headsep=2.75mm]{geometry}
	\else
		\RequirePackage[paperheight=224mm,paperwidth=140mm,margin=16mm]{geometry}
	\fi
	\def\@titlewidth{114mm}
	\RequirePackage[colorlinks]{hyperref}\newcommand{\ensurehref}[2]{\href{#1}{#2}}
\else
	\if@bookcut
		\LoadClass{book}
		\RequirePackage{geometry}
		\geometry{includeall, showcrop, 
		%reversemarginpar, %remove if wanted
		paperwidth=210mm, paperheight=297mm,
		layoutwidth=180mm, layoutheight  =252mm,
		layoutvoffset=30mm, layouthoffset=15mm,	
		%lines=10, 
		head=4.5mm, headsep=6.75mm, foot=9.25mm,
		nomarginpar, %marginpar=25mm, marginparsep=7mm, 
		margin=8.5mm, outer=17mm,
		 bindingoffset=22.5mm}
		\def\url#1{}
		\def\@titlewidth{129mm}
	\else
		\if@badgeoopted
			\LoadClass[12pt]{book}
			\RequirePackage[a4paper,top=40mm, bottom=40mm, left=25mm, right=35mm]{geometry}
			\baselineskip=1cm
			\def\url#1{}
			\def\@titlewidth{.8\textwidth}
		\else
			\if@douopted
				\LoadClass[twocolumn]{book}
				\RequirePackage[a4paper, margin=15mm, top=20mm, left=10mm, right=20mm]{geometry}
				\def\url#1{}
				\def\@titlewidth{129mm}
			\else
				\LoadClass{book}
				\RequirePackage[a4paper,margin=21.21mm, right=45.6mm]{geometry}
				\def\url#1{}
				\def\@titlewidth{129mm}
			\fi
		\fi
	\fi
	\def\ensurehref#1{}
\fi

\RequirePackage{tabularx}
\RequirePackage{titlesec}
% to change titles font family
\RequirePackage{titling}
%\usepackage{fontspec}
%\newfontinstance\headingfont[]{Amiri}
\titleformat{\chapter}[display]
  {\huge\amiri}{\chaptertitlename\ \thechapter}{20pt}{\Huge}

\RequirePackage{refcount}

\if@fourieropted{\RequirePackage{fourier}}\fi
\if@fourierncopted{\RequirePackage{fouriernc}}\fi
\if@timesopted{\RequirePackage{times}}\fi
\if@mathptmxopted{\RequirePackage{mathptmx}}\fi
\if@mathpazoopted{\RequirePackage{mathpazo}}\fi
\if@mathppleopted{\RequirePackage{mathpple}}\fi
\if@eulervmopted{\RequirePackage{eulervm}}\fi


\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{amsmath}
%\if@unicodemathopted{\usepackage{unicode-math}\setmathfont{xits-math.otf}}\fi
\RequirePackage{graphicx}
\RequirePackage{framed} 
%\RequirePackage{lastpage}
\RequirePackage{fancyhdr}
%\RequirePackage[farsi]{babel}
%\RequirePackage{varioref}
%\RequirePackage[margin]{fancyref}
%\RequirePackage[nottoc]{tocbibind}
\RequirePackage{makeidx}

\RequirePackage{alltt}
\newenvironment{code}%
{~\\[-9mm]\begin{latin}\begin{alltt}\ignorespaces}%
{\end{alltt}~\\[-19mm]\end{latin}}
\newcommand\tab{\phantom{{123}}}
\newcommand\ttab{\tab\tab}
\newcommand\tttab{\tab\tab\tab}
\newcommand\ttttab{\ttab\ttab}

%\RequirePackage{listings}
%\lstset{basicstyle=\small\ttfamily,numbers=left,
%numberstyle=\footnotesize\ttfamily,frame=single,
%tabsize=4, escapeinside={\%*}{*)} }

\RequirePackage{quotchap}
%\RequirePackage[Bjornstrup]{fncychap}
%\ChTitleVar{\kostumchaptitlefont}

\RequirePackage{environ}
\RequirePackage{algorithm2e}
%\if@vojenomeopted{
%\RequirePackage[xindy={language=persian-variant2,codepage=utf8}]{glossaries}
%\newglossary[elg]{english}{els}{elo}{\rl{واژه‌نامه‌ی انگلیسی به فارسی}}
%\newglossary[flg]{farsi}{fls}{flo}{واژه‌نامه فارسی به انگلیسی}
%\newcounter{uxeglossaryentrycounter}
%\newcommand*{\newword}[2]{%
%\addtocounter{uxeglossaryentrycounter}{1}
%   \newglossaryentry{en-\theuxeglossaryentrycounter}{type=english,name={#1},description={#2}}%
%   \newglossaryentry{fa-\theuxeglossaryentrycounter}{type=farsi,name={#2},description={#1}}%
%\gls{fa-\theuxeglossaryentrycounter}\LTRfootnote{\gls{en-\theuxeglossaryentrycounter}}}
%}\fi

\if@alternative\definecolor{shadecolor}{rgb}{0.96, 0.98, 1}\else\definecolor{shadecolor}{rgb}{0.98, 0.98, 0.98}\fi
\if@powerpointmodeopted\definecolor{shadecolor}{rgb}{0.96, 0.98, 1}\else\definecolor{shadecolor}{rgb}{0.98, 0.98, 0.98}\fi
\newcounter{cumoremaxsws}


\NewEnviron{maxsws}[1][]{%
	\addtocounter{cumoremaxsws}{1}
	\begin{shaded}%
		\noindent%
		{\bf \maxswsname\ \thecumoremaxsws :\quad #1}%
		\if@showtutorialintoc
			\addcontentsline
			{toc}{subsection}
			{
				{\emph{\maxswsname\ \thecumoremaxsws}
			}.\quad #1}
		\fi%
		\bigskip\par\noindent\ignorespaces\if@alternative\definecolor{shadecolor}{rgb}{0.92, 0.96, 1}\else\definecolor{shadecolor}{rgb}{0.96, 0.96, 0.96}\fi
		\BODY
	\end{shaded}%
}
\def\maxswsname{خودآموز}
\NewEnviron{djavob}[1][]{%
	\begin{center}
		\begin{minipage}{.8\textwidth}
			\begin{shaded}%
				\noindent%
				{\bf{\djavobname}: \quad #1}
				\smallskip\par\noindent\ignorespaces\definecolor{shadecolor}{rgb}{0.98 ,0.98, 0.98}
				\BODY
			\end{shaded}%
		\end{minipage}%
	\end{center}%
}
\def\djavobname{پاسخ}

\newcommand\aemph[1]{$\overline{\text{#1}}$}

\RequirePackage{titlesec}
\RequirePackage{tikz}
\RequirePackage{listings}
%%%%%%%%%%%%%%%%%%%%%%% XeLPersian is going to be used !!!! remeber it shoud be almost the last to be used! 
%\if@qiopted
%	\RequirePackage [quickindex-variant1]{xepersian}
%\else
	\RequirePackage[localise]{xepersian}
	\let\newfontinstance=\newfontfamily 
%\fi

\if@powerpointmodeopted
\settextfont[Language=Default,Scale=1.315]{Myriad Arabic}
\else
\settextfont[Language=Default,Scale=1.095,ItalicFeatures={FakeSlant=-.41667},BoldItalicFeatures={FakeSlant=-.41667}]{XB Niloofar}
\fi
\setpersiansansfont[Language=Default,Scale=.913]{IRANSans}
\setpersianmonofont[Language=Default,Scale=.833]{Kawkab Mono}
\if@timesopted
	\setlatintextfont[Language=Default,Scale]{TeX Gyre Termes}
	\setlatinsansfont[Language=Default,Scale]{TeX Gyre Heros}
	\setlatinmonofont[Language=Default,Scale]{TeX Gyre Cursor}
\fi
\if@ncopted
	\setlatintextfont[Language=Default,Scale]{TeX Gyre Schola}
	\setlatinsansfont[Language=Default,Scale]{TeX Gyre Adventor}
	\setlatinmonofont[Language=Default,Scale]{TeX Gyre Cursor}
\fi
\defpersianfont\xtrafik[Language=Default,Scale=1.095]{XM Traffic}
\defpersianfont\xzar[Language=Default,Scale=1.095]{XB Zar}
\defpersianfont\xtitr[Language=Default,Scale=1.095]{XB Titre}
\defpersianfont\xroya[Language=Default,Scale=1.095]{XB Roya}
\if@bfontsopted
	\defpersianfont\btrafik[Language=Default,Scale=1.44]{B Traffic}
	\defpersianfont\bzar[Language=Default,Scale=1.44]{B Zar}
	\defpersianfont\btitr[Language=Default,Scale=1.44]{B Titr}
	\vdefpersianfont\broya[Language=Default,Scale=1.44]{B Roya}
	\defpersianfont\bmitra[Language=Default,Scale=1.44]{B Mitra}
	\defpersianfont\bkoodak[Language=Default,Scale=1.44]{B Koodak}
\fi
\if@nofontsopted
	\defpersianfont\trafik[Language=Default,Scale=1.095]{XB Niloofar}
	\defpersianfont\zar[Language=Default,Scale=1.095]{XB Niloofar}
	\defpersianfont\titr[Language=Default,Scale=1.095]{XB Niloofar}
	\defpersianfont\roya[Language=Default,Scale=1.095]{XB Niloofar}
	\defpersianfont\mitra[Language=Default,Scale=1.095]{XB Niloofar}
	\defpersianfont\koodak[Language=Default,Scale=1.095]{XB Niloofar}
\else
	\defpersianfont\trafik[Language=Default,Scale=1.2]{Terafik}
	\defpersianfont\zar[Language=Default,Scale=1.2]{Zar}
	\defpersianfont\titr[Language=Default,Scale=1.2]{Titr}
	\defpersianfont\roya[Language=Default,Scale=1.2]{Roya}
	\defpersianfont\mitra[Language=Default,Scale=1.2]{Mitra}
	\defpersianfont\koodak[Language=Default,Scale=1.2]{Koodak}
\fi


\defpersianfont\nastaliq[Language=Default,Scale=1.5,WordSpace=2]{IranNastaliq}
\if@amiriopted
	\defpersianfont\amiri[Language=Default,Scale=1.2,RawFeature=+pnum,StylisticSet={1,2,4}]{Amiri}
\fi
%\newfontinstance\xits{xits-math.otf}
%\newfontinstance\asana{Asana-Math.otf}
\newfontinstance\fakeitalic[ItalicFeatures={FakeSlant=-.41667},BoldItalicFeatures={FakeSlant=-.41667}]{Times New Roman Italic}
\newfontinstance\blackletter{Asana-Math.otf}
\newfontinstance\fractur{Asana-Math.otf}

\defpersianfont\chapnumfont[Language=Default,Scale=\if@alternative \if@alternative 3.0\else 4.5\fi\else 6\fi,Color=\if@alternative 00AA55\else 999999 \fi]{Mitra}
\newcommand*{\printchapternum}{\flushleft{\huge\bfseries \chapnumfont\space \thechapter}}
\if@lalezarchapteropted
	\defpersianfont\chaptitlefont[Language=Default,Scale=\if@alternative 2.4\else 3.2\fi,Color=\if@alternative 00AA55\else 999999 \fi]{Lalezar}
\else
\if@nastaliqchapteropted
	\defpersianfont\chaptitlefont[Language=Default,Scale=\if@alternative 3.0\else 4\fi,Color=\if@alternative 00AA55\else 999999 \fi,WordSpace=2]{IranNastaliq}
\else
	\if@altchapteropted
		\defpersianfont\chaptitlefont[Language=Default,Scale=\if@alternative 2.4\else 3.2\fi,Color=\if@alternative 00AA55\else 999999 \fi]{Mitra Bold}
	\else
		\if@zarchapteropted
			\defpersianfont\chaptitlefont[Language=Default,Scale=\if@alternative 2.4\else 3.2\fi,Color=\if@alternative 00AA55\else 999999 \fi]{Zar Bold}
		\else
			\defpersianfont\chaptitlefont[Language=Default,Scale=\if@alternative 2.2\else 2.93\fi,Color=\if@alternative 00AA55\else 999999 \fi]{XB Titre}
		\fi
	\fi
\fi
\fi
%\newcommand*{\chaptitlefont}{\normalfont\sffamily\Huge\bfseries}
\newcommand*{\printchaptertitle}[1]{\flushleft\chaptitlefont#1}

\def\@makechapterhead#1{%
\if@powerpointmodeopted
	\vspace*{15\p@}%
	{%
		\parindent \z@ \raggedleft
		\ifnum \c@secnumdepth >\m@ne
			\printchapternum
			\par\nobreak
			\vskip 5\p@
		\fi
		\interlinepenalty\@M
		\printchaptertitle{#1}\par\nobreak
		\vskip 5\p@
	}%
\else
	\vspace*{50\p@}%
	{%
		\parindent \z@ \raggedleft
		\ifnum \c@secnumdepth >\m@ne
			\printchapternum
			\par\nobreak
			\vskip 20\p@
		\fi
		\interlinepenalty\@M
		\printchaptertitle{#1}\par\nobreak
		\vskip 40\p@
	}%
\fi
}
%% \@makeschapterhead prints starred chapter heading.
%% Taken directly from report.cls and modified.
%\def\@makeschapterhead#1{%
%  \vspace*{50\p@}%
%  {\parindent \z@ \raggedleft
%    \interlinepenalty\@M
%    \printchaptertitle{#1}\par\nobreak
%    \vskip 40\p@
%  }}



\def\besmfont#1{\def\@besmfont{#1}}
\besmfont{muallo}
\RequirePackage{index}
\newindex{etf}{efx}{efd}{\rl{واژه‌نامه‌ی انگلیسی به فارسی}}
\newindex{fte}{fex}{fed}{واژه‌نامه فارسی به انگلیسی}
\newindex{fpl}{fpx}{fpd}{فهرست اشخاص (فارسی)}
\newindex{lpl}{lpx}{lpd}{\rl{فهرست اشخاص (لاتین)}}

\makeindex
%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\tcekide}[2][]{\long\def\@matnetcekide{#2}\long\def\@abstracttext{#1}}
\newcommand{\seposguzori}[2][سپاس‌گزاری]{%
	\long\def\@matneseposguzori{#2}%
	\long\def\@titreseposguzori{#1}%
	\@seposguzoridoradtrue%
}
\newcommand{\taqdimiye}[2]%
[~\par\vspace{.5in}\bf\LARGE تقدیم به...]%
{%
	\long\def\@matnetaqdimiye{#2}%
	\long\def\@titretaqdimiye{#1}%
	\@taqdimiyedoradtrue%
}
\newcommand{\picguftor}[2][]{\long\def\@matnepicguftor{#2}\long\def\@prefacetext{#1}\@picguftordoradtrue}
\newcommand{\donecgoh}[2][]{\def\@donecgoh{#2}\def\@university{#1}}
\newcommand{\pardis}[2][]{\def\@pardis{#2}\def\@campus{#1}}
\newcommand{\doneckade}[2][]{\def\@doneckade{#2}\def\@faculty{#1}}
\newcommand{\gurwh}[2][]{\def\@gurwh{#2}\def\@department{#1}}
\newcommand{\recte}[2][]{\def\@recte{#2}\def\@subject{#1}}
\newcommand{\geroyec}[2][]{\def\@geroyec{#2}\def\@field{#1}}
\newcommand{\daradje}[2][]{\def\@daradje{#2}\def\@degree{#1}}
\newcommand{\unvon}[2][]{\def\@unvon{#2}\def\@title{#1}}
\newcommand{\kudemelli}[2][]{\def\@kudemelli{#2}\def\@idnumber{#1}} \kudemelli{}
\newcommand{\cumoredonecdjwyi}[2][]{\def\@cumoreyedonecdjwyi{#2}\def\@stunumber{#1}} \cumoredonecdjwyi{}
\newcommand{\cumore}[2][]{\def\@cumoreyeguzorec{#2}\def\@reportnumber{#1}} \cumore{}
\newcommand{\muqaddame}[1]{\long\def\@muqaddame{#1}\@muqaddamedoradtrue} 
\def\intr@p@rttitl@{مقدمات}
\def\m@inp@rttitl@{اصلی}
\def\l@stp@rttitl@{ضمایم}
\newcommand{\partify}{\@topartifytrue}
\newcommand{\defaultparts}[3]{\def\intr@p@rttitl@{#1}\def\m@inp@rttitl@{#2}\def\l@stp@rttitl@{#3}}
\newif\if@takrohnemo
\newif\if@singlesupervisor
\let\@rohnemo\@empty
\let\@supervisor\@empty

\let\@mathsubjclassprimary\@empty
\newcommand{\mathsubjprimary}[2][]{%
	\@mathsubjclassfoundtrue
	\ifx\@empty\@mathsubjclassprimary
		\gdef\@mathsubjclassprimary{#2}%
		\ifx#1\empty
			\gdef\@muwzweavvaliye{#2\!{ }}%
		\else
			\gdef\@muwzweavvaliye{#1\!{ }}%
		\fi
	\else
		\g@addto@macro\@mathsubjclassprimary{\and #2}%
		\ifx#1\empty
			\g@addto@macro\@muwzweavvaliye{\va #2\!{ }}%
		\else
			\g@addto@macro\@muwzweavvaliye{\va #1\!{ }}%
		\fi
	\fi%
}

\newcommand{\mathsubjyear}[1]{%
	\gdef\@mathsubjclassyear{#1}%
}

\let\@mathsubjclassyear\@empty

\let\@mathsubjclasssecondary\@empty
\newcommand{\mathsubjsecondary}[2][]{%
	\ifx\@empty\@mathsubjclasssecondary
		\gdef\@mathsubjclasssecondary{#2}%
		\ifx#1\empty
			\gdef\@muwzwesonaviye{#2\!{ }}%
		\else
			\gdef\@muwzwesonaviye{#1\!{ }}%		
		\fi
	\else
		\g@addto@macro\@mathsubjclasssecondary{\and #2}%
		\ifx#1\empty
			\g@addto@macro\@muwzwesonaviye{\va #2\!{ }}%
		\else
			\g@addto@macro\@muwzwesonaviye{\va #1\!{ }}%
		\fi
	\fi
}


\newcommand{\rohnemo}[2][]{%
	\ifx\@empty\@rohnemo
		\gdef\@rohnemo{#2}%
		\@takrohnemotrue%
	\else
		\g@addto@macro\@rohnemo{\va #2}%
		\@takrohnemofalse%
	\fi
	\@ifnotempty{#1}{%
		\ifx\@empty\@supervisor
			\gdef\@supervisor{#1}%
			\@singlesupervisortrue%
		\else
			\g@addto@macro\@supervisor{\and #1}%
			\@singlesupervisorfalse%
		\fi
	}%
}
\newif\if@takmucover
\newif\if@singleadvisor
\let\@mucover\@empty
\let\@advisor\@empty
\newcommand{\mucover}[2][]{%
	\ifx\@empty\@mucover
		\gdef\@mucover{#2}%
		\@takmucovertrue%
	\else
		\g@addto@macro\@mucover{\va #2}%
		\@takmucoverfalse%
	\fi
	\@ifnotempty{#1}{%
		\ifx\@empty\@advisor
			\gdef\@advisor{#1}%
			\@singleadvisortrue%
		\else
			\g@addto@macro\@advisor{\and #1}%
			\@singleadvisorfalse%
		\fi
	}%
}
\newcommand{\nom}[2][]{\def\@nom{#2}\def\@name{#1}}
\newcommand{\mathsubjclass}[3][]{\@mathsubjclassfoundtrue\def\@mathsubjclassprimary{#2}\def\@mathsubjclasssecondary{#3}\def\@mathsubjclassyear{#1}}
\newcommand{\nomexonevodegi}[2][]{\def\@nomexonevodegi{#2}\def\@surname{#1}}
\newcommand{\torix}[2][]{\def\@torix{#2}\def\@date{#1}}
\newcommand{\torixenegorec}[2][]{\def\@torixenegorec{#2}\def\@dateofcomposition{#1}}
\newcommand{\kelidvojeho}[2][]{\def\@kelidvojeho{#2}\def\@keywords{#1}}
\def\@author{\@name \@surname}

\if@authorisomidghayour
	\nom[Omid]{امید}
	\nomexonevodegi[Ghayour]{غیور}
\fi

\newcommand{\logocommand}[2]{\def\@logostring{#1}\def\@logotext{#2}}

\if@alternative
	\if@powerpointmodeopted
		\logocommand{\includegraphics[height=25pt]{scu-logo-vector-alpha}}%
			{\includegraphics[height=20pt]{donecgoh-cahid-tcamron-rost-rangi}}
	\else
		\logocommand{\includegraphics[height=50pt]{scu-logo-vector-alpha}}%
			{\includegraphics[height=25pt]{donecgoh-cahid-tcamron-rost-rangi}}
	\fi
\else\nastaliq
	\logocommand{\includegraphics[height=60pt]{scu-logo-vector-complex}}{\includegraphics[height=30pt]{donecgoh-cahid-tcamron-rost}}
\fi

\if@defaulttitles
	\donecgoh[Shahid Chamran University]{دانشگاه شهید چمران اهواز}
	\pardis{}{}
	\doneckade[Faculty of Mathematics and Computer Sciences]{دانشکده علوم ریاضی و کامپیوتر}
	\gurwh[Department of Mathematics]{گروه ریاضی}
	\recte[Mathematics]{ریاضی}
	\geroyec{}
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\emzo{%
	\vspace{1cm}
	\begin{flushleft}
		{\nastaliq \scriptsize \@nom\ \@nomexonevodegi \\
		\@torix}
	\end{flushleft}%
}

\def\tavassute{}
\def\By{By}
\def\cleardoublepage{%
	\clearpage%
	\if@twoside 
		\ifodd\c@page\else
			\hbox{}
			\thispagestyle{empty}
			\newpage
			\if@twocolumn\hbox{}\newpage\fi%
		\fi%
	\fi%
}
%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\bibname}{مراجع}
\newcommand\persiangloss[2]{#1\dotfill\lr{#2}\\}
\newcommand\englishgloss[2]{#2\dotfill\lr{#1}\\}
\newcommand{\پ}%
{پروژه/پایان‌نامه/رساله}
%%%%%%%%%%%%%%%%%%%%%%%%%%
\newtheorem{theorem}{قضیه}[section]
\newtheorem{lemma}[theorem]{لم}
\newtheorem{proposition}[theorem]{گزاره}
\newtheorem{corollary}[theorem]{نتیجه}
\newtheorem{remark}[theorem]{ملاحظه}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{تعریف}
\newtheorem{example}[theorem]{مثال}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{fancy}
\fancyhf{} 

\fancyhead[OL]{\thepage}
\fancyhead[OR]{\small\rightmark}
\if@alternative
\fancyhead [EL]{\thepage}
\fancyhead [ER]{\small\leftmark}
\else 
\fancyhead [ER]{\thepage}
\fancyhead [EL]{\small\leftmark}
\fi
\renewcommand{\chaptermark}[1]{%
\markboth{\thechapter.\ #1}{}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\postscript{%
	\begingroup
		\immediate\write\@auxout{\string\newlabel{postscriptpage}{{}{\thepage}}}%
		\immediate\write\@auxout{\string\xdef\string\postscriptpage@postscriptpage{\thepage}}%
		\immediate\write\@auxout{\string\gdef\string\postscriptpage@postscriptpageHy{}}%
	\endgroup
	\cleardoublepage\newpage\pagenumbering{arabic}%
}

\def\safheyexos[#1]{%
  \clearpage
  \thispagestyle{empty}
  %\addtocontents{}
}
\def\endsafhexos{\newpage}

\newcommand{\xandlist}[4]{\@andlista{{#1}{#2}{#3}}#4\and\and}
\def\@andlista#1#2\and#3\and{\@andlistc{#2}\@ifnotempty{#3}{%
  \@andlistb#1{#3}}}
\def\@andlistb#1#2#3#4#5\and{%
  \@ifempty{#5}{%
    \@andlistc{#2#4}%
  }{%
    \@andlistc{#1#4}\@andlistb{#1}{#3}{#3}{#5}%
  }}
\let\@andlistc\@iden
\newcommand{\nxandlist}[4]{%
	\def\@andlistc##1{\toks@\@xp{\the\toks@##1}}%
	\toks@{\toks@\@emptytoks \@andlista{{#1}{#2}{#3}}}%
	\the\@xp\toks@#4\and\and
	\edef#4{\the\toks@}%
	\let\@andlistc\@iden%
}
\def\@@and{and}
\newcommand{\andify}{%
	\nxandlist{\unskip, }{\unskip{} \@@and~}{\unskip, \@@and~}%
}
\def\and{\unskip{ }\@@and{ }\ignorespaces}
\def\author@andify{%
	\nxandlist {\unskip ,\penalty-1 \space\ignorespaces}%
	{\unskip {} \@@and~}%
	{\unskip ,\penalty-2 \space \@@and~}%
}

\newcommand\muqaddametitle[1]{\def\@muqaddametitle{#1}} \muqaddametitle{مقدمه}
\newcommand{\muqaddameqoute}[2][]{\def\@muqaddamequote{#2}\def\@muqaddamquoteauthor{#1}} \muqaddameqoute{}
\newcommand{\muqaddamefile}[1]{%
	\@muqaddamedoradtrue
	\def\@muqaddamefile{#1}
	\def\@muqaddame{\input{\@muqaddamefile}}%
}
\newcommand{\seposguzorifile}[2]%
[سپاسگزاری]%
{%
	\@seposguzoridoradtrue
	\def\@seposguzorifile{#2}
	\def\@titreseposguzori{#1}
	\def\@matneseposguzori{%
		\input{\@seposguzorifile}%
	}%
}
%\def\@titreseposguzori{سپاسگزاری}
%\def\@matneseposguzori{MATH}

\AtBeginDocument{%
	\author@andify{\@supervisor}%
	\author@andify{\@advisor}%
	\author@andify
	{\@mathsubjclassprimary}%
	\author@andify
	{\@mathsubjclasssecondary}%
	\afrod@vaify{\@mucover}%
	\afrod@vaify{\@rohnemo}%
	\afrod@vaify{\@muwzweavvaliye}%
	\afrod@vaify{\@muwzwesonaviye}%
	\if@badgeoopted\baselineskip=1cm\fi%
	\pagestyle{plain}%
	\pagenumbering{adadi}%
	\@besmelloh
	\@unvoneforsi
	\@tanzimetaqdimiye
	\@tanzimetcekide
	\tableofcontents
	\if@topartify
		\part{\intr@p@rttitl@}
	\fi
	\@tanzimeseposguzori
	\@tanzimepicguftor
	\if@alternative
	\else
		\clearpage
	\fi
	\label{lastpreamblepage}
	\if@alternative
		\clearpage
	\else
		\cleardoublepage
	\fi
	\pagenumbering{arabic}%
	\pagestyle{fancy}%
	\if@muqaddamedorad
		{%
			\setcounter{chapter}{-1}%
			\begin{savequote}[70mm]%
				\@muqaddamequote
				\qauthor
				{\@muqaddamquoteauthor}%
			\end{savequote}%
			\chapter{\@muqaddametitle}%
			\@muqaddame%
		}%
	\fi
	\if@topartify
		\part{\m@inp@rttitl@}
	\fi
}

%\setcounter{chapter}{-1}
%\chapter{\@muqaddametitle}
%\input{\@muqaddamefile}
%\qauthor{\@muqaddamesign} 

\AtEndDocument{%
	\if@listpersonsopted\cleardoublepage\addcontentsline{toc}{chapter}{\numberline{~}{فهرست اشخاص فارسی}}\printindex[fpl]\cleardoublepage\begin{latin}\addcontentsline{toc}{chapter}{\numberline{~}{فهرست اشخاص لاتین}}\printindex[lpl]\end{latin}\fi
	\if@vojenomeopted\cleardoublepage\begin{latin}\addcontentsline{toc}{chapter}{\numberline{~}{واژه‌نامه انگلیسی به فارسی}}\printindex[etf]\end{latin}\cleardoublepage\addcontentsline{toc}{chapter}{\numberline{~}{واژه‌نامه فارسی به انگلیسی}}\printindex[fte]\fi
	\if@indexopted\cleardoublepage\addcontentsline{toc}{chapter}{\numberline{~}{نمایه}}\printindex\fi
	\immediate\label{LastPage}\clearpage
	\if@alternative\else\pagebreak\fi
	\pagestyle{empty}
	\begin{latin}\@setabstract\@englishtitle\end{latin}%
}

\def\muhem#1{{\bf #1} \index{#1}}

\def\@besmelloh{%
	\if@alternative
	\else
		\begin{titlepage}
			\begin{center}
				~
				\vfill
				\includegraphics[width=\textwidth]{besm-\@besmfont}
				\vfill
				\includegraphics[width=\@titlewidth]{scu-logo-vector-alpha}
				{%
					\includegraphics[width=\@titlewidth]{donecgoh-cahid-tcamron-alt-rangi}%
				}
			\end{center}
		\end{titlepage}%
		\newpage
	\fi%
}


\def\@unvonerohnemoyoon{%
	\if@takrohnemo
	استاد راهنما%
	\else
	استادان راهنما%
	\fi%
}

\def\@supervisororsheading{%
	\if@singlesupervisor
		\noindent\textsc{Supervisor: }
	\else
		\noindent\textsc{Supervisors:}\par
	\fi%
}

\def\@advisororsheading{%
	\if@singleadvisor
		\noindent\textsc{Advisor: }
	\else
		\noindent\textsc{Advisors:}\par
	\fi%
}

\def\@unvonemucoveryoon{%
	\if@takmucover
	استاد مشاور%
	\else
	استادان مشاور%
	\fi%
}

\def\@unvoneforsi{%
	\begin{titlepage}
		\begin{center}
			%\vspace{-10ex}
			{\@logostring}\par 
			{\@logotext}%
			\vskip 
			\if@badgeoopted  	%
				-1.5%				%
			\else					%
				0.5%				%
			\fi 					%
			ex
			{%
				\if@alternative
					\footnotesize
				\fi
				\@doneckade
				\vskip
				\if@badgeoopted
					-1%
				\else 
					0.55
				\fi 
				ex
				{\@gurwh}
				\vfill%
			}
			\@unvoneguzorec%
			\vfill
			\begin{minipage}{\@titlewidth}
				\begin{center}%
					\if@alternative
						\Large
					\else
						\huge
					\fi
					\@tanzimeunvon
				\end{center}
			\end{minipage}
			\vfill
			\if@simplereport
			\else
				\ifx\@empty\@rohnemo
				\else
					{%
						\if@alternative
							\footnotesize
						\fi
						\@unvonerohnemoyoon
					}%
					\vskip
					\if@badgeoopted
						-1%
					\else 
						0.5%
					\fi 
					ex
					{
						\if@alternative
							\if@powerpointmodeopted
							\else
								\large
							\fi
						\else
							\Large
						\fi
						\bfseries\@rohnemo
					}
					\vfill
				\fi
			\fi
			\ifx\@empty\@mucover
			\else
				{%
					\if@alternative
						\footnotesize
					\fi
					\@unvonemucoveryoon
				}%
				\vskip 
				\if@badgeoopted
					-1%
				\else 
					0.5%
				\fi 
				ex
				\if@alternative
					\if@powerpointmodeopted
					\else
						\large
					\fi
				\else
					\Large
				\fi
				\bfseries\@mucover
				\vfill
			\fi
			{%
				\if@alternative
					\footnotesize
				\fi
				\@pajwhecgar
			}
			\par
			\if@authorisomidghayour
				\includegraphics{ummidghayour}
			\else
				{%
					\bfseries
					{%
						\if@powerpointmodeopted\else
							\nastaliq
						\fi
						\if@alternative
							\large
						\else
							\Large
						\fi
						\@nom\ 
						\@nomexonevodegi
					}%
				}
			\fi
			\par
			\vskip 1ex
			{
				\if@alternative
					\footnotesize
				\fi 
				\ifdefined\@torixenegorec\@torixenegorec\else\@torix\fi
			}
		\end{center}
	\end{titlepage}%
	\if@alternative\else\newpage\fi
}%end of @unvoneforsi

\def\@englishtitle{%
	\if@alternative\else\cleardoublepage\fi
	\pagestyle{empty}
	\if@alternative
	\else
		{%
	
		~
	
		}%
	\fi
	\newpage
	\begin{center}
		\noindent{\@logostring}\par
		\noindent{\@logotext}
		\vfill
		\noindent%\begin{minipage}{\@titlewidth}
		{%
			\noindent%
			\if@alternative\Large\else\huge\fi%
			\@settitle%
		}
		%\end{minipage}
		\vfill
		{%
			\noindent\if@alternative\footnotesize\fi\By%
		}%
		\vskip \if@badgeoopted -1\else 0.05\fi ex
		{\noindent\bfseries{\if@alternative\large\else\Large\fi   \@name\ \@surname}}
		\vfill\vfill
		\@reportheading%
		\vfill\vfill
		\if@simplereport
		\else
			{%
				\ifx\@empty\@supervisor
				\else
					{%
						{\if@alternative\footnotesize\fi\@supervisororsheading}%
						\vskip \if@badgeoopted -1.5\else -0.05\fi ex
						{\noindent\if@alternative\large\else\Large\fi\@supervisor}%
					}
				\fi%
			}
		\fi
		\vfill
		\ifx\@empty\@advisor
		\else
			{\if@alternative\footnotesize\fi\@advisororsheading}\vskip \if@badgeoopted -1.5\else -0.05\fi ex
			{\noindent\if@alternative\large\else\Large\fi\@advisor}
			\vfill
			\@university\if@badgeoopted \\[-2ex]\else\\ \fi \@faculty\if@badgeoopted \\[-2ex]\else \\ \fi\@department
			\par%\vskip 2ex
			{\noindent\if@alternative\footnotesize\fi \ifdefined\@dateofcomposition\@dateofcomposition\else\@date\fi}
		\fi
	\end{center}%
}%end of @englishtitle

\def\@tanzimetaqdimiye{%
	\if@taqdimiyedorad
		\chapter*{\@titretaqdimiye}%
		\thispagestyle{empty}%
		{\@matnetaqdimiye}%
	\fi
}

\def\@tanzimeseposguzori{%
	\if@seposguzoridorad
		\chapter*{{\nastaliq\LARGE \@titreseposguzori}}\addcontentsline{toc}{chapter}{\numberline{~}{\@titreseposguzori}}%
		\thispagestyle{empty}%
		{\@matneseposguzori}%
	\fi
}

\def\@tanzimepicguftor{%
	\if@picguftordorad
		\chapter*{پیش‌گفتار}%
		\addcontentsline{toc}{chapter}%
		{\numberline{~}پیش‌گفتار}%
		\@matnepicguftor%
	\fi
}



\def\@tanzimetcekide{%
	\if@alternative
		\clearpage
	\else
		\cleardoublepage
	\fi
	\addcontentsline{toc}{chapter}%
		{\numberline{~}چکیده}
	\thispagestyle{empty}
	\if@bachelor
	\else
		\begin{framed}
			\noindent\textbf{مشخصات دانشجو}\par%
			\noindent نام خانوادگی: \@nomexonevodegi 	\hspace*{\fill} نام: \@nom
			\hspace*{\fill}\\ 
			\ifx\@kudemelli\empty
			\else
			 کدملی:
				\@kudemelli
				\hspace*{\fill}
			\fi
			\ifx\@cumoreyedonecdjwyi\empty
			\else
			  شماره‌ی دانشجویی: 
				\@cumoreyedonecdjwyi
				\hspace*{\fill}
			\fi
			\par \hrule %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
			\vspace{3mm}
			\noindent%
			\textbf{ مشخصات پایان‌نامه: }\par
			\vspace{3mm}
			\noindent{عنوان:}\par
			\begin{center}%
				\if@alternative
					\bf
				\else
					\large
				\fi%
				\@unvon
			\end{center}
			\ifx\@cumoreyeguzorec\empty
			\else
				\vspace{4mm}%
				\noindent{ شماره پایان‌نامه: }%
				\@cumoreyeguzorec
			\fi 
			\par \hrule %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
			\vspace{3mm}
			\noindent
			\ifx\@rohnemo\empty
			\else
				\@unvonerohnemoyoon: 
				\@rohnemo 
				\noindent%
			\fi
			{%
				\if@alternative
					\small
				\fi
				\ifx\@mucover\empty
				\else
					\par\noindent\@unvonemucoveryoon: 
					\@mucover  
				\fi%
			} 
			\par \hrule %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
			\vspace{3mm}
			\noindent
مقطع تحصیلی: 
			\@unvonemadrak 
			\par\noindent
			{%
				\if@alternative\small\fi
رشته: 	
				\@recte	
				\hspace*{\fill}
				\ifx\@geroyec\empty
				\else
 گرایش: 
					\@geroyec
					\if@alternative
					\else
						\hspace*{\fill}
					\fi
				\fi%
			}%
			\par \hrule  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
			\vspace{3mm}
			\noindent
دانشگاه:  	
			\@donecgoh
			\if@alternative
				\par
				\noindent
دانشکده: 
			\else
				\hspace*{\fill}
			\fi
			\@doneckade\hspace*{\fill}
			{%
				\par\noindent%
				\if@alternative
					\small%
				\else
					\hspace*{\fill}%
				\fi
تاریخ فارغ‌التحصیلی: 
				\@torix
				\hspace*{\fill}
تعداد صفحات: 	
				\getpagerefnumber{lastpreamblepage}+%\pageref{postscriptpage}+
					\getpagerefnumber{LastPage}
				\if@alternative
				\else
					\hspace*{\fill}
				\fi%
			}
			\par \hrule  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
			\vspace{3mm}
			\noindent%
			{%
				\if@alternative
					\footnotesize
				\fi
				\if@mathsubjclassfound
					\emph{طبقه‌بندی موضوعی ریاضیات} 
					(%
						\ifx\@mathsubjclassyear\empty 
						2010
					\else
						\@mathsubjclassyear
					\fi%
					): 
					\ifx\@mathsubjclasssecondary\empty
						\rl{\@muwzweavvaliye}
					\else
						\if@alternative\par\fi
 اولیه  \@muwzweavvaliye\!؛ ثانویه \@muwzwesonaviye\!.
					\fi
					\par
					\if@alternative
						\vspace{1mm}
					\fi
					\noindent
				\fi
				\emph{واژگان کلیدی: }{\@kelidvojeho}%
			}
			\par \hrule %%%%%%%%%%%%%%%%%%%%
			\vspace{3mm}
			\noindent
			{
				\if@alternative\small\fi
				\textbf{چکیده:}\quad
				\@matnetcekide%
			}
		\end{framed}%
	\fi%
}%end of tanzime tcekide


\newcommand{\ifaresame}[2]{% just idea by: texinfo, but the solution is by: egreg
	\ifaresame@massage\ifaresame@tempa{#1}%
	\ifaresame@massage\ifaresame@tempb{#2}%
	\ifx\ifaresame@tempa\ifaresame@tempb
		\expandafter\@firstoftwo
	\else
		\expandafter\@secondoftwo
	\fi
}
\def\ifaresame@massage#1#2{% just idea by: texinfo, but the solution is by: egreg
	\begingroup\let\@xp\expandafter\let\@nx\noexpand
	\everyeof{}%
	\catcode`{=9 \catcode`}=9
	\catcode`<=1 \catcode`>=2
	\begingroup%
	\edef\x{%
		\endgroup\@nx\scantokens{\def\@nx\1<#2>\@nx\empty}%
	}%
	\x
	\uppercase\@xp{\@xp\endgroup\@xp\def\@xp#1\@xp{\1}}%
}
\def\adaditoroman#1{% the part in which the solutions of egreg helped
	\begingroup
		\newcounter{searchforadadi}%
		\setcounter{searchforadadi}{0}%
		\loop\relax\ifnum\value{searchforadadi} < 1000%
			\addtocounter{searchforadadi}{1}%
			\ifaresame{#1}{\adadi{searchforadadi}}{\roman{searchforadadi}}{}%
		\repeat
	\endgroup
}
\def\@setabstract{%
	\if@alternative
	\else
		\cleardoublepage
	\fi
	\pagestyle{empty}
	\if@alternative
	\else
		{%
	
		~
	
		}%
	\fi
	\newpage
	\if@bachelor
	\else
		{%
			\begin{framed}
				\if@badgeoopted
					\baselineskip=4ex
				\fi
				\vspace{1mm}
				\noindent
				{Personal Information:}
				\vspace{5mm}\par
				\noindent
				\if@alternative
					{%
						\small 
						\textsc{Surname:}
						\textsc{\@surname}
						\hspace*{\fill}Name:
						\@name
						\hspace*{\fill}%
					}%
				\else
					{%
						\small 
						\textsc{Surname:}
						\textsc{\@surname}
						\hspace*{\fill}Name: 
						\@name
						\hspace*{\fill}
					}%
				\fi%
				\\ \hrule %%%%%%%%%%%%%%%%%%%%%%
				\vspace{3mm}
				\begin{center}%
					\if@alternative
					\else
						\large
					\fi
					\@title
				\end{center} 
				\hrule %%%%%%%%%%%%%%%%%%%%%%%%   
				\vspace{5mm}
				\noindent
				\@supervisororsheading
				\noindent\@supervisor
				\par\vspace{.1in}
				\noindent\@advisororsheading
				\noindent\@advisor
				\\ \hrule %%%%%%%%%%%%%%%%%%%%%
				\vspace{5mm}
				\noindent
				{%
					\small 
					\ifx\@degreetitle\@empty
					\else
						{% 
							\textsc{Degree:} 
							\textbf
							{\@degreetitle}
							\hspace*{\fill}%
						}%
					\fi
					{%
						\ifx\@subject\@empty
						\else
							{% 
								\par
								\noindent
								\if@alternative
									\small
								\fi 
								Subject:
								\@subject
							}%
						\fi
						\hspace*{\fill} 
						\ifx\@field\@empty
						\else%
							{% 
								Field:~\@field%
							}%
						\fi
					}%
					\if@alternative
					\else
						\hspace*{\fill}
					\fi%
				}
				\\ \hrule %%%%%%%%%%%%%%%%%%%
				\vspace{5mm}
				\noindent\textsc
				{University:} 
				\textbf{\@university}
				\par
				\ifx\@faculty\empty
				\else
					{%
						\hspace*{\fill}
						\if@alternative
							\small
						\fi
						\@faculty
						\hspace*{\fill}
						\par
					}
				\fi
				\noindent
				Date of Graduation:
				\textbf{\@date}
				\hspace*{\fill}
				Number of Pages:
				\texttt
				{%
					\getpagerefnumber
					{LastPage}
					+
					\adaditoroman
					{%
						\getpagerefnumber
						{lastpreamblepage}
					}%
				}
				\if@alternative
				\else
					\hspace*{\fill}
				\fi
				
				\par \hrule  %%%%%%%%%%%%%%%%%%%%%
				\vspace{5mm}
				\noindent
				{
					\if@alternative
						\footnotesize
					\fi
					\if@mathsubjclassfound
						{% 
							\ifx
						\@mathsubjclassyear
							\empty
								2010%
							\else
					\@mathsubjclassyear
							\fi
							\emph
							{ Math Subject Classification: }
							\ifx
					\@mathsubjclasssecondary
							\empty
					\@mathsubjclassprimary
							\else 
								\if@alternative
									\par
								\fi
								Primary
						\@mathsubjclassprimary
								; 
								Secondary \@mathsubjclasssecondary
							\fi
						}%
					\fi.%
				}%
				\par
				\if@alternative
					\vspace{1mm}
				\fi
				\noindent%
				\emph
				{Keywords and Phrases: }%
				%\par\noindent%
				{\@keywords}\\ 
				\hrule  %%%%%%%%%%%%%%%%
				\vspace{3mm}
				\noindent
				{%
					\if@alternative
						\small
					\fi
					{%
						\textsc
						{%
							\bfseries
							Abstract:%
						}
					}%
					\quad 	\@abstracttext%
				}
			\end{framed}%
		}
	\fi
}%end of set abstract

\newcommand{\xvalist}[4]{\@valista{{#1}{#2}{#3}}#4\va\va}
\def\@valista#1#2\va#3\va{\@valistc{#2}\@ifnotempty{#3}{%
  \@valistb#1{#3}}}
\def\@valistb#1#2#3#4#5\va{%
  \@ifempty{#5}{%
    \@valistc{#2#4}%
  }{%
    \@valistc{#1#4}\@valistb{#1}{#3}{#3}{#5}%
  }}

\let\@valistc\@iden
\newcommand{\nxvalist}[4]{%
  \def\@valistc##1{\toks@\@xp{\the\toks@##1}}%
  \toks@{\toks@\@emptytoks \@valista{{#1}{#2}{#3}}}%
  \the\@xp\toks@#4\va\va
  \edef#4{\the\toks@}%
  \let\@valistc\@iden}
\def\@@va{و}

\newcommand{\vaify}{%
  \nxvalist{\unskip, }{\unskip{} \@@va~}{\unskip, \@@va~}}

\def\va{\unskip{ }\@@va{ }\ignorespaces}

\def\afrod@vaify{%
  \nxvalist {\unskip ,\penalty-1 \space\ignorespaces}%
    {\unskip {} \@@va~}%
    {\unskip ,\penalty-2 \space \@@va~}%
}


	
\def\@settitle{%\begin{center}%
  %\baselineskip14\p@\relax
    \bfseries
  \@title
  %\end{center}%
}

\def\@tanzimeunvon{\begin{center}%
  %\baselineskip14\p@\relax
    \bfseries
  \@unvon
  \end{center}%
}

\def\@unvoneguzorec{%
	\if@simplereport
	\else
		{%
			\if@alternative
			\else
				\large
			\fi
			\bfseries
			\@sarguzorec
		}
		\vskip
		\if@badgeoopted-1\else0.5\fi ex
		{%
			\if@alternative\footnotesize\fi
			\@tahguzorec
		}
		\vskip
		\if@badgeoopted-1\else0.5\fi ex
		{%
			\if@alternative\else\large\fi 
			\bfseries \@unvonemadrak
		}
		%\par\vskip 3ex
		{%
			\if@alternative\footnotesize\fi
			\@dar
		}
		%\par\vskip 1ex
		{%
			\if@alternative\else\large\fi
			\bfseries\@rectegeroyec
		}
		%\vfill
	\fi
}%end of unvoneguzorec

\def\@reportheading{%
	\if@simplereport
	\else
		%\centerline%
		{
			\noindent
			\if@alternative\else\large\fi
			\bfseries \@reporthead
		}
		\vskip
		\if@badgeoopted-1.5\else0.5\fi ex
		%\centerline%
		{%
			\noindent
			\if@alternative\footnotesize\fi
			\@reporttail
		}
		\vskip
		\if@badgeoopted-1.5\else 0.5\fi ex
		%\centerline%
		{
			\noindent
			\if@alternative\else\large\fi 		
			\bfseries \@degreetitle
		}
		%\par
		%\centerline%
		\ifx\@subjectfield\empty
		\else
			{
				\noindent
				\if@alternative\footnotesize\fi
				\@in
			}
			%\par
			%\centerline%
			{
				\noindent
				\if@alternative
				\else
					\large
				\fi
				\bfseries\@subjectfield
			}
		\fi
	\fi
}%end of reportheading

\newcommand{\advisor}{\mucover}
\newcommand{\supervisor}{\rohnemo}
\renewcommand{\title}{\unvon}
\newcommand{\name}{\nom}
\newcommand{\surname}{\nomexonevodegi}
\renewcommand{\date}{\torix}
\newcommand{\dateofcomposition}{\torixenegorec}
\newcommand{\keywords}{\kelidvojeho}
\newcommand{\abstract}{\tcekide}
\newcommand{\acknowledgment}{\seposguzori}
\newcommand{\preface}{\picguftor}
\newcommand{\foreword}{\picguftor}
\newcommand{\dedicatory}{\taqdimiye}
\newcommand{\introduction}{\muqaddame}
%
\def\abdjadi#1{\ifcase#1\or الف‍‌\or ب‍‌\or ج‍‌\or ‌‍د\or ه‍‌\or ‌‍و\or ‌‍ز\or ح‍‌\or ط‍‌\or ی‍‌\or ک‍‌\or ل‍‌\or م‍‌\or ن‍‌\or ص‍‌\or ع‍‌\or ف‍‌\or ض‍‌\or ق‍‌\or ‌‍ر\or ش‍‌\or ت‍‌\fi}
\def\@appchapnums#1{\abdjadi#1}
\renewcommand\appendix{%
	\par
	\if@topartify
		\renewcommand{\thepart}{آخر}
		\بخش{\l@stp@rttitl@}
	\fi
	\setcounter{chapter}{0}%
	\setcounter{section}{0}%
	\gdef\@chapapp{\appendixname}%
	\gdef\thechapter{\@appchapnums\c@chapter}
}

%%%% farsi commands
\def\توجه{\textsayeh{توجه: }}
\def\تایپ#1{\textpersiantt{#1}}
\def\خاص#1{\textpersiansf{#1}}

\تر\کوکوآ{\خاص{کوکوآ}}

\تر\قضیه‌نو{\قضیه‌جدید}
\تر\آغاز{\شروع}
\تر\به{$\Leftarrow$}
\تر\مورد{\فقره}


\newtheoremstyle{myimportantstyle}%
{2\topsep}{}{\itshape}{}{\bfseries}{.}{.5em}{}

\theoremstyle{myimportantstyle}
\قضیه‌نو{قضیه}{قضیه}[section]
\قضیه‌نو{لم}[قضیه]{لم}
\newtheorem*{theoremstar}{قضیه}

\newtheoremstyle{myplainstyle}%
{}%Space above
{}%Space below
{\itshape}%Body font
{}%Indent amount
{\bfseries}% Theorem head font
{.}%Punctuation after theorem head
{.5em}%Space after theorem head
{}%Theorem head spec (can be left empty,  meaning ‘normal’)

\theoremstyle{myplainstyle}
\قضیه‌نو{گزاره}[قضیه]{گزاره}
\قضیه‌نو{بینام}[قضیه]{}

\newtheoremstyle{mynotsoimportant}%
{}{}{\itshape}{}{}{.}{.5em}{}

\theoremstyle{mynotsoimportant}
\قضیه‌نو{نتیجه}[قضیه]{نتیجه}

\newtheoremstyle{mydefinitionstyle}%
{}{}{}{}{\bfseries}{.}{.5em}{}

\theoremstyle{mydefinitionstyle}
\قضیه‌نو{تعریف}[قضیه]{تعریف}
\قضیه‌نو{مثال‌بینام}[قضیه]{مثال}

\newtheoremstyle{myremarkstyle}%
{}{}{}{}{\itshape}{.}{.5em}{}

\theoremstyle{myremarkstyle}
\قضیه‌نو{تذکر}[قضیه]{تذکر}

\theoremstyle{plain}


\محیط‌نو{نامدار}[1]{\آغاز{بینام}{\سیاه #1.\\}}{\پایان{بینام}}

\محیط‌نو{نتیجه‌نامدار}[1]{\آغاز{نتیجه}{\سیاه(#1)\\}}{\پایان{نتیجه}}

\محیط‌نو{گزاره‌نامدار}[1]{\آغاز{گزاره}{\سیاه(#1)\\}}{\پایان{گزاره}}
\newif\if@esignnotseenyet
\def\putesignhere{\@esignnotseenyetfalse$\llcorner$}
\محیط‌نو{مثال}{\آغاز{مثال‌بینام}$\urcorner$\@esignnotseenyettrue}{\if@esignnotseenyet{\hfill$\llcorner$}\fi\پایان{مثال‌بینام}}
\def\putesignafter$$#1$${\begin{flalign*}\llcorner&{}   &  &#1 & {}&\phantom{\llcorner}\end{flalign*}\@esignnotseenyetfalse}

\محیط‌نو{قضیه‌نامدار}[1]{\آغاز{قضیه}{\سیاه(#1)\\}}{\پایان{قضیه}}

\eqenvironment{مخصوص}{maxsws}
\eqenvironment{جواب}{djavob}

\newcommand\theburhonname{{{برهان}}}
\newcommand\theesbotname{{{برهان}}} 
\محیط‌نو{برهان}%
{\begin{proof}[\theburhonname]}{\end{proof}}
\محیط‌نو{اثبات}%
{\begin{proof}[\theesbotname]}{\end{proof}}

%\newcommand*{\newword}[4][][]{%
%	\index[etf]{#3 #1@#1 #3: \rl{#2 #4}\ }%
%	\index[fte]{#4 #2@#2 #4: \lr{#1 #3}\ }%
%	#2 #4%
%	\LTRfootnote{#1 #3}%
%}
\newcommand*{\newword}[2]{%
	\index[etf]{#1@#1: \rl{#2}}%
	\index[fte]{#2@#2: \lr{#1}}%
	#2%
	\LTRfootnote{#1}%
}
\newcommand*{\newperson}[4]{%
	\index[lpl]{#2 #1@#1 #2: \rl{#3 #4}}%
	\index[fpl]{#4 #3@#3 #4: \lr{#1 #2}}%
	\index[lpl]{#1 #2@#1 #2: \rl{#3 #4}}%
	\index[fpl]{#3 #4@#3 #4: \lr{#1 #2}}%
	#3 #4%
	\LTRfootnote{#1 #2}%
}
\newcommand*{\newfamily}[4]{%
	\index[lpl]{#2 #1@#1 #2: \rl{#3 #4}}%
	\index[fpl]{#4 #3@#3 #4: \lr{#1 #2}}%
	\index[lpl]{#1 #2@#1 #2: \rl{#3 #4}}%
	\index[fpl]{#3 #4@#3 #4: \lr{#1 #2}}%
	#4%
	\LTRfootnote{#1 #2}%
}
\newcommand*{\family}[4]{%
	\index[lpl]{#2 #1@#1 #2: \rl{#3 #4}}%
	\index[lpl]{#1 #2@#1 #2: \rl{#3 #4}}%
	\index[fpl]{#4 #3@#3 #4: \lr{#1 #2}}%
	\index[fpl]{#3 #4@#3 #4: \lr{#1 #2}}%
	#4%
}
\newcommand*{\person}[4]{%
	\index[lpl]{#2 #1@#1 #2: \rl{#3 #4}}%
	\index[fpl]{#4 #3@#3 #4: \lr{#1 #2}}%
	\index[lpl]{#1 #2@#1 #2: \rl{#3 #4}}%
	\index[fpl]{#3 #4@#3 #4: \lr{#1 #2}}%
	#3 #4%
}
\newcommand*{\caxs}[2]{%
	\index[fpl]{#2 #1@#1 #2}%
	\index[fpl]{#1 #2@#1 #2}%
	{#1 #2}%
}
\newcommand*{\caxsmuhem}[2]{%
	\index[fpl]{#2 #1@#1 #2}%
	\index[fpl]{#1 #2@#1 #2}%
	\textbf{#1 #2}%
}
\newcommand*{\faqatfomil}[2]{%
	\index[fpl]{#2 #1@#1 #2}%
	\index[fpl]{#1 #2@#1 #2}{#2}%
}
\newcommand*{\faqatbofomil}[2]{%
	\index[fpl]{#1 #2@#1 #2}{#2}%
}
\newcommand*{\faqatfomilmuhem}[2]{%
	\index[fpl]{#1 #2@#1 #2}%
	\index[fpl]{#2 #1@#1 #2}%
	\textbf{#2}%
}
\newcommand*{\faqatbofomilmuhem}[2]{%
	\index[fpl]{#2 #1@#1 #2}%
	\textbf{#2}%
}
\تر\شخص{\caxs}
\تر\شخصمهم{\caxsmuhem}
\تر\فامیل{\faqatfomil}
\تر\فقطبافامیل{\faqatbofomil}
\تر\فامیلمهم{\faqatfomilmuhem}
\تر\فقطبافامیلمهم{\faqatbofomilmuhem}
\تر\مهم#1{\textbf{#1}\index{#1}}
\تر\☺{ {\درشت \تایپ{☺}}}
\تر\☹{ {\درشت \تایپ{☺}}}
