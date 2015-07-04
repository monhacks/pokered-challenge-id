TrainerDataPointers: ; 39d3b (e:5d3b)
	dw YoungsterData,BugCatcherData,LassData,SailorData,JrTrainerMData
	dw JrTrainerFData,PokemaniacData,SuperNerdData,HikerData,BikerData
	dw BurglarData,EngineerData,Juggler1Data,FisherData,SwimmerData
	dw CueBallData,GamblerData,BeautyData,PsychicData,RockerData
	dw JugglerData,TamerData,BirdKeeperData,BlackbeltData,Green1Data
	dw ProfOakData,ChiefData,ScientistData,GiovanniData,RocketData
	dw CooltrainerMData,CooltrainerFData,BrunoData,BrockData,MistyData
	dw LtSurgeData,ErikaData,KogaData,BlaineData,SabrinaData
	dw GentlemanData,Green2Data,Green3Data,LoreleiData,ChannelerData
	dw AgathaData,LanceData

; if first byte < FE, then
	; first byte is level (of all pokemon on this team)
	; all the next bytes are pokemon species
	; null-terminated
; if first byte == FF, then
	; first byte is FF (obviously)
	; every next two bytes are a level and species
	; null-terminated
; if first byte == FE then
    ; first byte is FE (obviously)
    ; next six bytes are a level, species, 4 moves (using FF for blank move to support null)
    ; null-terminated

YoungsterData: ; 39d99 (e:5d99)
	db 11,RATTATA,EKANS,0
	db 14,SPEAROW,0
	db 10,RATTATA,RATTATA,ZUBAT,0
	db 14,RATTATA,EKANS,ZUBAT,0
	db 15,RATTATA,SPEAROW,0
	db 17,SLOWPOKE,0
	db 14,EKANS,SANDSHREW,0
	db 21,NIDORAN_M,0
	db 21,EKANS,0
	db 19,SANDSHREW,ZUBAT,0
	db 17,RATTATA,RATTATA,RATICATE,0
	db 18,NIDORAN_M,NIDORINO,0
	db 17,SPEAROW,RATTATA,RATTATA,SPEAROW,0
BugCatcherData: ; 39dce (e:5dce)
	db 6,WEEDLE,CATERPIE,0
	db 7,WEEDLE,KAKUNA,WEEDLE,0
	db 9,WEEDLE,0
	db 10,CATERPIE,WEEDLE,CATERPIE,0
	db 9,WEEDLE,KAKUNA,CATERPIE,METAPOD,0
	db 11,CATERPIE,METAPOD,0
	db 11,WEEDLE,KAKUNA,0
	db 10,CATERPIE,METAPOD,CATERPIE,0
	db 14,CATERPIE,WEEDLE,0
	db 16,WEEDLE,CATERPIE,WEEDLE,0
	db 20,BUTTERFREE,0
	db 18,METAPOD,CATERPIE,VENONAT,0
	db 19,BEEDRILL,BEEDRILL,0
	db 20,CATERPIE,WEEDLE,VENONAT,0
LassData: ; 39e0c (e:5e0c)
	db 9,PIDGEY,PIDGEY,0
	db 10,RATTATA,NIDORAN_M,0
	db 14,JIGGLYPUFF,0
	db 31,PARAS,PARAS,PARASECT,0
	db 11,ODDISH,BELLSPROUT,0
	db 14,CLEFAIRY,0
	db 16,PIDGEY,NIDORAN_F,0
	db 14,PIDGEY,NIDORAN_F,0
	db 15,NIDORAN_M,NIDORAN_F,0
	db 13,ODDISH,PIDGEY,ODDISH,0
	db 18,PIDGEY,NIDORAN_F,0
	db 18,RATTATA,PIKACHU,0
	db 23,NIDORAN_F,NIDORINA,0
	db 24,MEOWTH,MEOWTH,MEOWTH,0
	db 19,PIDGEY,RATTATA,NIDORAN_M,MEOWTH,PIKACHU,0
	db 22,CLEFAIRY,CLEFAIRY,0
	db 23,BELLSPROUT,WEEPINBELL,0
	db 23,ODDISH,GLOOM,0
SailorData: ; 39e58 (e:5e58)
	db 18,MACHOP,SHELLDER,0
	db 17,MACHOP,TENTACOOL,0
	db 21,SHELLDER,0
	db 17,HORSEA,SHELLDER,TENTACOOL,0
	db 18,TENTACOOL,STARYU,0
	db 17,HORSEA,HORSEA,HORSEA,0
	db 20,MACHOP,0
	db 21,PIKACHU,PIKACHU,0
