-------------------------------------------------------------------------------------------------------------------
-- Mappings, lists and sets to describe game relationships that aren't easily determinable otherwise.
-------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------
-- Elemental mappings for element relationships and certain types of spells and gear.
-------------------------------------------------------------------------------------------------------------------

-- Basic elements
elements = {}

elements.list = S{'光','闇','火','氷','風','土','雷','水'}

elements.weak_to = {['光']='闇', ['闇']='光', ['火']='氷', ['氷']='風', ['風']='土', ['土']='雷',
        ['雷']='水', ['水']='火'}

elements.strong_to = {['光']='闇', ['闇']='光', ['火']='水', ['氷']='火', ['風']='氷', ['土']='風',
        ['雷']='土', ['水']='雷'}

storms = S{"極光の陣", "妖霧の陣", "熱波の陣", "砂塵の陣", "豪雨の陣", "烈風の陣", "吹雪の陣", "疾雷の陣",
		"極光の陣II", "妖霧の陣II", "熱波の陣II", "砂塵の陣II", "豪雨の陣II", "烈風の陣II", "吹雪の陣II", "疾雷の陣II"}

elements.storm_of = {['光']="極光の陣", ['闇']="妖霧の陣", ['火']="熱波の陣", ['土']="砂塵の陣",
        ['水']="豪雨の陣", ['風']="烈風の陣", ['氷']="吹雪の陣", ['雷']="疾雷の陣",['光']="極光の陣II",
        ['闇']="妖霧の陣II", ['火']="熱波の陣II", ['土']="砂塵の陣II", ['水']="豪雨の陣II", ['風']="烈風の陣II",
		['氷']="吹雪の陣II", ['雷']="疾雷の陣II"}

spirits = S{"LightSpirit", "DarkSpirit", "FireSpirit", "EarthSpirit", "WaterSpirit", "AirSpirit", "IceSpirit", "ThunderSpirit"}
elements.spirit_of = {['光']="Light Spirit", ['闇']="Dark Spirit", ['火']="Fire Spirit", ['土']="Earth Spirit",
        ['水']="Water Spirit", ['風']="Air Spirit", ['氷']="Ice Spirit", ['雷']="Thunder Spirit"}

runes = S{'ルックス', 'テネブレイ', 'イグニス', 'ゲールス', 'フラブラ', 'テッルス', 'スルポール', 'ウンダ'}
elements.rune_of = {['光']='ルックス', ['闇']='テネブレイ', ['火']='イグニス', ['氷']='ゲールス', ['風']='フラブラ',
    ['土']='テッルス', ['雷']='スルポール', ['水']='ウンダ'}

elements.obi_of = {['光']='八輪の帯', ['闇']='八輪の帯', ['火']='八輪の帯', ['氷']='八輪の帯', ['風']='八輪の帯',
    ['土']='八輪の帯', ['雷']='八輪の帯', ['水']='八輪の帯'}

elements.gorget_of = {['光']='フォシャゴルゲット', ['闇']='フォシャゴルゲット', ['火']='フォシャゴルゲット', ['氷']='フォシャゴルゲット',
    ['風']='フォシャゴルゲット', ['土']='フォシャゴルゲット', ['雷']='フォシャゴルゲット', ['水']='フォシャゴルゲット'}

elements.belt_of = {['光']='フォシャベルト', ['闇']='フォシャベルト', ['火']='フォシャベルト', ['氷']='フォシャベルト',
    ['風']='フォシャベルト', ['土']='フォシャベルト', ['雷']='フォシャベルト', ['水']='フォシャベルト'}

elements.fastcast_staff_of = {['光']='アーカI', ['闇']='キサエタI', ['火']='アターI', ['氷']='ボルカシャI',
    ['風']='バユバタI', ['土']='ビシュラバI', ['雷']='アパマジャI', ['水']='ハオーマI'}

elements.recast_staff_of = {['光']='アーカII', ['闇']='キサエタII', ['火']='アターII', ['氷']='ボルカシャII',
    ['風']='バユバタII', ['土']='ビシュラバII', ['雷']='アパマジャ II', ['水']='ハオーマII'}

