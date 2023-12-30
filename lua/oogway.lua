local M = {}

local wisdoms = {
    "Remember the path.",
    "Nothing is impossible.",
    "There are no accidents.",
    "I sense the Dragon Warrior is among us.",
    "I understand. You eat when you are upset.",
    "You just need to believe. You must believe.",
    "Oh, Shifu. There is just news. There is no good or bad.",
    "It is you who must decide whether to stay or go.",
    "That is bad news... If you do not believe in yourself.",
    "There is always something more to learn. Even for a master.",
    "When will you realize? The more you take the less you have.",
    "One often meets his destiny on the road he takes to avoid it.",
    "My time has come. You must continue your journey, without me.",
    "It matters not what someone is born, but what they grow to be.",
    "I see you have found the Sacred Peach Tree of Heavenly Wisdom!",
    "I think they will all lose until they find a battle worth fighting.",
    "If you only do what you can do, you will never be more than you are now.",
    "Who knows the ways of the universe? Accident? Or destiny? That is the secret.",
    "When the path you walk always leads back to yourself, you never get anywhere.",
    "Maybe it can - if you are willing to guide it, to nurture it, to believe in it.",
    "Look at this tree. I cannot make it blossom when it suits me, nor make it bear fruit before its time.",
    "Use your skills for good, young warrior. Find the one thing you were denied so long ago - compassion.",
    "Yesterday is history, Tomorrow is a mystery, but today is a gift. That is why it is called the present.",
    "You must... believe. Promise me you'll believe.",
    "Shifu, an acorn can only become the mighty oak, not a cherry tree. You must let her grow into what she will be.",
    "My old friend, the panda will never fulfill his destiny, nor you yours, until you let go of the illusion of control.",
    "Your mind is like this water, my friend. When it is agitated, it becomes difficult to see. But if you allow it to settle, the answer becomes clear.",
    "You are the master of your destiny: No one and nothing can come in between you and your destiny except you. Take destiny by the horns and have fun.",
    "On the first day we met, I saw the future of Kung fu and the past. I saw the panda who could unite them both. That is why I chose you, Po. Both sides of the Ying and Yang. And my true successor.",
    "The true path to victory is to find your opponent’s weakness and make him suffer for it. And to take his strength and use it against him until he finally falls or quits."
}