JrTrainerMData: ; 39e78 (e:5e78)
	db 50,GRAVELER,ONIX,OMANYTE,0 ; brock's gym 1
	db 14,RATTATA,EKANS,0
	db 18,MANKEY,0
	db 20,SQUIRTLE,0
	db 16,SPEAROW,RATICATE,0
	db 18,DIGLETT,DIGLETT,SANDSHREW,0
	db 21,GROWLITHE,CHARMANDER,0
	db 19,RATTATA,DIGLETT,EKANS,SANDSHREW,0
	db 29,NIDORAN_M,NIDORINO,0
JrTrainerFData: ; 39e9d (e:5e9d)
	db 50,SEAKING,KINGLER,POLIWHIRL,0 ; misty's gym 1
	db 16,RATTATA,PIKACHU,0
	db 16,PIDGEY,PIDGEY,PIDGEY,0
	db 22,BULBASAUR,0
	db 18,ODDISH,BELLSPROUT,ODDISH,BELLSPROUT,0
	db 23,MEOWTH,0
	db 20,PIKACHU,CLEFAIRY,0
	db 21,PIDGEY,PIDGEOTTO,0
	db 21,JIGGLYPUFF,PIDGEY,MEOWTH,0
	db 22,ODDISH,BULBASAUR,0
	db 24,BULBASAUR,IVYSAUR,0
	db 24,PIDGEY,MEOWTH,RATTATA,PIKACHU,MEOWTH,0
	db 30,POLIWAG,POLIWAG,0
	db 27,PIDGEY,MEOWTH,PIDGEY,PIDGEOTTO,0
	db 28,GOLDEEN,POLIWAG,HORSEA,0
	db 31,GOLDEEN,SEAKING,0
	db 22,BELLSPROUT,CLEFAIRY,0
	db 20,MEOWTH,ODDISH,PIDGEY,0
	db 19,PIDGEY,RATTATA,RATTATA,BELLSPROUT,0
	db 28,GLOOM,ODDISH,ODDISH,0
	db 29,PIKACHU,RAICHU,0
	db 33,CLEFAIRY,0
	db 29,BELLSPROUT,ODDISH,TANGELA,0
	db 30,TENTACOOL,HORSEA,SEEL,0
PokemaniacData: ; 39f09 (e:5f09)
	db 30,RHYHORN,LICKITUNG,0
	db 20,CUBONE,SLOWPOKE,0
	db 20,SLOWPOKE,SLOWPOKE,SLOWPOKE,0
	db 22,CHARMANDER,CUBONE,0
	db 25,SLOWPOKE,0
	db 40,CHARMELEON,LAPRAS,LICKITUNG,0
	db 23,CUBONE,SLOWPOKE,0
SuperNerdData: ; 39f26 (e:5f26)
	db 11,MAGNEMITE,VOLTORB,0
	db 12,GRIMER,VOLTORB,KOFFING,0
	db 20,VOLTORB,KOFFING,VOLTORB,MAGNEMITE,0
	db 22,GRIMER,MUK,GRIMER,0
	db 26,KOFFING,0
	db 22,KOFFING,MAGNEMITE,WEEZING,0
	db 20,MAGNEMITE,MAGNEMITE,KOFFING,MAGNEMITE,0
	db 24,MAGNEMITE,VOLTORB,0
	db 36,VULPIX,VULPIX,NINETALES,0
	db 34,PONYTA,CHARMANDER,VULPIX,GROWLITHE,0
	db 41,RAPIDASH,0
	db 50,CHARMELEON,GROWLITHE,VULPIX,0 ; blaine's gym 1
HikerData: ; 39f5e (e:5f5e)
	db 10,GEODUDE,GEODUDE,ONIX,0
	db 15,MACHOP,GEODUDE,0
	db 13,GEODUDE,GEODUDE,MACHOP,GEODUDE,0
	db 17,ONIX,0
	db 21,GEODUDE,ONIX,0
	db 20,GEODUDE,MACHOP,GEODUDE,0
	db 21,GEODUDE,ONIX,0
	db 19,ONIX,GRAVELER,0
	db 21,GEODUDE,GEODUDE,GRAVELER,0
	db 25,GEODUDE,0
	db 20,MACHOP,ONIX,0
	db 19,GEODUDE,MACHOP,GEODUDE,GEODUDE,0
	db 20,ONIX,ONIX,GEODUDE,0
	db 21,GEODUDE,GRAVELER,0
