#include "ScriptPCH.h"
     
enum enums
{
        TITLE_TOKEN = 37829,
        TITLE_PRICE = 800,
};
     
    class Title_NPC : public CreatureScript
    {
            public:
            Title_NPC() : CreatureScript("Title_NPC") { }
                        bool OnGossipHello(Player * Player, Creature * Creature)
        {
                if (Player->GetTeam() == ALLIANCE)
                {
                Player->ADD_GOSSIP_ITEM(4, "Alliance Titles", GOSSIP_SENDER_MAIN, 0);
                }
                else
                {
                Player->ADD_GOSSIP_ITEM(4, "Horde Titles", GOSSIP_SENDER_MAIN, 1);
                }
                Player->PlayerTalkClass->SendGossipMenu(20000, Creature->GetGUID());
                return true;
        }
                bool OnGossipSelect(Player * Player, Creature * Creature, uint32 sender, uint32 uiAction)
                {
                    std::string name;
                    name = Player->GetName();
     
                    if (sender == GOSSIP_SENDER_MAIN)
                    {
                            Player->PlayerTalkClass->ClearMenus();
                            switch(uiAction)
                            {
                    {      
                    case 0:
                    Player->ADD_GOSSIP_ITEM(4, name+" Main d'A'dal", GOSSIP_SENDER_MAIN, 2);
                    Player->ADD_GOSSIP_ITEM(4, name+" Chercheur", GOSSIP_SENDER_MAIN, 4);
                    Player->ADD_GOSSIP_ITEM(4, name+" des dix temp�tes", GOSSIP_SENDER_MAIN, 6);
                    Player->ADD_GOSSIP_ITEM(4, name+" du R�ve d'�meraude", GOSSIP_SENDER_MAIN, 7);
                    Player->ADD_GOSSIP_ITEM(4, name+" de Khaz Modan", GOSSIP_SENDER_MAIN, 11);
                    Player->ADD_GOSSIP_ITEM(4, name+" au coeur de lion", GOSSIP_SENDER_MAIN, 12);
                    Player->ADD_GOSSIP_ITEM(4, name+" the Forsaken", GOSSIP_SENDER_MAIN, 13);
                    Player->ADD_GOSSIP_ITEM(4, name+" the Magic Seeker", GOSSIP_SENDER_MAIN, 14);
                    Player->ADD_GOSSIP_ITEM(4, name+" the Love Fool", GOSSIP_SENDER_MAIN, 16);
                    Player->ADD_GOSSIP_ITEM(4, name+" of the Nightfall", GOSSIP_SENDER_MAIN, 17);
                    Player->ADD_GOSSIP_ITEM(4, name+" the Immortal", GOSSIP_SENDER_MAIN, 18);
                    Player->ADD_GOSSIP_ITEM(4, name+" the Undying", GOSSIP_SENDER_MAIN, 19);       
                    Player->ADD_GOSSIP_ITEM(4, name+" the Insane", GOSSIP_SENDER_MAIN, 21);        
                    Player->ADD_GOSSIP_ITEM(4, name+" the Astral Walker", GOSSIP_SENDER_MAIN, 23);
                    Player->ADD_GOSSIP_ITEM(4, name+" Herald of the Titans", GOSSIP_SENDER_MAIN, 24);      
                    Player->ADD_GOSSIP_ITEM(4, name+" of the Alliance", GOSSIP_SENDER_MAIN, 27);   
                    Player->ADD_GOSSIP_ITEM(4, "Justicar "+name, GOSSIP_SENDER_MAIN, 25);  
                    Player->ADD_GOSSIP_ITEM(4, "Garde-flammes "+name, GOSSIP_SENDER_MAIN, 3);               
                    Player->ADD_GOSSIP_ITEM(4, "Ma�tre de l'ar�ne "+name, GOSSIP_SENDER_MAIN, 5);               
                    Player->ADD_GOSSIP_ITEM(4, "Traqueur "+name, GOSSIP_SENDER_MAIN, 8);            
                    Player->ADD_GOSSIP_ITEM(4, "Assassin "+name, GOSSIP_SENDER_MAIN, 9);
                    Player->ADD_GOSSIP_ITEM(4, "Docteur "+name, GOSSIP_SENDER_MAIN, 10);
                    Player->ADD_GOSSIP_ITEM(4, "Merrymaker "+name, GOSSIP_SENDER_MAIN, 15);
                    Player->ADD_GOSSIP_ITEM(4, "Bloodsail Admiral "+name, GOSSIP_SENDER_MAIN, 20);
                    Player->ADD_GOSSIP_ITEM(4, "Starcaller "+name, GOSSIP_SENDER_MAIN, 22);
                    Player->PlayerTalkClass->SendGossipMenu(20000, Creature->GetGUID());
                    break;
     
                    case 1:
                    Player->ADD_GOSSIP_ITEM(4, name+" Main d'A'dal", GOSSIP_SENDER_MAIN, 2);
                    Player->ADD_GOSSIP_ITEM(4, name+" Chercheur", GOSSIP_SENDER_MAIN, 4);
                    Player->ADD_GOSSIP_ITEM(4, name+" des dix temp�tes", GOSSIP_SENDER_MAIN, 6);
                    Player->ADD_GOSSIP_ITEM(4, name+" du R�ve d'�meraude", GOSSIP_SENDER_MAIN, 7);
                    Player->ADD_GOSSIP_ITEM(4, name+" de Khaz Modan", GOSSIP_SENDER_MAIN, 11);
                    Player->ADD_GOSSIP_ITEM(4, name+" au coeur de lion", GOSSIP_SENDER_MAIN, 12);
                    Player->ADD_GOSSIP_ITEM(4, name+" the Forsaken", GOSSIP_SENDER_MAIN, 13);
                    Player->ADD_GOSSIP_ITEM(4, name+" the Magic Seeker", GOSSIP_SENDER_MAIN, 14);
                    Player->ADD_GOSSIP_ITEM(4, name+" the Love Fool", GOSSIP_SENDER_MAIN, 16);
                    Player->ADD_GOSSIP_ITEM(4, name+" of the Nightfall", GOSSIP_SENDER_MAIN, 17);
                    Player->ADD_GOSSIP_ITEM(4, name+" the Immortal", GOSSIP_SENDER_MAIN, 18);
                    Player->ADD_GOSSIP_ITEM(4, name+" the Undying", GOSSIP_SENDER_MAIN, 19);       
                    Player->ADD_GOSSIP_ITEM(4, name+" the Insane", GOSSIP_SENDER_MAIN, 21);        
                    Player->ADD_GOSSIP_ITEM(4, name+" the Astral Walker", GOSSIP_SENDER_MAIN, 23);
                    Player->ADD_GOSSIP_ITEM(4, name+", Herald of the Titans", GOSSIP_SENDER_MAIN, 24);     
                    Player->ADD_GOSSIP_ITEM(4, name+" of the Horde", GOSSIP_SENDER_MAIN, 28);
                    Player->ADD_GOSSIP_ITEM(4, "Conqueror "+name, GOSSIP_SENDER_MAIN, 26); 
                    Player->ADD_GOSSIP_ITEM(4, "Garde-flammes "+name, GOSSIP_SENDER_MAIN, 3);               
                    Player->ADD_GOSSIP_ITEM(4, "Ma�tre de l'ar�ne "+name, GOSSIP_SENDER_MAIN, 5);               
                    Player->ADD_GOSSIP_ITEM(4, "Traqueur "+name, GOSSIP_SENDER_MAIN, 8);            
                    Player->ADD_GOSSIP_ITEM(4, "Assassin "+name, GOSSIP_SENDER_MAIN, 9);
                    Player->ADD_GOSSIP_ITEM(4, "Docteur "+name, GOSSIP_SENDER_MAIN, 10);
                    Player->ADD_GOSSIP_ITEM(4, "Merrymaker "+name, GOSSIP_SENDER_MAIN, 15);
                    Player->ADD_GOSSIP_ITEM(4, "Bloodsail Admiral "+name, GOSSIP_SENDER_MAIN, 20);
                    Player->ADD_GOSSIP_ITEM(4, "Starcaller "+name, GOSSIP_SENDER_MAIN, 22);
                    Player->PlayerTalkClass->SendGossipMenu(20000, Creature->GetGUID());
                    break;
           
                                    case 2:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                    CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(64);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("Vous gagnez le titre Main d'A'dal!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                    }
                                    break;
                                   
                                    case 3:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                    CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(76);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("Vous gagnez le titre Garde-flammes!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                    }
                                    break;
                                   
                                    case 4:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                     CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(81);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("Vous gagnez le titre Chercheur!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                    }
                                    break;
                                   
                                    case 5:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                     CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(82);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("Vous gagnez le titre Ma�tre de l'ar�ne!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                    }
                                    break;
                                   
                                    case 6:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                    CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(86);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("Vous gagnez le titre des dix temp�tes!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                    }
                                    break;
                                   
                                    case 7:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                    CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(87);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("Vous gagnez le titre du R�ve d'�meraude!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                    }
                                    break;
                                   
                                    case 8:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                    CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(91);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("Vous gagnez le titre Traqueur!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                    }
                                    break;
                                   
                                    case 9:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                    CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(95);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("Vous gagnez le titre Assassin!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                    }
                                    break;
                                   
                                    case 10:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                    CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(101);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("Vous gagnez le titre Docteur!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                    }
                                    break;
                                   
                                    case 11:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                    CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(112);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("Vous gagnez le titre de Khaz Modan!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                    }
                                    break;
                                   
                                    case 12:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                     CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(114);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("Vous gagnez le titre au coeur de lion!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                    }
                                    break;
                                   
                                    case 13:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                    CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(119);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("You earned the Forsaken title!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                    }
                                    break;
                                   
                                    case 14:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                    CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(120);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("You earned the Magic Seeker title!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                    }
                                    break;
                                   
                                    case 15:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                    CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(134);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("You earned Merrymaker title!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                    }
                                    break;
     
                                    case 16:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                    CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(135);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("You earned the Love Fool title!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                    }
                                    break;
     
                                    case 17:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                    CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(140);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("You earned Nightfall title!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                    }
                                    break;
                                           
                                    case 18:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                    CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(141);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("You earned the Immortal title!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                    }
                                    break;
     
                                    case 19:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                    CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(142);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("You earned the Undying title!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                    }
                                    break;
                                   
                                    case 20:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                    CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(144);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("You earned Bloodsail Admiral title!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                     }
                                    break;
                                   
                                    case 21:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                    CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(145);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("You earned the Insane title!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                     }
                                    break;
                                                           
                                    case 22:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                    CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(164);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("You earned Starcaller title!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                     }
                                    break;
                                                                   
                                    case 23:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                    CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(165);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("You earned the Astral Walker title!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                     }
                                    break;
                                                                   
                                    case 24:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                    CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(166);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("You earned Herald of the Titans title!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                     }
                                     break;
                                     
                                    case 25:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                    CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(48);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("You earned Justicar title!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                     }
                                     break;
                                     
                                    case 26:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                    CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(47);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("You earned Conqueror title!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                     }
                                     break;
                                     
                                    case 27:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                    CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(126);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("You earned the Alliance title!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                     }
                                     break;
                                     
                                    case 28:
                                    if (Player->HasItemCount(TITLE_TOKEN, TITLE_PRICE, true))
                                    {
                                    Player->DestroyItemCount(TITLE_TOKEN, TITLE_PRICE, true);
                                                    CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(127);
                                                    Player->SetTitle(titleInfo, false);
                                                    Creature->MonsterWhisper("You earned the Horde title!", Player->GetGUID());
                                                    Player->CLOSE_GOSSIP_MENU();
                                    }
                                    else
                                    {
                                     Creature->MonsterWhisper("You don't have Brewfest Prize Tokens!", Player->GetGUID());
                                     Player->CLOSE_GOSSIP_MENU();
                                     }
                                        }
                                }
                        }
                        return true;
                }
        };
     
        void AddSC_Title_NPC()
        {
        new Title_NPC();
        }