elements.perpetuance_staff_of = {['光']='アーカIII', ['闇']='キサエタIII', ['火']='アターIII', ['氷']='ボルカシャIII',
    ['風']='バユバタIII', ['土']='ビシュラバIII', ['雷']='アパマジャIII', ['水']='ハオーマIII'}


-- Elements for skillchain names
skillchain_elements = {}
skillchain_elements.Light = S{'光','火','風','雷'}
skillchain_elements.Darkness = S{'闇','氷','土','水'}
skillchain_elements.Fusion = S{'光','火'}
skillchain_elements.Fragmentation = S{'風','雷'}
skillchain_elements.Distortion = S{'氷','水'}
skillchain_elements.Gravitation = S{'闇','土'}
skillchain_elements.Transfixion = S{'光'}
skillchain_elements.Compression = S{'闇'}
skillchain_elements.Liquification = S{'火'}
skillchain_elements.Induration = S{'氷'}
skillchain_elements.Detonation = S{'風'}
skillchain_elements.Scission = S{'土'}
skillchain_elements.Impaction = S{'雷'}
skillchain_elements.Reverberation = S{'水'}


-------------------------------------------------------------------------------------------------------------------
-- Mappings for weaponskills
-------------------------------------------------------------------------------------------------------------------

-- REM weapons and their corresponding weaponskills
data = {}
data.weaponskills = {}
data.weaponskills.relic = {
    ["スファライ"] = "ファイナルヘヴン",
    ["マンダウ"] = "マーシーシトローク",
    ["エクスカリバー"] = "ナイツオブラウンド",
    ["ラグナロク"] = "スカージ",
    ["ガトラー"] = "オンスロート",
    ["ラブビューラ"] = "メタトロントーメント",
    ["アポカリプス"] = "カタストロフィ",
    ["グングニル"] = "ゲイルスコグル",
    ["鬼哭"] = "生者必滅",
    ["天の村雲"] = "零之太刀:回天",
    ["ミョルニル"] = "ランドグリース",
    ["クラウストルム"] = "タルタロスゲート",
    ["アナイアレーター"] = "カラナック",
    ["与一の弓"] = "南無八幡"}
data.weaponskills.mythic = {
    ["コンカラー"] = "キングジャスティス",
    ["グランツファウスト"] = "アスケーテンツォルン",
    ["ヤグルシュ"] = "ミスティックブーン",
    ["レーヴァテイン"] = "ヴィゾフニル",
    ["ミュルグレス"] = "ロズレーファタール",
    ["ヴァジュラ"] = "マンダリクスタップ",
    ["ブルトガング"] = "ロイエ",
    ["リベレーター"] = "インサージェンシー",
    ["アイムール"] = "プライマルレンド",
    ["カルンウェナン"] = "モーダントライム",
    ["ガストラフェテス"] = "トゥルーフライト",
    ["小鴉丸"] = "十之太刀:乱鴉",
    ["凪"] = "カムハブリ",
    ["竜の髭"] = "雲蒸竜変",
    ["ニルヴァーナ"] = "ガーランドオブブリス",
    ["ティソーナ"] = "エクスピアシオン",
    ["デスペナルティ"] = "レデンサリュート",
    ["乾坤圏"] = "連環六合圏",
    ["テルプシコラー"] = "ピリッククレオス",
    ["トゥプシマティ"] = "オムニシエンス",
    ["イドリス"] = "エクズデーション",
    ["エピオラトリー"] = "デミディエーション"}
data.weaponskills.empyrean = {
    ["ウルスラグナ"] = "ビクトリースマイト",
    ["トゥワシュトラ"] = "ルドラストーム",
    ["アルマス"] = "シャンデュシニュ",
    ["カラドボルグ"] = "トアクリーバー",
    ["ファルシャ"] = "クラウドスプリッタ",
    ["ウコンバサラ"] = "ウッコフューリー",
    ["リデンプション"] = "クワイタス",
    ["ロンゴミアント"] = "カムラン",
    ["神無"] = "秘",
    ["正宗"] = "祖之太刀:不動",
    ["ガンバンテイン"] = "ダガン",
    ["フヴェルゲルミン"] = "ミルキル",
    ["ガーンデーヴァ"] = "ジシュヌの光輝",
    ["アルマゲドン"] = "ワイルドファイア"}