BikerData: ; 39f9c (e:5f9c)
	db 28,KOFFING,KOFFING,KOFFING,0
	db 29,KOFFING,GRIMER,0
	db 25,KOFFING,KOFFING,WEEZING,KOFFING,GRIMER,0
	db 28,KOFFING,GRIMER,WEEZING,0
	db 29,GRIMER,KOFFING,0
	db 33,WEEZING,0
	db 26,GRIMER,GRIMER,GRIMER,GRIMER,0
	db 28,WEEZING,KOFFING,WEEZING,0
	db 33,MUK,0
	db 29,VOLTORB,VOLTORB,0
	db 29,WEEZING,MUK,0
	db 25,KOFFING,WEEZING,KOFFING,KOFFING,WEEZING,0
	db 26,KOFFING,KOFFING,GRIMER,KOFFING,0
	db 28,GRIMER,GRIMER,KOFFING,0
	db 29,KOFFING,MUK,0
BurglarData: ; 39fe4 (e:5fe4)
	db 29,GROWLITHE,VULPIX,0
	db 33,GROWLITHE,0
	db 28,VULPIX,CHARMANDER,PONYTA,0
	db 36,GROWLITHE,VULPIX,NINETALES,0
	db 41,PONYTA,0
	db 37,VULPIX,GROWLITHE,0
	db 34,CHARMANDER,CHARMELEON,0
	db 38,NINETALES,0
	db 34,GROWLITHE,PONYTA,0
EngineerData: ; 3a007 (e:6007)
	db 21,VOLTORB,MAGNEMITE,0
	db 21,MAGNEMITE,0
	db 18,MAGNEMITE,MAGNEMITE,MAGNETON,0
Juggler1Data: ; 3a013 (e:6013)
; none
FisherData: ; 3a013 (e:6013)
	db 17,GOLDEEN,TENTACOOL,GOLDEEN,0
	db 17,TENTACOOL,STARYU,SHELLDER,0
	db 22,GOLDEEN,POLIWAG,GOLDEEN,0
	db 24,TENTACOOL,GOLDEEN,0
	db 27,GOLDEEN,0
	db 21,POLIWAG,SHELLDER,GOLDEEN,HORSEA,0
	db 28,SEAKING,GOLDEEN,SEAKING,SEAKING,0
	db 31,SHELLDER,CLOYSTER,0
	db 27,MAGIKARP,MAGIKARP,MAGIKARP,MAGIKARP,MAGIKARP,MAGIKARP,0
	db 33,SEAKING,GOLDEEN,0
	db 24,MAGIKARP,MAGIKARP,0
SwimmerData: ; 3a049 (e:6049)
	db 16,HORSEA,SHELLDER,0
	db 30,TENTACOOL,SHELLDER,0
	db 29,GOLDEEN,HORSEA,STARYU,0
	db 30,POLIWAG,POLIWHIRL,0
	db 27,HORSEA,TENTACOOL,TENTACOOL,GOLDEEN,0
	db 29,GOLDEEN,SHELLDER,SEAKING,0
	db 30,HORSEA,HORSEA,0
	db 27,TENTACOOL,TENTACOOL,STARYU,HORSEA,TENTACRUEL,0
	db 31,SHELLDER,CLOYSTER,0
	db 35,STARYU,0
	db 28,HORSEA,HORSEA,SEADRA,HORSEA,0
	db 33,SEADRA,TENTACRUEL,0
	db 37,STARMIE,0
	db 33,STARYU,WARTORTLE,0
	db 32,POLIWHIRL,TENTACOOL,SEADRA,0
CueBallData: ; 3a08d (e:608d)
	db 28,MACHOP,MANKEY,MACHOP,0
	db 29,MANKEY,MACHOP,0
	db 33,MACHOP,0
	db 29,MANKEY,PRIMEAPE,0
	db 29,MACHOP,MACHOKE,0
	db 33,MACHOKE,0
	db 26,MANKEY,MANKEY,MACHOKE,MACHOP,0
	db 29,PRIMEAPE,MACHOKE,0
	db 31,TENTACOOL,TENTACOOL,TENTACRUEL,0
GamblerData: ; 3a0b3 (e:60b3)
	db 18,POLIWAG,HORSEA,0
	db 18,BELLSPROUT,ODDISH,0
	db 18,VOLTORB,MAGNEMITE,0
	db 18,GROWLITHE,VULPIX,0
	db 22,POLIWAG,POLIWAG,POLIWHIRL,0
	db 22,ONIX,GEODUDE,GRAVELER,0
	db 24,GROWLITHE,VULPIX,0
