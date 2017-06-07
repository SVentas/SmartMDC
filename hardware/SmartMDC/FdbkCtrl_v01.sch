<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.2.1">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="9" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="1" fill="9" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
<layer number="100" name="Muster" color="7" fill="1" visible="no" active="no"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="no" active="no"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="frames" urn="urn:adsk.eagle:library:229">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A5L-LOC" library_version="1">
<wire x1="85.09" y1="3.81" x2="85.09" y2="24.13" width="0.1016" layer="94"/>
<wire x1="85.09" y1="24.13" x2="139.065" y2="24.13" width="0.1016" layer="94"/>
<wire x1="139.065" y1="24.13" x2="180.34" y2="24.13" width="0.1016" layer="94"/>
<wire x1="170.18" y1="3.81" x2="170.18" y2="8.89" width="0.1016" layer="94"/>
<wire x1="170.18" y1="8.89" x2="180.34" y2="8.89" width="0.1016" layer="94"/>
<wire x1="170.18" y1="8.89" x2="139.065" y2="8.89" width="0.1016" layer="94"/>
<wire x1="139.065" y1="8.89" x2="139.065" y2="3.81" width="0.1016" layer="94"/>
<wire x1="139.065" y1="8.89" x2="139.065" y2="13.97" width="0.1016" layer="94"/>
<wire x1="139.065" y1="13.97" x2="180.34" y2="13.97" width="0.1016" layer="94"/>
<wire x1="139.065" y1="13.97" x2="139.065" y2="19.05" width="0.1016" layer="94"/>
<wire x1="139.065" y1="19.05" x2="180.34" y2="19.05" width="0.1016" layer="94"/>
<wire x1="139.065" y1="19.05" x2="139.065" y2="24.13" width="0.1016" layer="94"/>
<text x="140.97" y="15.24" size="2.54" layer="94">&gt;DRAWING_NAME</text>
<text x="140.97" y="10.16" size="2.286" layer="94">&gt;LAST_DATE_TIME</text>
<text x="154.305" y="5.08" size="2.54" layer="94">&gt;SHEET</text>
<text x="140.716" y="4.953" size="2.54" layer="94">Sheet:</text>
<frame x1="0" y1="0" x2="184.15" y2="133.35" columns="4" rows="4" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A5L-LOC" prefix="FRAME" uservalue="yes" library_version="1">
<description>A5L LOC</description>
<gates>
<gate name="G$1" symbol="A5L-LOC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SmartMDC">
<packages>
<package name="LQFP48">
<description>&lt;b&gt;LQFP48&lt;/b&gt; Package</description>
<wire x1="-3.375" y1="3.1" x2="-3.1" y2="3.375" width="0.254" layer="21"/>
<wire x1="-3.1" y1="3.375" x2="3.1" y2="3.375" width="0.254" layer="21"/>
<wire x1="3.1" y1="3.375" x2="3.375" y2="3.1" width="0.254" layer="21"/>
<wire x1="3.375" y1="3.1" x2="3.375" y2="-3.1" width="0.254" layer="21"/>
<wire x1="3.375" y1="-3.1" x2="3.1" y2="-3.375" width="0.254" layer="21"/>
<wire x1="3.1" y1="-3.375" x2="-3.1" y2="-3.375" width="0.254" layer="21"/>
<wire x1="-3.1" y1="-3.375" x2="-3.375" y2="-3.1" width="0.254" layer="21"/>
<wire x1="-3.375" y1="-3.1" x2="-3.375" y2="3.1" width="0.254" layer="21"/>
<circle x="-2.254" y="-2.254" radius="0.508" width="0" layer="21"/>
<smd name="1" x="-2.75" y="-4.25" dx="0.25" dy="1.2" layer="1"/>
<smd name="2" x="-2.25" y="-4.25" dx="0.25" dy="1.2" layer="1"/>
<smd name="3" x="-1.75" y="-4.25" dx="0.25" dy="1.2" layer="1"/>
<smd name="4" x="-1.25" y="-4.25" dx="0.25" dy="1.2" layer="1"/>
<smd name="5" x="-0.75" y="-4.25" dx="0.25" dy="1.2" layer="1"/>
<smd name="6" x="-0.25" y="-4.25" dx="0.25" dy="1.2" layer="1"/>
<smd name="7" x="0.25" y="-4.25" dx="0.25" dy="1.2" layer="1"/>
<smd name="8" x="0.75" y="-4.25" dx="0.25" dy="1.2" layer="1"/>
<smd name="9" x="1.25" y="-4.25" dx="0.25" dy="1.2" layer="1"/>
<smd name="10" x="1.75" y="-4.25" dx="0.25" dy="1.2" layer="1"/>
<smd name="11" x="2.25" y="-4.25" dx="0.25" dy="1.2" layer="1"/>
<smd name="12" x="2.75" y="-4.25" dx="0.25" dy="1.2" layer="1"/>
<smd name="13" x="4.25" y="-2.75" dx="1.2" dy="0.25" layer="1"/>
<smd name="14" x="4.25" y="-2.25" dx="1.2" dy="0.25" layer="1"/>
<smd name="15" x="4.25" y="-1.75" dx="1.2" dy="0.25" layer="1"/>
<smd name="16" x="4.25" y="-1.25" dx="1.2" dy="0.25" layer="1"/>
<smd name="17" x="4.25" y="-0.75" dx="1.2" dy="0.25" layer="1"/>
<smd name="18" x="4.25" y="-0.25" dx="1.2" dy="0.25" layer="1"/>
<smd name="19" x="4.25" y="0.25" dx="1.2" dy="0.25" layer="1"/>
<smd name="20" x="4.25" y="0.75" dx="1.2" dy="0.25" layer="1"/>
<smd name="21" x="4.25" y="1.25" dx="1.2" dy="0.25" layer="1"/>
<smd name="22" x="4.25" y="1.75" dx="1.2" dy="0.25" layer="1"/>
<smd name="23" x="4.25" y="2.25" dx="1.2" dy="0.25" layer="1"/>
<smd name="24" x="4.25" y="2.75" dx="1.2" dy="0.25" layer="1"/>
<smd name="25" x="2.75" y="4.25" dx="0.25" dy="1.2" layer="1"/>
<smd name="26" x="2.25" y="4.25" dx="0.25" dy="1.2" layer="1"/>
<smd name="27" x="1.75" y="4.25" dx="0.25" dy="1.2" layer="1"/>
<smd name="28" x="1.25" y="4.25" dx="0.25" dy="1.2" layer="1"/>
<smd name="29" x="0.75" y="4.25" dx="0.25" dy="1.2" layer="1"/>
<smd name="30" x="0.25" y="4.25" dx="0.25" dy="1.2" layer="1"/>
<smd name="31" x="-0.25" y="4.25" dx="0.25" dy="1.2" layer="1"/>
<smd name="32" x="-0.75" y="4.25" dx="0.25" dy="1.2" layer="1"/>
<smd name="33" x="-1.25" y="4.25" dx="0.25" dy="1.2" layer="1"/>
<smd name="34" x="-1.75" y="4.25" dx="0.25" dy="1.2" layer="1"/>
<smd name="35" x="-2.25" y="4.25" dx="0.25" dy="1.2" layer="1"/>
<smd name="36" x="-2.75" y="4.25" dx="0.25" dy="1.2" layer="1"/>
<smd name="37" x="-4.25" y="2.75" dx="1.2" dy="0.25" layer="1"/>
<smd name="38" x="-4.25" y="2.25" dx="1.2" dy="0.25" layer="1"/>
<smd name="39" x="-4.25" y="1.75" dx="1.2" dy="0.25" layer="1"/>
<smd name="40" x="-4.25" y="1.25" dx="1.2" dy="0.25" layer="1"/>
<smd name="41" x="-4.25" y="0.75" dx="1.2" dy="0.25" layer="1"/>
<smd name="42" x="-4.25" y="0.25" dx="1.2" dy="0.25" layer="1"/>
<smd name="43" x="-4.25" y="-0.25" dx="1.2" dy="0.25" layer="1"/>
<smd name="44" x="-4.25" y="-0.75" dx="1.2" dy="0.25" layer="1"/>
<smd name="45" x="-4.25" y="-1.25" dx="1.2" dy="0.25" layer="1"/>
<smd name="46" x="-4.25" y="-1.75" dx="1.2" dy="0.25" layer="1"/>
<smd name="47" x="-4.25" y="-2.25" dx="1.2" dy="0.25" layer="1"/>
<smd name="48" x="-4.25" y="-2.75" dx="1.2" dy="0.25" layer="1"/>
<text x="-2.54" y="1.27" size="0.8128" layer="25">&gt;NAME</text>
<text x="-2.54" y="-0.635" size="0.8128" layer="27">&gt;VALUE</text>
<rectangle x1="-2.85" y1="-4.5" x2="-2.65" y2="-3.45" layer="51"/>
<rectangle x1="-2.35" y1="-4.5" x2="-2.15" y2="-3.45" layer="51"/>
<rectangle x1="-1.85" y1="-4.5" x2="-1.65" y2="-3.45" layer="51"/>
<rectangle x1="-1.35" y1="-4.5" x2="-1.15" y2="-3.45" layer="51"/>
<rectangle x1="-0.85" y1="-4.5" x2="-0.65" y2="-3.45" layer="51"/>
<rectangle x1="-0.35" y1="-4.5" x2="-0.15" y2="-3.45" layer="51"/>
<rectangle x1="0.15" y1="-4.5" x2="0.35" y2="-3.45" layer="51"/>
<rectangle x1="0.65" y1="-4.5" x2="0.85" y2="-3.45" layer="51"/>
<rectangle x1="1.15" y1="-4.5" x2="1.35" y2="-3.45" layer="51"/>
<rectangle x1="1.65" y1="-4.5" x2="1.85" y2="-3.45" layer="51"/>
<rectangle x1="2.15" y1="-4.5" x2="2.35" y2="-3.45" layer="51"/>
<rectangle x1="2.65" y1="-4.5" x2="2.85" y2="-3.45" layer="51"/>
<rectangle x1="3.45" y1="-2.85" x2="4.5" y2="-2.65" layer="51"/>
<rectangle x1="3.45" y1="-2.35" x2="4.5" y2="-2.15" layer="51"/>
<rectangle x1="3.45" y1="-1.85" x2="4.5" y2="-1.65" layer="51"/>
<rectangle x1="3.45" y1="-1.35" x2="4.5" y2="-1.15" layer="51"/>
<rectangle x1="3.45" y1="-0.85" x2="4.5" y2="-0.65" layer="51"/>
<rectangle x1="3.45" y1="-0.35" x2="4.5" y2="-0.15" layer="51"/>
<rectangle x1="3.45" y1="0.15" x2="4.5" y2="0.35" layer="51"/>
<rectangle x1="3.45" y1="0.65" x2="4.5" y2="0.85" layer="51"/>
<rectangle x1="3.45" y1="1.15" x2="4.5" y2="1.35" layer="51"/>
<rectangle x1="3.45" y1="1.65" x2="4.5" y2="1.85" layer="51"/>
<rectangle x1="3.45" y1="2.15" x2="4.5" y2="2.35" layer="51"/>
<rectangle x1="3.45" y1="2.65" x2="4.5" y2="2.85" layer="51"/>
<rectangle x1="2.65" y1="3.45" x2="2.85" y2="4.5" layer="51"/>
<rectangle x1="2.15" y1="3.45" x2="2.35" y2="4.5" layer="51"/>
<rectangle x1="1.65" y1="3.45" x2="1.85" y2="4.5" layer="51"/>
<rectangle x1="1.15" y1="3.45" x2="1.35" y2="4.5" layer="51"/>
<rectangle x1="0.65" y1="3.45" x2="0.85" y2="4.5" layer="51"/>
<rectangle x1="0.15" y1="3.45" x2="0.35" y2="4.5" layer="51"/>
<rectangle x1="-0.35" y1="3.45" x2="-0.15" y2="4.5" layer="51"/>
<rectangle x1="-0.85" y1="3.45" x2="-0.65" y2="4.5" layer="51"/>
<rectangle x1="-1.35" y1="3.45" x2="-1.15" y2="4.5" layer="51"/>
<rectangle x1="-1.85" y1="3.45" x2="-1.65" y2="4.5" layer="51"/>
<rectangle x1="-2.35" y1="3.45" x2="-2.15" y2="4.5" layer="51"/>
<rectangle x1="-2.85" y1="3.45" x2="-2.65" y2="4.5" layer="51"/>
<rectangle x1="-4.5" y1="2.65" x2="-3.45" y2="2.85" layer="51"/>
<rectangle x1="-4.5" y1="2.15" x2="-3.45" y2="2.35" layer="51"/>
<rectangle x1="-4.5" y1="1.65" x2="-3.45" y2="1.85" layer="51"/>
<rectangle x1="-4.5" y1="1.15" x2="-3.45" y2="1.35" layer="51"/>
<rectangle x1="-4.5" y1="0.65" x2="-3.45" y2="0.85" layer="51"/>
<rectangle x1="-4.5" y1="0.15" x2="-3.45" y2="0.35" layer="51"/>
<rectangle x1="-4.5" y1="-0.35" x2="-3.45" y2="-0.15" layer="51"/>
<rectangle x1="-4.5" y1="-0.85" x2="-3.45" y2="-0.65" layer="51"/>
<rectangle x1="-4.5" y1="-1.35" x2="-3.45" y2="-1.15" layer="51"/>
<rectangle x1="-4.5" y1="-1.85" x2="-3.45" y2="-1.65" layer="51"/>
<rectangle x1="-4.5" y1="-2.35" x2="-3.45" y2="-2.15" layer="51"/>
<rectangle x1="-4.5" y1="-2.85" x2="-3.45" y2="-2.65" layer="51"/>
</package>
<package name="ABMM2">
<smd name="1" x="-2.2" y="-1.2" dx="1.8" dy="1.4" layer="1"/>
<smd name="2" x="2.2" y="-1.2" dx="1.5968" dy="1.1968" layer="1" thermals="no"/>
<smd name="3" x="2.2" y="1.2" dx="1.8" dy="1.4" layer="1"/>
<smd name="4" x="-2.2" y="1.2" dx="1.5968" dy="1.1968" layer="1" thermals="no"/>
<wire x1="3" y1="1.5" x2="3" y2="-1.5" width="0.1524" layer="51"/>
<wire x1="-3" y1="-1.5" x2="-3" y2="1.5" width="0.1524" layer="51"/>
<wire x1="-1" y1="1.8" x2="1" y2="1.8" width="0.1524" layer="21"/>
<wire x1="-1" y1="-1.8" x2="1" y2="-1.8" width="0.1524" layer="21"/>
<wire x1="-1" y1="-1.8" x2="-2.7" y2="-1.8" width="0.1524" layer="51"/>
<wire x1="-2.7" y1="-1.8" x2="-3" y2="-1.5" width="0.1524" layer="51"/>
<wire x1="1" y1="-1.8" x2="2.7" y2="-1.8" width="0.1524" layer="51"/>
<wire x1="2.7" y1="-1.8" x2="3" y2="-1.5" width="0.1524" layer="51"/>
<wire x1="1" y1="1.8" x2="2.7" y2="1.8" width="0.1524" layer="51"/>
<wire x1="2.7" y1="1.8" x2="3" y2="1.5" width="0.1524" layer="51"/>
<wire x1="-1" y1="1.8" x2="-2.7" y2="1.8" width="0.1524" layer="51"/>
<wire x1="-2.7" y1="1.8" x2="-3" y2="1.5" width="0.1524" layer="51"/>
<text x="-3.048" y="2.413" size="0.8128" layer="25">&gt;NAME</text>
<text x="-3.048" y="-3.175" size="0.8128" layer="27">&gt;VALUE</text>
</package>
<package name="C0805">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-0.51" y1="0.535" x2="0.51" y2="0.535" width="0.1016" layer="51"/>
<wire x1="-0.51" y1="-0.535" x2="0.51" y2="-0.535" width="0.1016" layer="51"/>
<wire x1="-1.5748" y1="0.8128" x2="1.5748" y2="0.8128" width="0.0508" layer="39"/>
<wire x1="1.5748" y1="0.8128" x2="1.5748" y2="-0.8128" width="0.0508" layer="39"/>
<wire x1="1.5748" y1="-0.8128" x2="-1.5748" y2="-0.8128" width="0.0508" layer="39"/>
<wire x1="-1.5748" y1="-0.8128" x2="-1.5748" y2="0.8128" width="0.0508" layer="39"/>
<wire x1="-1.651" y1="0.889" x2="1.651" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.651" y1="0.889" x2="1.651" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-0.889" x2="-1.651" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="-0.889" x2="-1.651" y2="0.889" width="0.1524" layer="21"/>
<smd name="1" x="-0.889" y="0" dx="1" dy="1.3" layer="1"/>
<smd name="2" x="0.889" y="0" dx="1" dy="1.3" layer="1"/>
<text x="-1.778" y="1.27" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.778" y="-2.032" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.65" x2="1" y2="0.65" layer="51"/>
<rectangle x1="-1" y1="-0.65" x2="-0.4168" y2="0.65" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="C1206">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="1.0525" y1="-0.7128" x2="-1.0652" y2="-0.7128" width="0.1016" layer="51"/>
<wire x1="1.0525" y1="0.7128" x2="-1.0652" y2="0.7128" width="0.1016" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.4731" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.4731" y1="0.983" x2="2.4731" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.4731" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-2.4892" y1="1.143" x2="2.4892" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.4892" y1="1.143" x2="2.4892" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.4892" y1="-1.143" x2="-2.4892" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.4892" y1="-1.143" x2="-2.4892" y2="1.143" width="0.1524" layer="21"/>
<smd name="2" x="1.524" y="0" dx="1.3" dy="1.6" layer="1"/>
<smd name="1" x="-1.524" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-2.286" y="1.524" size="0.6096" layer="25" ratio="18">&gt;NAME</text>
<text x="-2.286" y="-2.032" size="0.6096" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.6" y1="-0.8" x2="-0.9" y2="0.8" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
<rectangle x1="0.9001" y1="-0.8" x2="1.6" y2="0.8" layer="51" rot="R180"/>
</package>
<package name="C0603">
<description>&lt;b&gt;SMD CHIP CAP&lt;/b&gt; - 0603</description>
<wire x1="-0.432" y1="-0.306" x2="0.432" y2="-0.306" width="0.1016" layer="51"/>
<wire x1="0.432" y1="0.306" x2="-0.432" y2="0.306" width="0.1016" layer="51"/>
<wire x1="-1.3206" y1="0.6147" x2="1.3206" y2="0.6147" width="0.0254" layer="39"/>
<wire x1="1.3206" y1="0.6147" x2="1.3206" y2="-0.6147" width="0.0254" layer="39"/>
<wire x1="1.3206" y1="-0.6147" x2="-1.3206" y2="-0.6147" width="0.0254" layer="39"/>
<wire x1="-1.3206" y1="-0.6147" x2="-1.3206" y2="0.6147" width="0.0254" layer="39"/>
<wire x1="-1.3462" y1="0.635" x2="1.3462" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.3462" y1="0.635" x2="1.3462" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.3462" y1="-0.635" x2="-1.3462" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.3462" y1="-0.635" x2="-1.3462" y2="0.635" width="0.1524" layer="21"/>
<smd name="1" x="-0.762" y="0" dx="0.7" dy="0.8" layer="1"/>
<smd name="2" x="0.762" y="0" dx="0.7" dy="0.8" layer="1"/>
<text x="-1.524" y="1.016" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.524" y="-1.778" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="0.4318" y1="-0.4" x2="0.8" y2="0.4" layer="51"/>
<rectangle x1="-0.8" y1="-0.4" x2="-0.4318" y2="0.4" layer="51"/>
<rectangle x1="-0.1999" y1="-0.25" x2="0.1999" y2="0.25" layer="35"/>
</package>
<package name="C0603G">
<description>&lt;b&gt;SMD CHIP CAP&lt;/b&gt; - 0603 (GND adjusted)</description>
<wire x1="-0.432" y1="-0.306" x2="0.432" y2="-0.306" width="0.1016" layer="51"/>
<wire x1="0.432" y1="0.306" x2="-0.432" y2="0.306" width="0.1016" layer="51"/>
<wire x1="-1.3206" y1="0.6147" x2="1.3206" y2="0.6147" width="0.0254" layer="39"/>
<wire x1="1.3206" y1="0.6147" x2="1.3206" y2="-0.6147" width="0.0254" layer="39"/>
<wire x1="1.3206" y1="-0.6147" x2="-1.3206" y2="-0.6147" width="0.0254" layer="39"/>
<wire x1="-1.3206" y1="-0.6147" x2="-1.3206" y2="0.6147" width="0.0254" layer="39"/>
<wire x1="-1.3462" y1="0.635" x2="1.3462" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.3462" y1="0.635" x2="1.3462" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.3462" y1="-0.635" x2="-1.3462" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.3462" y1="-0.635" x2="-1.3462" y2="0.635" width="0.1524" layer="21"/>
<smd name="1" x="-0.762" y="0" dx="0.7" dy="0.8" layer="1"/>
<smd name="2" x="0.762" y="0" dx="0.5476" dy="0.6476" layer="1" thermals="no"/>
<text x="-1.524" y="1.016" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.524" y="-1.778" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="0.4318" y1="-0.4" x2="0.8" y2="0.4" layer="51"/>
<rectangle x1="-0.8" y1="-0.4" x2="-0.4318" y2="0.4" layer="51"/>
<rectangle x1="-0.1999" y1="-0.25" x2="0.1999" y2="0.25" layer="35"/>
</package>
<package name="32005-201">
<description>&lt;b&gt;MINI USB-B R/A SMT W/ REAR&lt;/b&gt;&lt;p&gt;
Source: http://www.cypressindustries.com/pdf/32005-201.pdf</description>
<wire x1="-5.9182" y1="3.8416" x2="-3.6879" y2="3.8416" width="0.1016" layer="51"/>
<wire x1="-3.6879" y1="3.8416" x2="-3.6879" y2="4.8799" width="0.1016" layer="51"/>
<wire x1="-3.6879" y1="4.8799" x2="-3.3245" y2="4.8799" width="0.1016" layer="51"/>
<wire x1="-3.3245" y1="4.8799" x2="-3.3245" y2="4.4646" width="0.1016" layer="51"/>
<wire x1="-3.3245" y1="4.4646" x2="-2.7015" y2="4.4646" width="0.1016" layer="51"/>
<wire x1="-2.7015" y1="4.4646" x2="-2.7015" y2="4.8799" width="0.1016" layer="51"/>
<wire x1="-2.7015" y1="4.8799" x2="-2.3093" y2="4.8799" width="0.1016" layer="51"/>
<wire x1="-2.3093" y1="4.8799" x2="-2.3093" y2="3.8416" width="0.1016" layer="51"/>
<wire x1="-1.5825" y1="3.8416" x2="0.7266" y2="3.8416" width="0.1016" layer="51"/>
<wire x1="2.8032" y1="3.8416" x2="0.7266" y2="3.8416" width="0.1016" layer="51"/>
<wire x1="0.7266" y1="3.8416" x2="0.519" y2="4.0492" width="0.1016" layer="51" curve="-90"/>
<wire x1="0.519" y1="4.0492" x2="0.519" y2="4.205" width="0.1016" layer="51"/>
<wire x1="0.519" y1="4.205" x2="2.907" y2="4.205" width="0.1016" layer="51"/>
<wire x1="2.907" y1="4.205" x2="3.4781" y2="3.634" width="0.1016" layer="51" curve="-89.989967"/>
<wire x1="3.4781" y1="3.634" x2="3.4781" y2="3.6339" width="0.1016" layer="51" curve="-0.010033"/>
<wire x1="-5.9182" y1="-3.8415" x2="-5.9182" y2="-3.8414" width="0.1016" layer="51"/>
<wire x1="-5.9182" y1="-3.8414" x2="-5.9182" y2="3.8416" width="0.1016" layer="51"/>
<wire x1="-1.8171" y1="2.9591" x2="-4.5685" y2="2.7514" width="0.1016" layer="51"/>
<wire x1="-4.5685" y1="2.7514" x2="-4.828" y2="2.5438" width="0.1016" layer="51" curve="68.629849"/>
<wire x1="-4.828" y1="2.5438" x2="-4.828" y2="1.9727" width="0.1016" layer="51" curve="34.099487"/>
<wire x1="-4.828" y1="1.9727" x2="-4.5685" y2="1.7651" width="0.1016" layer="51" curve="68.629849"/>
<wire x1="-4.5685" y1="1.7651" x2="-1.8171" y2="1.5055" width="0.1016" layer="51"/>
<wire x1="-1.8171" y1="1.5055" x2="-1.8171" y2="1.7132" width="0.1016" layer="51"/>
<wire x1="-1.8171" y1="1.7132" x2="-4.2051" y2="1.9727" width="0.1016" layer="51"/>
<wire x1="-4.2051" y1="1.9727" x2="-4.2051" y2="2.4919" width="0.1016" layer="51"/>
<wire x1="-4.2051" y1="2.4919" x2="-1.8171" y2="2.7514" width="0.1016" layer="51"/>
<wire x1="-1.8171" y1="2.7514" x2="-1.8171" y2="2.9591" width="0.1016" layer="51"/>
<wire x1="2.8032" y1="3.8416" x2="3.0627" y2="3.5821" width="0.1016" layer="51" curve="-90"/>
<wire x1="3.0627" y1="3.5821" x2="3.0627" y2="3.011" width="0.1016" layer="51"/>
<wire x1="3.0627" y1="3.011" x2="3.4261" y2="3.011" width="0.1016" layer="51"/>
<wire x1="1.713" y1="4.2569" x2="1.713" y2="4.8799" width="0.1016" layer="51"/>
<wire x1="1.713" y1="4.8799" x2="2.1283" y2="4.8799" width="0.1016" layer="51"/>
<wire x1="2.1283" y1="4.8799" x2="2.1283" y2="4.4646" width="0.1016" layer="51"/>
<wire x1="2.1283" y1="4.4646" x2="2.6474" y2="4.4646" width="0.1016" layer="51"/>
<wire x1="2.6474" y1="4.4646" x2="2.6474" y2="4.8799" width="0.1016" layer="51"/>
<wire x1="2.6474" y1="4.8799" x2="3.0627" y2="4.8799" width="0.1016" layer="51"/>
<wire x1="3.0627" y1="4.8799" x2="3.0627" y2="4.2569" width="0.1016" layer="51"/>
<wire x1="0.5709" y1="1.7651" x2="0.5709" y2="-1.765" width="0.1016" layer="51"/>
<wire x1="1.0381" y1="-1.8169" x2="1.0381" y2="1.817" width="0.1016" layer="51"/>
<wire x1="1.0381" y1="1.817" x2="0.8305" y2="2.0246" width="0.1016" layer="51" curve="90.055225"/>
<wire x1="0.8305" y1="2.0246" x2="0.8304" y2="2.0246" width="0.1016" layer="51"/>
<wire x1="0.8304" y1="2.0246" x2="0.5709" y2="1.7651" width="0.1016" layer="51" curve="89.955858"/>
<wire x1="1.5573" y1="-2.0246" x2="3.4261" y2="-2.0246" width="0.1016" layer="51"/>
<wire x1="3.0627" y1="-1.9726" x2="3.0627" y2="1.9727" width="0.1016" layer="51"/>
<wire x1="-4.5684" y1="1.2459" x2="-0.5192" y2="1.0383" width="0.1016" layer="51"/>
<wire x1="-0.5192" y1="1.0383" x2="-0.3116" y2="0.8306" width="0.1016" layer="51" curve="-83.771817"/>
<wire x1="-4.5685" y1="1.2459" x2="-4.7761" y2="1.0383" width="0.1016" layer="51" curve="90"/>
<wire x1="-4.7761" y1="1.0383" x2="-4.7761" y2="1.0382" width="0.1016" layer="51"/>
<wire x1="-4.7761" y1="1.0382" x2="-4.5685" y2="0.8306" width="0.1016" layer="51" curve="90"/>
<wire x1="-4.5685" y1="0.8306" x2="-1.1422" y2="0.623" width="0.1016" layer="51"/>
<wire x1="-3.6879" y1="-3.8414" x2="-3.6879" y2="-4.8797" width="0.1016" layer="51"/>
<wire x1="-3.6879" y1="-4.8797" x2="-3.3245" y2="-4.8797" width="0.1016" layer="51"/>
<wire x1="-3.3245" y1="-4.8797" x2="-3.3245" y2="-4.4644" width="0.1016" layer="51"/>
<wire x1="-3.3245" y1="-4.4644" x2="-2.7015" y2="-4.4644" width="0.1016" layer="51"/>
<wire x1="-2.7015" y1="-4.4644" x2="-2.7015" y2="-4.8797" width="0.1016" layer="51"/>
<wire x1="-2.7015" y1="-4.8797" x2="-2.3093" y2="-4.8797" width="0.1016" layer="51"/>
<wire x1="-2.3093" y1="-4.8797" x2="-2.3093" y2="-3.8414" width="0.1016" layer="51"/>
<wire x1="-2.3093" y1="-3.8414" x2="2.8032" y2="-3.8414" width="0.1016" layer="51"/>
<wire x1="0.7266" y1="-3.8414" x2="0.519" y2="-4.049" width="0.1016" layer="51" curve="90"/>
<wire x1="0.519" y1="-4.049" x2="0.519" y2="-4.2048" width="0.1016" layer="51"/>
<wire x1="0.519" y1="-4.2048" x2="2.907" y2="-4.2048" width="0.1016" layer="51"/>
<wire x1="2.907" y1="-4.2048" x2="3.4781" y2="-3.6337" width="0.1016" layer="51" curve="90.020069"/>
<wire x1="-1.8171" y1="-2.9589" x2="-4.5685" y2="-2.7512" width="0.1016" layer="51"/>
<wire x1="-4.5685" y1="-2.7512" x2="-4.828" y2="-2.5436" width="0.1016" layer="51" curve="-68.629849"/>
<wire x1="-4.828" y1="-2.5436" x2="-4.828" y2="-1.9725" width="0.1016" layer="51" curve="-34.099487"/>
<wire x1="-4.828" y1="-1.9725" x2="-4.5685" y2="-1.7649" width="0.1016" layer="51" curve="-68.629849"/>
<wire x1="-4.5685" y1="-1.7649" x2="-1.8171" y2="-1.5053" width="0.1016" layer="51"/>
<wire x1="-1.8171" y1="-1.5053" x2="-1.8171" y2="-1.713" width="0.1016" layer="51"/>
<wire x1="-1.8171" y1="-1.713" x2="-4.2051" y2="-1.9725" width="0.1016" layer="51"/>
<wire x1="-4.2051" y1="-1.9725" x2="-4.2051" y2="-2.4917" width="0.1016" layer="51"/>
<wire x1="-4.2051" y1="-2.4917" x2="-1.8171" y2="-2.7512" width="0.1016" layer="51"/>
<wire x1="-1.8171" y1="-2.7512" x2="-1.8171" y2="-2.9589" width="0.1016" layer="51"/>
<wire x1="2.8032" y1="-3.8414" x2="3.0627" y2="-3.5819" width="0.1016" layer="51" curve="90.044176"/>
<wire x1="3.0627" y1="-3.5819" x2="3.0627" y2="-3.0108" width="0.1016" layer="51"/>
<wire x1="3.0627" y1="-3.0108" x2="3.4261" y2="-3.0108" width="0.1016" layer="51"/>
<wire x1="1.713" y1="-4.2567" x2="1.713" y2="-4.8797" width="0.1016" layer="51"/>
<wire x1="1.713" y1="-4.8797" x2="2.1283" y2="-4.8797" width="0.1016" layer="51"/>
<wire x1="2.1283" y1="-4.8797" x2="2.1283" y2="-4.4644" width="0.1016" layer="51"/>
<wire x1="2.1283" y1="-4.4644" x2="2.6474" y2="-4.4644" width="0.1016" layer="51"/>
<wire x1="2.6474" y1="-4.4644" x2="2.6474" y2="-4.8797" width="0.1016" layer="51"/>
<wire x1="2.6474" y1="-4.8797" x2="3.0627" y2="-4.8797" width="0.1016" layer="51"/>
<wire x1="3.0627" y1="-4.8797" x2="3.0627" y2="-4.2567" width="0.1016" layer="51"/>
<wire x1="1.0381" y1="-1.8168" x2="0.8305" y2="-2.0244" width="0.1016" layer="51" curve="-90.055225"/>
<wire x1="0.8304" y1="-2.0244" x2="0.5709" y2="-1.7649" width="0.1016" layer="51" curve="-89.867677"/>
<wire x1="1.5573" y1="-1.9725" x2="1.5573" y2="2.0248" width="0.1016" layer="51"/>
<wire x1="1.5573" y1="2.0248" x2="3.4261" y2="2.0248" width="0.1016" layer="51"/>
<wire x1="-4.5684" y1="-1.2457" x2="-0.5192" y2="-1.0381" width="0.1016" layer="51"/>
<wire x1="-0.5192" y1="-1.0381" x2="-0.3116" y2="-0.8304" width="0.1016" layer="51" curve="83.722654"/>
<wire x1="-0.3116" y1="-0.8304" x2="-0.3116" y2="0.8307" width="0.1016" layer="51"/>
<wire x1="-4.5685" y1="-1.2457" x2="-4.7761" y2="-1.0381" width="0.1016" layer="51" curve="-90"/>
<wire x1="-4.7761" y1="-1.038" x2="-4.5685" y2="-0.8304" width="0.1016" layer="51" curve="-90"/>
<wire x1="-4.5685" y1="-0.8304" x2="-1.1422" y2="-0.6228" width="0.1016" layer="51"/>
<wire x1="-1.1422" y1="-0.6228" x2="-1.1422" y2="0.6232" width="0.1016" layer="51"/>
<wire x1="-1.5826" y1="-3.8414" x2="0.7267" y2="-3.8415" width="0.1016" layer="51"/>
<wire x1="-5.9182" y1="-3.8414" x2="-3.6879" y2="-3.8414" width="0.1016" layer="51"/>
<wire x1="-5.9182" y1="3.8416" x2="-4.4147" y2="3.8415" width="0.1016" layer="51"/>
<wire x1="-2.3093" y1="3.8416" x2="0.7265" y2="3.8415" width="0.1016" layer="51"/>
<wire x1="3.4781" y1="3.634" x2="3.478" y2="-3.6259" width="0.1016" layer="51"/>
<smd name="M1" x="-3" y="-4.5" dx="2.2" dy="1.8" layer="1" thermals="no"/>
<smd name="M2" x="-3" y="4.5" dx="2.2" dy="1.8" layer="1" thermals="no"/>
<smd name="M4" x="2.4" y="-4.5" dx="2.2" dy="1.8" layer="1" thermals="no"/>
<smd name="M3" x="2.4" y="4.5" dx="2.2" dy="1.8" layer="1" thermals="no"/>
<smd name="1" x="2.7" y="1.6" dx="2.5" dy="0.5" layer="1"/>
<smd name="2" x="2.7" y="0.8" dx="2.5" dy="0.5" layer="1"/>
<smd name="3" x="2.7" y="0" dx="2.5" dy="0.5" layer="1"/>
<smd name="4" x="2.7" y="-0.8" dx="2.5" dy="0.5" layer="1"/>
<smd name="5" x="2.7" y="-1.6" dx="2.5" dy="0.5" layer="1"/>
<text x="-4.445" y="5.715" size="1.27" layer="25">&gt;NAME</text>
<text x="-4.445" y="-6.985" size="1.27" layer="27">&gt;VALUE</text>
<hole x="0" y="2.2" drill="0.8"/>
<hole x="0" y="-2.2" drill="0.8"/>
</package>
<package name="32005-301">
<description>&lt;b&gt;MINI USB-B R/A SMT W/O REAR&lt;/b&gt;&lt;p&gt;
Source: http://www.cypressindustries.com/pdf/32005-301.pdf</description>
<wire x1="-5.9228" y1="3.8473" x2="3.1598" y2="3.8473" width="0.1016" layer="51"/>
<wire x1="2.9404" y1="3.7967" x2="2.9404" y2="2.5986" width="0.1016" layer="51"/>
<wire x1="2.9404" y1="2.5986" x2="1.8098" y2="2.5986" width="0.1016" layer="21"/>
<wire x1="1.8098" y1="3.7798" x2="1.8098" y2="-3.8473" width="0.1016" layer="51"/>
<wire x1="3.1597" y1="-3.8473" x2="-5.9228" y2="-3.8473" width="0.1016" layer="51"/>
<wire x1="-5.9228" y1="-3.8473" x2="-5.9228" y2="3.8473" width="0.1016" layer="21"/>
<wire x1="2.9573" y1="-3.8217" x2="2.9573" y2="-2.6998" width="0.1016" layer="51"/>
<wire x1="2.9573" y1="-2.6998" x2="1.8098" y2="-2.6998" width="0.1016" layer="21"/>
<wire x1="-5.9182" y1="3.8416" x2="-3.6879" y2="3.8416" width="0.1016" layer="51"/>
<wire x1="-3.6879" y1="3.8416" x2="-3.6879" y2="4.8799" width="0.1016" layer="51"/>
<wire x1="-3.6879" y1="4.8799" x2="-3.3245" y2="4.8799" width="0.1016" layer="51"/>
<wire x1="-3.3245" y1="4.8799" x2="-3.3245" y2="4.4646" width="0.1016" layer="51"/>
<wire x1="-3.3245" y1="4.4646" x2="-2.7015" y2="4.4646" width="0.1016" layer="51"/>
<wire x1="-2.7015" y1="4.4646" x2="-2.7015" y2="4.8799" width="0.1016" layer="51"/>
<wire x1="-2.7015" y1="4.8799" x2="-2.3093" y2="4.8799" width="0.1016" layer="51"/>
<wire x1="-2.3093" y1="4.8799" x2="-2.3093" y2="3.8416" width="0.1016" layer="51"/>
<wire x1="-5.9182" y1="-3.8415" x2="-5.9182" y2="-3.8414" width="0.1016" layer="21"/>
<wire x1="-5.9182" y1="-3.8414" x2="-5.9182" y2="3.8416" width="0.1016" layer="21"/>
<wire x1="-1.8171" y1="2.9591" x2="-4.5685" y2="2.7514" width="0.1016" layer="21"/>
<wire x1="-4.5685" y1="2.7514" x2="-4.828" y2="2.5438" width="0.1016" layer="21" curve="68.629849"/>
<wire x1="-4.828" y1="2.5438" x2="-4.828" y2="1.9727" width="0.1016" layer="21" curve="34.099487"/>
<wire x1="-4.828" y1="1.9727" x2="-4.5685" y2="1.7651" width="0.1016" layer="21" curve="68.629849"/>
<wire x1="-4.5685" y1="1.7651" x2="-1.8171" y2="1.5055" width="0.1016" layer="21"/>
<wire x1="-1.8171" y1="1.5055" x2="-1.8171" y2="1.7132" width="0.1016" layer="21"/>
<wire x1="-1.8171" y1="1.7132" x2="-4.2051" y2="1.9727" width="0.1016" layer="21"/>
<wire x1="-4.2051" y1="1.9727" x2="-4.2051" y2="2.4919" width="0.1016" layer="21"/>
<wire x1="-4.2051" y1="2.4919" x2="-1.8171" y2="2.7514" width="0.1016" layer="21"/>
<wire x1="-1.8171" y1="2.7514" x2="-1.8171" y2="2.9591" width="0.1016" layer="21"/>
<wire x1="1.713" y1="3.8856" x2="1.713" y2="4.8799" width="0.1016" layer="51"/>
<wire x1="1.713" y1="4.8799" x2="2.1283" y2="4.8799" width="0.1016" layer="51"/>
<wire x1="2.1283" y1="4.8799" x2="2.1283" y2="4.4646" width="0.1016" layer="51"/>
<wire x1="2.1283" y1="4.4646" x2="2.6474" y2="4.4646" width="0.1016" layer="51"/>
<wire x1="2.6474" y1="4.4646" x2="2.6474" y2="4.8799" width="0.1016" layer="51"/>
<wire x1="2.6474" y1="4.8799" x2="3.1639" y2="4.8799" width="0.1016" layer="51"/>
<wire x1="3.1639" y1="4.8799" x2="3.1639" y2="3.8519" width="0.1016" layer="51"/>
<wire x1="-4.5684" y1="1.2459" x2="-0.5192" y2="1.0383" width="0.1016" layer="21"/>
<wire x1="-0.5192" y1="1.0383" x2="-0.3116" y2="0.8306" width="0.1016" layer="21" curve="-83.771817"/>
<wire x1="-4.5685" y1="1.2459" x2="-4.7761" y2="1.0383" width="0.1016" layer="21" curve="90"/>
<wire x1="-4.7761" y1="1.0383" x2="-4.7761" y2="1.0382" width="0.1016" layer="21"/>
<wire x1="-4.7761" y1="1.0382" x2="-4.5685" y2="0.8306" width="0.1016" layer="21" curve="90"/>
<wire x1="-4.5685" y1="0.8306" x2="-1.1422" y2="0.623" width="0.1016" layer="21"/>
<wire x1="-5.9182" y1="-3.8414" x2="-3.6879" y2="-3.8414" width="0.1016" layer="51"/>
<wire x1="-3.6879" y1="-3.8414" x2="-3.6879" y2="-4.8797" width="0.1016" layer="51"/>
<wire x1="-3.6879" y1="-4.8797" x2="-3.3245" y2="-4.8797" width="0.1016" layer="51"/>
<wire x1="-3.3245" y1="-4.8797" x2="-3.3245" y2="-4.4644" width="0.1016" layer="51"/>
<wire x1="-3.3245" y1="-4.4644" x2="-2.7015" y2="-4.4644" width="0.1016" layer="51"/>
<wire x1="-2.7015" y1="-4.4644" x2="-2.7015" y2="-4.8797" width="0.1016" layer="51"/>
<wire x1="-2.7015" y1="-4.8797" x2="-2.3093" y2="-4.8797" width="0.1016" layer="51"/>
<wire x1="-2.3093" y1="-4.8797" x2="-2.3093" y2="-3.8414" width="0.1016" layer="51"/>
<wire x1="-1.8171" y1="-2.9589" x2="-4.5685" y2="-2.7512" width="0.1016" layer="21"/>
<wire x1="-4.5685" y1="-2.7512" x2="-4.828" y2="-2.5436" width="0.1016" layer="21" curve="-68.629849"/>
<wire x1="-4.828" y1="-2.5436" x2="-4.828" y2="-1.9725" width="0.1016" layer="21" curve="-34.099487"/>
<wire x1="-4.828" y1="-1.9725" x2="-4.5685" y2="-1.7649" width="0.1016" layer="21" curve="-68.629849"/>
<wire x1="-4.5685" y1="-1.7649" x2="-1.8171" y2="-1.5053" width="0.1016" layer="21"/>
<wire x1="-1.8171" y1="-1.5053" x2="-1.8171" y2="-1.713" width="0.1016" layer="21"/>
<wire x1="-1.8171" y1="-1.713" x2="-4.2051" y2="-1.9725" width="0.1016" layer="21"/>
<wire x1="-4.2051" y1="-1.9725" x2="-4.2051" y2="-2.4917" width="0.1016" layer="21"/>
<wire x1="-4.2051" y1="-2.4917" x2="-1.8171" y2="-2.7512" width="0.1016" layer="21"/>
<wire x1="-1.8171" y1="-2.7512" x2="-1.8171" y2="-2.9589" width="0.1016" layer="21"/>
<wire x1="1.713" y1="-3.8855" x2="1.713" y2="-4.8797" width="0.1016" layer="51"/>
<wire x1="1.713" y1="-4.8797" x2="2.1283" y2="-4.8797" width="0.1016" layer="51"/>
<wire x1="2.1283" y1="-4.8797" x2="2.1283" y2="-4.4644" width="0.1016" layer="51"/>
<wire x1="2.1283" y1="-4.4644" x2="2.6474" y2="-4.4644" width="0.1016" layer="51"/>
<wire x1="2.6474" y1="-4.4644" x2="2.6474" y2="-4.8797" width="0.1016" layer="51"/>
<wire x1="2.6474" y1="-4.8797" x2="3.1627" y2="-4.8797" width="0.1016" layer="51"/>
<wire x1="3.1627" y1="-4.8797" x2="3.1627" y2="-3.8518" width="0.1016" layer="51"/>
<wire x1="-4.5684" y1="-1.2457" x2="-0.5192" y2="-1.0381" width="0.1016" layer="21"/>
<wire x1="-0.5192" y1="-1.0381" x2="-0.3116" y2="-0.8304" width="0.1016" layer="21" curve="83.722654"/>
<wire x1="-0.3116" y1="-0.8304" x2="-0.3116" y2="0.8307" width="0.1016" layer="21"/>
<wire x1="-4.5685" y1="-1.2457" x2="-4.7761" y2="-1.0381" width="0.1016" layer="21" curve="-90"/>
<wire x1="-4.7761" y1="-1.038" x2="-4.5685" y2="-0.8304" width="0.1016" layer="21" curve="-90"/>
<wire x1="-4.5685" y1="-0.8304" x2="-1.1422" y2="-0.6228" width="0.1016" layer="21"/>
<wire x1="-1.1422" y1="-0.6228" x2="-1.1422" y2="0.6232" width="0.1016" layer="21"/>
<wire x1="-5.9182" y1="-3.8414" x2="-4.4146" y2="-3.8414" width="0.1016" layer="21"/>
<wire x1="-5.9182" y1="3.8416" x2="-4.4147" y2="3.8415" width="0.1016" layer="21"/>
<wire x1="1.0842" y1="-3.8472" x2="-1.6031" y2="-3.8472" width="0.1016" layer="21"/>
<wire x1="-1.5523" y1="3.8472" x2="0.9831" y2="3.8473" width="0.1016" layer="21"/>
<wire x1="2.9404" y1="3.3243" x2="2.9404" y2="2.5986" width="0.1016" layer="21"/>
<wire x1="1.8098" y1="2.5986" x2="1.8099" y2="3.3243" width="0.1016" layer="21"/>
<wire x1="1.8098" y1="-2.6999" x2="1.8098" y2="-3.3242" width="0.1016" layer="21"/>
<wire x1="2.9573" y1="-3.3324" x2="2.9573" y2="-2.6998" width="0.1016" layer="21"/>
<smd name="M1" x="-3" y="-4.45" dx="2.5" dy="2" layer="1"/>
<smd name="M2" x="-3" y="4.45" dx="2.5" dy="2" layer="1"/>
<smd name="M4" x="2.9" y="-4.45" dx="3.3" dy="2" layer="1"/>
<smd name="M3" x="2.9" y="4.45" dx="3.3" dy="2" layer="1"/>
<smd name="1" x="3" y="1.6" dx="3.1" dy="0.5" layer="1"/>
<smd name="2" x="3" y="0.8" dx="3.1" dy="0.5" layer="1"/>
<smd name="3" x="3" y="0" dx="3.1" dy="0.5" layer="1"/>
<smd name="4" x="3" y="-0.8" dx="3.1" dy="0.5" layer="1"/>
<smd name="5" x="3" y="-1.6" dx="3.1" dy="0.5" layer="1"/>
<text x="-4.445" y="5.715" size="1.27" layer="25">&gt;NAME</text>
<text x="-4.445" y="-6.985" size="1.27" layer="27">&gt;VALUE</text>
<hole x="0" y="2.2" drill="0.9"/>
<hole x="0" y="-2.2" drill="0.9"/>
</package>
<package name="R0805">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.51" y1="0.535" x2="0.51" y2="0.535" width="0.1016" layer="51"/>
<wire x1="-0.51" y1="-0.535" x2="0.51" y2="-0.535" width="0.1016" layer="51"/>
<wire x1="-1.5748" y1="0.8128" x2="1.5748" y2="0.8128" width="0.0508" layer="39"/>
<wire x1="1.5748" y1="0.8128" x2="1.5748" y2="-0.8128" width="0.0508" layer="39"/>
<wire x1="1.5748" y1="-0.8128" x2="-1.5748" y2="-0.8128" width="0.0508" layer="39"/>
<wire x1="-1.5748" y1="-0.8128" x2="-1.5748" y2="0.8128" width="0.0508" layer="39"/>
<wire x1="-1.651" y1="0.889" x2="1.651" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.651" y1="0.889" x2="1.651" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-0.889" x2="-1.651" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="-0.889" x2="-1.651" y2="0.889" width="0.1524" layer="21"/>
<smd name="1" x="-0.889" y="0" dx="1" dy="1.3" layer="1"/>
<smd name="2" x="0.889" y="0" dx="1" dy="1.3" layer="1"/>
<text x="-1.778" y="1.27" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.778" y="-2.032" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.65" x2="1" y2="0.65" layer="51"/>
<rectangle x1="-1" y1="-0.65" x2="-0.4168" y2="0.65" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="R1206">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="1.0525" y1="-0.7128" x2="-1.0652" y2="-0.7128" width="0.1016" layer="51"/>
<wire x1="1.0525" y1="0.7128" x2="-1.0652" y2="0.7128" width="0.1016" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.4731" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.4731" y1="0.983" x2="2.4731" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.4731" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-2.4892" y1="1.143" x2="2.4892" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.4892" y1="1.143" x2="2.4892" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.4892" y1="-1.143" x2="-2.4892" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.4892" y1="-1.143" x2="-2.4892" y2="1.143" width="0.1524" layer="21"/>
<smd name="2" x="1.524" y="0" dx="1.3" dy="1.6" layer="1"/>
<smd name="1" x="-1.524" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-2.286" y="1.524" size="0.6096" layer="25" ratio="18">&gt;NAME</text>
<text x="-2.286" y="-2.032" size="0.6096" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.6" y1="-0.8" x2="-0.9" y2="0.8" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
<rectangle x1="0.9001" y1="-0.8" x2="1.6" y2="0.8" layer="51" rot="R180"/>
</package>
<package name="R0603">
<description>&lt;b&gt;SMD RESISTOR&lt;/b&gt; - 0603</description>
<wire x1="-0.432" y1="-0.306" x2="0.432" y2="-0.306" width="0.1016" layer="51"/>
<wire x1="0.432" y1="0.306" x2="-0.432" y2="0.306" width="0.1016" layer="51"/>
<wire x1="-1.3206" y1="0.6147" x2="1.3206" y2="0.6147" width="0.0254" layer="39"/>
<wire x1="1.3206" y1="0.6147" x2="1.3206" y2="-0.6147" width="0.0254" layer="39"/>
<wire x1="1.3206" y1="-0.6147" x2="-1.3206" y2="-0.6147" width="0.0254" layer="39"/>
<wire x1="-1.3206" y1="-0.6147" x2="-1.3206" y2="0.6147" width="0.0254" layer="39"/>
<wire x1="-1.3462" y1="0.635" x2="1.3462" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.3462" y1="0.635" x2="1.3462" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.3462" y1="-0.635" x2="-1.3462" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.3462" y1="-0.635" x2="-1.3462" y2="0.635" width="0.1524" layer="21"/>
<smd name="1" x="-0.762" y="0" dx="0.7" dy="0.8" layer="1"/>
<smd name="2" x="0.762" y="0" dx="0.7" dy="0.8" layer="1"/>
<text x="-1.524" y="1.016" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.524" y="-1.778" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="0.4318" y1="-0.4" x2="0.8" y2="0.4" layer="51"/>
<rectangle x1="-0.8" y1="-0.4" x2="-0.4318" y2="0.4" layer="51"/>
<rectangle x1="-0.1999" y1="-0.25" x2="0.1999" y2="0.25" layer="35"/>
</package>
<package name="R0603G">
<description>&lt;b&gt;SMD RESISTOR&lt;/b&gt; - 0603 (GND adjusted)</description>
<wire x1="-0.432" y1="-0.306" x2="0.432" y2="-0.306" width="0.1016" layer="51"/>
<wire x1="0.432" y1="0.306" x2="-0.432" y2="0.306" width="0.1016" layer="51"/>
<wire x1="-1.3206" y1="0.6147" x2="1.3206" y2="0.6147" width="0.0254" layer="39"/>
<wire x1="1.3206" y1="0.6147" x2="1.3206" y2="-0.6147" width="0.0254" layer="39"/>
<wire x1="1.3206" y1="-0.6147" x2="-1.3206" y2="-0.6147" width="0.0254" layer="39"/>
<wire x1="-1.3206" y1="-0.6147" x2="-1.3206" y2="0.6147" width="0.0254" layer="39"/>
<wire x1="-1.3462" y1="0.635" x2="1.3462" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.3462" y1="0.635" x2="1.3462" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.3462" y1="-0.635" x2="-1.3462" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.3462" y1="-0.635" x2="-1.3462" y2="0.635" width="0.1524" layer="21"/>
<smd name="1" x="-0.762" y="0" dx="0.7" dy="0.8" layer="1"/>
<smd name="2" x="0.762" y="0" dx="0.5476" dy="0.6476" layer="1" thermals="no"/>
<text x="-1.524" y="1.016" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.524" y="-1.778" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="0.4318" y1="-0.4" x2="0.8" y2="0.4" layer="51"/>
<rectangle x1="-0.8" y1="-0.4" x2="-0.4318" y2="0.4" layer="51"/>
<rectangle x1="-0.1999" y1="-0.25" x2="0.1999" y2="0.25" layer="35"/>
</package>
<package name="L0603">
<description>&lt;B&gt;SMD INDUCTOR&lt;/B&gt; - 0603</description>
<wire x1="-0.432" y1="-0.306" x2="0.432" y2="-0.306" width="0.1016" layer="51"/>
<wire x1="0.432" y1="0.306" x2="-0.432" y2="0.306" width="0.1016" layer="51"/>
<wire x1="-1.3206" y1="0.6147" x2="1.3206" y2="0.6147" width="0.0254" layer="39"/>
<wire x1="1.3206" y1="0.6147" x2="1.3206" y2="-0.6147" width="0.0254" layer="39"/>
<wire x1="1.3206" y1="-0.6147" x2="-1.3206" y2="-0.6147" width="0.0254" layer="39"/>
<wire x1="-1.3206" y1="-0.6147" x2="-1.3206" y2="0.6147" width="0.0254" layer="39"/>
<wire x1="-1.3462" y1="0.635" x2="1.3462" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.3462" y1="0.635" x2="1.3462" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.3462" y1="-0.635" x2="-1.3462" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.3462" y1="-0.635" x2="-1.3462" y2="0.635" width="0.1524" layer="21"/>
<smd name="1" x="-0.762" y="0" dx="0.7" dy="0.8" layer="1"/>
<smd name="2" x="0.762" y="0" dx="0.7" dy="0.8" layer="1"/>
<text x="-1.524" y="1.016" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.524" y="-1.778" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="0.4318" y1="-0.4" x2="0.8" y2="0.4" layer="51"/>
<rectangle x1="-0.8" y1="-0.4" x2="-0.4318" y2="0.4" layer="51"/>
<rectangle x1="-0.1999" y1="-0.25" x2="0.1999" y2="0.25" layer="35"/>
</package>
<package name="L0805">
<description>&lt;B&gt;SMD INDUCTOR&lt;/B&gt; - 0805</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1016" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1016" layer="51"/>
<wire x1="-1.5748" y1="0.8128" x2="1.5748" y2="0.8128" width="0.0508" layer="39"/>
<wire x1="1.5748" y1="0.8128" x2="1.5748" y2="-0.8128" width="0.0508" layer="39"/>
<wire x1="1.5748" y1="-0.8128" x2="-1.5748" y2="-0.8128" width="0.0508" layer="39"/>
<wire x1="-1.5748" y1="-0.8128" x2="-1.5748" y2="0.8128" width="0.0508" layer="39"/>
<wire x1="-1.651" y1="0.889" x2="1.651" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.651" y1="0.889" x2="1.651" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-0.889" x2="-1.651" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="-0.889" x2="-1.651" y2="0.889" width="0.1524" layer="21"/>
<smd name="1" x="-0.889" y="0" dx="1" dy="1.3" layer="1"/>
<smd name="2" x="0.889" y="0" dx="1" dy="1.3" layer="1"/>
<text x="-1.5875" y="1.4288" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.5874" y="-2.2225" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="L1206">
<description>&lt;B&gt;SMD INDUCTOR&lt;/B&gt; - 1206</description>
<wire x1="0.9525" y1="-0.8128" x2="-0.9652" y2="-0.8128" width="0.1016" layer="51"/>
<wire x1="0.9525" y1="0.8128" x2="-0.9652" y2="0.8128" width="0.1016" layer="51"/>
<wire x1="-2.34" y1="1.1907" x2="2.3401" y2="1.1907" width="0.2032" layer="21"/>
<wire x1="2.3401" y1="1.1907" x2="2.3401" y2="-1.1907" width="0.2032" layer="21"/>
<wire x1="2.3401" y1="-1.1907" x2="-2.34" y2="-1.1907" width="0.2032" layer="21"/>
<wire x1="-2.34" y1="-1.1907" x2="-2.34" y2="1.1907" width="0.2032" layer="21"/>
<smd name="2" x="1.3288" y="0" dx="1.4" dy="1.8" layer="1"/>
<smd name="1" x="-1.3287" y="0" dx="1.4" dy="1.8" layer="1"/>
<text x="-2.0637" y="1.5875" size="1.016" layer="25" ratio="18">&gt;NAME</text>
<text x="-2.0637" y="-2.3813" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.6891" y1="-0.8763" x2="-0.9525" y2="0.8763" layer="51"/>
<rectangle x1="0.9525" y1="-0.8763" x2="1.6891" y2="0.8763" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="L2012">
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<wire x1="-1.6317" y1="0.8242" x2="1.6318" y2="0.8242" width="0.0508" layer="39"/>
<wire x1="1.6318" y1="0.8242" x2="1.6318" y2="-0.8243" width="0.0508" layer="39"/>
<wire x1="1.6318" y1="-0.8243" x2="-1.6317" y2="-0.8243" width="0.0508" layer="39"/>
<wire x1="-1.6317" y1="-0.8243" x2="-1.6317" y2="0.8242" width="0.0508" layer="39"/>
<wire x1="-1.905" y1="1.0319" x2="1.905" y2="1.0319" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.0319" x2="1.905" y2="-1.0319" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.0319" x2="-1.905" y2="-1.0319" width="0.2032" layer="21"/>
<wire x1="-1.905" y1="-1.0319" x2="-1.905" y2="1.0319" width="0.2032" layer="21"/>
<smd name="1" x="-0.9525" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.9525" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-1.27" y="1.27" size="1.016" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.0917" y1="-0.7239" x2="-0.3416" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
<rectangle x1="-0.1001" y1="-0.4001" x2="0.1001" y2="0.4001" layer="35"/>
</package>
<package name="L1210">
<smd name="1" x="-1.2" y="0" dx="2.4" dy="1.1" layer="1" rot="R90"/>
<smd name="2" x="1.2" y="0" dx="2.4" dy="1.1" layer="1" rot="R90"/>
<wire x1="-1.6" y1="1.25" x2="-0.1" y2="1.25" width="0.127" layer="51"/>
<wire x1="-0.1" y1="1.25" x2="0.1" y2="1.25" width="0.127" layer="51"/>
<wire x1="0.1" y1="1.25" x2="1.6" y2="1.25" width="0.127" layer="51"/>
<wire x1="1.6" y1="1.25" x2="1.6" y2="-1.25" width="0.127" layer="51"/>
<wire x1="1.6" y1="-1.25" x2="0.1" y2="-1.25" width="0.127" layer="51"/>
<wire x1="0.1" y1="-1.25" x2="-0.1" y2="-1.25" width="0.127" layer="51"/>
<wire x1="-0.1" y1="-1.25" x2="-1.6" y2="-1.25" width="0.127" layer="51"/>
<wire x1="-1.6" y1="-1.25" x2="-1.6" y2="1.25" width="0.127" layer="51"/>
<wire x1="0.1" y1="1.25" x2="0.1" y2="-1.25" width="0.127" layer="51" curve="-180"/>
<wire x1="-0.1" y1="-1.25" x2="-0.1" y2="1.25" width="0.127" layer="51" curve="-180"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="SOT23-6">
<description>&lt;b&gt;SOT23-6&lt;/b&gt;</description>
<wire x1="-1.544" y1="0.713" x2="1.544" y2="0.713" width="0.1524" layer="51"/>
<wire x1="1.544" y1="0.713" x2="1.544" y2="-0.712" width="0.1524" layer="21"/>
<wire x1="1.544" y1="-0.712" x2="-1.544" y2="-0.712" width="0.1524" layer="51"/>
<wire x1="-1.544" y1="-0.712" x2="-1.544" y2="0.713" width="0.1524" layer="21"/>
<smd name="5" x="0" y="1.397" dx="0.5" dy="0.8" layer="1"/>
<smd name="4" x="0.95" y="1.397" dx="0.5" dy="0.8" layer="1"/>
<smd name="1" x="-0.95" y="-1.397" dx="0.5" dy="0.8" layer="1"/>
<smd name="2" x="0" y="-1.397" dx="0.2968" dy="0.8" layer="1" thermals="no"/>
<smd name="3" x="0.95" y="-1.397" dx="0.5" dy="0.8" layer="1"/>
<text x="-1.778" y="-1.878" size="0.8128" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="2.648" y="-1.878" size="0.8128" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.1875" y1="0.7126" x2="-0.7125" y2="1.5439" layer="51"/>
<rectangle x1="0.7125" y1="0.7126" x2="1.1875" y2="1.5439" layer="51"/>
<rectangle x1="-1.1875" y1="-1.5437" x2="-0.7125" y2="-0.7124" layer="51"/>
<rectangle x1="-0.2375" y1="-1.5437" x2="0.2375" y2="-0.7124" layer="51"/>
<rectangle x1="0.7125" y1="-1.5437" x2="1.1875" y2="-0.7124" layer="51"/>
<smd name="6" x="-0.95" y="1.397" dx="0.5" dy="0.8" layer="1"/>
<rectangle x1="-0.2375" y1="0.7124" x2="0.2375" y2="1.5437" layer="51"/>
<rectangle x1="-1.524" y1="-0.635" x2="-1.016" y2="-0.127" layer="21"/>
</package>
<package name="SOIC-8">
<description>&lt;b&gt;SOIC-8 150 mil Package&lt;/b&gt;</description>
<wire x1="-2.413" y1="1.7018" x2="2.413" y2="1.7018" width="0.2032" layer="21"/>
<wire x1="2.413" y1="1.7018" x2="2.413" y2="-1.7018" width="0.2032" layer="21"/>
<wire x1="2.413" y1="-1.7018" x2="-2.413" y2="-1.7018" width="0.2032" layer="21"/>
<circle x="-1.524" y="-0.762" radius="0.4064" width="0" layer="21"/>
<smd name="1" x="-1.905" y="-2.667" dx="1.4" dy="0.5" layer="1" rot="R90"/>
<smd name="2" x="-0.635" y="-2.667" dx="1.4" dy="0.5" layer="1" rot="R90"/>
<smd name="3" x="0.635" y="-2.667" dx="1.4" dy="0.5" layer="1" rot="R90"/>
<smd name="4" x="1.905" y="-2.667" dx="1.4" dy="0.5" layer="1" rot="R90"/>
<smd name="5" x="1.905" y="2.667" dx="1.4" dy="0.5" layer="1" rot="R270"/>
<smd name="6" x="0.635" y="2.667" dx="1.4" dy="0.5" layer="1" rot="R270"/>
<smd name="7" x="-0.635" y="2.667" dx="1.4" dy="0.5" layer="1" rot="R270"/>
<smd name="8" x="-1.905" y="2.667" dx="1.4" dy="0.5" layer="1" rot="R270"/>
<text x="-2.921" y="-1.651" size="0.8128" layer="25" ratio="18" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.778" size="0.8128" layer="27" ratio="18" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.0955" y1="1.7018" x2="-1.7145" y2="2.9718" layer="51"/>
<rectangle x1="-0.8255" y1="1.7018" x2="-0.4445" y2="2.9718" layer="51"/>
<rectangle x1="0.4445" y1="1.7018" x2="0.8255" y2="2.9718" layer="51"/>
<rectangle x1="1.7145" y1="1.7018" x2="2.0955" y2="2.9718" layer="51"/>
<rectangle x1="1.7145" y1="-2.9718" x2="2.0955" y2="-1.7018" layer="51"/>
<rectangle x1="0.4445" y1="-2.9718" x2="0.8255" y2="-1.7018" layer="51"/>
<rectangle x1="-0.8255" y1="-2.9718" x2="-0.4445" y2="-1.7018" layer="51"/>
<rectangle x1="-2.0955" y1="-2.9718" x2="-1.7145" y2="-1.7018" layer="51"/>
<wire x1="-2.413" y1="-1.7018" x2="-2.413" y2="1.7018" width="0.2032" layer="21"/>
</package>
<package name="SOT23-5">
<description>&lt;b&gt;SOT23-5&lt;/b&gt;</description>
<wire x1="-1.544" y1="0.713" x2="1.544" y2="0.713" width="0.1524" layer="51"/>
<wire x1="1.544" y1="0.713" x2="1.544" y2="-0.712" width="0.1524" layer="21"/>
<wire x1="1.544" y1="-0.712" x2="-1.544" y2="-0.712" width="0.1524" layer="51"/>
<wire x1="-1.544" y1="-0.712" x2="-1.544" y2="0.713" width="0.1524" layer="21"/>
<smd name="5" x="-0.95" y="1.397" dx="0.5" dy="0.8" layer="1"/>
<smd name="4" x="0.95" y="1.397" dx="0.5" dy="0.8" layer="1"/>
<smd name="1" x="-0.95" y="-1.397" dx="0.5" dy="0.8" layer="1"/>
<smd name="2" x="0" y="-1.397" dx="0.2968" dy="0.8" layer="1" thermals="no"/>
<smd name="3" x="0.95" y="-1.397" dx="0.5" dy="0.8" layer="1"/>
<text x="-1.778" y="-1.878" size="0.8128" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="2.648" y="-1.878" size="0.8128" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.1875" y1="0.7126" x2="-0.7125" y2="1.5439" layer="51"/>
<rectangle x1="0.7125" y1="0.7126" x2="1.1875" y2="1.5439" layer="51"/>
<rectangle x1="-1.1875" y1="-1.5437" x2="-0.7125" y2="-0.7124" layer="51"/>
<rectangle x1="-0.2375" y1="-1.5437" x2="0.2375" y2="-0.7124" layer="51"/>
<rectangle x1="0.7125" y1="-1.5437" x2="1.1875" y2="-0.7124" layer="51"/>
</package>
<package name="C0402">
<smd name="1" x="-0.508" y="0" dx="0.5" dy="0.5" layer="1" rot="R90"/>
<smd name="2" x="0.508" y="0" dx="0.5" dy="0.5" layer="1" rot="R270"/>
<wire x1="-1.016" y1="0.508" x2="1.016" y2="0.508" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0.508" x2="1.016" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-0.508" x2="-1.016" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-0.508" x2="-1.016" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-0.9906" y1="0.4826" x2="0.9906" y2="0.4826" width="0.0508" layer="39"/>
<wire x1="0.9906" y1="0.4826" x2="0.9906" y2="-0.4826" width="0.0508" layer="39"/>
<wire x1="0.9906" y1="-0.4826" x2="-0.9906" y2="-0.4826" width="0.0508" layer="39"/>
<wire x1="-0.9906" y1="-0.4826" x2="-0.9906" y2="0.4826" width="0.0508" layer="39"/>
<rectangle x1="-0.5" y1="-0.25" x2="-0.254" y2="0.25" layer="51"/>
<rectangle x1="0.254" y1="-0.25" x2="0.5" y2="0.25" layer="51"/>
<wire x1="-0.254" y1="0.1778" x2="0.254" y2="0.1778" width="0.1016" layer="51"/>
<wire x1="-0.254" y1="-0.1778" x2="0.254" y2="-0.1778" width="0.1016" layer="51"/>
<text x="-1.651" y="0.889" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.651" y="-1.651" size="0.8128" layer="27" ratio="18">&gt;VALUE</text>
</package>
<package name="C0402G">
<smd name="1" x="-0.508" y="0" dx="0.5" dy="0.5" layer="1" rot="R90"/>
<smd name="2" x="0.508" y="0" dx="0.3476" dy="0.3476" layer="1" rot="R270" thermals="no"/>
<wire x1="-1.016" y1="0.508" x2="1.016" y2="0.508" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0.508" x2="1.016" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-0.508" x2="-1.016" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-0.508" x2="-1.016" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-0.9906" y1="0.4826" x2="0.9906" y2="0.4826" width="0.0508" layer="39"/>
<wire x1="0.9906" y1="0.4826" x2="0.9906" y2="-0.4826" width="0.0508" layer="39"/>
<wire x1="0.9906" y1="-0.4826" x2="-0.9906" y2="-0.4826" width="0.0508" layer="39"/>
<wire x1="-0.9906" y1="-0.4826" x2="-0.9906" y2="0.4826" width="0.0508" layer="39"/>
<rectangle x1="-0.5" y1="-0.25" x2="-0.254" y2="0.25" layer="51"/>
<rectangle x1="0.254" y1="-0.25" x2="0.5" y2="0.25" layer="51"/>
<wire x1="-0.254" y1="0.1778" x2="0.254" y2="0.1778" width="0.1016" layer="51"/>
<wire x1="-0.254" y1="-0.1778" x2="0.254" y2="-0.1778" width="0.1016" layer="51"/>
<text x="-1.651" y="0.889" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.651" y="-1.651" size="0.8128" layer="27" ratio="18">&gt;VALUE</text>
</package>
<package name="C0805G">
<wire x1="-0.51" y1="0.535" x2="0.51" y2="0.535" width="0.1016" layer="51"/>
<wire x1="-0.51" y1="-0.535" x2="0.51" y2="-0.535" width="0.1016" layer="51"/>
<wire x1="-1.5748" y1="0.8128" x2="1.5748" y2="0.8128" width="0.0508" layer="39"/>
<wire x1="1.5748" y1="0.8128" x2="1.5748" y2="-0.8128" width="0.0508" layer="39"/>
<wire x1="1.5748" y1="-0.8128" x2="-1.5748" y2="-0.8128" width="0.0508" layer="39"/>
<wire x1="-1.5748" y1="-0.8128" x2="-1.5748" y2="0.8128" width="0.0508" layer="39"/>
<wire x1="-1.651" y1="0.889" x2="1.651" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.651" y1="0.889" x2="1.651" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-0.889" x2="-1.651" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="-0.889" x2="-1.651" y2="0.889" width="0.1524" layer="21"/>
<smd name="1" x="-0.889" y="0" dx="1" dy="1.3" layer="1"/>
<smd name="2" x="0.889" y="0" dx="0.7968" dy="1.0968" layer="1" thermals="no"/>
<text x="-1.778" y="1.27" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.778" y="-2.032" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.65" x2="1" y2="0.65" layer="51"/>
<rectangle x1="-1" y1="-0.65" x2="-0.4168" y2="0.65" layer="51"/>
</package>
<package name="C1206G">
<wire x1="1.0525" y1="-0.7128" x2="-1.0652" y2="-0.7128" width="0.1016" layer="51"/>
<wire x1="1.0525" y1="0.7128" x2="-1.0652" y2="0.7128" width="0.1016" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.4731" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.4731" y1="0.983" x2="2.4731" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.4731" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-2.4892" y1="1.143" x2="2.4892" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.4892" y1="1.143" x2="2.4892" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.4892" y1="-1.143" x2="-2.4892" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.4892" y1="-1.143" x2="-2.4892" y2="1.143" width="0.1524" layer="21"/>
<smd name="2" x="1.524" y="0" dx="1.0968" dy="1.3968" layer="1" thermals="no"/>
<smd name="1" x="-1.524" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-2.286" y="1.524" size="0.6096" layer="25" ratio="18">&gt;NAME</text>
<text x="-2.286" y="-2.032" size="0.6096" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.6" y1="-0.8" x2="-0.9" y2="0.8" layer="51"/>
<rectangle x1="0.9001" y1="-0.8" x2="1.6" y2="0.8" layer="51" rot="R180"/>
</package>
<package name="R0402">
<smd name="1" x="-0.508" y="0" dx="0.5" dy="0.5" layer="1" rot="R90"/>
<smd name="2" x="0.508" y="0" dx="0.5" dy="0.5" layer="1" rot="R270"/>
<wire x1="-1.016" y1="0.508" x2="1.016" y2="0.508" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0.508" x2="1.016" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-0.508" x2="-1.016" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-0.508" x2="-1.016" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-0.9906" y1="0.4826" x2="0.9906" y2="0.4826" width="0.0508" layer="39"/>
<wire x1="0.9906" y1="0.4826" x2="0.9906" y2="-0.4826" width="0.0508" layer="39"/>
<wire x1="0.9906" y1="-0.4826" x2="-0.9906" y2="-0.4826" width="0.0508" layer="39"/>
<wire x1="-0.9906" y1="-0.4826" x2="-0.9906" y2="0.4826" width="0.0508" layer="39"/>
<rectangle x1="-0.5" y1="-0.25" x2="-0.254" y2="0.25" layer="51"/>
<rectangle x1="0.254" y1="-0.25" x2="0.5" y2="0.25" layer="51"/>
<wire x1="-0.254" y1="0.1778" x2="0.254" y2="0.1778" width="0.1016" layer="51"/>
<wire x1="-0.254" y1="-0.1778" x2="0.254" y2="-0.1778" width="0.1016" layer="51"/>
<text x="-1.651" y="0.889" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.651" y="-1.651" size="0.8128" layer="27" ratio="18">&gt;VALUE</text>
</package>
<package name="R0402G">
<smd name="1" x="-0.508" y="0" dx="0.5" dy="0.5" layer="1" rot="R90"/>
<smd name="2" x="0.508" y="0" dx="0.3476" dy="0.3476" layer="1" rot="R270"/>
<wire x1="-1.016" y1="0.508" x2="1.016" y2="0.508" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0.508" x2="1.016" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-0.508" x2="-1.016" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-0.508" x2="-1.016" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-0.9906" y1="0.4826" x2="0.9906" y2="0.4826" width="0.0508" layer="39"/>
<wire x1="0.9906" y1="0.4826" x2="0.9906" y2="-0.4826" width="0.0508" layer="39"/>
<wire x1="0.9906" y1="-0.4826" x2="-0.9906" y2="-0.4826" width="0.0508" layer="39"/>
<wire x1="-0.9906" y1="-0.4826" x2="-0.9906" y2="0.4826" width="0.0508" layer="39"/>
<rectangle x1="-0.5" y1="-0.25" x2="-0.254" y2="0.25" layer="51"/>
<rectangle x1="0.254" y1="-0.25" x2="0.5" y2="0.25" layer="51"/>
<wire x1="-0.254" y1="0.1778" x2="0.254" y2="0.1778" width="0.1016" layer="51"/>
<wire x1="-0.254" y1="-0.1778" x2="0.254" y2="-0.1778" width="0.1016" layer="51"/>
<text x="-1.651" y="0.889" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.651" y="-1.651" size="0.8128" layer="27" ratio="18">&gt;VALUE</text>
</package>
<package name="1X06">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="1.016" shape="octagon" rot="R90"/>
<pad name="2" x="-3.81" y="0" drill="1.016" shape="octagon" rot="R90"/>
<pad name="3" x="-1.27" y="0" drill="1.016" shape="octagon" rot="R90"/>
<pad name="4" x="1.27" y="0" drill="1.016" shape="octagon" rot="R90"/>
<pad name="5" x="3.81" y="0" drill="1.016" shape="octagon" rot="R90"/>
<pad name="6" x="6.35" y="0" drill="1.016" shape="octagon" rot="R90"/>
<text x="-7.6962" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-7.62" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
</package>
<package name="1X06/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-7.62" y1="-1.905" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="6.985" x2="-6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="6.985" x2="-3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="6.985" x2="3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="6.985" x2="6.35" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-8.255" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="9.525" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-6.731" y1="0.635" x2="-5.969" y2="1.143" layer="21"/>
<rectangle x1="-4.191" y1="0.635" x2="-3.429" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="3.429" y1="0.635" x2="4.191" y2="1.143" layer="21"/>
<rectangle x1="5.969" y1="0.635" x2="6.731" y2="1.143" layer="21"/>
<rectangle x1="-6.731" y1="-2.921" x2="-5.969" y2="-1.905" layer="21"/>
<rectangle x1="-4.191" y1="-2.921" x2="-3.429" y2="-1.905" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
<rectangle x1="3.429" y1="-2.921" x2="4.191" y2="-1.905" layer="21"/>
<rectangle x1="5.969" y1="-2.921" x2="6.731" y2="-1.905" layer="21"/>
</package>
<package name="SOIC-8-PAD">
<wire x1="-2.413" y1="1.7018" x2="2.413" y2="1.7018" width="0.2032" layer="21"/>
<wire x1="2.413" y1="1.7018" x2="2.413" y2="-1.7018" width="0.2032" layer="21"/>
<wire x1="2.413" y1="-1.7018" x2="-2.413" y2="-1.7018" width="0.2032" layer="21"/>
<smd name="1" x="-1.905" y="-2.667" dx="1.4" dy="0.5" layer="1" rot="R90"/>
<smd name="2" x="-0.635" y="-2.667" dx="1.4" dy="0.5" layer="1" rot="R90"/>
<smd name="3" x="0.635" y="-2.667" dx="1.4" dy="0.5" layer="1" rot="R90"/>
<smd name="4" x="1.905" y="-2.667" dx="1.4" dy="0.5" layer="1" rot="R90"/>
<smd name="5" x="1.905" y="2.667" dx="1.4" dy="0.5" layer="1" rot="R270"/>
<smd name="6" x="0.635" y="2.667" dx="1.4" dy="0.5" layer="1" rot="R270"/>
<smd name="7" x="-0.635" y="2.667" dx="1.4" dy="0.5" layer="1" rot="R270"/>
<smd name="8" x="-1.905" y="2.667" dx="1.4" dy="0.5" layer="1" rot="R270"/>
<text x="-2.921" y="-1.651" size="0.8128" layer="25" ratio="18" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.778" size="0.8128" layer="27" ratio="18" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.0955" y1="1.7018" x2="-1.7145" y2="2.9718" layer="51"/>
<rectangle x1="-0.8255" y1="1.7018" x2="-0.4445" y2="2.9718" layer="51"/>
<rectangle x1="0.4445" y1="1.7018" x2="0.8255" y2="2.9718" layer="51"/>
<rectangle x1="1.7145" y1="1.7018" x2="2.0955" y2="2.9718" layer="51"/>
<rectangle x1="1.7145" y1="-2.9718" x2="2.0955" y2="-1.7018" layer="51"/>
<rectangle x1="0.4445" y1="-2.9718" x2="0.8255" y2="-1.7018" layer="51"/>
<rectangle x1="-0.8255" y1="-2.9718" x2="-0.4445" y2="-1.7018" layer="51"/>
<rectangle x1="-2.0955" y1="-2.9718" x2="-1.7145" y2="-1.7018" layer="51"/>
<wire x1="-2.413" y1="-1.7018" x2="-2.413" y2="1.7018" width="0.2032" layer="21"/>
<smd name="EP" x="0" y="0" dx="3.9" dy="2.5" layer="1" thermals="no"/>
<circle x="-3.2" y="-2.5" radius="0.5" width="0" layer="21"/>
<rectangle x1="-1.905" y1="-1.205" x2="1.905" y2="1.205" layer="51"/>
</package>
<package name="LFCSP8">
<wire x1="-1.2" y1="1.5" x2="1.2" y2="1.5" width="0.1524" layer="51"/>
<wire x1="1.2" y1="-1.5" x2="-1.2" y2="-1.5" width="0.1524" layer="51"/>
<smd name="1" x="-0.75" y="-1.5" dx="0.8" dy="0.25" layer="1" rot="R90" thermals="no"/>
<smd name="2" x="-0.25" y="-1.5" dx="0.8" dy="0.25" layer="1" rot="R90" thermals="no"/>
<smd name="3" x="0.25" y="-1.5" dx="0.8" dy="0.25" layer="1" rot="R90" thermals="no"/>
<smd name="4" x="0.75" y="-1.5" dx="0.8" dy="0.25" layer="1" rot="R90" thermals="no"/>
<smd name="5" x="0.75" y="1.5" dx="0.8" dy="0.25" layer="1" rot="R270" thermals="no"/>
<smd name="6" x="0.25" y="1.5" dx="0.8" dy="0.25" layer="1" rot="R270" thermals="no"/>
<smd name="7" x="-0.25" y="1.5" dx="0.8" dy="0.25" layer="1" rot="R270" thermals="no"/>
<smd name="8" x="-0.75" y="1.5" dx="0.8" dy="0.25" layer="1" rot="R270" thermals="no"/>
<smd name="EP" x="0" y="0" dx="2.4" dy="1.7" layer="1" thermals="no"/>
<wire x1="-1.5" y1="1.2" x2="-1.5" y2="-1.2" width="0.1524" layer="51"/>
<wire x1="1.5" y1="1.2" x2="1.5" y2="-1.2" width="0.1524" layer="51"/>
<rectangle x1="-1.5" y1="-1.5" x2="-1.15" y2="-1.15" layer="21"/>
<text x="-1.524" y="2.286" size="0.8128" layer="25" ratio="20">&gt;NAME</text>
<text x="-1.778" y="-3.302" size="0.8128" layer="27" ratio="20">&gt;VALUE</text>
<wire x1="-1.5" y1="1.2" x2="-1.5" y2="1.5" width="0.1524" layer="21"/>
<wire x1="-1.5" y1="1.5" x2="-1.2" y2="1.5" width="0.1524" layer="21"/>
<wire x1="1.2" y1="1.5" x2="1.5" y2="1.5" width="0.1524" layer="21"/>
<wire x1="1.5" y1="1.5" x2="1.5" y2="1.2" width="0.1524" layer="21"/>
<wire x1="1.2" y1="-1.5" x2="1.5" y2="-1.5" width="0.1524" layer="21"/>
<wire x1="1.5" y1="-1.5" x2="1.5" y2="-1.2" width="0.1524" layer="21"/>
<wire x1="-1.5" y1="-1.2" x2="-1.5" y2="-1.5" width="0.1524" layer="21"/>
<wire x1="-1.5" y1="-1.5" x2="-1.2" y2="-1.5" width="0.1524" layer="21"/>
</package>
<package name="L2010">
<wire x1="-1" y1="0.8" x2="1" y2="0.8" width="0.127" layer="51"/>
<wire x1="1" y1="0.8" x2="1" y2="-0.8" width="0.127" layer="51"/>
<wire x1="1" y1="-0.8" x2="-1" y2="-0.8" width="0.127" layer="51"/>
<wire x1="-1" y1="-0.8" x2="-1" y2="0.8" width="0.127" layer="51"/>
<rectangle x1="-1" y1="-0.8" x2="-0.5" y2="0.8" layer="51"/>
<rectangle x1="0.5" y1="-0.8" x2="1" y2="0.8" layer="51"/>
<smd name="1" x="-0.889" y="0" dx="1.8" dy="1" layer="1" rot="R90"/>
<smd name="2" x="0.889" y="0" dx="1.8" dy="1" layer="1" rot="R90"/>
<text x="-1.524" y="1.27" size="0.8128" layer="25" ratio="20">&gt;NAME</text>
<text x="-1.524" y="-2.032" size="0.8128" layer="27" ratio="20">&gt;VALUE</text>
</package>
<package name="L2010E">
<wire x1="-0.75" y1="1" x2="0.75" y2="1" width="0.127" layer="51"/>
<wire x1="0.75" y1="1" x2="1" y2="0.75" width="0.127" layer="51"/>
<wire x1="1" y1="0.75" x2="1" y2="-0.75" width="0.127" layer="51"/>
<wire x1="1" y1="-0.75" x2="0.75" y2="-1" width="0.127" layer="51"/>
<wire x1="0.75" y1="-1" x2="-0.75" y2="-1" width="0.127" layer="51"/>
<wire x1="-0.75" y1="-1" x2="-1" y2="-0.75" width="0.127" layer="51"/>
<wire x1="-1" y1="-0.75" x2="-1" y2="0.75" width="0.127" layer="51"/>
<wire x1="-1" y1="0.75" x2="-0.75" y2="1" width="0.127" layer="51"/>
<smd name="1" x="-0.8" y="0" dx="2" dy="0.9" layer="1" rot="R90"/>
<smd name="2" x="0.8" y="0" dx="2" dy="0.9" layer="1" rot="R90"/>
<text x="-1.524" y="1.524" size="0.8128" layer="25" ratio="20">&gt;NAME</text>
<text x="-1.524" y="-2.286" size="0.8128" layer="27" ratio="20">&gt;VALUE</text>
</package>
<package name="SOD323">
<wire x1="-1" y1="0.7" x2="1" y2="0.7" width="0.1524" layer="51"/>
<wire x1="1" y1="0.7" x2="1" y2="-0.7" width="0.1524" layer="51"/>
<wire x1="1" y1="-0.7" x2="-1" y2="-0.7" width="0.1524" layer="51"/>
<wire x1="-1" y1="-0.7" x2="-1" y2="0.7" width="0.1524" layer="51"/>
<wire x1="-0.5" y1="0" x2="0.1" y2="0.4" width="0.1524" layer="51"/>
<wire x1="0.1" y1="0.4" x2="0.1" y2="-0.4" width="0.1524" layer="51"/>
<wire x1="0.1" y1="-0.4" x2="-0.5" y2="0" width="0.1524" layer="51"/>
<smd name="C" x="-1.143" y="0" dx="0.7" dy="0.7" layer="1"/>
<smd name="A" x="1.143" y="0" dx="0.7" dy="0.7" layer="1"/>
<text x="-1.143" y="1.016" size="0.8128" layer="25">&gt;NAME</text>
<text x="-1.143" y="-1.905" size="0.8128" layer="27">&gt;VALUE</text>
<rectangle x1="-0.7" y1="-0.7" x2="-0.5" y2="0.7" layer="51"/>
<rectangle x1="-1.4" y1="-0.2" x2="-1" y2="0.2" layer="51"/>
<rectangle x1="1" y1="-0.2" x2="1.4" y2="0.2" layer="51"/>
</package>
<package name="7395-02">
<description>&lt;b&gt;MOLEX 2.54mm KK RA CONNECTOR&lt;/b&gt;
&lt;br&gt;Fixed Orientation</description>
<wire x1="2.54" y1="-5.08" x2="2.54" y2="-1.905" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="1.905" y2="-1.905" width="0.254" layer="21"/>
<wire x1="1.905" y1="-1.905" x2="1.905" y2="-2.54" width="0.254" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="0.635" y2="-2.54" width="0.254" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="0.635" y2="-1.905" width="0.254" layer="21"/>
<wire x1="0.635" y1="-1.905" x2="-0.635" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-0.635" y1="-1.905" x2="-0.635" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="-1.905" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-1.905" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-1.905" y1="-1.905" x2="-2.54" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="-5.08" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-5.08" x2="-1.651" y2="-5.08" width="0.254" layer="21"/>
<wire x1="-1.651" y1="-5.08" x2="1.27" y2="-5.08" width="0.254" layer="21"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.254" layer="21"/>
<wire x1="1.27" y1="-5.08" x2="1.27" y2="-13.081" width="0.254" layer="21"/>
<wire x1="1.27" y1="-13.081" x2="1.016" y2="-13.589" width="0.254" layer="21"/>
<wire x1="1.016" y1="-13.589" x2="-0.0508" y2="-13.589" width="0.254" layer="21"/>
<wire x1="-1.27" y1="-5.08" x2="-1.27" y2="-13.081" width="0.254" layer="21"/>
<wire x1="-1.27" y1="-13.081" x2="-1.016" y2="-13.589" width="0.254" layer="21"/>
<wire x1="-1.016" y1="-13.589" x2="-0.0508" y2="-13.589" width="0.254" layer="21"/>
<wire x1="-0.0508" y1="-13.589" x2="0.0508" y2="-13.589" width="0.254" layer="21"/>
<wire x1="1.27" y1="-5.08" x2="0.889" y2="-5.08" width="0.254" layer="51"/>
<wire x1="-1.651" y1="-5.08" x2="-1.651" y2="-11.303" width="0.254" layer="21"/>
<wire x1="-1.651" y1="-11.303" x2="-1.3208" y2="-11.6586" width="0.254" layer="21"/>
<wire x1="1.651" y1="-5.08" x2="1.651" y2="-11.303" width="0.254" layer="21"/>
<wire x1="1.651" y1="-11.303" x2="1.3208" y2="-11.6586" width="0.254" layer="21"/>
<pad name="1" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="2.6401" y="2.9479" size="1.016" layer="25" ratio="10" rot="R180">&gt;NAME</text>
<text x="0.7859" y="-3.4021" size="1.27" layer="21" ratio="14" rot="R270">1</text>
<text x="-1.7033" y="-3.2751" size="1.27" layer="21" ratio="14" rot="R270">2</text>
<text x="3.4021" y="-2.4399" size="0.8128" layer="27" ratio="10" rot="R270">&gt;VALUE</text>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-2.5146" x2="1.524" y2="-0.2794" layer="51"/>
<rectangle x1="-1.524" y1="-2.5146" x2="-1.016" y2="-0.2794" layer="51"/>
</package>
<package name="6410-02">
<description>&lt;b&gt;MOLEX 2.54mm KK  CONNECTOR&lt;/b&gt;</description>
<wire x1="2.54" y1="2.921" x2="-2.54" y2="2.921" width="0.254" layer="21"/>
<wire x1="-2.54" y1="2.921" x2="-2.54" y2="-2.921" width="0.254" layer="21"/>
<wire x1="2.54" y1="2.921" x2="2.54" y2="-2.921" width="0.254" layer="21"/>
<wire x1="2.54" y1="-2.921" x2="-2.54" y2="-2.921" width="0.254" layer="21"/>
<wire x1="-1.905" y1="-2.921" x2="-1.905" y2="-2.286" width="0.254" layer="21"/>
<wire x1="-1.905" y1="-2.286" x2="-0.635" y2="-2.286" width="0.254" layer="21"/>
<wire x1="-0.635" y1="-2.286" x2="-0.635" y2="-2.921" width="0.254" layer="21"/>
<wire x1="0.635" y1="-2.921" x2="0.635" y2="-2.286" width="0.254" layer="21"/>
<wire x1="0.635" y1="-2.286" x2="1.905" y2="-2.286" width="0.254" layer="21"/>
<wire x1="1.905" y1="-2.286" x2="1.905" y2="-2.921" width="0.254" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="2.921" width="0.254" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="1.27" y2="1.905" width="0.254" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.27" y2="2.921" width="0.254" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.016" y2="1.397" width="0.254" layer="21"/>
<wire x1="-1.016" y1="1.397" x2="1.016" y2="1.397" width="0.254" layer="21"/>
<wire x1="1.016" y1="1.397" x2="1.27" y2="1.905" width="0.254" layer="21"/>
<pad name="2" x="-1.27" y="0" drill="1" shape="octagon" rot="R90"/>
<pad name="1" x="1.27" y="0" drill="1" shape="square" rot="R90"/>
<text x="-2.54" y="3.302" size="0.8128" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-4.191" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
</package>
<package name="SJ">
<description>&lt;b&gt;Solder jumper&lt;/b&gt;</description>
<wire x1="1.143" y1="-0.9144" x2="-1.143" y2="-0.9144" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.9144" x2="1.397" y2="0.6604" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.397" y1="0.6604" x2="-1.143" y2="0.9144" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.397" y1="-0.6604" x2="-1.143" y2="-0.9144" width="0.1524" layer="21" curve="90"/>
<wire x1="1.143" y1="-0.9144" x2="1.397" y2="-0.6604" width="0.1524" layer="21" curve="90"/>
<wire x1="1.397" y1="-0.6604" x2="1.397" y2="0.6604" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="-0.6604" x2="-1.397" y2="0.6604" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="0.9144" x2="1.143" y2="0.9144" width="0.1524" layer="21"/>
<wire x1="0.7112" y1="0" x2="1.3716" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.7112" y1="0" x2="-1.3716" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.1524" y1="-0.127" x2="-0.1524" y2="0.127" width="1.016" layer="51" curve="-180" cap="flat"/>
<wire x1="0.1524" y1="0.127" x2="0.1524" y2="-0.127" width="1.016" layer="51" curve="-180" cap="flat"/>
<smd name="1" x="-0.635" y="0" dx="1.0668" dy="1.27" layer="1" thermals="no"/>
<smd name="2" x="0.635" y="0" dx="1.0668" dy="1.27" layer="1" thermals="no"/>
<text x="-1.651" y="1.143" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<rectangle x1="-0.0762" y1="-0.7366" x2="0.0762" y2="0.7366" layer="29"/>
</package>
<package name="SJW">
<description>&lt;b&gt;Solder jumper&lt;/b&gt;</description>
<wire x1="1.905" y1="-1.524" x2="-1.905" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.524" x2="2.159" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="1.27" x2="-1.905" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-1.27" x2="-1.905" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="1.905" y1="-1.524" x2="2.159" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="2.159" y1="-1.27" x2="2.159" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="-1.27" x2="-2.159" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.524" x2="1.905" y2="1.524" width="0.1524" layer="21"/>
<wire x1="0.762" y1="0.762" x2="0.762" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="0.762" x2="-0.762" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.524" y1="0" x2="2.032" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="0" x2="-2.032" y2="0" width="0.1524" layer="51"/>
<wire x1="0.762" y1="0.762" x2="0.762" y2="-0.762" width="0.1524" layer="51" curve="-180"/>
<wire x1="-0.762" y1="0.762" x2="-0.762" y2="-0.762" width="0.1524" layer="51" curve="180"/>
<smd name="1" x="-1.27" y="0" dx="1.27" dy="2.54" layer="1"/>
<smd name="2" x="1.27" y="0" dx="1.27" dy="2.54" layer="1"/>
<text x="-2.159" y="1.778" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="1" y="0" size="0.02" layer="27">&gt;VALUE</text>
<rectangle x1="0.762" y1="-0.762" x2="1.016" y2="0.762" layer="51"/>
<rectangle x1="1.016" y1="-0.635" x2="1.27" y2="0.635" layer="51"/>
<rectangle x1="1.27" y1="-0.508" x2="1.397" y2="0.508" layer="51"/>
<rectangle x1="1.397" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.016" y1="-0.762" x2="-0.762" y2="0.762" layer="51"/>
<rectangle x1="-1.27" y1="-0.635" x2="-1.016" y2="0.635" layer="51"/>
<rectangle x1="-1.397" y1="-0.508" x2="-1.27" y2="0.508" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.397" y2="0.254" layer="51"/>
<rectangle x1="0.9652" y1="-0.7112" x2="1.0922" y2="-0.5842" layer="51"/>
<rectangle x1="1.3462" y1="-0.3556" x2="1.4732" y2="-0.2286" layer="51"/>
<rectangle x1="1.3462" y1="0.2032" x2="1.4732" y2="0.3302" layer="51"/>
<rectangle x1="0.9652" y1="0.5842" x2="1.0922" y2="0.7112" layer="51"/>
<rectangle x1="-1.0922" y1="-0.7112" x2="-0.9652" y2="-0.5842" layer="51"/>
<rectangle x1="-1.4478" y1="-0.3302" x2="-1.3208" y2="-0.2032" layer="51"/>
<rectangle x1="-1.4732" y1="0.2032" x2="-1.3462" y2="0.3302" layer="51"/>
<rectangle x1="-1.1176" y1="0.5842" x2="-0.9906" y2="0.7112" layer="51"/>
</package>
<package name="SJS">
<smd name="1" x="-0.3048" y="0" dx="0.4064" dy="0.6096" layer="1"/>
<smd name="2" x="0.3048" y="0" dx="0.4064" dy="0.6096" layer="1"/>
<text x="-1.143" y="0.635" size="0.8128" layer="25" ratio="20">&gt;NAME</text>
</package>
<package name="CHIPLED_0805">
<description>&lt;b&gt;CHIPLED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LG_R971.pdf</description>
<wire x1="-0.35" y1="0.925" x2="0.35" y2="0.925" width="0.1016" layer="51" curve="162.394521"/>
<wire x1="-0.35" y1="-0.925" x2="0.35" y2="-0.925" width="0.1016" layer="51" curve="-162.394521"/>
<wire x1="0.575" y1="0.525" x2="0.575" y2="-0.525" width="0.1016" layer="51"/>
<wire x1="-0.575" y1="-0.5" x2="-0.575" y2="0.925" width="0.1016" layer="51"/>
<circle x="-0.45" y="0.85" radius="0.103" width="0.1016" layer="51"/>
<smd name="C" x="0" y="0.889" dx="1.2" dy="1" layer="1"/>
<smd name="A" x="0" y="-0.889" dx="1.2" dy="1" layer="1"/>
<text x="-1.27" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="0.3" y1="0.5" x2="0.625" y2="1" layer="51"/>
<rectangle x1="-0.325" y1="0.5" x2="-0.175" y2="0.75" layer="51"/>
<rectangle x1="0.175" y1="0.5" x2="0.325" y2="0.75" layer="51"/>
<rectangle x1="-0.2" y1="0.5" x2="0.2" y2="0.675" layer="51"/>
<rectangle x1="0.3" y1="-1" x2="0.625" y2="-0.5" layer="51"/>
<rectangle x1="-0.625" y1="-1" x2="-0.3" y2="-0.5" layer="51"/>
<rectangle x1="0.175" y1="-0.75" x2="0.325" y2="-0.5" layer="51"/>
<rectangle x1="-0.325" y1="-0.75" x2="-0.175" y2="-0.5" layer="51"/>
<rectangle x1="-0.2" y1="-0.675" x2="0.2" y2="-0.5" layer="51"/>
<rectangle x1="-0.6" y1="0.5" x2="-0.3" y2="0.8" layer="51"/>
<rectangle x1="-0.625" y1="0.925" x2="-0.3" y2="1" layer="51"/>
</package>
<package name="1X02">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="0.9" shape="octagon" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="0.9" shape="octagon" rot="R90"/>
<text x="-2.6162" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
</package>
<package name="1X02/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-3.175" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.445" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
</package>
<package name="1X02S">
<smd name="1" x="-0.762" y="0" dx="1.9304" dy="0.9652" layer="1" rot="R90"/>
<smd name="2" x="0.762" y="0" dx="1.9304" dy="0.9652" layer="1" rot="R90"/>
<text x="-1.27" y="1.27" size="0.8128" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.032" size="0.8128" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="PORT_A_L">
<wire x1="2.54" y1="10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="10.16" x2="-7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-12.7" x2="2.54" y2="-12.7" width="0.254" layer="94"/>
<text x="-7.62" y="11.43" size="1.778" layer="95">&gt;NAME</text>
<pin name="PA0/ADC1_CH1" x="-10.16" y="7.62" length="short"/>
<pin name="PA1/ADC1_CH2" x="-10.16" y="5.08" length="short"/>
<pin name="PA2/ADC1_CH3" x="-10.16" y="2.54" length="short"/>
<pin name="PA3/ADC1_CH4" x="-10.16" y="0" length="short"/>
<pin name="PA4/ADC2_CH1" x="-10.16" y="-2.54" length="short"/>
<pin name="PA5/ADC2_CH2" x="-10.16" y="-5.08" length="short"/>
<pin name="PA6/ADC2_CH3" x="-10.16" y="-7.62" length="short"/>
<pin name="PA7/ADC2_CH4" x="-10.16" y="-10.16" length="short"/>
</symbol>
<symbol name="PORT_A_H">
<wire x1="2.54" y1="10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="10.16" x2="-7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-12.7" x2="2.54" y2="-12.7" width="0.254" layer="94"/>
<text x="-7.62" y="11.43" size="1.778" layer="95">&gt;NAME</text>
<pin name="PA8" x="-10.16" y="7.62" length="short"/>
<pin name="PA9/TX1/SCL2" x="-10.16" y="5.08" length="short"/>
<pin name="PA10/RX1/SDA2" x="-10.16" y="2.54" length="short"/>
<pin name="PA11/USB_DM" x="-10.16" y="0" length="short"/>
<pin name="PA12/USB_DP" x="-10.16" y="-2.54" length="short"/>
<pin name="PA13/SWDIO" x="-10.16" y="-5.08" length="short"/>
<pin name="PA14/SWCLK" x="-10.16" y="-7.62" length="short"/>
<pin name="PA15/SPI1_NSS" x="-10.16" y="-10.16" length="short"/>
</symbol>
<symbol name="PORT_B_L">
<wire x1="-2.54" y1="10.16" x2="7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="10.16" x2="7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="7.62" y1="-12.7" x2="-2.54" y2="-12.7" width="0.254" layer="94"/>
<text x="-2.54" y="11.43" size="1.778" layer="95">&gt;NAME</text>
<pin name="TIM3_CH3/PB0" x="10.16" y="7.62" length="short" rot="R180"/>
<pin name="TIM3_CH4/PB1" x="10.16" y="5.08" length="short" rot="R180"/>
<pin name="PB2" x="10.16" y="2.54" length="short" rot="R180"/>
<pin name="SPI1_SCK/PB3" x="10.16" y="0" length="short" rot="R180"/>
<pin name="SPI1_MISO/PB4" x="10.16" y="-2.54" length="short" rot="R180"/>
<pin name="SPI1_MOSI/PB5" x="10.16" y="-5.08" length="short" rot="R180"/>
<pin name="TIM8_CH1/PB6" x="10.16" y="-7.62" length="short" rot="R180"/>
<pin name="PB7" x="10.16" y="-10.16" length="short" rot="R180"/>
</symbol>
<symbol name="PORT_B_H">
<wire x1="-2.54" y1="10.16" x2="7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="10.16" x2="7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="7.62" y1="-12.7" x2="-2.54" y2="-12.7" width="0.254" layer="94"/>
<text x="-2.54" y="11.43" size="1.778" layer="95">&gt;NAME</text>
<pin name="TIM4_CH3/PB8" x="10.16" y="7.62" length="short" rot="R180"/>
<pin name="TIM4_CH4/PB9" x="10.16" y="5.08" length="short" rot="R180"/>
<pin name="TIM2_CH3/PB10" x="10.16" y="2.54" length="short" rot="R180"/>
<pin name="TIM2_CH4/PB11" x="10.16" y="0" length="short" rot="R180"/>
<pin name="PB12" x="10.16" y="-2.54" length="short" rot="R180"/>
<pin name="ADC3_CH5/PB13" x="10.16" y="-5.08" length="short" rot="R180"/>
<pin name="ADC4_CH4/PB14" x="10.16" y="-7.62" length="short" rot="R180"/>
<pin name="PB15" x="10.16" y="-10.16" length="short" rot="R180"/>
</symbol>
<symbol name="PORT_F_2">
<wire x1="-7.62" y1="2.54" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<text x="-7.62" y="3.81" size="1.778" layer="95">&gt;NAME</text>
<pin name="PF0/OSC&lt;=" x="5.08" y="0" length="short" rot="R180"/>
<pin name="PF1/OSC=&gt;" x="5.08" y="-2.54" length="short" rot="R180"/>
</symbol>
<symbol name="BAT_AN_M">
<wire x1="-2.54" y1="5.08" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="-2.54" y2="-7.62" width="0.254" layer="94"/>
<text x="-2.54" y="6.35" size="1.778" layer="95">&gt;NAME</text>
<pin name="VBAT" x="10.16" y="2.54" length="short" direction="pwr" rot="R180"/>
<pin name="VSSA" x="10.16" y="-5.08" length="short" direction="pwr" rot="R180"/>
<pin name="VDDA" x="10.16" y="-2.54" length="short" direction="pwr" rot="R180"/>
</symbol>
<symbol name="BOOT_RST">
<wire x1="-2.54" y1="5.08" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="-2.54" y2="-5.08" width="0.254" layer="94"/>
<text x="-2.54" y="6.35" size="1.778" layer="95">&gt;NAME</text>
<pin name="NRST" x="10.16" y="2.54" length="short" direction="in" function="dot" rot="R180"/>
<pin name="BOOT0" x="10.16" y="-2.54" length="short" direction="in" rot="R180"/>
</symbol>
<symbol name="VCC_VDD_S">
<wire x1="5.08" y1="10.16" x2="-5.08" y2="10.16" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-10.16" x2="5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-5.08" y1="10.16" x2="-5.08" y2="-10.16" width="0.254" layer="94"/>
<text x="-5.08" y="11.43" size="1.778" layer="95">&gt;NAME</text>
<pin name="VDD_1" x="-7.62" y="7.62" length="short" direction="pwr"/>
<pin name="VDD_2" x="-7.62" y="5.08" length="short" direction="pwr"/>
<pin name="VDD_3" x="-7.62" y="2.54" length="short" direction="pwr"/>
<pin name="VSS_1" x="-7.62" y="-2.54" length="short" direction="pwr"/>
<pin name="VSS_2" x="-7.62" y="-5.08" length="short" direction="pwr"/>
<pin name="VSS_3" x="-7.62" y="-7.62" length="short" direction="pwr"/>
</symbol>
<symbol name="PORT_C_3">
<wire x1="7.62" y1="5.08" x2="-2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<text x="-2.54" y="6.35" size="1.778" layer="95">&gt;NAME</text>
<pin name="PC13" x="-5.08" y="2.54" length="short"/>
<pin name="PC14" x="-5.08" y="0" length="short"/>
<pin name="PC15" x="-5.08" y="-2.54" length="short"/>
</symbol>
<symbol name="+3V3A">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+3V3A" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="Q-SHIELD2">
<wire x1="2.286" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0.254" y2="0" width="0.1524" layer="94"/>
<wire x1="0.889" y1="1.524" x2="0.889" y2="-1.524" width="0.254" layer="94"/>
<wire x1="0.889" y1="-1.524" x2="1.651" y2="-1.524" width="0.254" layer="94"/>
<wire x1="1.651" y1="-1.524" x2="1.651" y2="1.524" width="0.254" layer="94"/>
<wire x1="1.651" y1="1.524" x2="0.889" y2="1.524" width="0.254" layer="94"/>
<wire x1="2.286" y1="1.778" x2="2.286" y2="0" width="0.254" layer="94"/>
<wire x1="2.286" y1="0" x2="2.286" y2="-1.778" width="0.254" layer="94"/>
<wire x1="0.254" y1="1.778" x2="0.254" y2="0" width="0.254" layer="94"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-1.778" width="0.254" layer="94"/>
<wire x1="-1.778" y1="1.905" x2="-1.778" y2="2.54" width="0.1524" layer="94" style="shortdash"/>
<wire x1="-1.778" y1="2.54" x2="4.318" y2="2.54" width="0.1524" layer="94" style="shortdash"/>
<wire x1="4.318" y1="2.54" x2="4.318" y2="1.905" width="0.1524" layer="94" style="shortdash"/>
<wire x1="4.318" y1="-1.905" x2="4.318" y2="-2.54" width="0.1524" layer="94" style="shortdash"/>
<wire x1="-1.778" y1="-2.54" x2="4.318" y2="-2.54" width="0.1524" layer="94" style="shortdash"/>
<wire x1="-1.778" y1="-2.54" x2="-1.778" y2="-1.905" width="0.1524" layer="94" style="shortdash"/>
<text x="-2.54" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="3" x="5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-2.54" y="0" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="4" x="2.54" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="2" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
</symbol>
<symbol name="C-EU-1">
<wire x1="0" y1="0" x2="0" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<text x="0.762" y="0.127" size="1.778" layer="95">&gt;NAME</text>
<text x="0.762" y="-4.445" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-2.032" x2="2.032" y2="-1.524" layer="94"/>
<rectangle x1="-2.032" y1="-1.016" x2="2.032" y2="-0.508" layer="94"/>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
<symbol name="MINI-USB-5">
<wire x1="-2.54" y1="6.35" x2="-2.54" y2="-6.35" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-6.35" x2="-1.27" y2="-7.62" width="0.254" layer="94" curve="90"/>
<wire x1="-1.27" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94"/>
<wire x1="0" y1="-7.62" x2="1.016" y2="-8.128" width="0.254" layer="94" curve="-53.130102"/>
<wire x1="1.016" y1="-8.128" x2="2.54" y2="-8.89" width="0.254" layer="94" curve="53.130102"/>
<wire x1="2.54" y1="-8.89" x2="5.08" y2="-8.89" width="0.254" layer="94"/>
<wire x1="5.08" y1="-8.89" x2="6.35" y2="-7.62" width="0.254" layer="94" curve="90"/>
<wire x1="6.35" y1="-7.62" x2="6.35" y2="7.62" width="0.254" layer="94"/>
<wire x1="-2.54" y1="6.35" x2="-1.27" y2="7.62" width="0.254" layer="94" curve="-90"/>
<wire x1="-1.27" y1="7.62" x2="0" y2="7.62" width="0.254" layer="94"/>
<wire x1="0" y1="7.62" x2="1.016" y2="8.128" width="0.254" layer="94" curve="53.130102"/>
<wire x1="1.016" y1="8.128" x2="2.54" y2="8.89" width="0.254" layer="94" curve="-53.130102"/>
<wire x1="2.54" y1="8.89" x2="5.08" y2="8.89" width="0.254" layer="94"/>
<wire x1="5.08" y1="8.89" x2="6.35" y2="7.62" width="0.254" layer="94" curve="-90"/>
<wire x1="0" y1="5.08" x2="0" y2="-5.08" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="1.27" y2="-6.35" width="0.254" layer="94"/>
<wire x1="1.27" y1="-6.35" x2="3.81" y2="-6.35" width="0.254" layer="94"/>
<wire x1="3.81" y1="-6.35" x2="3.81" y2="6.35" width="0.254" layer="94"/>
<wire x1="3.81" y1="6.35" x2="1.27" y2="6.35" width="0.254" layer="94"/>
<wire x1="1.27" y1="6.35" x2="0" y2="5.08" width="0.254" layer="94"/>
<text x="-2.54" y="11.43" size="1.778" layer="95" font="vector">&gt;NAME</text>
<text x="10.16" y="-7.62" size="1.778" layer="96" font="vector" rot="R90">&gt;VALUE</text>
<pin name="1" x="-5.08" y="5.08" visible="pin" direction="pas"/>
<pin name="2" x="-5.08" y="2.54" visible="pin" direction="pas"/>
<pin name="3" x="-5.08" y="0" visible="pin" direction="pas"/>
<pin name="4" x="-5.08" y="-2.54" visible="pin" direction="pas"/>
<pin name="5" x="-5.08" y="-5.08" visible="pin" direction="pas"/>
</symbol>
<symbol name="SHIELD_4">
<wire x1="-2.54" y1="0" x2="0" y2="0" width="0.254" layer="94" style="shortdash"/>
<wire x1="0" y1="0" x2="2.54" y2="0" width="0.254" layer="94" style="shortdash"/>
<wire x1="2.54" y1="0" x2="5.08" y2="0" width="0.254" layer="94" style="shortdash"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="-1.27" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="5.08" y1="0" x2="7.62" y2="2.54" width="0.254" layer="94" style="shortdash" curve="90"/>
<wire x1="7.62" y1="2.54" x2="7.62" y2="17.78" width="0.254" layer="94" style="shortdash"/>
<wire x1="7.62" y1="17.78" x2="5.08" y2="20.32" width="0.254" layer="94" style="shortdash" curve="90"/>
<wire x1="5.08" y1="20.32" x2="0" y2="20.32" width="0.254" layer="94" style="shortdash"/>
<text x="7.62" y="-2.54" size="1.778" layer="95" font="vector">&gt;NAME</text>
<pin name="S1" x="-2.54" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="S2" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="S3" x="2.54" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="S4" x="5.08" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
<symbol name="R-EU-1">
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<text x="-2.794" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.794" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="FB-">
<wire x1="0" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="-1.27" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-4.064" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="0" y1="-1.27" x2="2.54" y2="1.27" layer="94"/>
<pin name="1" x="-2.54" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="MIC2619">
<wire x1="-7.62" y1="10.16" x2="7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="10.16" x2="7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="-7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-7.62" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<pin name="VIN" x="-10.16" y="7.62" length="short" direction="pwr"/>
<pin name="EN" x="-10.16" y="5.08" length="short" direction="in"/>
<pin name="GND" x="-10.16" y="-5.08" length="short" direction="pwr"/>
<pin name="FB" x="10.16" y="-5.08" length="short" direction="in" rot="R180"/>
<pin name="OVP" x="10.16" y="-2.54" length="short" direction="in" rot="R180"/>
<pin name="SW" x="10.16" y="7.62" length="short" direction="in" rot="R180"/>
<text x="-7.62" y="10.922" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="OP-AMP">
<wire x1="-3.81" y1="-1.905" x2="-3.81" y2="-3.175" width="0.1524" layer="94"/>
<wire x1="-4.445" y1="-2.54" x2="-3.175" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-4.445" y1="2.54" x2="-3.175" y2="2.54" width="0.1524" layer="94"/>
<wire x1="5.08" y1="0" x2="-5.08" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="5.08" y2="0" width="0.4064" layer="94"/>
<text x="0" y="3.302" size="1.778" layer="95">&gt;NAME</text>
<text x="0" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="-IN" x="-7.62" y="2.54" visible="pad" length="short" direction="in"/>
<pin name="+IN" x="-7.62" y="-2.54" visible="pad" length="short" direction="in"/>
<pin name="OUT" x="7.62" y="0" visible="pad" length="short" direction="out" rot="R180"/>
</symbol>
<symbol name="OP-AMP+-">
<wire x1="-3.81" y1="-1.905" x2="-3.81" y2="-3.175" width="0.1524" layer="94"/>
<wire x1="-4.445" y1="-2.54" x2="-3.175" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-4.445" y1="2.54" x2="-3.175" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="3.8862" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-3.9116" x2="-2.54" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="5.08" y1="0" x2="-5.08" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="5.08" y2="0" width="0.4064" layer="94"/>
<text x="0" y="3.302" size="1.778" layer="95">&gt;NAME</text>
<text x="0" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="4.445" size="0.8128" layer="93" rot="R90">V+</text>
<text x="-1.27" y="-5.715" size="0.8128" layer="93" rot="R90">V-</text>
<pin name="-IN" x="-7.62" y="2.54" visible="pad" length="short" direction="in"/>
<pin name="+IN" x="-7.62" y="-2.54" visible="pad" length="short" direction="in"/>
<pin name="OUT" x="7.62" y="0" visible="pad" length="short" direction="out" rot="R180"/>
<pin name="V+" x="-2.54" y="7.62" visible="pad" length="short" direction="pwr" rot="R270"/>
<pin name="V-" x="-2.54" y="-7.62" visible="pad" length="short" direction="pwr" rot="R90"/>
</symbol>
<symbol name="+5VA">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5VA" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="VREG-EN-NR">
<wire x1="-7.62" y1="5.08" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<text x="-2.286" y="-3.302" size="1.4224" layer="95">GND</text>
<text x="-7.62" y="8.382" size="1.6764" layer="95">&gt;NAME</text>
<text x="-7.62" y="5.842" size="1.6764" layer="96">&gt;VALUE</text>
<pin name="IN" x="-10.16" y="2.54" length="short" direction="pwr"/>
<pin name="EN" x="-10.16" y="0" length="short" direction="in"/>
<pin name="OUT" x="10.16" y="2.54" length="short" direction="pwr" rot="R180"/>
<pin name="GND" x="0" y="-7.62" visible="pad" length="short" direction="pwr" rot="R90"/>
<pin name="NR" x="10.16" y="0" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="VREG-EN">
<description>&lt;H1&gt;ANALOG DEVICES&lt;/H1&gt;
&lt;b&gt;50 mA, High Voltage, Micropower Linear Regulator&lt;/b&gt;</description>
<wire x1="-7.62" y1="7.62" x2="7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="7.62" x2="7.62" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="-2.54" x2="-7.62" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-2.54" x2="-7.62" y2="7.62" width="0.254" layer="94"/>
<pin name="IN" x="-10.16" y="5.08" length="short" direction="pwr"/>
<pin name="EN" x="-10.16" y="2.54" length="short" direction="in"/>
<pin name="OUT" x="10.16" y="5.08" length="short" direction="pwr" rot="R180"/>
<pin name="GND" x="0" y="-5.08" visible="off" length="short" direction="pwr" rot="R90"/>
<text x="-2.032" y="-0.762" size="1.524" layer="97">GND</text>
<text x="-7.62" y="10.922" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="8.382" size="1.778" layer="95">&gt;VALUE</text>
</symbol>
<symbol name="PINHD6">
<wire x1="-6.35" y1="-7.62" x2="1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="1.27" y2="10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="10.16" x2="-6.35" y2="10.16" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="10.16" x2="-6.35" y2="-7.62" width="0.4064" layer="94"/>
<text x="-6.35" y="10.795" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
<symbol name="ADP7102">
<wire x1="-7.62" y1="5.08" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="-10.16" x2="-7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-10.16" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<text x="-2.032" y="-8.382" size="1.4224" layer="95">GND</text>
<text x="-7.62" y="8.382" size="1.6764" layer="95">&gt;NAME</text>
<text x="-7.62" y="5.842" size="1.6764" layer="96">&gt;VALUE</text>
<pin name="IN" x="-10.16" y="2.54" length="short" direction="pwr"/>
<pin name="EN" x="-10.16" y="0" length="short" direction="in"/>
<pin name="OUT" x="10.16" y="2.54" length="short" direction="pwr" rot="R180"/>
<pin name="GND" x="0" y="-12.7" visible="pad" length="short" direction="pwr" rot="R90"/>
<pin name="SENSE" x="10.16" y="0" length="short" direction="in" rot="R180"/>
<pin name="PG" x="10.16" y="-5.08" length="short" direction="oc" rot="R180"/>
</symbol>
<symbol name="D">
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94"/>
<text x="-2.54" y="4.5466" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="2.0066" size="1.778" layer="96">&gt;VALUE</text>
<pin name="A" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="C" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="MV-1">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<text x="-0.762" y="1.397" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="M-1">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="SJ">
<wire x1="0.381" y1="0.635" x2="0.381" y2="-0.635" width="1.27" layer="94" curve="-180" cap="flat"/>
<wire x1="-0.381" y1="-0.635" x2="-0.381" y2="0.635" width="1.27" layer="94" curve="-180" cap="flat"/>
<wire x1="2.54" y1="0" x2="1.651" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.651" y2="0" width="0.1524" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="LED">
<wire x1="1.27" y1="0" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="-0.762" x2="-3.429" y2="-2.159" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="-1.905" x2="-3.302" y2="-3.302" width="0.1524" layer="94"/>
<text x="3.556" y="-4.572" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="5.715" y="-4.572" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="C" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="A" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<polygon width="0.1524" layer="94">
<vertex x="-3.429" y="-2.159"/>
<vertex x="-3.048" y="-1.27"/>
<vertex x="-2.54" y="-1.778"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="-3.302" y="-3.302"/>
<vertex x="-2.921" y="-2.413"/>
<vertex x="-2.413" y="-2.921"/>
</polygon>
</symbol>
<symbol name="PINHD2">
<wire x1="-6.35" y1="-2.54" x2="1.27" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="-6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="5.08" x2="-6.35" y2="-2.54" width="0.4064" layer="94"/>
<text x="-6.35" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="STM32F303CXT6" prefix="IC">
<description>ST STM32F101/103 48pin LQFP</description>
<gates>
<gate name="PORTA_L" symbol="PORT_A_L" x="-15.24" y="40.64"/>
<gate name="PORTA_H" symbol="PORT_A_H" x="-15.24" y="12.7"/>
<gate name="PORTB_L" symbol="PORT_B_L" x="15.24" y="40.64"/>
<gate name="PORTB_H" symbol="PORT_B_H" x="15.24" y="12.7"/>
<gate name="PORTF/OSC" symbol="PORT_F_2" x="20.32" y="-7.62"/>
<gate name="AN_POWER" symbol="BAT_AN_M" x="15.24" y="-22.86"/>
<gate name="RESET/BOOT" symbol="BOOT_RST" x="15.24" y="-40.64"/>
<gate name="POWER" symbol="VCC_VDD_S" x="-17.78" y="-15.24"/>
<gate name="PORTC" symbol="PORT_C_3" x="-20.32" y="-40.64"/>
</gates>
<devices>
<device name="" package="LQFP48">
<connects>
<connect gate="AN_POWER" pin="VBAT" pad="1"/>
<connect gate="AN_POWER" pin="VDDA" pad="9"/>
<connect gate="AN_POWER" pin="VSSA" pad="8"/>
<connect gate="PORTA_H" pin="PA10/RX1/SDA2" pad="31"/>
<connect gate="PORTA_H" pin="PA11/USB_DM" pad="32"/>
<connect gate="PORTA_H" pin="PA12/USB_DP" pad="33"/>
<connect gate="PORTA_H" pin="PA13/SWDIO" pad="34"/>
<connect gate="PORTA_H" pin="PA14/SWCLK" pad="37"/>
<connect gate="PORTA_H" pin="PA15/SPI1_NSS" pad="38"/>
<connect gate="PORTA_H" pin="PA8" pad="29"/>
<connect gate="PORTA_H" pin="PA9/TX1/SCL2" pad="30"/>
<connect gate="PORTA_L" pin="PA0/ADC1_CH1" pad="10"/>
<connect gate="PORTA_L" pin="PA1/ADC1_CH2" pad="11"/>
<connect gate="PORTA_L" pin="PA2/ADC1_CH3" pad="12"/>
<connect gate="PORTA_L" pin="PA3/ADC1_CH4" pad="13"/>
<connect gate="PORTA_L" pin="PA4/ADC2_CH1" pad="14"/>
<connect gate="PORTA_L" pin="PA5/ADC2_CH2" pad="15"/>
<connect gate="PORTA_L" pin="PA6/ADC2_CH3" pad="16"/>
<connect gate="PORTA_L" pin="PA7/ADC2_CH4" pad="17"/>
<connect gate="PORTB_H" pin="ADC3_CH5/PB13" pad="26"/>
<connect gate="PORTB_H" pin="ADC4_CH4/PB14" pad="27"/>
<connect gate="PORTB_H" pin="PB12" pad="25"/>
<connect gate="PORTB_H" pin="PB15" pad="28"/>
<connect gate="PORTB_H" pin="TIM2_CH3/PB10" pad="21"/>
<connect gate="PORTB_H" pin="TIM2_CH4/PB11" pad="22"/>
<connect gate="PORTB_H" pin="TIM4_CH3/PB8" pad="45"/>
<connect gate="PORTB_H" pin="TIM4_CH4/PB9" pad="46"/>
<connect gate="PORTB_L" pin="PB2" pad="20"/>
<connect gate="PORTB_L" pin="PB7" pad="43"/>
<connect gate="PORTB_L" pin="SPI1_MISO/PB4" pad="40"/>
<connect gate="PORTB_L" pin="SPI1_MOSI/PB5" pad="41"/>
<connect gate="PORTB_L" pin="SPI1_SCK/PB3" pad="39"/>
<connect gate="PORTB_L" pin="TIM3_CH3/PB0" pad="18"/>
<connect gate="PORTB_L" pin="TIM3_CH4/PB1" pad="19"/>
<connect gate="PORTB_L" pin="TIM8_CH1/PB6" pad="42"/>
<connect gate="PORTC" pin="PC13" pad="2"/>
<connect gate="PORTC" pin="PC14" pad="3"/>
<connect gate="PORTC" pin="PC15" pad="4"/>
<connect gate="PORTF/OSC" pin="PF0/OSC&lt;=" pad="5"/>
<connect gate="PORTF/OSC" pin="PF1/OSC=&gt;" pad="6"/>
<connect gate="POWER" pin="VDD_1" pad="48"/>
<connect gate="POWER" pin="VDD_2" pad="24"/>
<connect gate="POWER" pin="VDD_3" pad="36"/>
<connect gate="POWER" pin="VSS_1" pad="47"/>
<connect gate="POWER" pin="VSS_2" pad="23"/>
<connect gate="POWER" pin="VSS_3" pad="35"/>
<connect gate="RESET/BOOT" pin="BOOT0" pad="44"/>
<connect gate="RESET/BOOT" pin="NRST" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+3V3A" prefix="+3V3A">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="+3V3A" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ABM" prefix="X">
<gates>
<gate name="G$1" symbol="Q-SHIELD2" x="0" y="0"/>
</gates>
<devices>
<device name="M2" package="ABMM2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="C_EU_" prefix="C" uservalue="yes">
<gates>
<gate name="G$1" symbol="C-EU-1" x="0" y="0"/>
</gates>
<devices>
<device name="C0805" package="C0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1206" package="C1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0603" package="C0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0603G" package="C0603G">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0402" package="C0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0402G" package="C0402G">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0805G" package="C0805G">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1206G" package="C1206G">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MINI-USB-SCHIELD-" prefix="X">
<description>&lt;b&gt;MINI USB-B Conector&lt;/b&gt;&lt;p&gt;
Source: www.cypressindustries.com</description>
<gates>
<gate name="G$1" symbol="MINI-USB-5" x="0" y="0"/>
<gate name="S" symbol="SHIELD_4" x="0" y="-10.16" addlevel="always"/>
</gates>
<devices>
<device name="32005-201" package="32005-201">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="S" pin="S1" pad="M1"/>
<connect gate="S" pin="S2" pad="M2"/>
<connect gate="S" pin="S3" pad="M3"/>
<connect gate="S" pin="S4" pad="M4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="32005-301" package="32005-301">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="S" pin="S1" pad="M1"/>
<connect gate="S" pin="S2" pad="M2"/>
<connect gate="S" pin="S3" pad="M3"/>
<connect gate="S" pin="S4" pad="M4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="R_EU_" prefix="R" uservalue="yes">
<gates>
<gate name="G$1" symbol="R-EU-1" x="0" y="0"/>
</gates>
<devices>
<device name="R0805" package="R0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R1206" package="R1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R0603" package="R0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R0603G" package="R0603G">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R0402" package="R0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R0402G" package="R0402G">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="FB_" prefix="L" uservalue="yes">
<description>&lt;b&gt;FERRITE BEAD&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="FB-" x="0" y="2.54"/>
</gates>
<devices>
<device name="0603" package="L0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805" package="L0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1206" package="L1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2012" package="L2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1210" package="L1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2010" package="L2010">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2010E" package="L2010E">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MIC2619" prefix="IC">
<gates>
<gate name="G$1" symbol="MIC2619" x="0" y="0"/>
</gates>
<devices>
<device name="YD6" package="SOT23-6">
<connects>
<connect gate="G$1" pin="EN" pad="4"/>
<connect gate="G$1" pin="FB" pad="3"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="OVP" pad="5"/>
<connect gate="G$1" pin="SW" pad="1"/>
<connect gate="G$1" pin="VIN" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ADA4841" prefix="U">
<gates>
<gate name="_2" symbol="OP-AMP" x="15.24" y="0"/>
<gate name="_1" symbol="OP-AMP+-" x="-15.24" y="0"/>
</gates>
<devices>
<device name="-2" package="SOIC-8">
<connects>
<connect gate="_1" pin="+IN" pad="3"/>
<connect gate="_1" pin="-IN" pad="2"/>
<connect gate="_1" pin="OUT" pad="1"/>
<connect gate="_1" pin="V+" pad="8"/>
<connect gate="_1" pin="V-" pad="4"/>
<connect gate="_2" pin="+IN" pad="5"/>
<connect gate="_2" pin="-IN" pad="6"/>
<connect gate="_2" pin="OUT" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+5VA" prefix="5A+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5VA" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TPS730*" prefix="IC">
<description>&lt;H1&gt;TEXAS INSTRUMENTS&lt;/H1&gt;
&lt;b&gt;Low-Noise, High PSRR, RF, 200-mA Low-Dropout Linear Regulators&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VREG-EN-NR" x="0" y="0"/>
</gates>
<devices>
<device name="18DBV" package="SOT23-5">
<connects>
<connect gate="G$1" pin="EN" pad="3"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="IN" pad="1"/>
<connect gate="G$1" pin="NR" pad="4"/>
<connect gate="G$1" pin="OUT" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="25DBV" package="SOT23-5">
<connects>
<connect gate="G$1" pin="EN" pad="3"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="IN" pad="1"/>
<connect gate="G$1" pin="NR" pad="4"/>
<connect gate="G$1" pin="OUT" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="285DBV" package="SOT23-5">
<connects>
<connect gate="G$1" pin="EN" pad="3"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="IN" pad="1"/>
<connect gate="G$1" pin="NR" pad="4"/>
<connect gate="G$1" pin="OUT" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="28DBV" package="SOT23-5">
<connects>
<connect gate="G$1" pin="EN" pad="3"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="IN" pad="1"/>
<connect gate="G$1" pin="NR" pad="4"/>
<connect gate="G$1" pin="OUT" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="30DBV" package="SOT23-5">
<connects>
<connect gate="G$1" pin="EN" pad="3"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="IN" pad="1"/>
<connect gate="G$1" pin="NR" pad="4"/>
<connect gate="G$1" pin="OUT" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="33DBV" package="SOT23-5">
<connects>
<connect gate="G$1" pin="EN" pad="3"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="IN" pad="1"/>
<connect gate="G$1" pin="NR" pad="4"/>
<connect gate="G$1" pin="OUT" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ADP150*" prefix="IC">
<description>&lt;H1&gt;ANALOG DEVICES&lt;/H1&gt;
&lt;b&gt;Ultralow Noise, 150 mA CMOS Linear Regulator&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VREG-EN" x="0" y="-2.54"/>
</gates>
<devices>
<device name="AUJZ-1.8-R7" package="SOT23-5">
<connects>
<connect gate="G$1" pin="EN" pad="3"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="IN" pad="1"/>
<connect gate="G$1" pin="OUT" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="AUJZ-2.0-R7" package="SOT23-5">
<connects>
<connect gate="G$1" pin="EN" pad="3"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="IN" pad="1"/>
<connect gate="G$1" pin="OUT" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="AUJZ-2.5-R7" package="SOT23-5">
<connects>
<connect gate="G$1" pin="EN" pad="3"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="IN" pad="1"/>
<connect gate="G$1" pin="OUT" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="AUJZ-2.65-R7" package="SOT23-5">
<connects>
<connect gate="G$1" pin="EN" pad="3"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="IN" pad="1"/>
<connect gate="G$1" pin="OUT" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="AUJZ-2.8-R7" package="SOT23-5">
<connects>
<connect gate="G$1" pin="EN" pad="3"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="IN" pad="1"/>
<connect gate="G$1" pin="OUT" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="AUJZ-3.0-R7" package="SOT23-5">
<connects>
<connect gate="G$1" pin="EN" pad="3"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="IN" pad="1"/>
<connect gate="G$1" pin="OUT" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="AUJZ-3.3-R7" package="SOT23-5">
<connects>
<connect gate="G$1" pin="EN" pad="3"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="IN" pad="1"/>
<connect gate="G$1" pin="OUT" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PINHD-1X6" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD6" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="1X06">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X06/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ADP7102*" prefix="IC">
<description>&lt;H1&gt;ANALOG DEVICES&lt;/H1&gt;
&lt;b&gt;20 V, 300 mA, Low Noise, CMOS LDO&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="ADP7102" x="0" y="2.54"/>
</gates>
<devices>
<device name="ARDZ-1.5-R7" package="SOIC-8-PAD">
<connects>
<connect gate="G$1" pin="EN" pad="5"/>
<connect gate="G$1" pin="GND" pad="3 6 EP"/>
<connect gate="G$1" pin="IN" pad="8"/>
<connect gate="G$1" pin="OUT" pad="1"/>
<connect gate="G$1" pin="PG" pad="7"/>
<connect gate="G$1" pin="SENSE" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ARDZ-1.8-R7" package="SOIC-8-PAD">
<connects>
<connect gate="G$1" pin="EN" pad="5"/>
<connect gate="G$1" pin="GND" pad="3 6 EP"/>
<connect gate="G$1" pin="IN" pad="8"/>
<connect gate="G$1" pin="OUT" pad="1"/>
<connect gate="G$1" pin="PG" pad="7"/>
<connect gate="G$1" pin="SENSE" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ARDZ-2.5-R7" package="SOIC-8-PAD">
<connects>
<connect gate="G$1" pin="EN" pad="5"/>
<connect gate="G$1" pin="GND" pad="3 6 EP"/>
<connect gate="G$1" pin="IN" pad="8"/>
<connect gate="G$1" pin="OUT" pad="1"/>
<connect gate="G$1" pin="PG" pad="7"/>
<connect gate="G$1" pin="SENSE" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ARDZ-3.0-R7" package="SOIC-8-PAD">
<connects>
<connect gate="G$1" pin="EN" pad="5"/>
<connect gate="G$1" pin="GND" pad="3 6 EP"/>
<connect gate="G$1" pin="IN" pad="8"/>
<connect gate="G$1" pin="OUT" pad="1"/>
<connect gate="G$1" pin="PG" pad="7"/>
<connect gate="G$1" pin="SENSE" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ARDZ-3.3-R7" package="SOIC-8-PAD">
<connects>
<connect gate="G$1" pin="EN" pad="5"/>
<connect gate="G$1" pin="GND" pad="3 6 EP"/>
<connect gate="G$1" pin="IN" pad="8"/>
<connect gate="G$1" pin="OUT" pad="1"/>
<connect gate="G$1" pin="PG" pad="7"/>
<connect gate="G$1" pin="SENSE" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ARDZ-5.0-R7" package="SOIC-8-PAD">
<connects>
<connect gate="G$1" pin="EN" pad="5"/>
<connect gate="G$1" pin="GND" pad="3 6 EP"/>
<connect gate="G$1" pin="IN" pad="8"/>
<connect gate="G$1" pin="OUT" pad="1"/>
<connect gate="G$1" pin="PG" pad="7"/>
<connect gate="G$1" pin="SENSE" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ARDZ-9.0-R7" package="SOIC-8-PAD">
<connects>
<connect gate="G$1" pin="EN" pad="5"/>
<connect gate="G$1" pin="GND" pad="3 6 EP"/>
<connect gate="G$1" pin="IN" pad="8"/>
<connect gate="G$1" pin="OUT" pad="1"/>
<connect gate="G$1" pin="PG" pad="7"/>
<connect gate="G$1" pin="SENSE" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ACPZ-1.5-R7" package="LFCSP8">
<connects>
<connect gate="G$1" pin="EN" pad="5"/>
<connect gate="G$1" pin="GND" pad="3 6 EP"/>
<connect gate="G$1" pin="IN" pad="8"/>
<connect gate="G$1" pin="OUT" pad="1"/>
<connect gate="G$1" pin="PG" pad="7"/>
<connect gate="G$1" pin="SENSE" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ACPZ-1.8-R7" package="LFCSP8">
<connects>
<connect gate="G$1" pin="EN" pad="5"/>
<connect gate="G$1" pin="GND" pad="3 6 EP"/>
<connect gate="G$1" pin="IN" pad="8"/>
<connect gate="G$1" pin="OUT" pad="1"/>
<connect gate="G$1" pin="PG" pad="7"/>
<connect gate="G$1" pin="SENSE" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ACPZ-2.5-R7" package="LFCSP8">
<connects>
<connect gate="G$1" pin="EN" pad="5"/>
<connect gate="G$1" pin="GND" pad="3 6 EP"/>
<connect gate="G$1" pin="IN" pad="8"/>
<connect gate="G$1" pin="OUT" pad="1"/>
<connect gate="G$1" pin="PG" pad="7"/>
<connect gate="G$1" pin="SENSE" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ACPZ-3.0-R7" package="LFCSP8">
<connects>
<connect gate="G$1" pin="EN" pad="5"/>
<connect gate="G$1" pin="GND" pad="3 6 EP"/>
<connect gate="G$1" pin="IN" pad="8"/>
<connect gate="G$1" pin="OUT" pad="1"/>
<connect gate="G$1" pin="PG" pad="7"/>
<connect gate="G$1" pin="SENSE" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ACPZ-3.3-R7" package="LFCSP8">
<connects>
<connect gate="G$1" pin="EN" pad="5"/>
<connect gate="G$1" pin="GND" pad="3 6 EP"/>
<connect gate="G$1" pin="IN" pad="8"/>
<connect gate="G$1" pin="OUT" pad="1"/>
<connect gate="G$1" pin="PG" pad="7"/>
<connect gate="G$1" pin="SENSE" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ACPZ-5.0-R7" package="LFCSP8">
<connects>
<connect gate="G$1" pin="EN" pad="5"/>
<connect gate="G$1" pin="GND" pad="3 6 EP"/>
<connect gate="G$1" pin="IN" pad="8"/>
<connect gate="G$1" pin="OUT" pad="1"/>
<connect gate="G$1" pin="PG" pad="7"/>
<connect gate="G$1" pin="SENSE" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ACPZ-9.0-R7" package="LFCSP8">
<connects>
<connect gate="G$1" pin="EN" pad="5"/>
<connect gate="G$1" pin="GND" pad="3 6 EP"/>
<connect gate="G$1" pin="IN" pad="8"/>
<connect gate="G$1" pin="OUT" pad="1"/>
<connect gate="G$1" pin="PG" pad="7"/>
<connect gate="G$1" pin="SENSE" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="NSR0240H" prefix="D">
<gates>
<gate name="G$1" symbol="D" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOD323">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="22-?-02" prefix="J">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
wire to board 2.54 mm (.1 inch) pitch header</description>
<gates>
<gate name="-1" symbol="MV-1" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M-1" x="0" y="-5.08" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="05-7028" package="7395-02">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="9731601" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="27-2021" package="6410-02">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SJ" prefix="SJ" uservalue="yes">
<description>SMD solder &lt;b&gt;JUMPER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="SJ" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SJ">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="W" package="SJW">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S" package="SJS">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LED" prefix="D">
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="CHIPLED_0805" package="CHIPLED_0805">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PINHD-1X2" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="PINHD2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X02">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X02/90">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/SMD" package="1X02S">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="+3V3" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+3V3" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+3V3" prefix="+3V3" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="+3V3" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-panduit" urn="urn:adsk.eagle:library:169">
<description>&lt;b&gt;Panduit Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="057-010-0" library_version="1">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
series 057 contact pc board low profile headers&lt;p&gt;
angled</description>
<wire x1="-1.9" y1="-0.23" x2="-1.9" y2="5.86" width="0.2032" layer="21"/>
<wire x1="-1.9" y1="-0.23" x2="1.9" y2="-0.23" width="0.2032" layer="21"/>
<wire x1="1.9" y1="-0.23" x2="1.9" y2="5.86" width="0.2032" layer="21"/>
<wire x1="-5.8" y1="5.22" x2="-5.1" y2="3.25" width="0.4064" layer="21"/>
<wire x1="-5.1" y1="3.25" x2="-4.4" y2="5.22" width="0.4064" layer="21"/>
<wire x1="-4.4" y1="5.22" x2="-5.8" y2="5.22" width="0.4064" layer="21"/>
<wire x1="-10.21" y1="-2.54" x2="-10.21" y2="5.86" width="0.2032" layer="21"/>
<wire x1="10.21" y1="5.86" x2="10.21" y2="-2.44" width="0.2032" layer="21"/>
<wire x1="-10.16" y1="-2.54" x2="-7.62" y2="-2.54" width="0.2032" layer="21"/>
<wire x1="-7.62" y1="-2.54" x2="-7.62" y2="-5.98" width="0.2032" layer="21"/>
<wire x1="10.16" y1="-2.54" x2="7.62" y2="-2.54" width="0.2032" layer="21"/>
<wire x1="7.62" y1="-2.54" x2="7.62" y2="-6.05" width="0.2032" layer="21"/>
<wire x1="7.61" y1="-6.04" x2="-7.61" y2="-6.04" width="0.2032" layer="21"/>
<wire x1="-10.21" y1="5.86" x2="10.21" y2="5.86" width="0.2032" layer="21"/>
<pad name="1" x="-5.08" y="-5.08" drill="1" shape="octagon"/>
<pad name="2" x="-5.08" y="-2.54" drill="1" shape="octagon"/>
<pad name="3" x="-2.54" y="-5.08" drill="1" shape="octagon"/>
<pad name="4" x="-2.54" y="-2.54" drill="1" shape="octagon"/>
<pad name="5" x="0" y="-5.08" drill="1" shape="octagon"/>
<pad name="6" x="0" y="-2.54" drill="1" shape="octagon"/>
<pad name="7" x="2.54" y="-5.08" drill="1" shape="octagon"/>
<pad name="8" x="2.54" y="-2.54" drill="1" shape="octagon"/>
<pad name="9" x="5.08" y="-5.08" drill="1" shape="octagon"/>
<pad name="10" x="5.08" y="-2.54" drill="1" shape="octagon"/>
<text x="-6.35" y="-8.89" size="1.778" layer="25">&gt;NAME</text>
<text x="-8.89" y="6.35" size="1.778" layer="27">&gt;VALUE</text>
<hole x="-13.48" y="3.66" drill="2.8"/>
<hole x="13.73" y="3.66" drill="2.8"/>
</package>
<package name="057-010-1" library_version="1">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
series 057 contact pc board low profile headers&lt;p&gt;
straight</description>
<wire x1="-1.9" y1="-3.32" x2="-1.9" y2="-4.03" width="0.2032" layer="21"/>
<wire x1="1.9" y1="-3.32" x2="1.9" y2="-4.03" width="0.2032" layer="21"/>
<wire x1="-7.5" y1="-1.97" x2="-6.8" y2="-3.04" width="0.4064" layer="21"/>
<wire x1="-6.8" y1="-3.04" x2="-6.1" y2="-1.97" width="0.4064" layer="21"/>
<wire x1="-6.1" y1="-1.97" x2="-7.5" y2="-1.97" width="0.4064" layer="21"/>
<wire x1="-10.21" y1="-4.1" x2="-10.21" y2="4.1" width="0.2032" layer="21"/>
<wire x1="-10.21" y1="-4.1" x2="10.21" y2="-4.1" width="0.2032" layer="21"/>
<wire x1="10.21" y1="-4.1" x2="10.21" y2="4.1" width="0.2032" layer="21"/>
<wire x1="10.21" y1="4.1" x2="-10.21" y2="4.1" width="0.2032" layer="21"/>
<wire x1="-9.41" y1="-3.3" x2="-9.41" y2="3.3" width="0.2032" layer="21"/>
<wire x1="-9.41" y1="3.3" x2="9.41" y2="3.3" width="0.2032" layer="21"/>
<wire x1="9.41" y1="3.3" x2="9.41" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="9.41" y1="-3.3" x2="1.9" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="-1.9" y1="-3.3" x2="-9.41" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="-10.21" y1="4.1" x2="-9.41" y2="3.3" width="0.2032" layer="21"/>
<wire x1="-10.21" y1="-4.1" x2="-9.41" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="10.21" y1="4.1" x2="9.41" y2="3.3" width="0.2032" layer="21"/>
<wire x1="9.41" y1="-3.3" x2="10.21" y2="-4.1" width="0.2032" layer="21"/>
<pad name="1" x="-5.08" y="-1.27" drill="1" shape="octagon"/>
<pad name="2" x="-5.08" y="1.27" drill="1" shape="octagon"/>
<pad name="3" x="-2.54" y="-1.27" drill="1" shape="octagon"/>
<pad name="4" x="-2.54" y="1.27" drill="1" shape="octagon"/>
<pad name="5" x="0" y="-1.27" drill="1" shape="octagon"/>
<pad name="6" x="0" y="1.27" drill="1" shape="octagon"/>
<pad name="7" x="2.54" y="-1.27" drill="1" shape="octagon"/>
<pad name="8" x="2.54" y="1.27" drill="1" shape="octagon"/>
<pad name="9" x="5.08" y="-1.27" drill="1" shape="octagon"/>
<pad name="10" x="5.08" y="1.27" drill="1" shape="octagon"/>
<text x="-6.33" y="-6.88" size="1.778" layer="25">&gt;NAME</text>
<text x="-8.35" y="4.55" size="1.778" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="MV" library_version="1">
<wire x1="0" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<text x="1.016" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<text x="-2.54" y="1.905" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="-5.08" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="M" library_version="1">
<wire x1="0" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<text x="1.016" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<pin name="S" x="-5.08" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="057-010-" prefix="X" library_version="1">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
10-pin series 057 contact pc board low profile headers</description>
<gates>
<gate name="-1" symbol="MV" x="-10.16" y="43.18" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="12.7" y="43.18" addlevel="always" swaplevel="1"/>
<gate name="-3" symbol="M" x="-10.16" y="38.1" addlevel="always" swaplevel="1"/>
<gate name="-4" symbol="M" x="12.7" y="38.1" addlevel="always" swaplevel="1"/>
<gate name="-5" symbol="M" x="-10.16" y="33.02" addlevel="always" swaplevel="1"/>
<gate name="-6" symbol="M" x="12.7" y="33.02" addlevel="always" swaplevel="1"/>
<gate name="-7" symbol="M" x="-10.16" y="27.94" addlevel="always" swaplevel="1"/>
<gate name="-8" symbol="M" x="12.7" y="27.94" addlevel="always" swaplevel="1"/>
<gate name="-9" symbol="M" x="-10.16" y="22.86" addlevel="always" swaplevel="1"/>
<gate name="-10" symbol="M" x="12.7" y="22.86" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="0" package="057-010-0">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-10" pin="S" pad="10"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
<connect gate="-5" pin="S" pad="5"/>
<connect gate="-6" pin="S" pad="6"/>
<connect gate="-7" pin="S" pad="7"/>
<connect gate="-8" pin="S" pad="8"/>
<connect gate="-9" pin="S" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="1" package="057-010-1">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-10" pin="S" pad="10"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
<connect gate="-5" pin="S" pad="5"/>
<connect gate="-6" pin="S" pad="6"/>
<connect gate="-7" pin="S" pad="7"/>
<connect gate="-8" pin="S" pad="8"/>
<connect gate="-9" pin="S" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply2" urn="urn:adsk.eagle:library:372">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="+09V" library_version="1">
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="94"/>
<wire x1="0" y1="0.635" x2="0" y2="1.905" width="0.1524" layer="94"/>
<circle x="0" y="1.27" radius="1.27" width="0.254" layer="94"/>
<text x="-1.905" y="3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="+9V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+9V" prefix="SUPPLY" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="+09V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="A5L-LOC" device=""/>
<part name="FRAME2" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="A5L-LOC" device=""/>
<part name="IC1" library="SmartMDC" deviceset="STM32F303CXT6" device=""/>
<part name="+3V1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="+3V3A1" library="SmartMDC" deviceset="+3V3A" device=""/>
<part name="X1" library="SmartMDC" deviceset="ABM" device="M2" value="8.000MHz"/>
<part name="GND3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="C1" library="SmartMDC" deviceset="C_EU_" device="C0603G" value="18p"/>
<part name="C2" library="SmartMDC" deviceset="C_EU_" device="C0603G" value="18p"/>
<part name="USB" library="SmartMDC" deviceset="MINI-USB-SCHIELD-" device="32005-201" value="MINI-USB-B"/>
<part name="GND4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="R1" library="SmartMDC" deviceset="R_EU_" device="R0603" value="22R"/>
<part name="R2" library="SmartMDC" deviceset="R_EU_" device="R0603" value="22R"/>
<part name="R3" library="SmartMDC" deviceset="R_EU_" device="R0603" value="1K5"/>
<part name="R4" library="SmartMDC" deviceset="R_EU_" device="R0603G" value="10K"/>
<part name="+3V2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="+3V3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="IC7" library="SmartMDC" deviceset="MIC2619" device="YD6"/>
<part name="GND37" library="supply1" deviceset="GND" device=""/>
<part name="L4" library="SmartMDC" deviceset="FB_" device="1210" value="10uH"/>
<part name="R27" library="SmartMDC" deviceset="R_EU_" device="R0603G" value="10K"/>
<part name="R28" library="SmartMDC" deviceset="R_EU_" device="R0603G" value="10K"/>
<part name="R29" library="SmartMDC" deviceset="R_EU_" device="R0603" value="85K"/>
<part name="R30" library="SmartMDC" deviceset="R_EU_" device="R0603" value="61K"/>
<part name="GND38" library="supply1" deviceset="GND" device=""/>
<part name="C33" library="SmartMDC" deviceset="C_EU_" device="C0603" value="22n"/>
<part name="C34" library="SmartMDC" deviceset="C_EU_" device="C0805G" value="2u2"/>
<part name="C35" library="SmartMDC" deviceset="C_EU_" device="C0805G" value="10u"/>
<part name="U1" library="SmartMDC" deviceset="ADA4841" device="-2"/>
<part name="U2" library="SmartMDC" deviceset="ADA4841" device="-2"/>
<part name="R5" library="SmartMDC" deviceset="R_EU_" device="R0603" value="47R"/>
<part name="R6" library="SmartMDC" deviceset="R_EU_" device="R0603" value="47R"/>
<part name="R7" library="SmartMDC" deviceset="R_EU_" device="R0603" value="47R"/>
<part name="R8" library="SmartMDC" deviceset="R_EU_" device="R0603" value="47R"/>
<part name="R9" library="SmartMDC" deviceset="R_EU_" device="R0603" value="510R"/>
<part name="R10" library="SmartMDC" deviceset="R_EU_" device="R0603" value="510R"/>
<part name="R11" library="SmartMDC" deviceset="R_EU_" device="R0603" value="510R"/>
<part name="R12" library="SmartMDC" deviceset="R_EU_" device="R0603" value="510R"/>
<part name="R13" library="SmartMDC" deviceset="R_EU_" device="R0603" value="100R"/>
<part name="R14" library="SmartMDC" deviceset="R_EU_" device="R0603" value="100R"/>
<part name="R15" library="SmartMDC" deviceset="R_EU_" device="R0603" value="100R"/>
<part name="R16" library="SmartMDC" deviceset="R_EU_" device="R0603" value="100R"/>
<part name="R17" library="SmartMDC" deviceset="R_EU_" device="R0603G" value="1K"/>
<part name="R18" library="SmartMDC" deviceset="R_EU_" device="R0603G" value="1K"/>
<part name="R19" library="SmartMDC" deviceset="R_EU_" device="R0603G" value="1K"/>
<part name="R20" library="SmartMDC" deviceset="R_EU_" device="R0603G" value="1K"/>
<part name="C3" library="SmartMDC" deviceset="C_EU_" device="C0603G" value="220n"/>
<part name="C4" library="SmartMDC" deviceset="C_EU_" device="C0603G" value="220n"/>
<part name="C5" library="SmartMDC" deviceset="C_EU_" device="C0603G" value="220n"/>
<part name="C6" library="SmartMDC" deviceset="C_EU_" device="C0603G" value="220n"/>
<part name="GND5" library="supply1" deviceset="GND" device=""/>
<part name="GND6" library="supply1" deviceset="GND" device=""/>
<part name="GND7" library="supply1" deviceset="GND" device=""/>
<part name="GND8" library="supply1" deviceset="GND" device=""/>
<part name="5A+1" library="SmartMDC" deviceset="+5VA" device=""/>
<part name="5A+2" library="SmartMDC" deviceset="+5VA" device=""/>
<part name="GND9" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="+3V3A2" library="SmartMDC" deviceset="+3V3A" device=""/>
<part name="IC3" library="SmartMDC" deviceset="TPS730*" device="33DBV"/>
<part name="GND10" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="C7" library="SmartMDC" deviceset="C_EU_" device="C0402G" value="10n"/>
<part name="+3V4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="GND11" library="supply1" deviceset="GND" device=""/>
<part name="5A+3" library="SmartMDC" deviceset="+5VA" device=""/>
<part name="L1" library="SmartMDC" deviceset="FB_" device="0603" value="1K"/>
<part name="IC2" library="SmartMDC" deviceset="ADP150*" device="AUJZ-3.3-R7"/>
<part name="C8" library="SmartMDC" deviceset="C_EU_" device="C0805G" value="10u"/>
<part name="GND12" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="JP2" library="con-panduit" library_urn="urn:adsk.eagle:library:169" deviceset="057-010-" device="1"/>
<part name="GND13" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="C9" library="SmartMDC" deviceset="C_EU_" device="C0603G" value="100n"/>
<part name="GND15" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="JP1" library="SmartMDC" deviceset="PINHD-1X6" device=""/>
<part name="GND16" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="C10" library="SmartMDC" deviceset="C_EU_" device="C0603G" value="100n"/>
<part name="C11" library="SmartMDC" deviceset="C_EU_" device="C0603G" value="100n"/>
<part name="SUPPLY1" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+9V" device=""/>
<part name="SUPPLY2" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+9V" device=""/>
<part name="IC4" library="SmartMDC" deviceset="ADP7102*" device="ACPZ-5.0-R7" value="ADP7102ACPZ-5.0-R7"/>
<part name="L2" library="SmartMDC" deviceset="FB_" device="2010" value="1u5"/>
<part name="C12" library="SmartMDC" deviceset="C_EU_" device="C0805G" value="10u"/>
<part name="C13" library="SmartMDC" deviceset="C_EU_" device="C0805G" value="10u"/>
<part name="C14" library="SmartMDC" deviceset="C_EU_" device="C0805G" value="10u"/>
<part name="R21" library="SmartMDC" deviceset="R_EU_" device="R0805" value="7R5"/>
<part name="D2" library="SmartMDC" deviceset="NSR0240H" device=""/>
<part name="C16" library="SmartMDC" deviceset="C_EU_" device="C0805G" value="10u"/>
<part name="C17" library="SmartMDC" deviceset="C_EU_" device="C0805G" value="10u"/>
<part name="C18" library="SmartMDC" deviceset="C_EU_" device="C0805G" value="10u"/>
<part name="C19" library="SmartMDC" deviceset="C_EU_" device="C0805G" value="10u"/>
<part name="C20" library="SmartMDC" deviceset="C_EU_" device="C0402G" value="100n"/>
<part name="C21" library="SmartMDC" deviceset="C_EU_" device="C0402G" value="100n"/>
<part name="C22" library="SmartMDC" deviceset="C_EU_" device="C0402G" value="100n"/>
<part name="C23" library="SmartMDC" deviceset="C_EU_" device="C0402G" value="100n"/>
<part name="5A+4" library="SmartMDC" deviceset="+5VA" device=""/>
<part name="JP3" library="SmartMDC" deviceset="22-?-02" device="27-2021"/>
<part name="GND14" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="+3V5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="GND17" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="BLDR" library="SmartMDC" deviceset="SJ" device=""/>
<part name="+3V6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="A" library="SmartMDC" deviceset="LED" device="CHIPLED_0805" value="GREEN"/>
<part name="B" library="SmartMDC" deviceset="LED" device="CHIPLED_0805" value="RED"/>
<part name="GND18" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="R22" library="SmartMDC" deviceset="R_EU_" device="R0603" value="330R"/>
<part name="R23" library="SmartMDC" deviceset="R_EU_" device="R0603" value="330R"/>
<part name="JP4" library="SmartMDC" deviceset="22-?-02" device="27-2021"/>
<part name="GND19" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="L3" library="SmartMDC" deviceset="FB_" device="2010" value="1u5"/>
<part name="C15" library="SmartMDC" deviceset="C_EU_" device="C0805G" value="10u"/>
<part name="JP5" library="SmartMDC" deviceset="PINHD-1X2" device=""/>
<part name="GND20" library="supply1" deviceset="GND" device=""/>
<part name="SUPPLY3" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+9V" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="IC1" gate="PORTA_L" x="27.94" y="114.3"/>
<instance part="IC1" gate="PORTA_H" x="27.94" y="83.82"/>
<instance part="IC1" gate="PORTB_L" x="50.8" y="114.3"/>
<instance part="IC1" gate="PORTB_H" x="50.8" y="83.82"/>
<instance part="IC1" gate="PORTF/OSC" x="55.88" y="60.96"/>
<instance part="IC1" gate="AN_POWER" x="50.8" y="20.32"/>
<instance part="IC1" gate="RESET/BOOT" x="50.8" y="40.64"/>
<instance part="IC1" gate="POWER" x="25.4" y="22.86"/>
<instance part="IC1" gate="PORTC" x="22.86" y="58.42"/>
<instance part="+3V1" gate="G$1" x="7.62" y="30.48" rot="R90"/>
<instance part="GND1" gate="1" x="15.24" y="10.16"/>
<instance part="+3V3A1" gate="G$1" x="71.12" y="17.78" rot="R270"/>
<instance part="X1" gate="G$1" x="73.66" y="58.42"/>
<instance part="GND3" gate="1" x="76.2" y="48.26"/>
<instance part="C1" gate="G$1" x="66.04" y="55.88"/>
<instance part="C2" gate="G$1" x="83.82" y="55.88"/>
<instance part="USB" gate="G$1" x="165.1" y="45.72"/>
<instance part="USB" gate="S" x="165.1" y="35.56"/>
<instance part="GND4" gate="1" x="162.56" y="30.48"/>
<instance part="R1" gate="G$1" x="144.78" y="48.26"/>
<instance part="R2" gate="G$1" x="144.78" y="40.64"/>
<instance part="R3" gate="G$1" x="144.78" y="33.02" rot="R180"/>
<instance part="R4" gate="G$1" x="116.84" y="33.02"/>
<instance part="+3V2" gate="G$1" x="154.94" y="33.02" rot="R270"/>
<instance part="+3V3" gate="G$1" x="71.12" y="25.4" rot="R270"/>
<instance part="GND2" gate="1" x="63.5" y="10.16"/>
<instance part="IC3" gate="G$1" x="109.22" y="116.84"/>
<instance part="GND10" gate="1" x="109.22" y="106.68"/>
<instance part="C7" gate="G$1" x="121.92" y="114.3"/>
<instance part="+3V4" gate="G$1" x="172.72" y="119.38" rot="R270"/>
<instance part="L1" gate="G$1" x="149.86" y="55.88"/>
<instance part="C8" gate="G$1" x="137.16" y="60.96" rot="R180"/>
<instance part="GND12" gate="1" x="137.16" y="68.58" rot="R180"/>
<instance part="C9" gate="G$1" x="144.78" y="60.96" rot="R180"/>
<instance part="GND15" gate="1" x="144.78" y="68.58" rot="R180"/>
<instance part="JP1" gate="A" x="172.72" y="83.82"/>
<instance part="GND16" gate="1" x="165.1" y="73.66"/>
<instance part="C16" gate="G$1" x="88.9" y="116.84"/>
<instance part="C18" gate="G$1" x="152.4" y="116.84"/>
<instance part="C20" gate="G$1" x="132.08" y="116.84"/>
<instance part="C21" gate="G$1" x="142.24" y="116.84"/>
<instance part="C22" gate="G$1" x="162.56" y="116.84"/>
<instance part="JP3" gate="-1" x="88.9" y="91.44"/>
<instance part="JP3" gate="-2" x="88.9" y="86.36"/>
<instance part="GND14" gate="1" x="83.82" y="81.28"/>
<instance part="+3V5" gate="G$1" x="76.2" y="91.44" rot="R90"/>
<instance part="GND17" gate="1" x="124.46" y="33.02" rot="R90"/>
<instance part="BLDR" gate="1" x="101.6" y="33.02"/>
<instance part="+3V6" gate="G$1" x="91.44" y="33.02" rot="R90"/>
<instance part="A" gate="G$1" x="114.3" y="68.58" rot="R90"/>
<instance part="B" gate="G$1" x="114.3" y="58.42" rot="R90"/>
<instance part="GND18" gate="1" x="121.92" y="53.34"/>
<instance part="R22" gate="G$1" x="106.68" y="68.58"/>
<instance part="R23" gate="G$1" x="106.68" y="58.42"/>
<instance part="JP4" gate="-1" x="134.62" y="91.44"/>
<instance part="JP4" gate="-2" x="134.62" y="86.36"/>
<instance part="GND19" gate="1" x="129.54" y="81.28"/>
</instances>
<busses>
</busses>
<nets>
<net name="DM" class="0">
<segment>
<pinref part="IC1" gate="PORTA_H" pin="PA11/USB_DM"/>
<wire x1="17.78" y1="83.82" x2="15.24" y2="83.82" width="0.1524" layer="91"/>
<label x="12.7" y="83.82" size="1.778" layer="95" rot="MR0"/>
</segment>
<segment>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="139.7" y1="48.26" x2="134.62" y2="48.26" width="0.1524" layer="91"/>
<label x="134.62" y="50.8" size="1.778" layer="95" rot="MR180"/>
</segment>
</net>
<net name="DP" class="0">
<segment>
<pinref part="IC1" gate="PORTA_H" pin="PA12/USB_DP"/>
<wire x1="17.78" y1="81.28" x2="15.24" y2="81.28" width="0.1524" layer="91"/>
<label x="12.7" y="81.28" size="1.778" layer="95" rot="MR0"/>
</segment>
<segment>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="139.7" y1="40.64" x2="137.16" y2="40.64" width="0.1524" layer="91"/>
<wire x1="137.16" y1="40.64" x2="134.62" y2="40.64" width="0.1524" layer="91"/>
<wire x1="137.16" y1="40.64" x2="137.16" y2="33.02" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="137.16" y1="33.02" x2="139.7" y2="33.02" width="0.1524" layer="91"/>
<junction x="137.16" y="40.64"/>
<label x="134.62" y="43.18" size="1.778" layer="95" rot="MR180"/>
</segment>
</net>
<net name="TXD" class="0">
<segment>
<pinref part="IC1" gate="PORTA_H" pin="PA9/TX1/SCL2"/>
<wire x1="17.78" y1="88.9" x2="15.24" y2="88.9" width="0.1524" layer="91"/>
<label x="12.7" y="88.9" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="RXD" class="0">
<segment>
<pinref part="IC1" gate="PORTA_H" pin="PA10/RX1/SDA2"/>
<wire x1="17.78" y1="86.36" x2="15.24" y2="86.36" width="0.1524" layer="91"/>
<label x="12.7" y="86.36" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="NSS" class="0">
<segment>
<pinref part="IC1" gate="PORTA_H" pin="PA15/SPI1_NSS"/>
<wire x1="17.78" y1="73.66" x2="15.24" y2="73.66" width="0.1524" layer="91"/>
<label x="12.7" y="73.66" size="1.778" layer="95" rot="MR0"/>
</segment>
<segment>
<pinref part="JP1" gate="A" pin="3"/>
<wire x1="170.18" y1="86.36" x2="165.1" y2="86.36" width="0.1524" layer="91"/>
<label x="162.56" y="86.36" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="SCK" class="0">
<segment>
<pinref part="IC1" gate="PORTB_L" pin="SPI1_SCK/PB3"/>
<wire x1="60.96" y1="114.3" x2="63.5" y2="114.3" width="0.1524" layer="91"/>
<label x="66.04" y="114.3" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP1" gate="A" pin="4"/>
<wire x1="170.18" y1="83.82" x2="165.1" y2="83.82" width="0.1524" layer="91"/>
<label x="162.56" y="83.82" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="MISO" class="0">
<segment>
<pinref part="IC1" gate="PORTB_L" pin="SPI1_MISO/PB4"/>
<wire x1="60.96" y1="111.76" x2="63.5" y2="111.76" width="0.1524" layer="91"/>
<label x="66.04" y="111.76" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP1" gate="A" pin="1"/>
<wire x1="170.18" y1="91.44" x2="165.1" y2="91.44" width="0.1524" layer="91"/>
<label x="162.56" y="91.44" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="MOSI" class="0">
<segment>
<pinref part="IC1" gate="PORTB_L" pin="SPI1_MOSI/PB5"/>
<wire x1="60.96" y1="109.22" x2="63.5" y2="109.22" width="0.1524" layer="91"/>
<label x="66.04" y="109.22" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP1" gate="A" pin="2"/>
<wire x1="170.18" y1="88.9" x2="165.1" y2="88.9" width="0.1524" layer="91"/>
<label x="162.56" y="88.9" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="+3V3" class="0">
<segment>
<pinref part="IC1" gate="POWER" pin="VDD_1"/>
<wire x1="17.78" y1="30.48" x2="15.24" y2="30.48" width="0.1524" layer="91"/>
<pinref part="IC1" gate="POWER" pin="VDD_2"/>
<wire x1="15.24" y1="30.48" x2="10.16" y2="30.48" width="0.1524" layer="91"/>
<wire x1="17.78" y1="27.94" x2="15.24" y2="27.94" width="0.1524" layer="91"/>
<wire x1="15.24" y1="27.94" x2="15.24" y2="30.48" width="0.1524" layer="91"/>
<pinref part="IC1" gate="POWER" pin="VDD_3"/>
<wire x1="17.78" y1="25.4" x2="15.24" y2="25.4" width="0.1524" layer="91"/>
<wire x1="15.24" y1="25.4" x2="15.24" y2="27.94" width="0.1524" layer="91"/>
<junction x="15.24" y="30.48"/>
<junction x="15.24" y="27.94"/>
<pinref part="+3V1" gate="G$1" pin="+3V3"/>
</segment>
<segment>
<pinref part="R3" gate="G$1" pin="1"/>
<pinref part="+3V2" gate="G$1" pin="+3V3"/>
<wire x1="152.4" y1="33.02" x2="149.86" y2="33.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="+3V3" gate="G$1" pin="+3V3"/>
<wire x1="68.58" y1="25.4" x2="63.5" y2="25.4" width="0.1524" layer="91"/>
<wire x1="63.5" y1="25.4" x2="63.5" y2="22.86" width="0.1524" layer="91"/>
<pinref part="IC1" gate="AN_POWER" pin="VBAT"/>
<wire x1="63.5" y1="22.86" x2="60.96" y2="22.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="OUT"/>
<wire x1="119.38" y1="119.38" x2="132.08" y2="119.38" width="0.1524" layer="91"/>
<pinref part="+3V4" gate="G$1" pin="+3V3"/>
<pinref part="C18" gate="G$1" pin="1"/>
<wire x1="132.08" y1="119.38" x2="142.24" y2="119.38" width="0.1524" layer="91"/>
<wire x1="142.24" y1="119.38" x2="152.4" y2="119.38" width="0.1524" layer="91"/>
<wire x1="152.4" y1="119.38" x2="162.56" y2="119.38" width="0.1524" layer="91"/>
<junction x="152.4" y="119.38"/>
<pinref part="C20" gate="G$1" pin="1"/>
<junction x="132.08" y="119.38"/>
<pinref part="C21" gate="G$1" pin="1"/>
<junction x="142.24" y="119.38"/>
<pinref part="C22" gate="G$1" pin="1"/>
<wire x1="162.56" y1="119.38" x2="170.18" y2="119.38" width="0.1524" layer="91"/>
<junction x="162.56" y="119.38"/>
</segment>
<segment>
<pinref part="JP3" gate="-1" pin="S"/>
<wire x1="86.36" y1="91.44" x2="78.74" y2="91.44" width="0.1524" layer="91"/>
<pinref part="+3V5" gate="G$1" pin="+3V3"/>
</segment>
<segment>
<pinref part="BLDR" gate="1" pin="1"/>
<pinref part="+3V6" gate="G$1" pin="+3V3"/>
<wire x1="93.98" y1="33.02" x2="96.52" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="IC1" gate="POWER" pin="VSS_3"/>
<wire x1="17.78" y1="15.24" x2="15.24" y2="15.24" width="0.1524" layer="91"/>
<wire x1="15.24" y1="15.24" x2="15.24" y2="12.7" width="0.1524" layer="91"/>
<pinref part="IC1" gate="POWER" pin="VSS_2"/>
<wire x1="17.78" y1="17.78" x2="15.24" y2="17.78" width="0.1524" layer="91"/>
<wire x1="15.24" y1="17.78" x2="15.24" y2="15.24" width="0.1524" layer="91"/>
<pinref part="IC1" gate="POWER" pin="VSS_1"/>
<wire x1="17.78" y1="20.32" x2="15.24" y2="20.32" width="0.1524" layer="91"/>
<wire x1="15.24" y1="20.32" x2="15.24" y2="17.78" width="0.1524" layer="91"/>
<junction x="15.24" y="17.78"/>
<junction x="15.24" y="15.24"/>
<pinref part="GND1" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C1" gate="G$1" pin="2"/>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="66.04" y1="50.8" x2="73.66" y2="50.8" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="73.66" y1="50.8" x2="76.2" y2="50.8" width="0.1524" layer="91"/>
<wire x1="76.2" y1="50.8" x2="83.82" y2="50.8" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="4"/>
<wire x1="76.2" y1="53.34" x2="76.2" y2="50.8" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="2"/>
<wire x1="73.66" y1="53.34" x2="73.66" y2="50.8" width="0.1524" layer="91"/>
<junction x="73.66" y="50.8"/>
<junction x="76.2" y="50.8"/>
</segment>
<segment>
<pinref part="USB" gate="G$1" pin="5"/>
<wire x1="160.02" y1="40.64" x2="157.48" y2="40.64" width="0.1524" layer="91"/>
<wire x1="157.48" y1="40.64" x2="157.48" y2="33.02" width="0.1524" layer="91"/>
<pinref part="USB" gate="S" pin="S1"/>
<wire x1="157.48" y1="33.02" x2="162.56" y2="33.02" width="0.1524" layer="91"/>
<pinref part="USB" gate="S" pin="S2"/>
<wire x1="162.56" y1="33.02" x2="165.1" y2="33.02" width="0.1524" layer="91"/>
<pinref part="USB" gate="S" pin="S3"/>
<wire x1="165.1" y1="33.02" x2="167.64" y2="33.02" width="0.1524" layer="91"/>
<pinref part="USB" gate="S" pin="S4"/>
<wire x1="167.64" y1="33.02" x2="170.18" y2="33.02" width="0.1524" layer="91"/>
<pinref part="GND4" gate="1" pin="GND"/>
<junction x="162.56" y="33.02"/>
<junction x="165.1" y="33.02"/>
<junction x="167.64" y="33.02"/>
</segment>
<segment>
<pinref part="IC1" gate="AN_POWER" pin="VSSA"/>
<wire x1="60.96" y1="15.24" x2="63.5" y2="15.24" width="0.1524" layer="91"/>
<wire x1="63.5" y1="15.24" x2="63.5" y2="12.7" width="0.1524" layer="91"/>
<pinref part="GND2" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="GND"/>
<pinref part="GND10" gate="1" pin="GND"/>
<pinref part="C7" gate="G$1" pin="2"/>
<wire x1="121.92" y1="109.22" x2="109.22" y2="109.22" width="0.1524" layer="91"/>
<junction x="109.22" y="109.22"/>
<pinref part="C16" gate="G$1" pin="2"/>
<wire x1="109.22" y1="109.22" x2="88.9" y2="109.22" width="0.1524" layer="91"/>
<wire x1="88.9" y1="109.22" x2="88.9" y2="111.76" width="0.1524" layer="91"/>
<pinref part="C20" gate="G$1" pin="2"/>
<wire x1="121.92" y1="109.22" x2="132.08" y2="109.22" width="0.1524" layer="91"/>
<wire x1="132.08" y1="109.22" x2="132.08" y2="111.76" width="0.1524" layer="91"/>
<pinref part="C21" gate="G$1" pin="2"/>
<wire x1="132.08" y1="109.22" x2="142.24" y2="109.22" width="0.1524" layer="91"/>
<wire x1="142.24" y1="109.22" x2="142.24" y2="111.76" width="0.1524" layer="91"/>
<pinref part="C18" gate="G$1" pin="2"/>
<wire x1="142.24" y1="109.22" x2="152.4" y2="109.22" width="0.1524" layer="91"/>
<wire x1="152.4" y1="109.22" x2="152.4" y2="111.76" width="0.1524" layer="91"/>
<pinref part="C22" gate="G$1" pin="2"/>
<wire x1="152.4" y1="109.22" x2="162.56" y2="109.22" width="0.1524" layer="91"/>
<wire x1="162.56" y1="109.22" x2="162.56" y2="111.76" width="0.1524" layer="91"/>
<junction x="121.92" y="109.22"/>
<junction x="132.08" y="109.22"/>
<junction x="142.24" y="109.22"/>
<junction x="152.4" y="109.22"/>
</segment>
<segment>
<pinref part="C8" gate="G$1" pin="2"/>
<pinref part="GND12" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C9" gate="G$1" pin="2"/>
<pinref part="GND15" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="JP1" gate="A" pin="6"/>
<pinref part="GND16" gate="1" pin="GND"/>
<wire x1="170.18" y1="78.74" x2="165.1" y2="78.74" width="0.1524" layer="91"/>
<wire x1="165.1" y1="78.74" x2="165.1" y2="76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP3" gate="-2" pin="S"/>
<wire x1="86.36" y1="86.36" x2="83.82" y2="86.36" width="0.1524" layer="91"/>
<wire x1="83.82" y1="86.36" x2="83.82" y2="83.82" width="0.1524" layer="91"/>
<pinref part="GND14" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="R4" gate="G$1" pin="2"/>
<pinref part="GND17" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="A" gate="G$1" pin="C"/>
<wire x1="119.38" y1="68.58" x2="121.92" y2="68.58" width="0.1524" layer="91"/>
<wire x1="121.92" y1="68.58" x2="121.92" y2="58.42" width="0.1524" layer="91"/>
<pinref part="B" gate="G$1" pin="C"/>
<wire x1="121.92" y1="58.42" x2="121.92" y2="55.88" width="0.1524" layer="91"/>
<wire x1="119.38" y1="58.42" x2="121.92" y2="58.42" width="0.1524" layer="91"/>
<pinref part="GND18" gate="1" pin="GND"/>
<junction x="121.92" y="58.42"/>
</segment>
<segment>
<pinref part="JP4" gate="-2" pin="S"/>
<wire x1="132.08" y1="86.36" x2="129.54" y2="86.36" width="0.1524" layer="91"/>
<wire x1="129.54" y1="86.36" x2="129.54" y2="83.82" width="0.1524" layer="91"/>
<pinref part="GND19" gate="1" pin="GND"/>
</segment>
</net>
<net name="+3V3A" class="0">
<segment>
<pinref part="IC1" gate="AN_POWER" pin="VDDA"/>
<pinref part="+3V3A1" gate="G$1" pin="+3V3A"/>
<wire x1="60.96" y1="17.78" x2="68.58" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="IC1" gate="PORTF/OSC" pin="PF1/OSC=&gt;"/>
<pinref part="X1" gate="G$1" pin="1"/>
<wire x1="60.96" y1="58.42" x2="66.04" y2="58.42" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="66.04" y1="58.42" x2="71.12" y2="58.42" width="0.1524" layer="91"/>
<junction x="66.04" y="58.42"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="IC1" gate="PORTF/OSC" pin="PF0/OSC&lt;="/>
<wire x1="60.96" y1="60.96" x2="66.04" y2="60.96" width="0.1524" layer="91"/>
<wire x1="66.04" y1="60.96" x2="66.04" y2="68.58" width="0.1524" layer="91"/>
<wire x1="66.04" y1="68.58" x2="83.82" y2="68.58" width="0.1524" layer="91"/>
<wire x1="83.82" y1="68.58" x2="83.82" y2="58.42" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="3"/>
<wire x1="83.82" y1="58.42" x2="78.74" y2="58.42" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="1"/>
<junction x="83.82" y="58.42"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="USB" gate="G$1" pin="1"/>
<wire x1="160.02" y1="50.8" x2="157.48" y2="50.8" width="0.1524" layer="91"/>
<wire x1="157.48" y1="50.8" x2="157.48" y2="55.88" width="0.1524" layer="91"/>
<wire x1="157.48" y1="55.88" x2="154.94" y2="55.88" width="0.1524" layer="91"/>
<pinref part="L1" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="USB" gate="G$1" pin="2"/>
<wire x1="160.02" y1="48.26" x2="149.86" y2="48.26" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="USB" gate="G$1" pin="3"/>
<wire x1="160.02" y1="45.72" x2="154.94" y2="45.72" width="0.1524" layer="91"/>
<wire x1="154.94" y1="45.72" x2="154.94" y2="40.64" width="0.1524" layer="91"/>
<wire x1="154.94" y1="40.64" x2="149.86" y2="40.64" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="NR"/>
<wire x1="119.38" y1="116.84" x2="121.92" y2="116.84" width="0.1524" layer="91"/>
<pinref part="C7" gate="G$1" pin="1"/>
</segment>
</net>
<net name="VBUS" class="0">
<segment>
<pinref part="L1" gate="G$1" pin="1"/>
<wire x1="147.32" y1="55.88" x2="144.78" y2="55.88" width="0.1524" layer="91"/>
<label x="132.08" y="55.88" size="1.778" layer="95" rot="MR0"/>
<pinref part="C8" gate="G$1" pin="1"/>
<wire x1="144.78" y1="55.88" x2="137.16" y2="55.88" width="0.1524" layer="91"/>
<wire x1="137.16" y1="55.88" x2="134.62" y2="55.88" width="0.1524" layer="91"/>
<wire x1="137.16" y1="58.42" x2="137.16" y2="55.88" width="0.1524" layer="91"/>
<junction x="137.16" y="55.88"/>
<pinref part="C9" gate="G$1" pin="1"/>
<wire x1="144.78" y1="58.42" x2="144.78" y2="55.88" width="0.1524" layer="91"/>
<junction x="144.78" y="55.88"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="IN"/>
<wire x1="99.06" y1="119.38" x2="96.52" y2="119.38" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="EN"/>
<wire x1="96.52" y1="119.38" x2="88.9" y2="119.38" width="0.1524" layer="91"/>
<wire x1="88.9" y1="119.38" x2="81.28" y2="119.38" width="0.1524" layer="91"/>
<wire x1="99.06" y1="116.84" x2="96.52" y2="116.84" width="0.1524" layer="91"/>
<wire x1="96.52" y1="116.84" x2="96.52" y2="119.38" width="0.1524" layer="91"/>
<junction x="96.52" y="119.38"/>
<label x="81.28" y="121.92" size="1.778" layer="95" rot="MR180"/>
<pinref part="C16" gate="G$1" pin="1"/>
<junction x="88.9" y="119.38"/>
</segment>
</net>
<net name="ALERT" class="0">
<segment>
<pinref part="JP1" gate="A" pin="5"/>
<wire x1="170.18" y1="81.28" x2="165.1" y2="81.28" width="0.1524" layer="91"/>
<label x="162.56" y="81.28" size="1.778" layer="95" rot="MR0"/>
</segment>
<segment>
<pinref part="IC1" gate="PORTB_L" pin="PB7"/>
<wire x1="60.96" y1="104.14" x2="63.5" y2="104.14" width="0.1524" layer="91"/>
<label x="66.04" y="104.14" size="1.778" layer="95"/>
</segment>
</net>
<net name="CA" class="0">
<segment>
<pinref part="IC1" gate="PORTA_L" pin="PA2/ADC1_CH3"/>
<wire x1="17.78" y1="116.84" x2="15.24" y2="116.84" width="0.1524" layer="91"/>
<label x="12.7" y="116.84" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="BA" class="0">
<segment>
<pinref part="IC1" gate="PORTA_L" pin="PA4/ADC2_CH1"/>
<wire x1="17.78" y1="111.76" x2="15.24" y2="111.76" width="0.1524" layer="91"/>
<label x="12.7" y="111.76" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="AA" class="0">
<segment>
<pinref part="IC1" gate="PORTA_L" pin="PA3/ADC1_CH4"/>
<wire x1="17.78" y1="114.3" x2="15.24" y2="114.3" width="0.1524" layer="91"/>
<label x="12.7" y="114.3" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="DA" class="0">
<segment>
<pinref part="IC1" gate="PORTA_L" pin="PA5/ADC2_CH2"/>
<wire x1="17.78" y1="109.22" x2="15.24" y2="109.22" width="0.1524" layer="91"/>
<label x="12.7" y="109.22" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="BOOT0" class="0">
<segment>
<pinref part="IC1" gate="RESET/BOOT" pin="BOOT0"/>
<wire x1="60.96" y1="38.1" x2="63.5" y2="38.1" width="0.1524" layer="91"/>
<label x="66.04" y="38.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R4" gate="G$1" pin="1"/>
<pinref part="BLDR" gate="1" pin="2"/>
<wire x1="106.68" y1="33.02" x2="109.22" y2="33.02" width="0.1524" layer="91"/>
<wire x1="109.22" y1="33.02" x2="111.76" y2="33.02" width="0.1524" layer="91"/>
<wire x1="109.22" y1="33.02" x2="109.22" y2="45.72" width="0.1524" layer="91"/>
<junction x="109.22" y="33.02"/>
<label x="106.68" y="45.72" size="1.778" layer="95" rot="R270"/>
</segment>
</net>
<net name="TRG" class="0">
<segment>
<pinref part="IC1" gate="PORTB_L" pin="TIM8_CH1/PB6"/>
<wire x1="60.96" y1="106.68" x2="63.5" y2="106.68" width="0.1524" layer="91"/>
<label x="66.04" y="106.68" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP4" gate="-1" pin="S"/>
<wire x1="132.08" y1="91.44" x2="129.54" y2="91.44" width="0.1524" layer="91"/>
<label x="127" y="91.44" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="LEDA" class="0">
<segment>
<pinref part="IC1" gate="PORTB_L" pin="TIM3_CH3/PB0"/>
<wire x1="60.96" y1="121.92" x2="63.5" y2="121.92" width="0.1524" layer="91"/>
<label x="66.04" y="121.92" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R22" gate="G$1" pin="1"/>
<wire x1="101.6" y1="68.58" x2="99.06" y2="68.58" width="0.1524" layer="91"/>
<label x="96.52" y="68.58" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="LEDB" class="0">
<segment>
<pinref part="IC1" gate="PORTB_L" pin="TIM3_CH4/PB1"/>
<wire x1="60.96" y1="119.38" x2="63.5" y2="119.38" width="0.1524" layer="91"/>
<label x="66.04" y="119.38" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R23" gate="G$1" pin="1"/>
<wire x1="101.6" y1="58.42" x2="99.06" y2="58.42" width="0.1524" layer="91"/>
<label x="96.52" y="58.42" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="A" gate="G$1" pin="A"/>
<pinref part="R22" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="B" gate="G$1" pin="A"/>
<pinref part="R23" gate="G$1" pin="2"/>
</segment>
</net>
</nets>
</sheet>
<sheet>
<plain>
<text x="40.64" y="121.92" size="1.778" layer="97">8kHz anti-aliasing filter</text>
</plain>
<instances>
<instance part="FRAME2" gate="G$1" x="0" y="0"/>
<instance part="IC7" gate="G$1" x="99.06" y="106.68"/>
<instance part="GND37" gate="1" x="83.82" y="96.52"/>
<instance part="L4" gate="G$1" x="101.6" y="121.92"/>
<instance part="R27" gate="G$1" x="111.76" y="93.98" rot="R270"/>
<instance part="R28" gate="G$1" x="142.24" y="93.98" rot="R270"/>
<instance part="R29" gate="G$1" x="124.46" y="109.22" rot="R270"/>
<instance part="R30" gate="G$1" x="142.24" y="109.22" rot="R270"/>
<instance part="GND38" gate="1" x="111.76" y="86.36"/>
<instance part="C33" gate="G$1" x="132.08" y="109.22"/>
<instance part="C34" gate="G$1" x="149.86" y="104.14"/>
<instance part="C35" gate="G$1" x="83.82" y="109.22"/>
<instance part="U1" gate="_2" x="25.4" y="114.3"/>
<instance part="U1" gate="_1" x="25.4" y="83.82"/>
<instance part="U2" gate="_2" x="25.4" y="53.34"/>
<instance part="U2" gate="_1" x="25.4" y="22.86"/>
<instance part="R5" gate="G$1" x="25.4" y="124.46"/>
<instance part="R6" gate="G$1" x="35.56" y="91.44" rot="R270"/>
<instance part="R7" gate="G$1" x="25.4" y="63.5"/>
<instance part="R8" gate="G$1" x="35.56" y="30.48" rot="R270"/>
<instance part="R9" gate="G$1" x="12.7" y="116.84" rot="R90"/>
<instance part="R10" gate="G$1" x="12.7" y="86.36" rot="R90"/>
<instance part="R11" gate="G$1" x="12.7" y="55.88" rot="R90"/>
<instance part="R12" gate="G$1" x="12.7" y="25.4" rot="R90"/>
<instance part="R13" gate="G$1" x="40.64" y="114.3"/>
<instance part="R14" gate="G$1" x="40.64" y="83.82"/>
<instance part="R15" gate="G$1" x="40.64" y="53.34"/>
<instance part="R16" gate="G$1" x="40.64" y="22.86"/>
<instance part="R17" gate="G$1" x="12.7" y="106.68" rot="R270"/>
<instance part="R18" gate="G$1" x="12.7" y="76.2" rot="R270"/>
<instance part="R19" gate="G$1" x="12.7" y="45.72" rot="R270"/>
<instance part="R20" gate="G$1" x="12.7" y="15.24" rot="R270"/>
<instance part="C3" gate="G$1" x="45.72" y="109.22"/>
<instance part="C4" gate="G$1" x="45.72" y="78.74"/>
<instance part="C5" gate="G$1" x="45.72" y="48.26"/>
<instance part="C6" gate="G$1" x="45.72" y="17.78"/>
<instance part="GND5" gate="1" x="12.7" y="99.06"/>
<instance part="GND6" gate="1" x="12.7" y="68.58"/>
<instance part="GND7" gate="1" x="12.7" y="7.62"/>
<instance part="GND8" gate="1" x="12.7" y="38.1"/>
<instance part="5A+1" gate="1" x="27.94" y="91.44" rot="R270"/>
<instance part="5A+2" gate="1" x="27.94" y="30.48" rot="R270"/>
<instance part="GND11" gate="1" x="88.9" y="30.48"/>
<instance part="5A+3" gate="1" x="137.16" y="48.26" rot="R270"/>
<instance part="JP2" gate="-1" x="170.18" y="78.74"/>
<instance part="JP2" gate="-2" x="170.18" y="53.34"/>
<instance part="JP2" gate="-3" x="170.18" y="73.66"/>
<instance part="JP2" gate="-4" x="170.18" y="48.26"/>
<instance part="JP2" gate="-5" x="170.18" y="68.58"/>
<instance part="JP2" gate="-6" x="170.18" y="43.18"/>
<instance part="JP2" gate="-7" x="170.18" y="63.5"/>
<instance part="JP2" gate="-8" x="170.18" y="38.1"/>
<instance part="JP2" gate="-9" x="170.18" y="58.42"/>
<instance part="JP2" gate="-10" x="170.18" y="33.02"/>
<instance part="GND13" gate="1" x="162.56" y="27.94"/>
<instance part="C10" gate="G$1" x="106.68" y="43.18"/>
<instance part="C11" gate="G$1" x="116.84" y="43.18"/>
<instance part="SUPPLY1" gate="G$1" x="172.72" y="121.92"/>
<instance part="SUPPLY2" gate="G$1" x="73.66" y="53.34"/>
<instance part="IC4" gate="G$1" x="88.9" y="45.72"/>
<instance part="L2" gate="G$1" x="154.94" y="114.3"/>
<instance part="C12" gate="G$1" x="162.56" y="104.14"/>
<instance part="C13" gate="G$1" x="172.72" y="104.14"/>
<instance part="C14" gate="G$1" x="127" y="43.18"/>
<instance part="R21" gate="G$1" x="157.48" y="124.46"/>
<instance part="D2" gate="G$1" x="116.84" y="114.3"/>
<instance part="GND9" gate="1" x="93.98" y="60.96"/>
<instance part="+3V3A2" gate="G$1" x="129.54" y="73.66" rot="R270"/>
<instance part="IC2" gate="G$1" x="93.98" y="68.58"/>
<instance part="C17" gate="G$1" x="73.66" y="71.12"/>
<instance part="C19" gate="G$1" x="109.22" y="71.12"/>
<instance part="C23" gate="G$1" x="119.38" y="71.12"/>
<instance part="5A+4" gate="1" x="73.66" y="81.28"/>
<instance part="L3" gate="G$1" x="76.2" y="114.3"/>
<instance part="C15" gate="G$1" x="66.04" y="109.22"/>
<instance part="JP5" gate="G$1" x="73.66" y="22.86"/>
<instance part="GND20" gate="1" x="66.04" y="17.78"/>
<instance part="SUPPLY3" gate="G$1" x="63.5" y="25.4" rot="R90"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="IC7" gate="G$1" pin="GND"/>
<pinref part="GND37" gate="1" pin="GND"/>
<wire x1="88.9" y1="101.6" x2="83.82" y2="101.6" width="0.1524" layer="91"/>
<wire x1="83.82" y1="101.6" x2="83.82" y2="99.06" width="0.1524" layer="91"/>
<pinref part="C35" gate="G$1" pin="2"/>
<wire x1="83.82" y1="104.14" x2="83.82" y2="101.6" width="0.1524" layer="91"/>
<junction x="83.82" y="101.6"/>
<pinref part="C15" gate="G$1" pin="2"/>
<wire x1="66.04" y1="104.14" x2="66.04" y2="101.6" width="0.1524" layer="91"/>
<wire x1="66.04" y1="101.6" x2="83.82" y2="101.6" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R27" gate="G$1" pin="2"/>
<pinref part="GND38" gate="1" pin="GND"/>
<pinref part="R28" gate="G$1" pin="2"/>
<wire x1="142.24" y1="88.9" x2="111.76" y2="88.9" width="0.1524" layer="91"/>
<junction x="111.76" y="88.9"/>
<pinref part="C34" gate="G$1" pin="2"/>
<wire x1="149.86" y1="99.06" x2="149.86" y2="88.9" width="0.1524" layer="91"/>
<wire x1="149.86" y1="88.9" x2="142.24" y2="88.9" width="0.1524" layer="91"/>
<junction x="142.24" y="88.9"/>
<pinref part="C12" gate="G$1" pin="2"/>
<wire x1="149.86" y1="88.9" x2="162.56" y2="88.9" width="0.1524" layer="91"/>
<wire x1="162.56" y1="88.9" x2="162.56" y2="99.06" width="0.1524" layer="91"/>
<junction x="149.86" y="88.9"/>
<pinref part="C13" gate="G$1" pin="2"/>
<wire x1="162.56" y1="88.9" x2="172.72" y2="88.9" width="0.1524" layer="91"/>
<wire x1="172.72" y1="88.9" x2="172.72" y2="99.06" width="0.1524" layer="91"/>
<junction x="162.56" y="88.9"/>
</segment>
<segment>
<pinref part="GND5" gate="1" pin="GND"/>
<pinref part="R17" gate="G$1" pin="2"/>
<pinref part="C3" gate="G$1" pin="2"/>
<wire x1="45.72" y1="101.6" x2="45.72" y2="104.14" width="0.1524" layer="91"/>
<wire x1="45.72" y1="101.6" x2="12.7" y2="101.6" width="0.1524" layer="91"/>
<junction x="12.7" y="101.6"/>
</segment>
<segment>
<pinref part="R18" gate="G$1" pin="2"/>
<pinref part="GND6" gate="1" pin="GND"/>
<pinref part="U1" gate="_1" pin="V-"/>
<wire x1="22.86" y1="76.2" x2="22.86" y2="71.12" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="2"/>
<wire x1="22.86" y1="71.12" x2="45.72" y2="71.12" width="0.1524" layer="91"/>
<wire x1="45.72" y1="71.12" x2="45.72" y2="73.66" width="0.1524" layer="91"/>
<wire x1="22.86" y1="71.12" x2="12.7" y2="71.12" width="0.1524" layer="91"/>
<junction x="12.7" y="71.12"/>
<junction x="22.86" y="71.12"/>
</segment>
<segment>
<pinref part="R19" gate="G$1" pin="2"/>
<pinref part="GND8" gate="1" pin="GND"/>
<pinref part="C5" gate="G$1" pin="2"/>
<wire x1="45.72" y1="40.64" x2="45.72" y2="43.18" width="0.1524" layer="91"/>
<wire x1="45.72" y1="40.64" x2="12.7" y2="40.64" width="0.1524" layer="91"/>
<junction x="12.7" y="40.64"/>
</segment>
<segment>
<pinref part="R20" gate="G$1" pin="2"/>
<pinref part="GND7" gate="1" pin="GND"/>
<pinref part="U2" gate="_1" pin="V-"/>
<wire x1="22.86" y1="10.16" x2="22.86" y2="15.24" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="2"/>
<wire x1="45.72" y1="12.7" x2="45.72" y2="10.16" width="0.1524" layer="91"/>
<wire x1="45.72" y1="10.16" x2="22.86" y2="10.16" width="0.1524" layer="91"/>
<wire x1="22.86" y1="10.16" x2="12.7" y2="10.16" width="0.1524" layer="91"/>
<junction x="12.7" y="10.16"/>
<junction x="22.86" y="10.16"/>
</segment>
<segment>
<pinref part="GND11" gate="1" pin="GND"/>
<pinref part="C10" gate="G$1" pin="2"/>
<wire x1="88.9" y1="33.02" x2="106.68" y2="33.02" width="0.1524" layer="91"/>
<wire x1="106.68" y1="33.02" x2="106.68" y2="38.1" width="0.1524" layer="91"/>
<pinref part="C11" gate="G$1" pin="2"/>
<wire x1="106.68" y1="33.02" x2="116.84" y2="33.02" width="0.1524" layer="91"/>
<wire x1="116.84" y1="33.02" x2="116.84" y2="38.1" width="0.1524" layer="91"/>
<junction x="106.68" y="33.02"/>
<pinref part="IC4" gate="G$1" pin="GND"/>
<junction x="88.9" y="33.02"/>
<pinref part="C14" gate="G$1" pin="2"/>
<wire x1="116.84" y1="33.02" x2="127" y2="33.02" width="0.1524" layer="91"/>
<wire x1="127" y1="33.02" x2="127" y2="38.1" width="0.1524" layer="91"/>
<junction x="116.84" y="33.02"/>
</segment>
<segment>
<pinref part="JP2" gate="-1" pin="S"/>
<pinref part="GND13" gate="1" pin="GND"/>
<wire x1="165.1" y1="78.74" x2="162.56" y2="78.74" width="0.1524" layer="91"/>
<wire x1="162.56" y1="78.74" x2="162.56" y2="68.58" width="0.1524" layer="91"/>
<pinref part="JP2" gate="-2" pin="S"/>
<wire x1="162.56" y1="68.58" x2="162.56" y2="58.42" width="0.1524" layer="91"/>
<wire x1="162.56" y1="58.42" x2="162.56" y2="53.34" width="0.1524" layer="91"/>
<wire x1="162.56" y1="53.34" x2="162.56" y2="43.18" width="0.1524" layer="91"/>
<wire x1="162.56" y1="43.18" x2="162.56" y2="33.02" width="0.1524" layer="91"/>
<wire x1="162.56" y1="33.02" x2="162.56" y2="30.48" width="0.1524" layer="91"/>
<wire x1="165.1" y1="53.34" x2="162.56" y2="53.34" width="0.1524" layer="91"/>
<pinref part="JP2" gate="-5" pin="S"/>
<wire x1="165.1" y1="68.58" x2="162.56" y2="68.58" width="0.1524" layer="91"/>
<pinref part="JP2" gate="-6" pin="S"/>
<wire x1="165.1" y1="43.18" x2="162.56" y2="43.18" width="0.1524" layer="91"/>
<pinref part="JP2" gate="-9" pin="S"/>
<wire x1="165.1" y1="58.42" x2="162.56" y2="58.42" width="0.1524" layer="91"/>
<pinref part="JP2" gate="-10" pin="S"/>
<wire x1="165.1" y1="33.02" x2="162.56" y2="33.02" width="0.1524" layer="91"/>
<junction x="162.56" y="33.02"/>
<junction x="162.56" y="43.18"/>
<junction x="162.56" y="53.34"/>
<junction x="162.56" y="58.42"/>
<junction x="162.56" y="68.58"/>
</segment>
<segment>
<pinref part="GND9" gate="1" pin="GND"/>
<pinref part="IC2" gate="G$1" pin="GND"/>
<pinref part="C17" gate="G$1" pin="2"/>
<wire x1="73.66" y1="66.04" x2="73.66" y2="63.5" width="0.1524" layer="91"/>
<wire x1="73.66" y1="63.5" x2="93.98" y2="63.5" width="0.1524" layer="91"/>
<junction x="93.98" y="63.5"/>
<pinref part="C19" gate="G$1" pin="2"/>
<wire x1="109.22" y1="66.04" x2="109.22" y2="63.5" width="0.1524" layer="91"/>
<wire x1="93.98" y1="63.5" x2="109.22" y2="63.5" width="0.1524" layer="91"/>
<pinref part="C23" gate="G$1" pin="2"/>
<wire x1="109.22" y1="63.5" x2="119.38" y2="63.5" width="0.1524" layer="91"/>
<wire x1="119.38" y1="63.5" x2="119.38" y2="66.04" width="0.1524" layer="91"/>
<junction x="109.22" y="63.5"/>
</segment>
<segment>
<pinref part="JP5" gate="G$1" pin="2"/>
<wire x1="71.12" y1="22.86" x2="66.04" y2="22.86" width="0.1524" layer="91"/>
<wire x1="66.04" y1="22.86" x2="66.04" y2="20.32" width="0.1524" layer="91"/>
<pinref part="GND20" gate="1" pin="GND"/>
</segment>
</net>
<net name="SW" class="0">
<segment>
<pinref part="IC7" gate="G$1" pin="SW"/>
<wire x1="114.3" y1="114.3" x2="111.76" y2="114.3" width="0.1524" layer="91"/>
<pinref part="L4" gate="G$1" pin="2"/>
<wire x1="111.76" y1="114.3" x2="109.22" y2="114.3" width="0.1524" layer="91"/>
<wire x1="106.68" y1="121.92" x2="111.76" y2="121.92" width="0.1524" layer="91"/>
<wire x1="111.76" y1="121.92" x2="111.76" y2="114.3" width="0.1524" layer="91"/>
<junction x="111.76" y="114.3"/>
<pinref part="D2" gate="G$1" pin="A"/>
</segment>
</net>
<net name="OVP" class="0">
<segment>
<pinref part="R29" gate="G$1" pin="2"/>
<pinref part="IC7" gate="G$1" pin="OVP"/>
<wire x1="109.22" y1="104.14" x2="111.76" y2="104.14" width="0.1524" layer="91"/>
<pinref part="R27" gate="G$1" pin="1"/>
<wire x1="111.76" y1="104.14" x2="124.46" y2="104.14" width="0.1524" layer="91"/>
<wire x1="111.76" y1="99.06" x2="111.76" y2="104.14" width="0.1524" layer="91"/>
<junction x="111.76" y="104.14"/>
</segment>
</net>
<net name="FB" class="0">
<segment>
<pinref part="R30" gate="G$1" pin="2"/>
<pinref part="R28" gate="G$1" pin="1"/>
<wire x1="142.24" y1="104.14" x2="142.24" y2="101.6" width="0.1524" layer="91"/>
<wire x1="142.24" y1="101.6" x2="142.24" y2="99.06" width="0.1524" layer="91"/>
<junction x="142.24" y="101.6"/>
<pinref part="C33" gate="G$1" pin="2"/>
<wire x1="132.08" y1="101.6" x2="142.24" y2="101.6" width="0.1524" layer="91"/>
<wire x1="132.08" y1="104.14" x2="132.08" y2="101.6" width="0.1524" layer="91"/>
<pinref part="IC7" gate="G$1" pin="FB"/>
<wire x1="109.22" y1="101.6" x2="132.08" y2="101.6" width="0.1524" layer="91"/>
<junction x="132.08" y="101.6"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U1" gate="_2" pin="OUT"/>
<pinref part="R13" gate="G$1" pin="1"/>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="35.56" y1="114.3" x2="33.02" y2="114.3" width="0.1524" layer="91"/>
<wire x1="30.48" y1="124.46" x2="35.56" y2="124.46" width="0.1524" layer="91"/>
<wire x1="35.56" y1="124.46" x2="35.56" y2="114.3" width="0.1524" layer="91"/>
<junction x="35.56" y="114.3"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="U1" gate="_1" pin="OUT"/>
<pinref part="R14" gate="G$1" pin="1"/>
<pinref part="R6" gate="G$1" pin="2"/>
<wire x1="35.56" y1="83.82" x2="33.02" y2="83.82" width="0.1524" layer="91"/>
<wire x1="35.56" y1="86.36" x2="35.56" y2="83.82" width="0.1524" layer="91"/>
<junction x="35.56" y="83.82"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="U2" gate="_2" pin="OUT"/>
<pinref part="R15" gate="G$1" pin="1"/>
<pinref part="R7" gate="G$1" pin="2"/>
<wire x1="35.56" y1="53.34" x2="33.02" y2="53.34" width="0.1524" layer="91"/>
<wire x1="30.48" y1="63.5" x2="35.56" y2="63.5" width="0.1524" layer="91"/>
<wire x1="35.56" y1="63.5" x2="35.56" y2="53.34" width="0.1524" layer="91"/>
<junction x="35.56" y="53.34"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="U2" gate="_1" pin="OUT"/>
<pinref part="R16" gate="G$1" pin="1"/>
<pinref part="R8" gate="G$1" pin="2"/>
<wire x1="35.56" y1="22.86" x2="33.02" y2="22.86" width="0.1524" layer="91"/>
<wire x1="35.56" y1="25.4" x2="35.56" y2="22.86" width="0.1524" layer="91"/>
<junction x="35.56" y="22.86"/>
</segment>
</net>
<net name="DA" class="0">
<segment>
<pinref part="R14" gate="G$1" pin="2"/>
<pinref part="C4" gate="G$1" pin="1"/>
<wire x1="45.72" y1="83.82" x2="48.26" y2="83.82" width="0.1524" layer="91"/>
<wire x1="45.72" y1="81.28" x2="45.72" y2="83.82" width="0.1524" layer="91"/>
<junction x="45.72" y="83.82"/>
<label x="50.8" y="83.82" size="1.778" layer="95"/>
</segment>
</net>
<net name="CA" class="0">
<segment>
<pinref part="R16" gate="G$1" pin="2"/>
<pinref part="C6" gate="G$1" pin="1"/>
<wire x1="45.72" y1="22.86" x2="48.26" y2="22.86" width="0.1524" layer="91"/>
<wire x1="45.72" y1="20.32" x2="45.72" y2="22.86" width="0.1524" layer="91"/>
<junction x="45.72" y="22.86"/>
<label x="50.8" y="22.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="BA" class="0">
<segment>
<pinref part="R15" gate="G$1" pin="2"/>
<pinref part="C5" gate="G$1" pin="1"/>
<wire x1="45.72" y1="53.34" x2="48.26" y2="53.34" width="0.1524" layer="91"/>
<wire x1="45.72" y1="50.8" x2="45.72" y2="53.34" width="0.1524" layer="91"/>
<junction x="45.72" y="53.34"/>
<label x="50.8" y="53.34" size="1.778" layer="95"/>
</segment>
</net>
<net name="AA" class="0">
<segment>
<pinref part="R13" gate="G$1" pin="2"/>
<pinref part="C3" gate="G$1" pin="1"/>
<wire x1="45.72" y1="114.3" x2="48.26" y2="114.3" width="0.1524" layer="91"/>
<wire x1="45.72" y1="111.76" x2="45.72" y2="114.3" width="0.1524" layer="91"/>
<junction x="45.72" y="114.3"/>
<label x="50.8" y="114.3" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="U1" gate="_2" pin="-IN"/>
<wire x1="17.78" y1="116.84" x2="17.78" y2="124.46" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="17.78" y1="124.46" x2="20.32" y2="124.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="U2" gate="_2" pin="-IN"/>
<wire x1="17.78" y1="55.88" x2="17.78" y2="63.5" width="0.1524" layer="91"/>
<pinref part="R7" gate="G$1" pin="1"/>
<wire x1="17.78" y1="63.5" x2="20.32" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="R8" gate="G$1" pin="1"/>
<wire x1="35.56" y1="35.56" x2="17.78" y2="35.56" width="0.1524" layer="91"/>
<wire x1="17.78" y1="35.56" x2="17.78" y2="25.4" width="0.1524" layer="91"/>
<pinref part="U2" gate="_1" pin="-IN"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="R6" gate="G$1" pin="1"/>
<wire x1="35.56" y1="96.52" x2="17.78" y2="96.52" width="0.1524" layer="91"/>
<wire x1="17.78" y1="96.52" x2="17.78" y2="86.36" width="0.1524" layer="91"/>
<pinref part="U1" gate="_1" pin="-IN"/>
</segment>
</net>
<net name="A" class="0">
<segment>
<pinref part="R9" gate="G$1" pin="2"/>
<wire x1="12.7" y1="121.92" x2="10.16" y2="121.92" width="0.1524" layer="91"/>
<label x="7.62" y="121.92" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP2" gate="-8" pin="S"/>
<wire x1="165.1" y1="38.1" x2="160.02" y2="38.1" width="0.1524" layer="91"/>
<label x="157.48" y="38.1" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="B" class="0">
<segment>
<pinref part="R11" gate="G$1" pin="2"/>
<wire x1="12.7" y1="60.96" x2="10.16" y2="60.96" width="0.1524" layer="91"/>
<label x="7.62" y="60.96" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP2" gate="-3" pin="S"/>
<wire x1="165.1" y1="73.66" x2="160.02" y2="73.66" width="0.1524" layer="91"/>
<label x="157.48" y="73.66" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="C" class="0">
<segment>
<pinref part="R12" gate="G$1" pin="2"/>
<wire x1="12.7" y1="30.48" x2="10.16" y2="30.48" width="0.1524" layer="91"/>
<label x="7.62" y="30.48" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP2" gate="-4" pin="S"/>
<wire x1="165.1" y1="48.26" x2="160.02" y2="48.26" width="0.1524" layer="91"/>
<label x="157.48" y="48.26" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="D" class="0">
<segment>
<pinref part="R10" gate="G$1" pin="2"/>
<wire x1="12.7" y1="91.44" x2="10.16" y2="91.44" width="0.1524" layer="91"/>
<label x="7.62" y="91.44" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP2" gate="-7" pin="S"/>
<wire x1="165.1" y1="63.5" x2="160.02" y2="63.5" width="0.1524" layer="91"/>
<label x="157.48" y="63.5" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="R9" gate="G$1" pin="1"/>
<pinref part="R17" gate="G$1" pin="1"/>
<pinref part="U1" gate="_2" pin="+IN"/>
<wire x1="17.78" y1="111.76" x2="12.7" y2="111.76" width="0.1524" layer="91"/>
<junction x="12.7" y="111.76"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="R10" gate="G$1" pin="1"/>
<pinref part="R18" gate="G$1" pin="1"/>
<pinref part="U1" gate="_1" pin="+IN"/>
<wire x1="17.78" y1="81.28" x2="12.7" y2="81.28" width="0.1524" layer="91"/>
<junction x="12.7" y="81.28"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="R11" gate="G$1" pin="1"/>
<pinref part="R19" gate="G$1" pin="1"/>
<pinref part="U2" gate="_2" pin="+IN"/>
<wire x1="17.78" y1="50.8" x2="12.7" y2="50.8" width="0.1524" layer="91"/>
<junction x="12.7" y="50.8"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="R12" gate="G$1" pin="1"/>
<pinref part="R20" gate="G$1" pin="1"/>
<pinref part="U2" gate="_1" pin="+IN"/>
<wire x1="17.78" y1="20.32" x2="12.7" y2="20.32" width="0.1524" layer="91"/>
<junction x="12.7" y="20.32"/>
</segment>
</net>
<net name="+5VA" class="0">
<segment>
<pinref part="U1" gate="_1" pin="V+"/>
<pinref part="5A+1" gate="1" pin="+5VA"/>
<wire x1="25.4" y1="91.44" x2="22.86" y2="91.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U2" gate="_1" pin="V+"/>
<pinref part="5A+2" gate="1" pin="+5VA"/>
<wire x1="25.4" y1="30.48" x2="22.86" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="99.06" y1="48.26" x2="101.6" y2="48.26" width="0.1524" layer="91"/>
<wire x1="101.6" y1="48.26" x2="106.68" y2="48.26" width="0.1524" layer="91"/>
<wire x1="106.68" y1="48.26" x2="116.84" y2="48.26" width="0.1524" layer="91"/>
<wire x1="116.84" y1="48.26" x2="127" y2="48.26" width="0.1524" layer="91"/>
<wire x1="127" y1="48.26" x2="134.62" y2="48.26" width="0.1524" layer="91"/>
<wire x1="99.06" y1="45.72" x2="101.6" y2="45.72" width="0.1524" layer="91"/>
<wire x1="101.6" y1="45.72" x2="101.6" y2="48.26" width="0.1524" layer="91"/>
<junction x="101.6" y="48.26"/>
<pinref part="5A+3" gate="1" pin="+5VA"/>
<pinref part="C10" gate="G$1" pin="1"/>
<wire x1="106.68" y1="45.72" x2="106.68" y2="48.26" width="0.1524" layer="91"/>
<pinref part="C11" gate="G$1" pin="1"/>
<wire x1="116.84" y1="45.72" x2="116.84" y2="48.26" width="0.1524" layer="91"/>
<junction x="106.68" y="48.26"/>
<junction x="116.84" y="48.26"/>
<pinref part="IC4" gate="G$1" pin="OUT"/>
<pinref part="IC4" gate="G$1" pin="SENSE"/>
<pinref part="C14" gate="G$1" pin="1"/>
<wire x1="127" y1="45.72" x2="127" y2="48.26" width="0.1524" layer="91"/>
<junction x="127" y="48.26"/>
</segment>
<segment>
<wire x1="83.82" y1="73.66" x2="81.28" y2="73.66" width="0.1524" layer="91"/>
<wire x1="81.28" y1="73.66" x2="73.66" y2="73.66" width="0.1524" layer="91"/>
<wire x1="73.66" y1="73.66" x2="73.66" y2="78.74" width="0.1524" layer="91"/>
<wire x1="83.82" y1="71.12" x2="81.28" y2="71.12" width="0.1524" layer="91"/>
<wire x1="81.28" y1="71.12" x2="81.28" y2="73.66" width="0.1524" layer="91"/>
<junction x="81.28" y="73.66"/>
<pinref part="IC2" gate="G$1" pin="IN"/>
<pinref part="IC2" gate="G$1" pin="EN"/>
<pinref part="C17" gate="G$1" pin="1"/>
<junction x="73.66" y="73.66"/>
<pinref part="5A+4" gate="1" pin="+5VA"/>
</segment>
</net>
<net name="+9V" class="0">
<segment>
<pinref part="SUPPLY1" gate="G$1" pin="+9V"/>
<pinref part="L2" gate="G$1" pin="2"/>
<pinref part="C12" gate="G$1" pin="1"/>
<wire x1="160.02" y1="114.3" x2="162.56" y2="114.3" width="0.1524" layer="91"/>
<wire x1="162.56" y1="114.3" x2="162.56" y2="106.68" width="0.1524" layer="91"/>
<wire x1="162.56" y1="114.3" x2="172.72" y2="114.3" width="0.1524" layer="91"/>
<wire x1="172.72" y1="114.3" x2="172.72" y2="119.38" width="0.1524" layer="91"/>
<junction x="162.56" y="114.3"/>
<pinref part="C13" gate="G$1" pin="1"/>
<wire x1="172.72" y1="106.68" x2="172.72" y2="114.3" width="0.1524" layer="91"/>
<junction x="172.72" y="114.3"/>
<pinref part="R21" gate="G$1" pin="2"/>
<wire x1="162.56" y1="124.46" x2="162.56" y2="114.3" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="78.74" y1="48.26" x2="73.66" y2="48.26" width="0.1524" layer="91"/>
<wire x1="73.66" y1="48.26" x2="73.66" y2="50.8" width="0.1524" layer="91"/>
<wire x1="78.74" y1="45.72" x2="73.66" y2="45.72" width="0.1524" layer="91"/>
<wire x1="73.66" y1="45.72" x2="73.66" y2="48.26" width="0.1524" layer="91"/>
<junction x="73.66" y="48.26"/>
<pinref part="SUPPLY2" gate="G$1" pin="+9V"/>
<pinref part="IC4" gate="G$1" pin="IN"/>
<pinref part="IC4" gate="G$1" pin="EN"/>
</segment>
<segment>
<pinref part="JP5" gate="G$1" pin="1"/>
<wire x1="71.12" y1="25.4" x2="66.04" y2="25.4" width="0.1524" layer="91"/>
<pinref part="SUPPLY3" gate="G$1" pin="+9V"/>
</segment>
</net>
<net name="+9VRAW" class="0">
<segment>
<pinref part="R30" gate="G$1" pin="1"/>
<wire x1="132.08" y1="114.3" x2="142.24" y2="114.3" width="0.1524" layer="91"/>
<wire x1="142.24" y1="114.3" x2="149.86" y2="114.3" width="0.1524" layer="91"/>
<junction x="142.24" y="114.3"/>
<pinref part="C33" gate="G$1" pin="1"/>
<wire x1="132.08" y1="114.3" x2="132.08" y2="111.76" width="0.1524" layer="91"/>
<pinref part="C34" gate="G$1" pin="1"/>
<wire x1="149.86" y1="106.68" x2="149.86" y2="114.3" width="0.1524" layer="91"/>
<wire x1="119.38" y1="114.3" x2="124.46" y2="114.3" width="0.1524" layer="91"/>
<junction x="132.08" y="114.3"/>
<wire x1="124.46" y1="114.3" x2="132.08" y2="114.3" width="0.1524" layer="91"/>
<pinref part="R29" gate="G$1" pin="1"/>
<junction x="124.46" y="114.3"/>
<pinref part="L2" gate="G$1" pin="1"/>
<wire x1="149.86" y1="114.3" x2="152.4" y2="114.3" width="0.1524" layer="91"/>
<junction x="149.86" y="114.3"/>
<wire x1="149.86" y1="114.3" x2="149.86" y2="124.46" width="0.1524" layer="91"/>
<pinref part="R21" gate="G$1" pin="1"/>
<wire x1="149.86" y1="124.46" x2="152.4" y2="124.46" width="0.1524" layer="91"/>
<pinref part="D2" gate="G$1" pin="C"/>
</segment>
</net>
<net name="+3V3A" class="0">
<segment>
<pinref part="+3V3A2" gate="G$1" pin="+3V3A"/>
<pinref part="C23" gate="G$1" pin="1"/>
<wire x1="119.38" y1="73.66" x2="127" y2="73.66" width="0.1524" layer="91"/>
<pinref part="C19" gate="G$1" pin="1"/>
<pinref part="IC2" gate="G$1" pin="OUT"/>
<wire x1="104.14" y1="73.66" x2="109.22" y2="73.66" width="0.1524" layer="91"/>
<junction x="109.22" y="73.66"/>
<wire x1="109.22" y1="73.66" x2="119.38" y2="73.66" width="0.1524" layer="91"/>
<junction x="119.38" y="73.66"/>
</segment>
</net>
<net name="VBUS" class="0">
<segment>
<pinref part="L3" gate="G$1" pin="1"/>
<wire x1="73.66" y1="114.3" x2="66.04" y2="114.3" width="0.1524" layer="91"/>
<pinref part="C15" gate="G$1" pin="1"/>
<wire x1="66.04" y1="114.3" x2="58.42" y2="114.3" width="0.1524" layer="91"/>
<wire x1="66.04" y1="111.76" x2="66.04" y2="114.3" width="0.1524" layer="91"/>
<junction x="66.04" y="114.3"/>
<label x="66.04" y="116.84" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="VIN" class="0">
<segment>
<pinref part="IC7" gate="G$1" pin="EN"/>
<wire x1="88.9" y1="111.76" x2="83.82" y2="111.76" width="0.1524" layer="91"/>
<wire x1="83.82" y1="111.76" x2="83.82" y2="114.3" width="0.1524" layer="91"/>
<pinref part="IC7" gate="G$1" pin="VIN"/>
<wire x1="83.82" y1="114.3" x2="81.28" y2="114.3" width="0.1524" layer="91"/>
<wire x1="88.9" y1="114.3" x2="83.82" y2="114.3" width="0.1524" layer="91"/>
<junction x="83.82" y="114.3"/>
<wire x1="83.82" y1="114.3" x2="83.82" y2="121.92" width="0.1524" layer="91"/>
<pinref part="L4" gate="G$1" pin="1"/>
<wire x1="83.82" y1="121.92" x2="99.06" y2="121.92" width="0.1524" layer="91"/>
<pinref part="C35" gate="G$1" pin="1"/>
<junction x="83.82" y="111.76"/>
<pinref part="L3" gate="G$1" pin="2"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, Eagle supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
</compatibility>
</eagle>
