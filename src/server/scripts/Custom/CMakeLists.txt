# Copyright (C) 2008-2013 TrinityCore <http://www.trinitycore.org/>
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

set(scripts_STAT_SRCS
  ${scripts_STAT_SRCS}
  Custom/npc_enchanting.cpp
  Custom/npc_beastmaster.cpp
  Custom/npc_profession.cpp
  Custom/npc_title.cpp
  Custom/npc_morph.cpp  
  Custom/TeLe_gossip_codebox.cpp
  Custom/item_reset_talent.cpp
)

message("  -> Prepared: Custom")