BeautyData: ; 3a0d1 (e:60d1)
	db 21,ODDISH,BELLSPROUT,ODDISH,BELLSPROUT,0
	db 24,BELLSPROUT,BELLSPROUT,0
	db 26,EXEGGCUTE,0
	db 27,RATTATA,PIKACHU,RATTATA,0
	db 29,CLEFAIRY,MEOWTH,0
	db 35,SEAKING,0
	db 30,SHELLDER,SHELLDER,CLOYSTER,0
	db 31,POLIWAG,SEAKING,0
	db 29,PIDGEOTTO,WIGGLYTUFF,0
	db 29,BULBASAUR,IVYSAUR,0
	db 33,WEEPINBELL,BELLSPROUT,WEEPINBELL,0
	db 27,POLIWAG,GOLDEEN,SEAKING,GOLDEEN,POLIWAG,0
	db 30,GOLDEEN,SEAKING,0
	db 29,STARYU,STARYU,STARYU,0
	db 30,SEADRA,HORSEA,SEADRA,0
PsychicData: ; 3a115 (e:6115)
	db 50,KADABRA,MR_MIME,SLOWPOKE,0 ; sabrina's gym 1
	db 34,MR_MIME,KADABRA,0
	db 33,SLOWPOKE,SLOWPOKE,SLOWBRO,0
	db 38,SLOWBRO,0
RockerData: ; 3a127 (e:6127)
	db 20,VOLTORB,MAGNEMITE,VOLTORB,0
	db 29,VOLTORB,ELECTRODE,0
JugglerData: ; 3a130 (e:6130)
	db 29,KADABRA,MR_MIME,0
	db 41,DROWZEE,HYPNO,KADABRA,KADABRA,0
	db 50,NIDORINO,NIDORINA,ARBOK,0 ; koga's gym 1
	db 34,DROWZEE,HYPNO,0
	db 48,MR_MIME,0
	db 33,HYPNO,0
	db 38,HYPNO,0
	db 34,DROWZEE,KADABRA,0
TamerData: ; 3a151 (e:6151)
	db 34,SANDSLASH,ARBOK,0
	db 33,ARBOK,SANDSLASH,ARBOK,0
	db 43,RHYHORN,0
	db 39,ARBOK,TAUROS,0
	db 44,PERSIAN,GOLDUCK,0
	db 42,RHYHORN,PRIMEAPE,ARBOK,TAUROS,0
BirdKeeperData: ; 3a16b (e:616b)
	db 29,PIDGEY,PIDGEOTTO,0
	db 25,SPEAROW,PIDGEY,PIDGEY,SPEAROW,SPEAROW,0
	db 26,PIDGEY,PIDGEOTTO,SPEAROW,FEAROW,0
	db 33,FARFETCH_D,0
	db 29,SPEAROW,FEAROW,0
	db 26,PIDGEOTTO,FARFETCH_D,DODUO,PIDGEY,0
	db 28,DODRIO,DODUO,DODUO,0
	db 29,SPEAROW,FEAROW,0
	db 34,DODRIO,0
	db 26,SPEAROW,SPEAROW,FEAROW,SPEAROW,0
	db 30,FEAROW,FEAROW,PIDGEOTTO,0
	db 39,PIDGEOTTO,PIDGEOTTO,PIDGEY,PIDGEOTTO,0
	db 42,FARFETCH_D,FEAROW,0
	db 28,PIDGEY,DODUO,PIDGEOTTO,0
	db 26,PIDGEY,SPEAROW,PIDGEY,FEAROW,0
	db 29,PIDGEOTTO,FEAROW,0
	db 28,SPEAROW,DODUO,FEAROW,0
BlackbeltData: ; 3a1be (e:61be)
	db 37,HITMONLEE,HITMONCHAN,0
	db 31,MANKEY,MANKEY,PRIMEAPE,0
	db 32,MACHOP,MACHOKE,0
	db 36,PRIMEAPE,0
	db 31,MACHOP,MANKEY,PRIMEAPE,0
	db 40,MACHOP,MACHOKE,0
	db 43,MACHOKE,0
	db 38,MACHOKE,MACHOP,MACHOKE,0
	db 43,MACHOKE,MACHOP,MACHOKE,0
