//
//  ContentView.swift
//  Atom Builder
//
//  Created by NMS16446-7-lanchen on 11/13/23.
//

import SwiftUI

extension NSTextField {
    open override var focusRingType: NSFocusRingType {
        get { .none }
        set { }
    }
}

struct ContentView: View {
    @Environment(\.openURL) var openURL
    @State var protons = 1
    @State var neutrons = 0
    @State var electrons = 1
    @State var protonInfo = false
    @State var neutronInfo = false
    @State var electronInfo = false
    @State var periodInfo = false
    @State var groupInfo = false
    @State var densityInfo = false
    @State var molarMassInfo = false
    @State var meltingPointInfo = false
    @State var boilingPointInfo = false
    let electronConfigurationDisplay = [
        "1s²", "2s²", "2p⁶", "3s²", "3p⁶", "4s²", "3d¹⁰", "4p⁶", "5s²", "4d¹⁰", "5p⁶", "6s²", "4f¹⁴", "5d¹⁰", "6p⁶", "7s²", "5f¹⁴", "6d¹⁰", "7p⁶",
    ]
    let electronConfiguration = [
        "1s2", "2s2", "2p6", "3s2", "3p6", "4s2", "3d10", "4p6", "5s2", "4d10", "5p6", "6s2", "4f14", "5d10", "6p6", "7s2", "5f14", "6d10", "7p6",
    ]
    let elements = [
        "Hydrogen",
        "Helium",
        "Lithium",
        "Beryllium",
        "Boron",
        "Carbon",
        "Nitrogen",
        "Oxygen",
        "Fluorine",
        "Neon",
        "Sodium",
        "Magnesium",
        "Aluminum",
        "Silicon",
        "Phosphorus",
        "Sulfur",
        "Chlorine",
        "Argon",
        "Potassium",
        "Calcium",
        "Scandium",
        "Titanium",
        "Vanadium",
        "Chromium",
        "Manganese",
        "Iron",
        "Cobalt",
        "Nickel",
        "Copper",
        "Zinc",
        "Gallium",
        "Germanium",
        "Arsenic",
        "Selenium",
        "Bromine",
        "Krypton",
        "Rubidium",
        "Strontium",
        "Yttrium",
        "Zirconium",
        "Niobium",
        "Molybdenum",
        "Technetium",
        "Ruthenium",
        "Rhodium",
        "Palladium",
        "Silver",
        "Cadmium",
        "Indium",
        "Tin",
        "Antimony",
        "Tellurium",
        "Iodine",
        "Xenon",
        "Cesium",
        "Barium",
        "Lanthanum",
        "Cerium",
        "Praseodymium",
        "Neodymium",
        "Promethium",
        "Samarium",
        "Europium",
        "Gadolinium",
        "Terbium",
        "Dysprosium",
        "Holmium",
        "Erbium",
        "Thulium",
        "Ytterbium",
        "Lutetium",
        "Hafnium",
        "Tantalum",
        "Tungsten",
        "Rhenium",
        "Osmium",
        "Iridium",
        "Platinum",
        "Gold",
        "Mercury",
        "Thallium",
        "Lead",
        "Bismuth",
        "Polonium",
        "Astatine",
        "Radon",
        "Francium",
        "Radium",
        "Actinium",
        "Thorium",
        "Protactinium",
        "Uranium",
        "Neptunium",
        "Plutonium",
        "Americium",
        "Curium",
        "Berkelium",
        "Californium",
        "Einsteinium",
        "Fermium",
        "Mendelevium",
        "Nobelium",
        "Lawrencium",
        "Rutherfordium",
        "Dubnium",
        "Seaborgium",
        "Bohrium",
        "Hassium",
        "Meitnerium",
        "Darmstadtium",
        "Roentgenium",
        "Copernicium",
        "Nihonium",
        "Flerovium",
        "Moscovium",
        "Livermorium",
        "Tennessine",
        "Oganesson",
    ]
    let elementShorts = [
        "H",
        "He",
        "Li",
        "Be",
        "B",
        "C",
        "N",
        "O",
        "F",
        "Ne",
        "Na",
        "Mg",
        "Al",
        "Si",
        "P",
        "S",
        "Cl",
        "Ar",
        "K",
        "Ca",
        "Sc",
        "Ti",
        "V",
        "Cr",
        "Mn",
        "Fe",
        "Co",
        "Ni",
        "Cu",
        "Zn",
        "Ga",
        "Ge",
        "As",
        "Se",
        "Br",
        "Kr",
        "Rb",
        "Sr",
        "Y",
        "Zr",
        "Nb",
        "Mo",
        "Tc",
        "Ru",
        "Rh",
        "Pd",
        "Ag",
        "Cd",
        "In",
        "Sn",
        "Sb",
        "Te",
        "I",
        "Xe",
        "Cs",
        "Ba",
        "La",
        "Ce",
        "Pr",
        "Nd",
        "Pm",
        "Sm",
        "Eu",
        "Gd",
        "Tb",
        "Dy",
        "Ho",
        "Er",
        "Tm",
        "Yb",
        "Lu",
        "Hf",
        "Ta",
        "W",
        "Re",
        "Os",
        "Ir",
        "Pt",
        "Au",
        "Hg",
        "Tl",
        "Pb",
        "Bi",
        "Po",
        "At",
        "Rn",
        "Fr",
        "Ra",
        "Ac",
        "Th",
        "Pa",
        "U",
        "Np",
        "Pu",
        "Am",
        "Cm",
        "Bk",
        "Cf",
        "Es",
        "Fm",
        "Md",
        "No",
        "Lr",
        "Rf",
        "Db",
        "Sg",
        "Bh",
        "Hs",
        "Mt",
        "Ds",
        "Rg",
        "Cn",
        "Nh",
        "Fl",
        "Mc",
        "Lv",
        "Ts",
        "Og",
    ]
    let molarMasses = [
        "1.007",
        "4.002",
        "6.941",
        "9.012",
        "10.811",
        "12.011",
        "14.007",
        "15.999",
        "18.998",
        "20.18",
        "22.99",
        "24.305",
        "26.982",
        "28.086",
        "30.974",
        "32.065",
        "35.453",
        "39.948",
        "39.098",
        "40.078",
        "44.956",
        "47.867",
        "50.942",
        "51.996",
        "54.938",
        "55.845",
        "58.933",
        "58.693",
        "63.546",
        "65.38",
        "69.723",
        "72.64",
        "74.922",
        "78.96",
        "79.904",
        "83.798",
        "85.468",
        "87.62",
        "88.906",
        "91.224",
        "92.906",
        "95.96",
        "98",
        "101.07",
        "102.906",
        "106.42",
        "107.868",
        "112.411",
        "114.818",
        "118.71",
        "121.76",
        "127.6",
        "126.904",
        "131.293",
        "132.905",
        "137.327",
        "138.905",
        "140.116",
        "140.908",
        "144.242",
        "145",
        "150.36",
        "151.964",
        "157.25",
        "158.925",
        "162.5",
        "164.93",
        "167.259",
        "168.934",
        "173.054",
        "174.967",
        "178.49",
        "180.948",
        "183.84",
        "186.207",
        "190.23",
        "192.217",
        "195.084",
        "196.967",
        "200.59",
        "204.383",
        "207.2",
        "208.98",
        "210",
        "210",
        "222",
        "223",
        "226",
        "227",
        "232.038",
        "231.036",
        "238.029",
        "237",
        "244",
        "243",
        "247",
        "247",
        "251",
        "252",
        "257",
        "258",
        "259",
        "262",
        "261",
        "262",
        "266",
        "264",
        "267",
        "268",
        "271",
        "272",
        "285",
        "284",
        "289",
        "288",
        "292",
        "295",
        "294",
    ]
    let periods = [
        "1",
        "1",
        "2",
        "2",
        "2",
        "2",
        "2",
        "2",
        "2",
        "2",
        "3",
        "3",
        "3",
        "3",
        "3",
        "3",
        "3",
        "3",
        "4",
        "4",
        "4",
        "4",
        "4",
        "4",
        "4",
        "4",
        "4",
        "4",
        "4",
        "4",
        "4",
        "4",
        "4",
        "4",
        "4",
        "4",
        "5",
        "5",
        "5",
        "5",
        "5",
        "5",
        "5",
        "5",
        "5",
        "5",
        "5",
        "5",
        "5",
        "5",
        "5",
        "5",
        "5",
        "5",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "6",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
        "7",
    ]
    let groups = [
        "1",
        "18",
        "1",
        "2",
        "13",
        "14",
        "15",
        "16",
        "17",
        "18",
        "1",
        "2",
        "13",
        "14",
        "15",
        "16",
        "17",
        "18",
        "1",
        "2",
        "3",
        "4",
        "5",
        "6",
        "7",
        "8",
        "9",
        "10",
        "11",
        "12",
        "13",
        "14",
        "15",
        "16",
        "17",
        "18",
        "1",
        "2",
        "3",
        "4",
        "5",
        "6",
        "7",
        "8",
        "9",
        "10",
        "11",
        "12",
        "13",
        "14",
        "15",
        "16",
        "17",
        "18",
        "1",
        "2",
        "3",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "4",
        "5",
        "6",
        "7",
        "8",
        "9",
        "10",
        "11",
        "12",
        "13",
        "14",
        "15",
        "16",
        "17",
        "18",
        "1",
        "2",
        "3",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "4",
        "5",
        "6",
        "7",
        "8",
        "9",
        "10",
        "11",
        "12",
        "13",
        "14",
        "15",
        "16",
        "17",
        "18",
    ]
    let densities = [
        "0.00008988",
        "0.0001785",
        "0.534",
        "1.85",
        "2.37",
        "2.267",
        "0.0012506",
        "0.001429",
        "0.001696",
        "0.0008999",
        "0.97",
        "1.74",
        "2.7",
        "2.3296",
        "1.82",
        "2.067",
        "0.003214",
        "0.0017837",
        "0.89",
        "1.54",
        "2.99",
        "4.5",
        "6",
        "7.15",
        "7.3",
        "7.874",
        "8.86",
        "8.912",
        "8.933",
        "7.134",
        "5.91",
        "5.323",
        "5.776",
        "4.809",
        "3.11",
        "0.003733",
        "1.53",
        "2.64",
        "4.47",
        "6.52",
        "8.57",
        "10.2",
        "11",
        "12.1",
        "12.4",
        "12",
        "10.501",
        "8.69",
        "7.31",
        "7.287",
        "6.685",
        "6.232",
        "4.93",
        "0.005887",
        "1.93",
        "3.62",
        "6.15",
        "6.77",
        "6.77",
        "7.01",
        "7.26",
        "7.52",
        "5.24",
        "7.9",
        "8.23",
        "8.55",
        "8.8",
        "9.07",
        "9.32",
        "6.9",
        "9.84",
        "13.3",
        "16.4",
        "19.3",
        "20.8",
        "22.57",
        "22.42",
        "21.46",
        "19.282",
        "13.5336",
        "11.8",
        "11.342",
        "9.807",
        "9.32",
        "7",
        "0.00973",
        "",
        "5",
        "10.07",
        "11.72",
        "15.37",
        "18.95",
        "20.25",
        "19.84",
        "13.69",
        "13.51",
        "14",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
    ]
    let meltingPoints = [
        "-258.975",
        "-273.15",
        "180.7",
        "1287",
        "2300",
        "3675",
        "-209.86",
        "-222.65",
        "-219.52",
        "-248.447",
        "98",
        "650",
        "660.25",
        "1410",
        "44.1",
        "115.36",
        "-100.84",
        "-189.19",
        "63.35",
        "839.",
        "1539",
        "1660",
        "1902",
        "1857",
        "1246",
        "1535",
        "1495",
        "1453",
        "1084.6",
        "419.73",
        "29.7600000000001",
        "938.3",
        "817.",
        "221",
        "-7.09999999999997",
        "-157.22",
        "39.64",
        "769.",
        "1526",
        "1852",
        "2468",
        "2617",
        "2200",
        "2250",
        "1966",
        "1552",
        "961.",
        "321.18",
        "156.76",
        "232.06",
        "630.9",
        "449.65",
        "113.5",
        "-111.7",
        "28.55",
        "729",
        "920.",
        "798.",
        "931.",
        "1016.",
        "931.",
        "1072",
        "822.",
        "1312",
        "1357",
        "1407",
        "1470",
        "1522",
        "1545",
        "824.",
        "1663",
        "2227",
        "2996",
        "3407",
        "3180",
        "3027",
        "2443",
        "1772",
        "1064.58",
        "-38.72",
        "304",
        "327.6",
        "271.52",
        "254",
        "302",
        "-71.",
        "27",
        "700",
        "1050",
        "1755",
        "1600",
        "1132",
        "640",
        "640",
        "994.",
        "1067",
        "986.",
        "1652",
        "860.",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
    ]
    let boilingPoints = [
        "-252.87",
        "-268.93",
        "1341.85",
        "2468.85",
        "3926.85",
        "4026.85",
        "-195.79",
        "-182.95",
        "-188.12",
        "-246.08",
        "882.85",
        "1089.85",
        "2518.85",
        "3264.85",
        "279.85",
        "444.65",
        "-34.04",
        "-185.85",
        "758.85",
        "1483.85",
        "2835.85",
        "3286.85",
        "3406.85",
        "2670.85",
        "2060.85",
        "2860.85",
        "2926.85",
        "2912.85",
        "2561.85",
        "906.85",
        "2203.85",
        "2832.85",
        "613.85",
        "684.85",
        "58.85",
        "-153.22",
        "687.85",
        "1381.85",
        "3335.85",
        "4408.85",
        "4743.85",
        "4638.85",
        "4876.85",
        "4149.85",
        "3694.85",
        "2962.85",
        "2161.85",
        "766.85",
        "2071.85",
        "2601.85",
        "1586.85",
        "987.85",
        "184.25",
        "-108.12",
        "670.85",
        "1896.85",
        "3463.85",
        "3442.85",
        "3519.85",
        "3073.85",
        "2999.85",
        "1793.85",
        "1528.85",
        "3272.85",
        "3229.85",
        "2566.85",
        "2719.85",
        "3229.85",
        "1949.85",
        "1195.85",
        "3401.85",
        "4602.85",
        "5457.85",
        "5554.85",
        "5595.85",
        "5011.85",
        "4427.85",
        "3824.85",
        "2855.85",
        "356.85",
        "1472.85",
        "1748.85",
        "1563.85",
        "961.85",
        "336.85",
        "-61.85",
        "676.85",
        "1736.85",
        "3197.85",
        "4787.85",
        "4026.85",
        "4130.85",
        "3999.85",
        "3227.85",
        "2606.85",
        "3109.85",
        "709.85",
        "899.85",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
        "-273.15",
    ]
    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            NSApp.keyWindow?.makeFirstResponder(nil)
        }
    }
    var body: some View {
        GeometryReader { g in
            HStack(spacing: 0) {
                VStack(spacing: 0) {
                    Spacer()
                    HStack(spacing: 0) {
                        Spacer()
                        VStack(spacing: 0) {
                            Spacer()
                            ZStack {
                                RoundedRectangle(cornerRadius: 90)
                                    .foregroundColor(Color("orange"))
                                    .frame(width: g.size.width / 4, height: g.size.width / 4)
                                VStack(spacing: 0) {
                                    HStack(spacing: 0) {
                                        ZStack {
                                            Text("\(protons + neutrons)")
                                                .foregroundColor(Color("black"))
                                                .font(.system(size: g.size.width / 4 / 10))
                                                .baselineOffset(g.size.width / 15)
                                            Text(protons != 0 ? "\(protons)" : "")
                                                .foregroundColor(Color("black"))
                                                .font(.system(size: g.size.width / 4 / 10))
                                                .baselineOffset(-g.size.width / 15)
                                        }
                                        Text(protons > 0 && protons <= 118 ? elementShorts[protons - 1]: "")
                                            .foregroundColor(Color("black"))
                                            .font(.system(size: g.size.width / 1 / 10))
                                        Text(protons - electrons != 0 ? "\(protons - electrons)" : "")
                                            .foregroundColor(Color("black"))
                                            .font(.system(size: g.size.width / 4 / 10))
                                            .baselineOffset(g.size.width / 15)
                                    }
                                    Text(protons > 0 ? elements[protons - 1] : "")
                                        .foregroundColor(Color("black"))
                                        .font(.system(size: g.size.width / 4 / 10))
                                }
                            }
                        }
                        Spacer()
                    }
                    .frame(width: g.size.width * 2 / 3, height: g.size.width / 4)
                    Spacer()
                    HStack(spacing: 0) {
                        Group {
                            VStack(spacing: 0) {
                                Spacer()
                                Text("Protons")
                                    .foregroundColor(Color("black"))
                                    .font(.system(size: g.size.width / 5 / 10))
                                Spacer()
                                    .frame(height: g.size.height / 30)
                                HStack(spacing: 0) {
                                    Spacer()
                                    Button(action: {
                                        DispatchQueue.main.async {
                                            NSApp.keyWindow?.makeFirstResponder(nil)
                                        }
                                        if (protons > 1) {
                                            protons -= 1
                                            electrons -= 1
                                        }
                                    }) {
                                        ZStack {
                                            Circle()
                                                .frame(width: g.size.width / 30)
                                                .foregroundColor(Color("orange"))
                                            Image(systemName: "minus")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: g.size.width / 40)
                                                .foregroundColor(Color("black"))
                                        }
                                        .frame(width: g.size.width / 30, height: g.size.width / 30)
                                    }
                                    .buttonStyle(BorderlessButtonStyle())
                                    Spacer()
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 90)
                                            .frame(width: g.size.width / 15, height: g.size.width / 30)
                                            .foregroundColor(Color("orange"))
                                        TextField("", value: $protons, format: .number)
                                            .frame(width: g.size.width / 20, height: g.size.width / 30)
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(Color("black"))
                                            .font(.system(size: g.size.width / 5 / 10))
                                            .textFieldStyle(.plain)
                                            .onSubmit {
                                                DispatchQueue.main.async {
                                                    NSApp.keyWindow?.makeFirstResponder(nil)
                                                }
                                            }
                                            .onChange(of: protons) { newValue in
                                                if (protons > 118) {
                                                    protons = 118
                                                }
                                                if (protons < 1) {
                                                    protons = 1
                                                }
                                                electrons = protons
                                            }
                                    }
                                    Spacer()
                                    Button(action: {
                                        DispatchQueue.main.async {
                                            NSApp.keyWindow?.makeFirstResponder(nil)
                                        }
                                        if (protons < 118) {
                                            protons += 1
                                            electrons += 1
                                        }
                                    }) {
                                        ZStack {
                                            Circle()
                                                .frame(width: g.size.width / 30)
                                                .foregroundColor(Color("orange"))
                                            Image(systemName: "plus")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: g.size.width / 40)
                                                .foregroundColor(Color("black"))
                                        }
                                        .frame(width: g.size.width / 30, height: g.size.width / 30)
                                    }
                                    .buttonStyle(BorderlessButtonStyle())
                                    Spacer()
                                }
                                Spacer()
                            }
                            .onHover { hover in
                                protonInfo = hover
                            }
                        }
                        Group {
                            VStack(spacing: 0) {
                                Spacer()
                                Text("Neutrons")
                                    .foregroundColor(Color("black"))
                                    .font(.system(size: g.size.width / 5 / 10))
                                Spacer()
                                    .frame(height: g.size.height / 30)
                                HStack(spacing: 0) {
                                    Spacer()
                                    Button(action: {
                                        DispatchQueue.main.async {
                                            NSApp.keyWindow?.makeFirstResponder(nil)
                                        }
                                        if (neutrons > 0) {
                                            neutrons -= 1
                                        }
                                    }) {
                                        ZStack {
                                            Circle()
                                                .frame(width: g.size.width / 30)
                                                .foregroundColor(Color("orange"))
                                            Image(systemName: "minus")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: g.size.width / 40)
                                                .foregroundColor(Color("black"))
                                        }
                                        .frame(width: g.size.width / 30, height: g.size.width / 30)
                                    }
                                    .buttonStyle(BorderlessButtonStyle())
                                    Spacer()
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 90)
                                            .foregroundColor(Color("orange"))
                                            .frame(width: g.size.width / 15, height: g.size.width / 30)
                                        TextField("", value: $neutrons, format: .number)
                                            .frame(width: g.size.width / 20, height: g.size.width / 30)
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(Color("black"))
                                            .font(.system(size: g.size.width / 5 / 10))
                                            .textFieldStyle(.plain)
                                            .onSubmit {
                                                DispatchQueue.main.async {
                                                    NSApp.keyWindow?.makeFirstResponder(nil)
                                                }
                                            }
                                            .onChange(of: neutrons) { newValue in
                                                if (neutrons < 0) {
                                                    neutrons = 0
                                                }
                                            }
                                    }
                                    Spacer()
                                    Button(action: {
                                        DispatchQueue.main.async {
                                            NSApp.keyWindow?.makeFirstResponder(nil)
                                        }
                                        neutrons += 1
                                    }) {
                                        ZStack {
                                            Circle()
                                                .frame(width: g.size.width / 30)
                                                .foregroundColor(Color("orange"))
                                            Image(systemName: "plus")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: g.size.width / 40)
                                                .foregroundColor(Color("black"))
                                        }
                                        .frame(width: g.size.width / 30, height: g.size.width / 30)
                                    }
                                    .buttonStyle(BorderlessButtonStyle())
                                    Spacer()
                                }
                                Spacer()
                            }
                            .onHover { hover in
                                neutronInfo = hover
                            }
                        }
                        Group {
                            VStack(spacing: 0) {
                                Spacer()
                                Text("Electrons")
                                    .foregroundColor(Color("black"))
                                    .font(.system(size: g.size.width / 5 / 10))
                                Spacer()
                                    .frame(height: g.size.height / 30)
                                HStack(spacing: 0) {
                                    Spacer()
                                    Button(action: {
                                        DispatchQueue.main.async {
                                            NSApp.keyWindow?.makeFirstResponder(nil)
                                        }
                                        if (electrons > 0) {
                                            electrons -= 1
                                        }
                                    }) {
                                        ZStack {
                                            Circle()
                                                .frame(width: g.size.width / 30)
                                                .foregroundColor(Color("orange"))
                                            Image(systemName: "minus")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: g.size.width / 40)
                                                .foregroundColor(Color("black"))
                                        }
                                        .frame(width: g.size.width / 30, height: g.size.width / 30)
                                    }
                                    .buttonStyle(BorderlessButtonStyle())
                                    Spacer()
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 90)
                                            .foregroundColor(Color("orange"))
                                            .frame(width: g.size.width / 15, height: g.size.width / 30)
                                        TextField("", value: $electrons, format: .number)
                                            .frame(width: g.size.width / 20, height: g.size.width / 30)
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(Color("black"))
                                            .font(.system(size: g.size.width / 5 / 10))
                                            .textFieldStyle(.plain)
                                            .onSubmit {
                                                DispatchQueue.main.async {
                                                    NSApp.keyWindow?.makeFirstResponder(nil)
                                                }
                                            }
                                            .onChange(of: electrons) { newValue in
                                                if (electrons < 0) {
                                                    electrons = 0
                                                }
                                            }
                                    }
                                    Spacer()
                                    Button(action: {
                                        DispatchQueue.main.async {
                                            NSApp.keyWindow?.makeFirstResponder(nil)
                                        }
                                        electrons += 1
                                    }) {
                                        ZStack {
                                            Circle()
                                                .frame(width: g.size.width / 30)
                                                .foregroundColor(Color("orange"))
                                            Image(systemName: "plus")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: g.size.width / 40)
                                                .foregroundColor(Color("black"))
                                        }
                                        .frame(width: g.size.width / 30, height: g.size.width / 30)
                                    }
                                    .buttonStyle(BorderlessButtonStyle())
                                    Spacer()
                                }
                                Spacer()
                            }
                            .onHover { hover in
                                electronInfo = hover
                            }
                        }
                    }
                    .frame(width: g.size.width * 2 / 3, height: g.size.height / 6)
                    Spacer()
                }
                ZStack(alignment: .bottom) {
                    Rectangle()
                        .frame(width: g.size.width / 3, height: g.size.height)
                        .foregroundColor(Color("orange"))
                    VStack(alignment: .leading, spacing: 0) {
                        Spacer()
                            .frame(height: g.size.height / 20)
                        Text(protons > 0 && protons <= 118 ? elements[protons - 1] : "")
                            .frame(width: g.size.width / 3 * 5 / 6, alignment: .leading)
                            .foregroundColor(Color("black"))
                            .font(.system(size: g.size.width / 4 / 10))
                        Text(protons > 0 && protons <= 118 ? "Period: " + periods[protons - 1] : "")
                            .frame(width: g.size.width / 3 * 5 / 6, alignment: .leading)
                            .foregroundColor(Color("black"))
                            .font(.system(size: g.size.width / 5 / 10))
                            .onHover { hover in
                                periodInfo = hover
                            }
                        if (protons > 0) {
                            if (groups[protons - 1] != "" ) {
                                Text(protons > 0 && protons <= 118 ? "Group: " + groups[protons - 1] : "")
                                    .frame(width: g.size.width / 3 * 5 / 6, alignment: .leading)
                                    .foregroundColor(Color("black"))
                                    .font(.system(size: g.size.width / 5 / 10))
                                    .onHover { hover in
                                        groupInfo = hover
                                    }
                            }
                        }
                        if (protons > 0) {
                            if (densities[protons - 1] != "") {
                                Text(protons > 0 && protons <= 118 ? "Density: " + densities[protons - 1] + "g/cm³" : "")
                                    .frame(width: g.size.width / 3 * 5 / 6, alignment: .leading)
                                    .foregroundColor(Color("black"))
                                    .font(.system(size: g.size.width / 5 / 10))
                                    .onHover { hover in
                                        densityInfo = hover
                                    }
                            }
                        }
                        if (protons > 0) {
                            if (molarMasses[protons - 1] != "") {
                                Text(protons > 0 && protons <= 118 ? "Molar Mass: " + molarMasses[protons - 1] + "g/amu" : "")
                                    .frame(width: g.size.width / 3 * 5 / 6, alignment: .leading)
                                    .foregroundColor(Color("black"))
                                    .font(.system(size: g.size.width / 5 / 10))
                                    .onHover { hover in
                                        molarMassInfo = hover
                                    }
                            }
                        }
                        if (protons > 0) {
                            if (meltingPoints[protons - 1] != "") {
                                Text(protons > 0 && protons <= 118 ? "Melting Point: " + meltingPoints[protons - 1] + "ºC" : "")
                                    .frame(width: g.size.width / 3 * 5 / 6, alignment: .leading)
                                    .foregroundColor(Color("black"))
                                    .font(.system(size: g.size.width / 5 / 10))
                                    .onHover { hover in
                                        meltingPointInfo = hover
                                    }
                            }
                        }
                        if (protons > 0) {
                            if (boilingPoints[protons - 1] != "") {
                                Text(protons > 0 && protons <= 118 ? "Boiling Point: " + boilingPoints[protons - 1] + "ºC" : "")
                                    .frame(width: g.size.width / 3 * 5 / 6, alignment: .leading)
                                    .foregroundColor(Color("black"))
                                    .font(.system(size: g.size.width / 5 / 10))
                                    .onHover { hover in
                                        boilingPointInfo = hover
                                    }
                            }
                        }
                        Button(action: {
                            openURL(URL(string: "https://en.wikipedia.org/wiki/" + elements[protons - 1])!)
                        }) {
                            Label("Link", systemImage: "link")
                                .frame(width: g.size.width / 3 * 5 / 6, alignment: .leading)
                                .foregroundColor(Color("blue"))
                                .font(.system(size: g.size.width / 5 / 10))
                        }
                        .buttonStyle(BorderlessButtonStyle())
                        Spacer()
                    }
                    ZStack(alignment: .center) {
                        Rectangle()
                            .frame(width: g.size.width / 3, height: g.size.height / 5)
                            .foregroundColor(Color("blue"))
                        if (protonInfo) {
                            Text("A proton is a positively charged subatomic particle with a large mass compared to that of an electron.")
                                .frame(width: g.size.width / 3 * 5 / 6, height: g.size.height / 5 * 5 / 6, alignment: .leading)
                                .foregroundColor(Color("black"))
                                .font(.system(size: g.size.width / 5 / 12))
                        } else if (neutronInfo) {
                            Text("A neutron is a neutrally charged subatomic particle with a mass roughly equal to that of a proton.")
                                .frame(width: g.size.width / 3 * 5 / 6, height: g.size.height / 5 * 5 / 6, alignment: .leading)
                                .foregroundColor(Color("black"))
                                .font(.system(size: g.size.width / 5 / 12))
                        } else if (electronInfo) {
                            Text("An electron is a negatively charged subatomic particle with a mass so small it accounts for barely any of the weight of an atom.")
                                .frame(width: g.size.width / 3 * 5 / 6, height: g.size.height / 5 * 5 / 6, alignment: .leading)
                                .foregroundColor(Color("black"))
                                .font(.system(size: g.size.width / 5 / 12))
                        }  else if (groupInfo) {
                            Text("A group is a column on the periodic table.")
                                .frame(width: g.size.width / 3 * 5 / 6, height: g.size.height / 5 * 5 / 6, alignment: .leading)
                                .foregroundColor(Color("black"))
                                .font(.system(size: g.size.width / 5 / 12))
                        } else if (periodInfo) {
                            Text("A period is a row on the periodic table.")
                                .frame(width: g.size.width / 3 * 5 / 6, height: g.size.height / 5 * 5 / 6, alignment: .leading)
                                .foregroundColor(Color("black"))
                                .font(.system(size: g.size.width / 5 / 12))
                        } else if (densityInfo) {
                            Text("Density is the mass of an atom divided by its volume, measured here in grams per centimeter cubed.")
                                .frame(width: g.size.width / 3 * 5 / 6, height: g.size.height / 5 * 5 / 6, alignment: .leading)
                                .foregroundColor(Color("black"))
                                .font(.system(size: g.size.width / 5 / 12))
                        } else if (molarMassInfo) {
                            Text("The molar mass of an atom is the mass, in grams, of a mole of that atom. One mole = 6.022x10^23.")
                                .frame(width: g.size.width / 3 * 5 / 6, height: g.size.height / 5 * 5 / 6, alignment: .leading)
                                .foregroundColor(Color("black"))
                                .font(.system(size: g.size.width / 5 / 12))
                        } else if (meltingPointInfo) {
                            Text("The melting point of an atom is the temperature at which it melts.")
                                .frame(width: g.size.width / 3 * 5 / 6, height: g.size.height / 5 * 5 / 6, alignment: .leading)
                                .foregroundColor(Color("black"))
                                .font(.system(size: g.size.width / 5 / 12))
                        } else if (boilingPointInfo) {
                            Text("The boiling point of an atom is the temperature at which it boils.")
                                .frame(width: g.size.width / 3 * 5 / 6, height: g.size.height / 5 * 5 / 6, alignment: .leading)
                                .foregroundColor(Color("black"))
                                .font(.system(size: g.size.width / 5 / 12))
                        } else {
                            Text("Hover over the names of things to see a brief description of them here.")
                                .frame(width: g.size.width / 3 * 5 / 6, height: g.size.height / 5 * 5 / 6, alignment: .leading)
                                .foregroundColor(Color("black"))
                                .font(.system(size: g.size.width / 5 / 12))
                        }
                    }
                }
            }
        }
        .background(Color("white"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

