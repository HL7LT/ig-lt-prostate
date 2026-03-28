CodeSystem: ProstatePiqualScale
Id: prostate-piqual
Title: "Prostate PI-QUAL scale (v1, PRECISION trial, 2020)"
Description: "Prostate Imaging Quality assessment scores."
* ^url = $prostate-piqual-scale-url
* ^experimental = false
* ^caseSensitive = true
* #1 "No mpMRI sequences are of diagnostic quality"
* #2 "Some diagnostic quality, but insufficient"
* #3 "Sufficient diagnostic quality"
* #4 "Good diagnostic quality"
* #5 "Optimal diagnostic quality (all sequences independently optimal)"

// 1 — Inadequate scan (T2‑WI or DWI scores ≤2)
// 2 — Acceptable/adequate scan
// 3 — Optimal scan (T2‑WI + DWI both scoring 4 in the internal subcriteria)

ValueSet: ProstatePiqualVS
Id: prostate-piqual
Title: "Prostate - PI-QUAL"
Description: "Prostate Imaging Quality score for prostate MRI image quality assessment."
* ^url = $prostate-piqual-vs-url
* ^status = #active
* ^experimental = false
* include codes from system ProstatePiqualScale