Green1Data: ; 3a1e4 (e:61e4)
; null out the lab fights
    db 0
    db 0
    db 0
	db $FF,9,PIDGEY,8,SQUIRTLE,0
	db $FF,9,PIDGEY,8,BULBASAUR,0
	db $FF,9,PIDGEY,8,CHARMANDER,0
	db $FF,18,PIDGEOTTO,15,ABRA,15,RATTATA,17,SQUIRTLE,0
	db $FF,18,PIDGEOTTO,15,ABRA,15,RATTATA,17,BULBASAUR,0
	db $FF,18,PIDGEOTTO,15,ABRA,15,RATTATA,17,CHARMANDER,0
ProfOakData: ; 3a21d (e:621d)
	db $FF,66,TAUROS,67,EXEGGUTOR,68,ARCANINE,69,BLASTOISE,70,GYARADOS,0
	db $FF,66,TAUROS,67,EXEGGUTOR,68,ARCANINE,69,VENUSAUR,70,GYARADOS,0
	db $FF,66,TAUROS,67,EXEGGUTOR,68,ARCANINE,69,CHARIZARD,70,GYARADOS,0
ChiefData: ; 3a241 (e:6241)
; none
ScientistData: ; 3a241 (e:6241)
	db 34,KOFFING,VOLTORB,0
	db 26,GRIMER,WEEZING,KOFFING,WEEZING,0
	db 28,MAGNEMITE,VOLTORB,MAGNETON,0
	db 29,ELECTRODE,WEEZING,0
	db 33,ELECTRODE,0
	db 26,MAGNETON,KOFFING,WEEZING,MAGNEMITE,0
	db 25,VOLTORB,KOFFING,MAGNETON,MAGNEMITE,KOFFING,0
	db 29,ELECTRODE,MUK,0
	db 29,GRIMER,ELECTRODE,0
	db 28,VOLTORB,KOFFING,MAGNETON,0
	db 29,MAGNEMITE,KOFFING,0
	db 33,MAGNEMITE,MAGNETON,VOLTORB,0
	db 34,MAGNEMITE,ELECTRODE,0
GiovanniData: ; 3a27e (e:627e)
	db $FF,25,ONIX,24,RHYHORN,29,KANGASKHAN,0
	db $FF,37,NIDORINO,35,KANGASKHAN,37,RHYHORN,41,NIDOQUEEN,0
	db $FE
    db 50,DUGTRIO,EARTHQUAKE,SLASH,SAND_ATTACK,SUBSTITUTE
    db 50,NIDOKING,EARTHQUAKE,BLIZZARD,THUNDER,BODY_SLAM
    db 50,NIDOQUEEN,EARTHQUAKE,SURF,THUNDERBOLT,BODY_SLAM
    db 50,MAROWAK,EARTHQUAKE,BLIZZARD,BODY_SLAM,SEISMIC_TOSS
    db 50,SANDSLASH,EARTHQUAKE,SWORDS_DANCE,HYPER_BEAM,ROCK_SLIDE
    db 0
RocketData: ; 3a29c (e:629c)
	db 13,RATTATA,ZUBAT,0
	db 11,SANDSHREW,RATTATA,ZUBAT,0
	db 12,ZUBAT,EKANS,0
	db 16,RATICATE,0
	db 17,MACHOP,DROWZEE,0
	db 15,EKANS,ZUBAT,0
	db 20,RATICATE,ZUBAT,0
	db 21,DROWZEE,MACHOP,0
	db 21,RATICATE,RATICATE,0
	db 20,GRIMER,KOFFING,KOFFING,0
	db 19,RATTATA,RATICATE,RATICATE,RATTATA,0
	db 22,GRIMER,KOFFING,0
	db 17,ZUBAT,KOFFING,GRIMER,ZUBAT,RATICATE,0
	db 20,RATTATA,RATICATE,DROWZEE,0
	db 21,MACHOP,MACHOP,0
	db 23,SANDSHREW,EKANS,SANDSLASH,0
	db 23,EKANS,SANDSHREW,ARBOK,0
	db 21,KOFFING,ZUBAT,0
	db 25,ZUBAT,ZUBAT,GOLBAT,0
	db 26,KOFFING,DROWZEE,0
	db 23,ZUBAT,RATTATA,RATICATE,ZUBAT,0
	db 26,DROWZEE,KOFFING,0
	db 29,CUBONE,ZUBAT,0
	db 25,GOLBAT,ZUBAT,ZUBAT,RATICATE,ZUBAT,0
	db 28,RATICATE,HYPNO,RATICATE,0
	db 29,MACHOP,DROWZEE,0
	db 28,EKANS,ZUBAT,CUBONE,0
	db 33,ARBOK,0
	db 33,HYPNO,0
	db 29,MACHOP,MACHOKE,0
	db 28,ZUBAT,ZUBAT,GOLBAT,0
	db 26,RATICATE,ARBOK,KOFFING,GOLBAT,0
	db 29,CUBONE,CUBONE,0
	db 29,SANDSHREW,SANDSLASH,0
	db 26,RATICATE,ZUBAT,GOLBAT,RATTATA,0
	db 28,WEEZING,GOLBAT,KOFFING,0
	db 28,DROWZEE,GRIMER,MACHOP,0
	db 28,GOLBAT,DROWZEE,HYPNO,0
	db 33,MACHOKE,0
	db 25,RATTATA,RATTATA,ZUBAT,RATTATA,EKANS,0
	db 32,CUBONE,DROWZEE,MAROWAK,0
