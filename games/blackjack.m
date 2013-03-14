%black jack
% a=input('how much start money? ');
clear all
clc

cards={'Ace','2','3','4','5','6','7','8','9','10','jack','queen','king'};
suit={'hearts','spades','diamonds','clubs'};
values=[1,2,3,4,5,6,7,8,9,10,10,10,10];

shuff_card=randi([1 13],2);
shuff_suit=randi([1 4],2);
fir_tot=values(shuff_card(1))+values(shuff_card(2));

fprintf('your cards are %s of %s and %s of %s\n',cards{shuff_card(1)},suit{shuff_suit(1)},cards{shuff_card(2)},suit{shuff_suit(2)})
fprintf('your total value is %d\n',fir_tot)

hit=input('enter 1 to hit, 2 to stay: ');
sec_tot=0;

while hit==1
    shuff_card1=randi([1 13],1);
    shuff_suit1=randi([1 4],1);
    
    sec_tot=values(shuff_card1)+sec_tot;
    
    fprintf('your next card is %s of %s\n',cards{shuff_card1},suit{shuff_suit1})
    fprintf('your total value is %d\n',sec_tot+fir_tot)
    if sec_tot+fir_tot>21
        fprintf('you busted, thx for the monies\n');
        break
    end
    
    hit=input('enter 1 to hit, 2 to stay: ');
    
    if hit==2
        break
    end
end
    
%here is where the AI starts
shuff_card_AI=randi([1 13],2);
shuff_suit_AI=randi([1 4],2);
AI_tot=values(shuff_card_AI(1))+values(shuff_card_AI(2));

fprintf('AI cards are %s of %s and %s of %s\n',cards{shuff_card_AI(1)},suit{shuff_suit_AI(1)},cards{shuff_card_AI(2)},suit{shuff_suit_AI(2)})
fprintf('AI total value is %d\n',AI_tot)

sec_tot_AI=0;

if sec_tot+fir_tot<22
    while sec_tot+fir_tot>AI_tot
        shuff_card_AI1=randi([1 13],1);
        shuff_suit_AI1=randi([1 4],1);
        sec_tot_AI=values(shuff_card_AI1)+sec_tot_AI;
        
        fprintf('your next card is %s of %s\n',cards{shuff_card1},suit{shuff_suit1})
        fprintf('your total value is %d\n',sec_tot_AI+AI_tot)
        if sec_tot_AI+AI_tot>21
            fprintf('AI busted, have fun\n');
            break
        elseif sec_tot_AI+AI_tot==sec_tot+fir_tot
            fprintf('AI and user values are the same, AI wins')
            break            
        end
        end
end


% if sec_tot_AI+AI_tot>21
%     do something
% end



fprintf('out\n')