k000_p100/2pt
- Data corresponds to two-point functions defined by eqns (4) and (5) of the supplemental material
- Contains two folders: PointWall and WallWall
- Correlator naming convention: 2pt[meson]_[SrcSink]_mom[momentum]_tK_[tK]_[tJ]_[tJ]_tP_[tP].[configuration].h5
	- [meson] is either "Kaon" or "Pion", for the Kaon and Pion respectively;
	- [SrcSink] is either "PW" for Point-Source and Wall-Sink, or "WW" for Wall-Source and Wall-Sink.
	- "PW" files are stored in the "PointWall" folder, and "WW" files in the "WallWall" folder.
	- [momentum] is either "000" or "100", corresponding to square lattice momenta of 0 and 1 respectively.
	- [tK] is the Kaon source time [relevant only for "Kaon" files]
	- [tJ] is the vector current insertion time [irrelevant for 2pt functions]
	- [tP] is the Pion source time [relevant only for "Pion" files]
	- [configuration] is the configuration number of the file.
- HDF5 Structure:
	meson
	-	meson_0
	-	-	corr

k000_p100/3pt/VC3
- Data corresponds to three-point functions defined by eqns (8) and (9) of the supplemental material
- Correlator naming convention: 3pt[meson]_[SrcSnk]_VC3[leg]_tK_[tK]_tJ_[tJ]_tP_[tP].[configuration].h5
	- [meson] is either "Kaon" or "Pion", for the Kaon and Pion respectively;
	- [SrcSink] is either "PW" for Point-Source and Wall-Sink, or "WW" for Wall-Source and Wall-Sink.
	- [leg] is the propagator that the vector current is inserted on:
		- S:    Strange anti-quark [Kaon only]
		- Lbar: Light anti-quark [Pion only]
		- L:    Light quark
	- [tK] is the Kaon source time [relevant only for "Kaon" files]
	- [tJ] is the vector current insertion time.
	- [tP] is the Pion source time [relevant only for "Pion" files]
	- [configuration] is the configuration number of the file.
- HDF5 Structure:
	meson
	-	meson_0
	-	-	corr

k000_p100/3pt/HW
- Data corresponds to "exact" solves for the three-point functions defined by eqns (6) and (7) of the supplemental material
- Correlator naming convention 1: 3pt_HW_Non_Eye_mom[momentum]_tK_[tK]_tJ_[tJ]_tP_[tP].[configuration].h5
	- [momentum] is either "000" or "100", corresponding to square lattice momenta of 0 and 1 respectively.
	- [tK] is the Kaon source time
	- [tJ] is the vector current insertion time.
	- [tP] is the Pion sink time
	- [configuration] is the configuration number of the file.
- HDF5 structure:
	weakEye3pt
	-	weakEye3pt_0  [Connected, GammaX]
	-	weakEye3pt_1  [Wing,      GammaX]
	-	weakEye3pt_2  [Connected, GammaY]
	-	weakEye3pt_3  [Wing,      GammaY]
	-	weakEye3pt_4  [Connected, GammaZ]
	-	weakEye3pt_5  [Wing,      GammaZ]
	-	weakEye3pt_6  [Connected, GammaT]
	-	weakEye3pt_7  [Wing,      GammaT]
	-	weakEye3pt_8  [Connected, Gamma5GammaX]
	-	weakEye3pt_9  [Wing,      Gamma5GammaX]
	-	weakEye3pt_10 [Connected, Gamma5GammaY]
	-	weakEye3pt_11 [Wing,      Gamma5GammaY]
	-	weakEye3pt_12 [Connected, Gamma5GammaZ]
	-	weakEye3pt_13 [Wing,      Gamma5GammaZ]
	-	weakEye3pt_14 [Connected, Gamma5GammaT]
	-	weakEye3pt_15 [Wing,      Gamma5GammaT]