-- Weaponskills that can be used at range.
data.weaponskills.ranged = S{"フレイミングアロー", "ピアシングアロー", "ダリングアロー", "サイドワインダー", "アーチングアロー",
    "エンピリアルアロー", "リフルジェントアロー", "エイペクスアロー", "南無八幡", "ジシュヌの光輝",
    "ホットショット", "スプリットショット", "スナイパーショット", "スラッグショット", "ヘヴィショット", "デトネーター", "ラストスタンド",
    "カラナック", "トゥルーフライト", "レデンサリュート", "ワイルドファイア",
    "ミルキル", "ダガン"}

ranged_weaponskills = data.weaponskills.ranged

-------------------------------------------------------------------------------------------------------------------
-- Spell mappings allow defining a general category or description that each of sets of related
-- spells all fall under.
-------------------------------------------------------------------------------------------------------------------

spell_maps = {
    ['ケアル']='Cure',['ケアルII']='Cure',['ケアルIII']='Cure',['ケアルIV']='Cure',['ケアルV']='Cure',['ケアルVI']='Cure',
    ['フルケア']='Cure',
    ['ケアルラ']='Curaga',['ケアルラII']='Curaga',['ケアルラIII']='Curaga',
    ['ケアルガ']='Curaga',['ケアルガII']='Curaga',['ケアルガIII']='Curaga',['ケアルガIV']='Curaga',['ケアルガV']='Curaga',
    -- Status Removal doesn't include Esuna or Sacrifice, since they work differently than the rest
    ['ポイゾナ']='StatusRemoval',['パラナ']='StatusRemoval',['サイレナ']='StatusRemoval',['ブライナ']='StatusRemoval',['カーズナ']='StatusRemoval',
    ['ストナ']='StatusRemoval',['ウィルナ']='StatusRemoval',['イレース']='StatusRemoval',
    ['バファイ']='BarElement',['バストン']='BarElement',['バウォタ']='BarElement',['バエアロ']='BarElement',['バブリザ']='BarElement',['バサンダ']='BarElement',
    ['バファイラ']='BarElement',['バストンラ']='BarElement',['バウォタラ']='BarElement',['バエアロラ']='BarElement',['バブリザラ']='BarElement',['バサンダラ']='BarElement',
    ['バスリプル']='BarStatus',['バポイズン']='BarStatus',['バパライズ']='BarStatus',['バサイレス']='BarStatus',['バウィルス']='BarStatus',['バブレイク']='BarStatus',['バアムネジア']='BarStatus',
    ['バスリプラ']='BarStatus',['バポイゾラ']='BarStatus',['バブライラ']='BarStatus',['バサイレラ']='BarStatus',['バウィルラ']='BarStatus',['バブレクラ']='BarStatus',['バアムネジラ']='BarStatus',
    ['アディバイト']='BoostStat',['アディマイン']='BoostStat',['アディカリス']='BoostStat',['アディアジル']='BoostStat',['アディスト']='BoostStat',['アディイン']='BoostStat',['アディデック']='BoostStat',
    ['ゲインバイト']='BoostStat',['ゲインマイン']='BoostStat',['ゲインカリス']='BoostStat',['ゲインアジル']='BoostStat',['ゲインスト']='BoostStat',['ゲインイン']='BoostStat',['ゲインデック']='BoostStat',
    ['レイズ']='Raise',['レイズII']='Raise',['レイズIII']='Raise',['アレイズ']='Raise',
    ['リレイズ']='Reraise',['リレイズII']='Reraise',['リレイズIII']='Reraise',['リレイズIV']='Reraise',
    ['ディア']='Dia',['ディアII']='Dia',['ディアIII']='Dia',['ディアガ']='Dia',
    ['バイオ']='Bio',['バイオII']='Bio',['バイオIII']='Bio',
    ['ディスペル']='Dispel',['ディスペガ']='Dispel',
    ['プロテス']='Protect',['プロテスII']='Protect',['プロテスIII']='Protect',['プロテスIV']='Protect',['プロテスV']='Protect',
    ['シェル']='Shell',['シェルII']='Shell',['シェルIII']='Shell',['シェルIV']='Shell',['シェルV']='Shell',
    ['プロテア']='Protectra',['プロテアII']='Protectra',['プロテアIII']='Protectra',['プロテアIV']='Protectra',['プロテアV']='Protectra',
    ['シェルラ']='Shellra',['シェルラII']='Shellra',['シェルラIII']='Shellra',['シェルラIV']='Shellra',['シェルラV']='Shellra',
    ['リジェネ']='Regen',['リジェネII']='Regen',['リジェネIII']='Regen',['リジェネIV']='Regen',['リジェネV']='Regen',
    ['リフレシュ']='Refresh',['リフレシュII']='Refresh',['リフレシュIII']='Refresh',
    ['テレポホラ']='Teleport',['テレポデム']='Teleport',['テレポメア']='Teleport',['テレポルテ']='Teleport',['テレポヨト']='Teleport',
    ['テレポヴァズ']='Teleport',['リコールパシュ']='Teleport',['リコールメリファ']='Teleport',['リコールジャグ']='Teleport',
    ['リトレース']='Teleport',['トラクタ']='Teleport',['エスケプ']='Teleport',['デジョン']='Teleport',['デジョンII']='Teleport',
    ['ストライ']='Temper',['ストライII']='Temper',
    ['猛者のメヌエット']='Minuet',['猛者のメヌエットII']='Minuet',['猛者のメヌエットIII']='Minuet',['猛者のメヌエットIV']='Minuet',['猛者のメヌエットV']='Minuet',
    ["重装騎兵のミンネ"]='Minne',["重装騎兵のミンネII"]='Minne',["重装騎兵のミンネIII"]='Minne',["重装騎兵のミンネIV"]='Minne',["重装騎兵のミンネV"]='Minne',
    ['無敵の進撃マーチ']='March',['栄光の凱旋マーチ']='March',['栄典の戴冠マーチ']='March',
    ['剣闘士のマドリガル']='Madrigal',['剣豪のマドリガル']='Madrigal',
    ["狩人のプレリュード"]='Prelude',["弓師のプレリュード"]='Prelude',
    ['闘羊士のマンボ']='Mambo',['闘龍士のマンボ']='Mambo',
    ['ラプトルのマズルカ']='Mazurka',['チョコボのマズルカ']='Mazurka',
    ['剛力のエチュード']='Etude',['器用のエチュード']='Etude',['元気のエチュード']='Etude',['機敏のエチュード']='Etude',['知恵のエチュード']='Etude',['精神のエチュード']='Etude',['魅了のエチュード']='Etude',
    ['怪力のエチュード']='Etude',['妙技のエチュード']='Etude',['活力のエチュード']='Etude',['俊敏のエチュード']='Etude',['英知のエチュード']='Etude',['理力のエチュード']='Etude',['魅惑のエチュード']='Etude',
    ["魔道士のバラード"]='Ballad',["魔道士のバラードII"]='Ballad',["魔道士のバラードIII"]='Ballad',
    ["戦士達のピーアン"]='Paeon',["戦士達のピーアンII"]='Paeon',["戦士達のピーアンIII"]='Paeon',["戦士達のピーアンIV"]='Paeon',["戦士達のピーアンV"]='Paeon',["戦士達のピーアンVI"]='Paeon',
    ['耐火カロル第一楽章']='Carol',['耐寒カロル第一楽章']='Carol',['耐風カロル第一楽章']='Carol',['耐震カロル第一楽章']='Carol',['耐電カロル第一楽章']='Carol',['耐波カロル第一楽章']='Carol',['耐光カロル第一楽章']='Carol',['耐闇カロル第一楽章']='Carol',
    ['耐火カロル第二楽章']='Carol',['耐寒カロル第二楽章']='Carol',['耐風カロル第二楽章']='Carol',['耐震カロル第二楽章']='Carol',['耐電カロル第二楽章']='Carol',['耐波カロル第二楽章']='Carol',['耐光カロル第二楽章']='Carol',['耐闇カロル第二楽章']='Carol',
    ['魔物のララバイ']='Lullaby',['魔物のララバイII']='Lullaby',['魔物達のララバイ']='Lullaby',['魔物達のララバイII']='Lullaby',
    ['炎のスレノディ']='Threnody',['氷のスレノディ']='Threnody',['風のスレノディ']='Threnody',['土のスレノディ']='Threnody',['雷のスレノディ']='Threnody',['水のスレノディ']='Threnody',['光のスレノディ']='Threnody',['闇のスレノディ']='Threnody',
    ['炎のスレノディII']='Threnody',['氷のスレノディII']='Threnody',['風のスレノディII']='Threnody',['土のスレノディII']='Threnody',['雷のスレノディII']='Threnody',['水のスレノディII']='Threnody',['光のスレノディII']='Threnody',['闇のスレノディII']='Threnody',
    ['戦場のエレジー']='Elegy',['修羅のエレジー']='Elegy',
    ['魔物のレクイエム']='Requiem',['魔物のレクイエムII']='Requiem',['魔物のレクイエムIII']='Requiem',['魔物のレクイエムIV']='Requiem',['魔物のレクイエムV']='Requiem',['魔物のレクイエムVI']='Requiem',['魔物のレクイエムVII']='Requiem',
    ['空蝉の術:壱']='Utsusemi',['空蝉の術:弐']='Utsusemi',['空蝉の術:参']='Utsusemi',
    ['火遁の術:壱'] = 'ElementalNinjutsu',['水遁の術:壱'] = 'ElementalNinjutsu',['雷遁の術:壱'] = 'ElementalNinjutsu',
    ['土遁の術:壱'] = 'ElementalNinjutsu',['風遁の術:壱'] = 'ElementalNinjutsu',['氷遁の術:壱'] = 'ElementalNinjutsu',
    ['火遁の術:弐'] = 'ElementalNinjutsu',['水遁の術:弐'] = 'ElementalNinjutsu',['雷遁の術:弐'] = 'ElementalNinjutsu',
    ['土遁の術:弐'] = 'ElementalNinjutsu',['風遁の術:弐'] = 'ElementalNinjutsu',['氷遁の術:弐'] = 'ElementalNinjutsu',
    ['火遁の術:参'] = 'ElementalNinjutsu',['水遁の術:参'] = 'ElementalNinjutsu',['雷遁の術:参'] = 'ElementalNinjutsu',
    ['土遁の術:参'] = 'ElementalNinjutsu',['風遁の術:参'] = 'ElementalNinjutsu',['氷遁の術:参'] = 'ElementalNinjutsu',
    ['バニシュ']='Banish',['バニシュII']='Banish',['バニシュIII']='Banish',['バニシュガ']='Banish',['バニシュガII']='Banish',
    ['ホーリー']='Holy',['ホーリーII']='Holy',['ドレイン']='Drain',['ドレインII']='Drain',['ドレインIII']='Drain',['アスピル']='Aspir',['アスピルII']='Aspir',
    ['アブゾースト']='Absorb',['アブゾデック']='Absorb',['アブゾバイト']='Absorb',['アブゾアジル']='Absorb',['アブゾイン']='Absorb',['アブゾマイン']='Absorb',['アブゾカリス']='Absorb',
    ['アブゾアキュリ']='Absorb',['アブゾタック']='Absorb',['アブゾアトリ']='Absorb',
    ['エンライト']='Enlight',['エンライトII']='Enlight',['エンダーク']='Endark',['エンダークII']='Endark',
    ['バーン']='ElementalEnfeeble',['フロスト']='ElementalEnfeeble',['チョーク']='ElementalEnfeeble',['ラスプ']='ElementalEnfeeble',['ショック']='ElementalEnfeeble',['ドラウン']='ElementalEnfeeble',
    ['土門の計']='Helix',['水門の計']='Helix',['火門の計']='Helix',['氷門の計']='Helix',['雷門の計']='Helix',['風門の計']='Helix',['光門の計']='Helix',['闇門の計']='Helix',
	['土門の計II']='Helix',['水門の計II']='Helix',['火門の計II']='Helix',['氷門の計II']='Helix',['雷門の計II']='Helix',['風門の計II']='Helix',['光門の計II']='Helix',['闇門の計II']='Helix',
    ['砂塵の陣']='Storm',['豪雨の陣']='Storm',['熱波の陣']='Storm',['吹雪の陣']='Storm',['疾雷の陣']='Storm',['烈風の陣']='Storm',['極光の陣']='Storm',['妖霧の陣']='Storm',
	['砂塵の陣II']='Storm',['豪雨の陣II']='Storm',['熱波の陣II']='Storm',['吹雪の陣II']='Storm',['疾雷の陣II']='Storm',['烈風の陣II']='Storm',['極光の陣II']='Storm',['妖霧の陣II']='Storm',
    ['ファイアマニューバ']='Maneuver',['アイスマニューバ']='Maneuver',['ウィンドマニューバ']='Maneuver',['アースマニューバ']='Maneuver',['サンダーマニューバ']='Maneuver',
    ['ウォータマニューバ']='Maneuver',['ライトマニューバ']='Maneuver',['ダークマニューバ']='Maneuver',
    ['ヘイスト']='Haste',['ヘイストII']='Haste',
    ['ブレイズスパイク']='Spikes',['アイススパイク']='Spikes',['ショックスパイク']='Spikes',
    ['エンサンダー']='EnSpell',['エンストーン']='EnSpell',['エンエアロ']='EnSpell',['エンブリザド']='EnSpell',['エンファイア']='EnSpell',['エンウォータ']='EnSpell',
    ['エンサンダーII']='EnSpell',['エンストーンII']='EnSpell',['エンエアロII']='EnSpell',['エンブリザドII']='EnSpell',['エンファイアII']='EnSpell',['エンウォータII']='EnSpell',
}

