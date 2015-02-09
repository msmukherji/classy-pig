require 'pry'
require './player'
require './eithergame'

Max = 10


def choose_game
	puts "\n\nWould you like to play hog or pig? (h/p)\n\n"
	answer = gets.chomp

	if answer == "h"
		puts "\n\nYou've chosen HOG!  Let's get started.\n\n"
		h = HogGame.new
		h.play
	elsif answer == "p"
		puts "\n\nYou've chosen PIG!  Let's get started.\n\n"
		p = PigGame.new
		p.play
	end

end

puts "\n\nWELCOME TO UNGULATE GAMES!\n\n"
puts "   		  .
                d$F
              ;$$$F!               ,c
             ,$$$$F!            .dR9
             $$$$$!f         .,d$?XF
             $$$$J$bood$$$$$$$$"",dF
            ;$$$$$$$$$$$$A$$$F  :!$eu
           ;$$$$$$$$$$$$BA$$P xxX9?d$$$$$beu.
          d$$$$$$$$$$$$$$XR$U$$$$$$$$$$$$$$$$$bu
        .$$$$$$$$$$$$$$$$$$$$$$R$$$$$$$$$$$$$$$$$$bu.
        d$$$$$$$$$$$$$$$$$$$P?:?$$$$$$$$$$$$$$$$$$$$$$bc.
       ;$$$$$$$$$P" "97U$$$P:::?$$$$$$$$$$$$$$$$$$$$$$$$$$b.
      Jd$$$$$$$$$$___!d$$$P:::X$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$c
    ,d$$$$$$$$R$$$$$$$$$$$P:::X$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$c
 zd$$$$$$RRAAAA8B$$$$$$$$P:::X8$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$c
 bz$$""$$8A888$$$$??R$$$$$:::d$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$b.
   ""?d$$$$???Tkod$$$$P?SUW$$$$$$$$$$$$$$$AAP$$$$$$$$$$$$$$$$$$$$$$$k
     `-<XXHHHAAAAAA88ddPP$$PP!?!A$$$$$$$$$A!!$$$$$$$$$$$$$$$$$$$$$$$$$L
          ""??tAAAAAAAAAAAAA'!A9d$$$$$$$$P!!X$$$$$$$$$$$$$$$$$$$$$$$$$$L
            !!: ""????'        ?$$$$$$$$P!!X$$$$$$$$$$$$$$$$$$$$$$$$$$$$
           '!!!h..             .$$$$$$$P!!XA$$$$$$$$$$$$$$$$$$$$$$$$$$$$b
           d$A!!!!!            d$$$$$P!!':AAA$$$$$$$$$$$$$$$P?I$$$$$$$$$$
          d$$$!d$8!           J$$$$$$P! '!AAAAA$$$$$$$$$$P>b$$$$$$$$$$$$P
         :$$$$$$$P           :$$$$$$!!  !!!!AAAAAAPPPPP?,d$$$$$$$$$$$$$$!
         '?$$$$$$            d$$$$$X!   '!!!!!!????f':;S8$$$$$$$$$$$$$P!'
         '!!TPP$             $$$$$Xf        ``` .+d$$$$$$$$$$$$$$$$P?!'
        x$$$bUP              <!TTR!     ..xeeddIT$d$$$$$$$$$$$$$$P?!'
       :$$$$$$              4$$$$$Xs$$$$$$$X$$??TT???????????T??!!''
       A$8333!              $$$$$$X""""""``             ''''
       $$$""""              <?$$$$$%
        ""'`               $bbdddF
                           $'$$$$
                           "":$$$"

puts "\n\n\n*******************************************************************************\n
*******************************************************************************\n\n\n"
choose_game

puts "\n\nWould you like to play again? (y/n)\n\n"
again = gets.chomp

unless again == "n"
	choose_game
end