local oogways = {
    [[
⠀⠀⠛⠛⣯⡙⠫⠭⡍⠉⢉⠝⠋⠉⡫⠋⢩⣯⠉⠙⠉⣉⢏⡡⣺⢿⠍⠻⠙⣋⣩⣭⢯⢉⣭⣽⠉⠻⡉⠉⣩⠋⠙⢭⠙⠙⠫⡩⠫⠤⠟⠉⢹⠏⠉⠉⢉⣙⡟⠉⣩⠌⣷
⠀⠀⢂⣈⠙⣦⡐⢄⠓⡆⠈⠒⠀⣦⠀⢰⡙⢁⠀⢡⡾⢕⡨⣖⠉⠘⢳⣆⣢⢞⠊⠤⡪⠄⠙⠛⢳⡄⣀⡀⣈⠆⠀⣀⣀⣘⣾⠻⣀⠀⢀⡠⠯⣤⠀⠀⢨⡟⠐⠃⠄⠠⣿
⠀⢰⣄⢉⣄⢱⡿⠂⢀⡜⠒⠖⢳⡔⡋⠈⠿⣟⡾⠝⡞⣉⡸⠈⡦⠖⡶⣿⣮⡁⢢⠾⢢⡤⠀⣶⣚⢛⢓⠞⢀⢀⣐⣒⠢⢤⣽⢀⢀⣇⣯⡏⡔⠁⣀⣗⣿⠉⢀⡠⣪⡖⣿
⢀⠀⢈⣸⣯⣀⡈⣐⣀⠉⢁⣤⣘⣔⣾⠗⠀⢾⣕⢊⠀⢐⡔⠋⠁⠈⣥⣄⡈⠁⠀⠗⠈⢘⡶⢟⡀⠄⠀⠀⣮⣀⠇⢹⠃⢀⠩⠏⠉⡉⠩⠳⢍⣱⠟⠍⡴⣽⣤⡀⣧⣄⣿
⠀⢛⣩⢻⡃⢀⠀⣹⣈⣓⣚⠉⠉⢓⡲⠖⣢⣈⣳⠒⠶⠒⢑⠀⣀⣠⠼⢄⡏⢁⠥⠨⡀⠈⢙⠆⠀⠓⣄⠒⠋⠈⠓⠤⣋⣉⣷⢾⠤⠙⢆⣄⠐⢗⣒⣭⠂⠈⣿⠊⣁⡍⣿
⠀⠀⠘⠊⠁⠉⠉⠀⠀⠀⠀⠁⠀⠈⠉⠉⠓⠊⠁⠀⠀⠀⠀⠉⠀⠀⠀⢸⡚⡠⠀⠀⠃⢸⠃⠒⢒⠠⠤⠧⣀⠀⠀⠀⠀⢇⠀⠀⠐⢧⣈⣈⠀⠤⣃⠻⠀⠳⢧⡔⠁⠀⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡨⠿⠁⠈⢁⠐⠀⣥⠠⠚⠥⢤⡀⠀⠈⠉⠉⡩⣼⢰⠀⣸⠛⠉⠉⠲⠦⢼⡃⣣⠠⠀⢠⡇⠀⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠄⠲⡤⠒⡚⠉⠉⠒⡿⢶⠶⡇⢀⣶⣦⠺⡘⡄⣅⣰⠇⠀⠀⠀⡞⠀⠈⠀⠉⢻⡀⠀⡠⠀⠉⡀⣨⣻⣠⣶⡾⢳⠆⣿
⠀⠐⣹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡜⢀⣀⣸⠀⠄⢳⠒⣶⠂⢼⢣⠀⠉⢩⣋⠁⠀⣈⢹⡭⢤⡀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠙⢜⢄⠀⠂⡠⢁⢀⡉⡾⠀⡀⢲⣿
⠀⢸⠹⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢏⡥⠧⣾⠀⠐⠼⣖⡀⢈⠝⠂⡇⠀⠀⠘⠦⡄⢸⠁⠠⡜⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠓⣕⡄⠀⠙⠳⠦⢌⠇⣸⡃⣿
⠀⠀⠳⡝⢦⣀⠞⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢫⠛⠁⠀⠀⠈⢉⠉⠩⠔⢆⢹⠀⠀⠀⠀⠈⠙⣤⠤⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡎⢹⡍⡹⠰⠲⠬⣓⣶⡄⣿
⠀⠀⠀⠈⡆⡝⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠈⠁⠀⠉⠉⠀⠀⠀⠀⠀⠨⣒⠈⠉⠉⠐⠢⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣤⠚⠠⠈⣱⠔⢰⡟⢌⠃⣿
⠀⠀⠀⠀⣷⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢆⡐⠘⠀⠀⠀⠀⠀⠀⠀⠋⢱⠀⡀⡀⡀⠀⣦⠄⠤⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠳⣄⣀⡽⡁⠀⠀⢿⠀⠀⣿
⠀⠀⠀⠀⠹⢹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠔⠓⡄⠀⠀⠀⠀⠀⠀⠂⢁⡇⡇⡃⠄⠀⡏⢰⠀⢠⢈⠢⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢴⠏⠈⠈⠐⡈⠃⠀⠀⣿
⠀⠀⠀⠀⢸⣮⢆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⡅⠠⡲⡙⡄⠀⠀⠀⠀⠀⠀⢨⣷⢧⣇⣧⢀⠁⡆⡄⡆⡜⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡤⠀⠀⣠⠃⠀⠀⠀⣿
⠀⠀⠀⠀⠘⡯⠜⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⡌⡾⡁⡱⡑⣱⡘⡄⠀⠀⠀⠀⠀⠈⢿⣤⠀⠈⣯⠔⣳⣷⣰⢡⠃⡴⠀⠢⡀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠈⠁⠀⠀⠀⠀⣿
⠀⠀⠀⠀⠀⢿⣸⢾⠇⠀⠀⠀⠀⠀⠀⠀⡠⢌⣞⣴⣙⣽⣾⣾⣿⡄⠀⠀⠀⠀⠀⠛⣿⣷⣦⣿⣾⣤⠁⠈⢻⠐⣵⣟⡀⢱⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿
⠀⠀⠀⠀⠀⢸⣽⣳⡅⠀⠀⠀⠀⠀⠀⢠⢡⢀⠫⣻⣿⣿⣿⣿⡿⠸⠀⠀⠀⠀⠀⠠⡸⡻⣿⣿⣿⣿⣷⣆⣾⣾⣿⣾⡎⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿
⠀⠀⠀⠀⠀⢸⢕⣝⡇⠀⠀⠀⠀⠀⠀⢸⢘⢕⢵⣿⣿⣿⣿⣿⠃⠀⠅⠀⠀⠀⠀⠁⠱⣆⠈⠛⢿⣿⣿⣿⣿⣿⣿⣟⡔⡙⢢⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿
⠀⠀⠀⠀⠀⢸⢮⢮⡇⠀⠀⠀⠀⠀⠀⢀⠧⠓⢿⣿⣿⣿⣿⠃⠐⠀⠀⠀⠀⠀⠀⠂⠀⠈⠀⠀⠀⠈⠻⢿⣿⣿⣿⣿⣝⣶⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿
⠀⠀⠀⠀⠀⠘⣼⢷⡇⠀⠀⠀⠀⠀⠀⡄⡄⢠⣾⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⠟⣟⡠⢧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿
⠀⠀⠀⠀⠀⠀⢹⡱⡇⠀⠀⠀⠀⠀⠀⢱⣘⢻⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣷⡵⢯⡈⠀⠑⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿
⠀⠀⠀⠀⠀⠀⣼⡿⡇⠀⠀⠀⠀⠀⢠⠃⠀⣹⠿⣏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠤⢠⡬⠁⠀⣼⣜⡄⠀⢼⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿
⠀⠀⠀⠀⢀⡠⢿⣹⡓⢦⡀⠀⠀⢰⡇⡀⢰⣿⡈⠠⢽⣒⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣖⡩⠔⠊⠁⠆⠀⢰⠿⣿⣿⣆⠀⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿
⠀⠀⢀⠜⠁⠀⠘⣿⢧⠀⢻⡀⠀⢰⣷⠒⢴⣿⡇⡀⠘⡄⠉⠀⠐⡧⠀⠀⠀⠀⠀⠆⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠃⣠⣧⠀⠈⠻⢿⣂⣌⢢⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿
⠀⠀⠎⠀⠀⢀⡴⠷⠖⠒⠚⢒⣒⠂⣷⡕⣄⠙⣠⡱⣄⣰⠀⠀⠀⠘⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⠈⡩⣺⠄⠀⠀⠀⠹⡜⡆⢣⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿
⠀⠘⠀⠀⠀⠘⢧⡀⠀⠀⠀⠀⣺⣃⠿⡿⠁⠑⣟⠃⢸⠈⠑⠠⠀⡀⠁⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠔⠀⠔⢩⠠⠁⠀⣀⠜⠈⠺⣀⣧⣀⠀⠃⠀⠀⠀⠀⠀⣿
⠀⠀⠀⠀⠀⠀⢸⣉⣀⡠⠤⠄⠐⠂⠉⠇⠀⠑⢿⠀⣌⠒⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⡱⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠢⠄⡀⣿
⠀⠀⠀⠀⠀⠀⢾⣿⠀⠀⠀⠀⠀⠀⠀⠘⠐⠁⢸⢸⣟⢦⡀⠈⠒⠖⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡿⠀⠀⠀⠀⠀⠀⠀⠐⠉⢲⢀⠔⡢⡀⠀⡀⣿
⠀⠀⠣⡄⣤⣠⣾⡏⠀⠀⠀⠀⠀⠀⠀⠀⢁⠀⢸⠘⣿⠀⠙⠲⣦⡤⢤⣤⣁⣂⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⠀⠀⢠⢷⡶⠒⢶⡇⢠⡇⠸⠀⢱⠃⠈⠆⣿
⠀⠀⠀⠙⢿⣉⣽⡟⠂⠀⠀⠀⠀⡀⠀⠀⠀⠀⡸⠀⡛⡇⠀⠀⠈⠣⣊⣟⣬⣽⡩⡿⡷⠶⣦⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⢈⡀⠀⡏⠀⠓⠤⠤⣵⡿⢆⡇⣤⠇⠀⠀⠀⣿
⠀⠀⠀⠀⠀⠙⠊⣿⢁⠀⠀⠀⠐⠁⢀⣤⠖⠉⢣⠀⠀⡇⠀⠀⠀⠀⠀⠙⠺⣷⣛⣻⠈⣳⡟⠛⡞⢿⣶⠠⢤⣄⡀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⢸⡱⠋⠀⠀⡐⢀⣿
⠀⠀⠀⠀⠀⠀⢐⣇⡈⠀⠉⠁⢀⠀⠸⠙⠀⠀⣸⡀⣀⣁⣀⣀⣀⣀⣀⣀⣀⣈⣙⣦⣀⣁⣀⣈⣀⣈⣉⣀⣐⣒⣒⣀⣀⣠⣄⣐⣀⣀⣀⣀⣀⣀⣀⣀⣀⣂⣀⣘⣴⣀⣿
    ]],
    [[
                                                              
                             ░░░░░░░░░                        
                           ░░░░░░░ ░░░░░                      
                           ░ ░░░▒░░░░▒▒░░                     
 ░                           ░░▒▒▒░░░░░░▒▒                    
 ░                           ░▒▒▒▓▒▒▒▒▒▒▒▒                    
 ░                           ▒▒▒▒▒▓▓▓▓▓▓▓▒                    
   ░    ░░                   ░▒▓▒▒▓▓▓▓▓▓▓▒                    
     ░░                        ░▒▓▓▓▓▓▓▓▓▒░░░                 
     ░                          ▒▓▓▓█▓▓▓▓▒░░░░░░  ░░░         
                              ░ ░░▒▓▓▓▓▓▓▒░░░░░░░░░░░░░░░░░░░░
      ░                     ░░   ▒▒▓▓▓▓▓▓▒░░░░░░░░░▒▒░░░░░░░░░
      ░░                   ░     ░░▒▓▓▓▓▓▒▒░░░░░░░░░░▒░░░░░░░░
       ░                          ░▒▓▓▓▓▓▓▒░░░░░░░░░░▒▒░░░░░░░
       ░░░░              ░░       ░▒▒▓▓▓▓▓▒░░░░░░░░░░▒░▒▒░░░░░
       ░░░░             ░░         ░▒▓▓▓▓▓▒▒░░░░░░░░░░░▒▒▒░░░░
    ]],
    [[
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░ ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▓▒░░▒░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▓▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░       ░▒▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░ ░░░░░░░░░░░░░░       ░▒▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░ ░░░░░░░░░░░        ▒▓▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░ ░░░░░░░░░░░     ░▒▓▒░░     ░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░   ░▒▓▓▓▒▒▒░░     ░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░ ░ ▒▓▓▓▓▒▓▒░░░      ░░░░░░ ░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░ ░▒▒▓▓▓▒▓▓▒░░░       ░░░░  ░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░▒░░░░░▒▒▒▒░░░░░     ░░░▒▒░░░░░░░░░░░░░░░░░░░
░░░░░▒▓░░ ░░░░▒▓▒░░░▒▒░░             ░▓▒░░░░▒▒░░░░░░░░░░░░░░░░
░░░░▒▓▒░      ▒▓▒▒░▒▒▒▒▒▒░░░         ▓▓▓▓▓▒  ░ ░░░░░░░░░░░░░░░
░░░░▒▒▒        ▒▒▒░▒▒▒▒▒▒▒▒▒▒░░░░░ ░▒▓▒▒▒▒░░▒░ ░░░░░░░░░░░░░░░
░░░░▒▒░░       ░░▒ ▒▓▓▒▒▒▒▒▒▒▒▒▒░░ ░▒▒░░░░░░░ ░░░░░░░░░░░░░░░░
░░░░░░   ░░░░  ░░░ ▒█▓▓▓▒░░░░▒▒▒▒░░     ░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░  ░░▒ ▒▓▓▓▓▓▓▒▒▒▒░░░░░    ░░░░░░░░░░░░░░░░░░░░░░░
    ]],
}

-- Returns a random wisdom
function M.what_is_your_wisdom()
    math.randomseed(os.time())
    return '"' .. wisdoms[math.random(#wisdoms)] .. '" - Master Oogway'
end

-- Returns a random image of the Master himself
function M.inspire_me()
    math.randomseed(os.time())
    return oogways[math.random(#oogways)]
end

-- Returns all possible wisdoms
function M.wisdoms()
    return wisdoms
end

-- Returns all possible oogways
function M.oogways()
    return oogways
end

function M.sense_the_dragon_warrior()
    vim.notify(M.what_is_your_wisdom().."\n\n"..M.inspire_me())
end

return M