CooltrainerMData: ; 3a35a (e:635a)
	db 39,NIDORINO,NIDOKING,0
	db 43,EXEGGUTOR,CLOYSTER,ARCANINE,0
	db 43,KINGLER,TENTACRUEL,BLASTOISE,0
	db 45,KINGLER,STARMIE,0
	db 42,IVYSAUR,WARTORTLE,CHARMELEON,CHARIZARD,0
	db 44,IVYSAUR,WARTORTLE,CHARMELEON,0
	db 49,NIDOKING,0
	db 44,KINGLER,CLOYSTER,0
	db 39,SANDSLASH,DUGTRIO,0
	db 50,MAROWAK,DIGLETT,SANDSHREW,0 ; giovanni's gym 1
CooltrainerFData: ; 3a385 (e:6385)
	db 50,WEEPINBELL,GLOOM,IVYSAUR,0 ; erika's gym 1
	db 43,BELLSPROUT,WEEPINBELL,VICTREEBEL,0
	db 43,PARASECT,DEWGONG,CHANSEY,0
	db 46,VILEPLUME,BUTTERFREE,0
	db 44,PERSIAN,NINETALES,0
	db 45,IVYSAUR,VENUSAUR,0
	db 45,NIDORINA,NIDOQUEEN,0
	db 43,PERSIAN,NINETALES,RAICHU,0
BrunoData: ; 3a3a9 (e:63a9)
	db $FE
    db 50,HITMONLEE,BODY_SLAM,COUNTER,HI_JUMP_KICK,SUBSTITUTE
    db 50,PRIMEAPE,SUBMISSION,ROCK_SLIDE,BODY_SLAM,HYPER_BEAM
    db 50,HITMONCHAN,BODY_SLAM,SUBMISSION,SEISMIC_TOSS,COUNTER
    db 50,POLIWRATH,HYPNOSIS,AMNESIA,SURF,SUBMISSION
    db 50,MACHAMP,BODY_SLAM,EARTHQUAKE,HYPER_BEAM,SUBMISSION
    db 0
BrockData: ; 3a3b5 (e:63b5)
	db $FE
    db 50,ONIX,EARTHQUAKE,EXPLOSION,ROCK_SLIDE,BIND
    db 50,OMASTAR,SURF,BLIZZARD,REST,SEISMIC_TOSS
    db 50,KABUTOPS,SWORDS_DANCE,BODY_SLAM,SURF,HYPER_BEAM
    db 50,GOLEM,BODY_SLAM,EARTHQUAKE,ROCK_SLIDE,EXPLOSION
    db 50,RHYDON,EARTHQUAKE,ROCK_SLIDE,SUBSTITUTE,BODY_SLAM
    db 0
MistyData: ; 3a3bb (e:63bb)
	db $FE
    db 50,GOLDUCK,AMNESIA,ICE_BEAM,SURF,CONFUSION
    db 50,BLASTOISE,SURF,BLIZZARD,BODY_SLAM,EARTHQUAKE
    db 50,VAPOREON,HYDRO_PUMP,BLIZZARD,BODY_SLAM,REST
    db 50,TENTACRUEL,SWORDS_DANCE,WRAP,HYPER_BEAM,SURF
    db 50,STARMIE,BLIZZARD,THUNDERBOLT,RECOVER,SURF
    db 0
