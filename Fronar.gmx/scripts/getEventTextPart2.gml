//getEventTextPart2()

switch(global.event_id) {
        case 0:
            //Abandoned Shack, Requires choice of 1 character
            char = global.event_selected_option;
            chargender = ds_list_find_value(ds_list_find_value(global.eventCharList, char), 0);
            charname = ds_list_find_value(ds_list_find_value(global.eventCharList, char), 1);
            
            text = charname +
            " wraps duct tape around the knife and the end of " + 
            getGenderedPosessive(chargender, false) + 
            " gun. #" +
            getGenderedPronoun(chargender, true) + 
            " takes a few practice swings. " +
            '##"Let' + "'s see those Borgis come at me now!" + '"' +
            "##+3 to " + charname + "'s Melee Damage."             
            return text;
            break;
        case 1:
            //Spike Pit, Requires either a character or do nothing, also has subevents
            option = global.event_selected_option;
            if (option == 0){
                text = 
                "No way in hell am I falling for that again," +
                ds_list_find_value(ds_list_find_value(global.eventCharList, 1), 1) + " says.#" + 
                "The party leaves what is probably a trap and continues on through the trees.";
            } else  {
                char = global.event_selected_option - 1;
                chargender = ds_list_find_value(ds_list_find_value(global.eventCharList, char), 0);
                charname = ds_list_find_value(ds_list_find_value(global.eventCharList, char), 1);
                charpronoun = getGenderedPronoun(chargender, false);
                charposessive = getGenderedPosessive(chargender, false);
                charpronounCaps = getGenderedPronoun(chargender, true);
                charself = getGenderedSelf(chargender);
                //Option 1 and 2 both are character selections
                switch(global.event_subevent){
                    case 0:
                        text = charname + 
                        " notices a low hanging branch on a nearby tree. " + 
                        charpronounCaps + 
                        " could probably climb out" + 
                        "#on the limb and grab the rations from above, and as long as its not too heavy " +
                        charpronoun + " could" +
                        "#untie the sack and swing it over to the edge of the pit.#" + 
                        '#"Seems sturdy enough."##' +
                        charname + 
                        " wraps " + charposessive +
                        " legs around the branch and reaches down. A few seconds later the "  +
                        "#sack is free and lands safely beside the pit. But before " +
                        charpronoun + 
                        " can make it to the trunk of the" + 
                        "#tree, the branch snaps and " + charname + 
                        " falls into the pit below, impaling " + charposessive + " leg on one of" + 
                        "#the spikes. With a scream that sends a flock of birds flying " + charpronoun + " manages to free#" +
                        charself + " and crawl out of the pit, but " + charpronoun + "is bleeding profusely.#" + 
                        "#Turns out the sack is chock-full of non-perishable foodstuffs. Still, someone has a sick sense of humour.#" + 
                        "#+10 Food" + 
                        "#-10 to " + charname + "'s health, and " + charpronoun + " movement speed is decreased to 1.";
                        break;
                    case 1:
                        text = charname + 
                        " notices a low hanging branch on a nearby tree. " + 
                        charpronounCaps + 
                        " could probably climb out" + 
                        "#on the limb and grab the rations from above, and as long as its not too heavy " +
                        charpronoun + " could" +
                        "#untie the sack and swing it over to the edge of the pit.#" + 
                        '#"Seems sturdy enough."##' +
                        charname + 
                        " wraps " + charposessive +
                        " legs around the branch and reaches down. A few seconds later the "  +
                        "#sack is free and lands safely beside the pit. But before " +
                        charpronoun + 
                        " can make it to the trunk of the" + 
                        "#tree, the branch snaps and " + charname + 
                        " falls into the pit below, impaling " + charposessive + " leg on one of" + 
                        "#the spikes. With a scream that sends a flock of birds flying " + charpronoun + " manages to free#" +
                        charself + " and crawl out of the pit, but " + charpronoun + " is bleeding profusely.#" + 
                        "#Turns out the sack is chock-full of horse manure. Someone has a sick sense of humour.#" + 
                        "#-10 to " + charname + "'s health, and " + charpronoun + " movement speed is decreased to 1.";
                        break;
                    case 2:
                        text = charname + 
                        " notices a low hanging branch on a nearby tree. " + 
                        charpronounCaps + 
                        " could probably climb out" + 
                        "#on the limb and grab the rations from above, and as long as its not too heavy " +
                        charpronoun + " could" +
                        "#untie the sack and swing it over to the edge of the pit.#" + 
                        '#"Seems sturdy enough."##' +
                        charname + 
                        " wraps " + charposessive +
                        " legs around the branch and reaches down. A few seconds later the "  +
                        "#sack is free and lands safely beside the pit. " + 
                        "#Then " + charpronoun + " scampers back to safety. #" + 
                        "#Turns out the sack is chock-full of non-perishable foodstuffs. Still, someone has a sick sense of humour.#" + 
                        "#+10 Food";                 
                        break;
                    case 3:
                        text = charname + 
                        " notices a low hanging branch on a nearby tree. " + 
                        charpronounCaps + 
                        " could probably climb out" + 
                        "#on the limb and grab the rations from above, and as long as its not too heavy " +
                        charpronoun + " could" +
                        "#untie the sack and swing it over to the edge of the pit.#" + 
                        '#"Seems sturdy enough."##' +
                        charname + 
                        " wraps " + charposessive +
                        " legs around the branch and reaches down. A few seconds later the "  +
                        "#sack is free and lands safely beside the pit. " + 
                        "#Then " + charpronoun + " scampers back to safety. #" + 
                        "#Turns out the sack is chock-full of horse manure.  Someone has a sick sense of humour.#";                         
                        break;
                }
            
            }
            return text;
            break;
        case 2:
            switch(global.event_selected_option){
                case 0:
                    text = '"Pleasure doin' + "' business with ye'." + '"#' +
                    "#The party bids her farewell before she disappears into the distance." +
                    "##-10 Food, +5 Parts";
                    break;
                case 1:
                    text = '"I thought y' + "'might need em. You ain't lookin' so good." + '"#' + 
                    "#The party bids her farewell before she disappears into the distance." +
                    "##-10 Food, +5 Med Kits";
                    break;
                case 2:
                    text = '"' + "That's all y'got, eh? Well alright then." + '"' + 
                    "##The party bids her farewell before she disappears into the distance." + 
                    "##-5 Parts, +3 Med Kits";
                    break;
                case 3:
                    char = obj_event_option_4.charId;
                    charname = ds_list_find_value(ds_list_find_value(global.eventCharList, char), 1);
                    chargender = ds_list_find_value(ds_list_find_value(global.eventCharList, char), 0);
                    charposessive = getGenderedPosessive(chargender, false);
                    charpronoun = getGenderedPronoun(chargender, false);
                    text = "Somewhere beneath the woman's hood, a chuckle escapes.#" + 
                    '#"' + "Don't say I didn't warn ye'." + '"#' +
                    "#Before anyone knows what's happened, " + charname + " is on the ground with a bullet through " +
                    charposessive + 
                    "#skull, a stream of blood pouring from the hole in " + 
                    charposessive + 
                    " forehead. The woman doesn't appear to be" + 
                    "#holding a gun. " + charname + "'s lifeless eyes stare up at the sky, " +
                    charposessive + " limbs perfectly spread-eagled, as " +
                    "#though " + charpronoun + " were hit with a spell and not a bullet.#" +
                    '#"' + "Though I s'pose y'won't be sayin' much of anything now. Pleasure doin' business with ye'." + '"#' +
                    "#With a flash of lightning, the woman and her wagon are gone.#" +
                    "#" + charname + " is dead."; 
                    break;
            }
            return text;
            break;
        case 5:
            text = "";
            char1 = ds_list_find_value(ds_list_find_value(global.eventCharList, 0), 1);
            char2 = ds_list_find_value(ds_list_find_value(global.eventCharList, 1), 1);
            char1gender = ds_list_find_value(ds_list_find_value(global.eventCharList, 0), 0);
            char2gender = ds_list_find_value(ds_list_find_value(global.eventCharList, 1), 0);
            char1pronoun = getGenderedPronoun(char1gender, false);
            char2pronoun = getGenderedPronoun(char2gender, false);
            char1posessive = getGenderedPosessive(char1gender, false);
            char1objective = getGenderedObjective(char1gender);
            show_debug_message("event text being generated option " + string(global.event_selected_option));
            switch(global.event_selected_option){
                case 0:
                    text += "Inside, " + char1 + " sits down on one of the benches and stares into the empty ring. " + char1pronoun + 
                    "#imagines " + char1pronoun + " can see elephants jumping. Since the Borgis attacked there hasn't been much time" +
                    "#for daydreaming and " + char1pronoun + " relishes  the opportunity, but " + char1posessive + "conscience quickly wears on" + 
                    "#" + char1objective + ": there's still a long way to go before sundown. So " + char1pronoun + " stands and brushes off the thin" +
                    "#layer of dust already accumulated on " + char1posessive + " pants and gets to searching." +
                    "##In a hidden trapdoor in the middle of the ring, " + char1 + " finds a cache of first aid supplies. " + char1pronoun +
                    "#then returns to the group." +
                    "##+5 Med Kits";
                    break;
                case 1:
                    text += '"' + "There's bound to be food stashed around here somewhere." + '"' +
                    "##With the desperation of a starving person, " + char2 + " moves methodically through each and every" + 
                    "#booth, opening cupboards, flipping tables, even going so far as to dismantle a food truck " + char2pronoun + 
                    "#thinks might be hiding Twinkies. At the end of it, " + char2 + " has amassed a sizeable stack of " + 
                    "#non-perishables which " + char2pronoun + " carries back to the group." +
                    "##+12 Food";
                    break;
            }    
            show_debug_message("generated as " + text);
            return text;
            break;
        
}