- Correlator naming convention 2: 3pt_HW_Eye_[GIM]_[noise]_mom[momentum]_tK_[tK]_tJ_[tJ]_tP_[tP].[configuration].h5
	- [GIM] is the quark in the GIM loop:
		- l:  Light quark mass   [0.00078]
		- c1: Charm quark mass 1 [0.25]
		- c2: Charm quark mass 2 [0.30]
		- c3: Charm quark mass 3 [0.35]
	- [noise] is the id for the noise source used. Runs from 0-15 inclusive.
	- [momentum] is either "000" or "100", corresponding to square lattice momenta of 0 and 1 respectively.
	- [tK] is the Kaon source time
	- [tJ] is the vector current insertion time.
	- [tP] is the Pion sink time
	- [configuration] is the configuration number of the file.
- HDF5 structure:
	weakNonEye3pt
	-	weakNonEye3pt_0  [Saucer, GammaX]
	-	weakNonEye3pt_1  [Eye,    GammaX]
	-	weakNonEye3pt_2  [Saucer, GammaY]
	-	weakNonEye3pt_3  [Eye,    GammaY]
	-	weakNonEye3pt_4  [Saucer, GammaZ]
	-	weakNonEye3pt_5  [Eye,    GammaZ]
	-	weakNonEye3pt_6  [Saucer, GammaT]
	-	weakNonEye3pt_7  [Eye,    GammaT]
	-	weakNonEye3pt_8  [Saucer, Gamma5GammaX]
	-	weakNonEye3pt_9  [Eye,    Gamma5GammaX]
	-	weakNonEye3pt_10 [Saucer, Gamma5GammaY]
	-	weakNonEye3pt_11 [Eye,    Gamma5GammaY]
	-	weakNonEye3pt_12 [Saucer, Gamma5GammaZ]
	-	weakNonEye3pt_13 [Eye,    Gamma5GammaZ]
	-	weakNonEye3pt_14 [Saucer, Gamma5GammaT]
	-	weakNonEye3pt_15 [Eye,    Gamma5GammaT]


k000_p100/inexact5Hits/3pt/HW
- Data contains the "inexact" solves for the "Eye" 3pt correlators
- Small alteration to the naming convention: new parameter [hit] between [GIM] and [noise]
- No new data for the Non_Eye correlators
- Correlator naming convention 1: 3pt_HW_Eye_[GIM]_[hit]_[noise]_mom[momentum]_tK_[tK]_tJ_[tJ]_tP_[tP].[configuration].h5
- Hit of "0" is the "Reference Inexact" solve: solved on the same hit as the exact data
- Hits 1-9 inclusive are solved on different sources

k000_p100/3pt/sd
- Data corresponds to three-point functions with a sd current inserted.
- Correlator naming convention: 3pt_sd_mom[momentum]_tK_[tK]_tJ_[tJ]_tP_[tP].[configuration].h5
	- [momentum] is either "000" or "100", corresponding to square lattice momenta of 0 and 1 respectively.
	- [tK] is the Kaon source time
	- [tJ] is the vector current insertion time.
	- [tP] is the Pion sink time
	- [configuration] is the configuration number of the file.
- HDF5 Structure:
	gamma3pt
	-	gamma3pt_0
	-	-	corr


k000_p100/4pt/sd
- Data corresponds to three-point functions defined by eqns (8) and (9) of the supplemental material with an additional sd current inserted.
- Correlator naming convention: 4pt_sd_VC3_[leg]_tK_[tK]_tJ_[tJ]_tP_[tP].[configuration].h5
	- [leg] is the propagator that the vector current is inserted on:
		- s:    strange anti-quark
		- lbar: light anti-quark
		- spec: Spectator light quark
	- [tK] is the Kaon source time
	- [tJ] is the vector current insertion time.
	- [tP] is the Pion sink time
	- [configuration] is the configuration number of the file.
- HDF5 Structure:
	gamma3pt
	-	gamma3pt_0
	-	-	corr


k000_p100/4pt/RK
- Data corresponds to "exact" solves for the four-point functions defined by eqn (7) of the main paper
- Correlator naming convention 1: 4pt_Non_Eye_VC3[leg]_tK_[tK]_tJ_[tJ]_tP_[tP].[configuration].h5
	- [leg] the leg which the vector current is inserted on:
		- KS:    Kaon strange valence quark
		- PLbar: Pion light valence quark
		- KL:    Kaon light spectator quark
		- PL:    Pion light spectator quark
	- [tK] is the Kaon source time
	- [tJ] is the vector current insertion time.
	- [tP] is the Pion sink time
	- [configuration] is the configuration number of the file.