LtSurgeData: ; 3a3c1 (e:63c1)
	db $FE
    db 50,RAICHU,THUNDERBOLT,THUNDER_WAVE,SURF,BODY_SLAM
    db 50,ELECTABUZZ,THUNDERBOLT,THUNDER_WAVE,PSYCHIC_M,SEISMIC_TOSS
    db 50,ELECTRODE,THUNDER,THUNDER_WAVE,EXPLOSION,SCREECH
    db 50,MAGNETON,THUNDERBOLT,THUNDER,HYPER_BEAM,THUNDER_WAVE
    db 50,JOLTEON,THUNDERBOLT,THUNDER_WAVE,PIN_MISSILE,SAND_ATTACK
    db 0
ErikaData: ; 3a3c9 (e:63c9)
	db $FE
    db 50,TANGELA,SLEEP_POWDER,STUN_SPORE,GROWTH,GIGA_DRAIN
    db 50,VENUSAUR,RAZOR_LEAF,SLUDGE_BOMB,SWORDS_DANCE,BODY_SLAM
    db 50,PARASECT,SPORE,SWORDS_DANCE,BODY_SLAM,GIGA_DRAIN
    db 50,VICTREEBEL,RAZOR_LEAF,SWORDS_DANCE,HYPER_BEAM,ACID
    db 50,EXEGGUTOR,SLEEP_POWDER,PSYCHIC_M,EXPLOSION,GIGA_DRAIN
    db 0
KogaData: ; 3a3d1 (e:63d1)
	db $FE
    db 50,VENOMOTH,PSYCHIC_M,MEGA_DRAIN,SLEEP_POWDER,STUN_SPORE
    db 50,GOLBAT,SLUDGE_BOMB,CONFUSE_RAY,HYPER_BEAM,HAZE
    db 50,WEEZING,SLUDGE_BOMB,EXPLOSION,THUNDERBOLT,FIRE_BLAST
    db 50,MUK,SLUDGE_BOMB,BODY_SLAM,MEGA_DRAIN,EXPLOSION
    db 50,ARBOK,EARTHQUAKE,WRAP,GLARE,HYPER_BEAM
    db 0
BlaineData: ; 3a3db (e:63db)
	db $FE
    db 50,ARCANINE,FIRE_BLAST,BODY_SLAM,HYPER_BEAM,REFLECT
    db 50,RAPIDASH,FIRE_BLAST,AGILITY,BODY_SLAM,FIRE_SPIN
    db 50,NINETALES,FIRE_BLAST,BODY_SLAM,CONFUSE_RAY,FIRE_SPIN
    db 50,FLAREON,FIRE_BLAST,BODY_SLAM,HYPER_BEAM,QUICK_ATTACK
    db 50,MAGMAR,FLAMETHROWER,BODY_SLAM,CONFUSE_RAY,HYPER_BEAM
    db 0
SabrinaData: ; 3a3e5 (e:63e5)
	db $FE
    db 50,HYPNO,PSYCHIC_M,THUNDER_WAVE,HYPNOSIS,COUNTER
    db 50,MR_MIME,PSYCHIC_M,THUNDER_WAVE,THUNDERBOLT,SEISMIC_TOSS
    db 50,ALAKAZAM,PSYCHIC_M,RECOVER,SEISMIC_TOSS,REFLECT
    db 50,EXEGGUTOR,SLEEP_POWDER,PSYCHIC_M,EXPLOSION,MEGA_DRAIN
    db 50,SLOWBRO,AMNESIA,SURF,THUNDER_WAVE,EARTHQUAKE
    db 0
GentlemanData: ; 3a3ef (e:63ef)
	db 18,GROWLITHE,GROWLITHE,0
	db 19,NIDORAN_M,NIDORAN_F,0
	db 50,RAICHU,ELECTABUZZ,VOLTORB,0 ; surge's gym 1
	db 48,PRIMEAPE,0
	db 17,GROWLITHE,PONYTA,0
Green2Data: ; 3a401 (e:6401)
	db $FF,19,PIDGEOTTO,16,RATICATE,18,KADABRA,20,WARTORTLE,0
	db $FF,19,PIDGEOTTO,16,RATICATE,18,KADABRA,20,IVYSAUR,0
	db $FF,19,PIDGEOTTO,16,RATICATE,18,KADABRA,20,CHARMELEON,0
	db $FF,25,PIDGEOTTO,23,GROWLITHE,22,EXEGGCUTE,20,KADABRA,25,WARTORTLE,0
	db $FF,25,PIDGEOTTO,23,GYARADOS,22,GROWLITHE,20,KADABRA,25,IVYSAUR,0
	db $FF,25,PIDGEOTTO,23,EXEGGCUTE,22,GYARADOS,20,KADABRA,25,CHARMELEON,0
	db $FF,37,PIDGEOT,38,GROWLITHE,35,EXEGGCUTE,35,ALAKAZAM,40,BLASTOISE,0
	db $FF,37,PIDGEOT,38,GYARADOS,35,GROWLITHE,35,ALAKAZAM,40,VENUSAUR,0
	db $FF,37,PIDGEOT,38,EXEGGCUTE,35,GYARADOS,35,ALAKAZAM,40,CHARIZARD,0
    rept 3
	db $FF,50,PIDGEOT,50,RHYHORN,50,GROWLITHE,50,EXEGGCUTE,50,ALAKAZAM,69,MEW,0
    endr
