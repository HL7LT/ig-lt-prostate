ValueSet: ProstatePiradsSectorLt
Id: prostate-pirads-sector
Title: "Prostate - PI-RADS Sector (39-Sector Map)"
Description: """
PI-RADS prostate sector locations based on the 39-sector PI-RADS map.
Includes detailed SNOMED CT body structure codes for base/mid/apex,
zone, side, and anterior/posterior subdivisions.
"""
* ^url = $prostate-pirads-sector-url
* ^status = #active
* ^experimental = false
// BASE (Sectors 1–14)
* include $sct#716906001 "Structure of posterolateral basal part of peripheral zone of right half prostate"
* include $sct#836428004 "Structure of posteromedial basal part of peripheral zone of right half of prostate"
* include $sct#836427009 "Structure of posteromedial basal part of peripheral zone of left half of prostate"
* include $sct#716907005 "Structure of posterolateral basal part of peripheral zone of left half prostate"
* include $sct#716896009 "Structure of anterior basal part of transition zone of right half prostate"
* include $sct#716897000 "Structure of anterior basal part of transition zone of left half prostate"
* include $sct#716898005 "Structure of posterior basal part of transition zone of right half prostate"
* include $sct#716899002 "Structure of posterior basal part of transition zone of left half prostate"
* include $sct#716900007 "Structure of central zone of right half prostate"
* include $sct#716901006 "Structure of central zone of left half prostate"
* include $sct#716892006 "Structure of basal part of anterior fibromuscular stroma of right half prostate"
* include $sct#716893001 "Structure of basal part of anterior fibromuscular stroma of left half prostate"
* include $sct#279669004 "Structure of lower pole of seminal vesicle"
// MID-GLAND (Sectors 15–28)
* include $sct#716921007 "Structure of posterolateral middle regional part of peripheral zone of right half prostate"
* include $sct#716923005 "Structure of posteromedial middle regional part of peripheral zone of right half prostate"
* include $sct#716924004 "Structure of posteromedial middle regional part of peripheral zone of left half prostate"
* include $sct#716922000 "Structure of posterolateral middle regional part of peripheral zone of left half prostate"
* include $sct#716913001 "Structure of anterior middle regional part of transition zone of right half prostate"
* include $sct#716914007 "Structure of anterior middle regional part of transition zone of left half prostate"
* include $sct#716915008 "Structure of posterior middle regional part of transition zone of right half prostate"
* include $sct#716916009 "Structure of posterior middle regional part of transition zone of left half prostate"
* include $sct#716909008 "Structure of middle regional part of anterior fibromuscular stroma of right half prostate"
* include $sct#716910003 "Structure of middle regional part of anterior fibromuscular stroma of left half prostate"
* include $sct#716919002 "Structure of anterior middle regional part of peripheral zone of right half prostate"
* include $sct#716920008 "Structure of anterior middle regional part of peripheral zone of left half prostate"
// NB! : Mid TZ central (IDs 27–28) not included — no snomed codes available
// APEX (Sectors 29–39)
* include $sct#716938006 "Structure of posterolateral apical part of peripheral zone of right half prostate"
* include $sct#716940001 "Structure of posteromedial apical part of peripheral zone of right half prostate"
* include $sct#716941002 "Structure of posteromedial apical part of peripheral zone of left half prostate"
* include $sct#716939003 "Structure of posterolateral apical part of peripheral zone of left half prostate"
* include $sct#716930004 "Structure of anterior apical part of transition zone of right half prostate"
* include $sct#716931000 "Structure of anterior apical part of transition zone of left half prostate"
* include $sct#716926002 "Structure of apical part of anterior fibromuscular stroma of right half prostate"
* include $sct#716927006 "Structure of apical part of anterior fibromuscular stroma of left half prostate"
* include $sct#277855007 "Structure of urethral sphincter"
* include $sct#716934008 "Structure of apical part of peripheral zone of right half prostate"
* include $sct#716935009 "Structure of apical part of peripheral zone of left half prostate"