no_skill_spells_list = S{'Haste', 'Refresh', 'Regen', 'Protect', 'Protectra', 'Shell', 'Shellra',
        'Raise', 'Reraise', 'Sneak', 'Invisible', 'Deodorize'}


-------------------------------------------------------------------------------------------------------------------
-- Tables to specify general area groupings.  Creates the 'areas' table to be referenced in job files.
-- Zone names provided by world.area/world.zone are currently in all-caps, so defining the same way here.
-------------------------------------------------------------------------------------------------------------------

areas = {}

-- City areas for town gear and behavior.
areas.Cities = S{
    "ル・ルデの庭",
    "ジュノ上層",
    "ジュノ下層",
    "ジュノ港",
    "ウィンダス港",
    "ウィンダス水の区",
    "ウィンダス森の区",
    "ウィンダス石の区",
    "天の塔",
    "サンドリア港",
    "北サンドリア",
    "南サンドリア",
    "バストゥーク港",
    "バストゥーク商業区",
    "バストゥーク鉱山区",
    "大工房",
    "アトルガン白門",
    "タブナジア地下壕",
    "ナシュモ",
    "セルビナ",
    "マウラ",
    "ノーグ",
    "西アドゥリン",
    "東アドゥリン",
    "カザム",
    "ラバオ",
    "チョコボサーキット",
}
-- Adoulin areas, where Ionis will grant special stat bonuses.
areas.Adoulin = S{
    "ヤッセの狩り場",
    "ケイザック古戦場",
    "エヌティエル水林",
    "モリマー台地",
    "ヨルシア森林",
    "ヨルシア森林〔Ｕ〕",
    "シルダス洞窟",
    "シルダス洞窟〔Ｕ〕",
    "マリアミ渓谷マリアミ渓谷",
    "カミール山麓",
    "シィの門",
    "モーの門",
    "ドーの門",
    "ウォーの門",
    "ララ水道",
    "ララ水道〔Ｕ〕",
    "ラ・カザナル宮外郭",
    "ラ・カザナル宮外郭〔Ｕ〕",
    "ラ・カザナル宮内郭",
    "ラ・カザナル宮天守",
}


-------------------------------------------------------------------------------------------------------------------
-- Lists of certain NPCs. (Not up to date)
-------------------------------------------------------------------------------------------------------------------

npcs = {}
npcs.Trust = S{'Ajido-Marujido','Aldo','Ayame','Cherukiki','Curilla','D.Shantotto','Elivira','Excenmille',
        'Fablinix','FerreousCoffin','Gadalar','Gessho','Ingrid','IronEater','Joachim','Klara','Kupipi',
        'LehkoHabhoka','LhuMhakaracca','Lion','Luzaf','Maat','MihliAliapoh','Mnejing','Moogle','Mumor',
        'NajaSalaheem','Najelith','Naji','NanaaMihgo','Nashmeira','Noillurie','Ovjang','Prishe','Rainemard',
        'RomaaMihgo','Sakura','Shantotto','StarSibyl','Tenzen','Trion','UkaTotlihn','Ulmia','Valaineral',
        'Volker','Zazarg','Zeid'}