- HDF5 structure:
	weakEye3pt
	-	weakEye3pt_0  [Connected, GammaX]
	-	weakEye3pt_1  [Wing,      GammaX]
	-	weakEye3pt_2  [Connected, GammaY]
	-	weakEye3pt_3  [Wing,      GammaY]
	-	weakEye3pt_4  [Connected, GammaZ]
	-	weakEye3pt_5  [Wing,      GammaZ]
	-	weakEye3pt_6  [Connected, GammaT]
	-	weakEye3pt_7  [Wing,      GammaT]
	-	weakEye3pt_8  [Connected, Gamma5GammaX]
	-	weakEye3pt_9  [Wing,      Gamma5GammaX]
	-	weakEye3pt_10 [Connected, Gamma5GammaY]
	-	weakEye3pt_11 [Wing,      Gamma5GammaY]
	-	weakEye3pt_12 [Connected, Gamma5GammaZ]
	-	weakEye3pt_13 [Wing,      Gamma5GammaZ]
	-	weakEye3pt_14 [Connected, Gamma5GammaT]
	-	weakEye3pt_15 [Wing,      Gamma5GammaT]
- Correlator naming convention 2: 4pt_Eye_[GIM]_[noise]_VC3[leg]_tK_[tK]_tJ_[tJ]_tP_[tP].[configuration].h5
	- [GIM] is either a light or charm quark:
		- l:  Light quark mass   [0.00078]
		- c1: Charm quark mass 1 [0.25]
		- c2: Charm quark mass 2 [0.30]
		- c3: Charm quark mass 3 [0.35]
	- [noise] is the id for the noise source used. Runs from 0-15 inclusive.
	- [leg] the leg which the vector current is inserted on:
		- KS:    Kaon strange valence quark
		- PLbar: Pion light valence quark
		- KL:    Kaon light spectator quark
		- PL:    Pion light spectator quark
	- [momentum] is either "000" or "100", corresponding to square lattice momenta of 0 and 1 respectively.
	- [tK] is the Kaon source time
	- [tJ] is the vector current insertion time.
	- [tP] is the Pion sink time
	- [configuration] is the configuration number of the file.
- HDF5 structure:
	weakNonEye3pt
	-	weakNonEye3pt_0  [Saucer, GammaX]
	-	weakNonEye3pt_1  [Eye,    GammaX]
	-	weakNonEye3pt_2  [Saucer, GammaY]
	-	weakNonEye3pt_3  [Eye,    GammaY]
	-	weakNonEye3pt_4  [Saucer, GammaZ]
	-	weakNonEye3pt_5  [Eye,    GammaZ]
	-	weakNonEye3pt_6  [Saucer, GammaT]
	-	weakNonEye3pt_7  [Eye,    GammaT]
	-	weakNonEye3pt_8  [Saucer, Gamma5GammaX]
	-	weakNonEye3pt_9  [Eye,    Gamma5GammaX]
	-	weakNonEye3pt_10 [Saucer, Gamma5GammaY]
	-	weakNonEye3pt_11 [Eye,    Gamma5GammaY]
	-	weakNonEye3pt_12 [Saucer, Gamma5GammaZ]
	-	weakNonEye3pt_13 [Eye,    Gamma5GammaZ]
	-	weakNonEye3pt_14 [Saucer, Gamma5GammaT]
	-	weakNonEye3pt_15 [Eye,    Gamma5GammaT]


k000_p100/inexact5Hits/4pt/RK
- Data contains the "inexact" solves for the "Eye" 4pt correlators
- Small alteration to the naming convention: new parameter [hit] between [GIM] and [noise]
- No new data for the Non_Eye correlators
- Correlator naming convention 1: 4pt_Eye_[GIM]_[noise]_VC3[leg]_tK_[tK]_tJ_[tJ]_tP_[tP].[configuration].h5
- Hit of "0" is the "Reference Inexact" solve: solved on the same hit as the exact data
- Hits 1-9 inclusive are solved on different sources