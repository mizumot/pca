library(shiny)
library(shinyAce)


shinyUI(bootstrapPage(


    headerPanel("Principal Component Analysis"),

    mainPanel(
        tabsetPanel(

        tabPanel("Main",

            h3("Data"),
            p('Input values must be separated by tabs. Copy and paste from Excel/Numbers.'),
            p(HTML("<b><div style='background-color:#FADDF2;border:1px solid black;'>Please make sure that your data includes the header (variable names) in the first row.</div></b>")),

            strong('Option:'),
            checkboxInput("rowname", label = strong("The first column contains case names."), value = T),

            aceEditor("text", value="Unit\tWordsPerSentence\tFleschKincaidGrade\tNarrativity\tSyntacticSimplicity\tWordConcreteness\tReferentialCohesion\nU01\t13.5\t6.2\t79.1\t70.19\t60.64\t24.51\nU02\t16.6\t8.1\t57.53\t68.79\t95.91\t59.87\nU03\t15.9\t9.4\t31.21\t54.38\t29.81\t6.43\nU04\t17.5\t9.8\t42.07\t56.36\t47.21\t27.76\nU05\t14.9\t8.8\t53.19\t72.24\t58.32\t13.57\nU06\t16.9\t10\t34.83\t63.31\t57.93\t5.82\nU07\t20\t7.7\t41.29\t33.72\t84.38\t93.57\nU08\t14.3\t7.1\t69.85\t82.38\t35.2\t3.22\nU09\t16.7\t7.6\t89.07\t34.46\t89.62\t32.64\nU10\t14\t6.5\t44.04\t75.49\t71.9\t19.49\nU11\t17.4\t6\t93.82\t50.8\t57.53\t47.61\nU12\t21.5\t11.1\t37.83\t35.57\t43.64\t20.9\nU13\t18.5\t10.2\t28.77\t59.48\t32.28\t18.41\nU14\t17.6\t9.5\t64.8\t42.47\t65.91\t50.4\nU15\t20.2\t9.9\t28.43\t34.46\t84.61\t15.15",
                mode="r", theme="cobalt"),

            br(),

            h3("Basic statistics"),
            verbatimTextOutput("textarea.out"),

            br(),

            h3("Correlation"),
            verbatimTextOutput("correl.out"),

            br(),

            strong("Scatter plot matrices"),

            br(),


            plotOutput("corPlot"),

            br(),

            h3("Scree plot"),


            plotOutput("sPlot", width="80%"),

            br(),
            br(),

            h3("Results of principal component analysis"),
            verbatimTextOutput("pcaresult.out"),

            br(),
            br(),

            h3("Plot"),

            plotOutput("pcPlot1", height = "600px"),

            br(),


            plotOutput("pcPlot2", height = "500px"),

            br(),


            plotOutput("pcPlot3", height = "500px"),

            br(),

            h4("Biplot"),

            plotOutput("pcPlot4", height = "700px"),

            br(),

            h4("Cluster analysis using the principal component scores"),
            p("(Ward method with the squared Euclidean distance technique)"),

            plotOutput("pcPlot5"),

            br(),
            br(),

            strong('R session info'),
            verbatimTextOutput("info.out")

            ),


        tabPanel("About",

            strong('Note'),
            p('This web application is developed with',
            a("Shiny.", href="http://www.rstudio.com/shiny/", target="_blank"),
            ''),

            br(),

            strong('List of Packages Used'), br(),
            code('library(shiny)'),br(),
            code('library(shinyAce)'),br(),
            code('library(psych)'),br(),

            br(),

            strong('Code'),

            p('Source code for this application is mostly based on',
            a("this website maintained by Dr. Tabata.", href='http://www.lang.osaka-u.ac.jp/~tabata/JAECS2004/multi.html', target="_blank")),

            p('The code for this web application is available at',
            a('GitHub.', href='https://github.com/mizumot/pca', target="_blank")),

            p('If you want to run this code on your computer (in a local R session), run the code below:',
            br(),
            code('library(shiny)'),br(),
            code('runGitHub("pca","mizumot")')
            ),

            br(),

            strong('Recommended'),
            br(),

            a("The handbook of Research in Foreign Language Learning and Teaching(Takeuchi & Mizumoto, 2012)", href='http://mizumot.com/handbook/', target="_blank"),

            br(),
            br(),

            p('To learn more about R, I suggest this excellent and free e-book (pdf),',
            a("A Guide to Doing Statistics in Second Language Research Using R,", href="http://cw.routledge.com/textbooks/9780805861853/guide-to-R.asp", target="_blank"),
            'written by Dr. Jenifer Larson-Hall.'),

            p('Also, if you are a cool Mac user and want to use R with GUI,',
            a("MacR", href="http://www.urano-ken.com/blog/2013/02/25/installing-and-using-macr/", target="_blank"),
            'is defenitely the way to go!'),

            br(),

            strong('Author'),
            p(a("Atsushi MIZUMOTO,", href="http://mizumot.com", target="_blank"),' Ph.D.',br(),
            'Associate Professor of Applied Linguistics',br(),
            'Faculty of Foreign Language Studies /',br(),
            'Graduate School of Foreign Language Education and Research,',br(),
            'Kansai University, Osaka, Japan'),

            br(),

            a(img(src="http://i.creativecommons.org/p/mark/1.0/80x15.png"), target="_blank", href="http://creativecommons.org/publicdomain/mark/1.0/"),

            p(br())

            )

))
))