Green3Data: ; 3a491 (e:6491)
    rept 3
    db $FE
    db 50,SCYTHER,AGILITY,SLASH,SUBSTITUTE,$FF
    db 50,SNORLAX,BODY_SLAM,HYPER_BEAM,EARTHQUAKE,SELFDESTRUCT
    db 50,TAUROS,BODY_SLAM,HYPER_BEAM,EARTHQUAKE,BLIZZARD
    db 50,MOLTRES,AGILITY,FIRE_BLAST,FIRE_SPIN,HYPER_BEAM
    db 50,ZAPDOS,THUNDERBOLT,DRILL_PECK,THUNDER_WAVE,AGILITY
    db 55,MEW,THUNDERBOLT,BLIZZARD,HI_JUMP_KICK,PSYCHIC_M
    db 0
    endr
LoreleiData: ; 3a4bb (e:64bb)
	db $FE
    db 50,JYNX,LOVELY_KISS,BLIZZARD,PSYCHIC_M,COUNTER
    db 50,DEWGONG,SURF,BLIZZARD,BODY_SLAM,SUBSTITUTE
    db 50,CLOYSTER,CLAMP,BLIZZARD,HYPER_BEAM,EXPLOSION
    db 50,LAPRAS,ICE_BEAM,THUNDERBOLT,BODY_SLAM,CONFUSE_RAY
    db 50,ARTICUNO,BLIZZARD,AGILITY,REST,HYPER_BEAM
    db 0
ChannelerData: ; 3a4c7 (e:64c7)
	db 22,GASTLY,0
	db 24,GASTLY,0
	db 23,GASTLY,GASTLY,0
	db 24,GASTLY,0
	db 23,GASTLY,0
	db 24,GASTLY,0
	db 24,HAUNTER,0
	db 22,GASTLY,0
	db 24,GASTLY,0
	db 23,GASTLY,GASTLY,0
	db 24,GASTLY,0
	db 22,GASTLY,0
	db 24,GASTLY,0
	db 23,HAUNTER,0
	db 24,GASTLY,0
	db 22,GASTLY,0
	db 24,GASTLY,0
	db 22,HAUNTER,0
	db 22,GASTLY,GASTLY,GASTLY,0
	db 24,GASTLY,0
	db 24,GASTLY,0
	db 34,GASTLY,HAUNTER,0
	db 38,HAUNTER,0
	db 33,GASTLY,GASTLY,HAUNTER,0
AgathaData: ; 3a516 (e:6516)
	db $FE
    db 50,GENGAR,PSYCHIC_M,THUNDERBOLT,NIGHT_SHADE,MEGA_DRAIN
    db 50,GENGAR,HYPNOSIS,EXPLOSION,THUNDERBOLT,MEGA_DRAIN
    db 50,GENGAR,CONFUSE_RAY,PSYCHIC_M,NIGHT_SHADE,EXPLOSION
    db 50,GENGAR,LICK,CONFUSE_RAY,HYPNOSIS,DREAM_EATER
    db 50,GENGAR,METRONOME,MEGA_KICK,PSYWAVE,SEISMIC_TOSS
    db 0
LanceData: ; 3a522 (e:6522)
	db $FE
    db 50,DRAGONITE,AGILITY,WRAP,HYPER_BEAM,BODY_SLAM
    db 50,AERODACTYL,SKY_ATTACK,REFLECT,DOUBLE_EDGE,HYPER_BEAM
    db 50,CHARIZARD,FIRE_BLAST,EARTHQUAKE,SWORDS_DANCE,HYPER_BEAM
    db 50,GYARADOS,SURF,THUNDERBOLT,BODY_SLAM,HYPER_BEAM
    db 50,DRAGONITE,SURF,THUNDERBOLT,BLIZZARD,HYPER_BEAM
    db 0