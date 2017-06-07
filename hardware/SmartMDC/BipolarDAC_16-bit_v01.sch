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
<library name="SmartMDC">
<packages>
<package name="TSSOP16">
<smd name="1" x="-2.275" y="-3" dx="1.2" dy="0.35" layer="1" rot="R90"/>
<smd name="2" x="-1.625" y="-3" dx="1.2" dy="0.35" layer="1" rot="R90"/>
<smd name="3" x="-0.975" y="-3" dx="1.2" dy="0.35" layer="1" rot="R90"/>
<smd name="4" x="-0.325" y="-3" dx="1.2" dy="0.35" layer="1" rot="R90"/>
<smd name="5" x="0.325" y="-3" dx="1.2" dy="0.35" layer="1" rot="R90"/>
<smd name="6" x="0.975" y="-3" dx="1.2" dy="0.35" layer="1" rot="R90"/>
<smd name="7" x="1.625" y="-3" dx="1.2" dy="0.35" layer="1" rot="R90"/>
<smd name="8" x="2.275" y="-3" dx="1.2" dy="0.35" layer="1" rot="R90"/>
<smd name="9" x="2.275" y="3" dx="1.2" dy="0.35" layer="1" rot="R90"/>
<smd name="10" x="1.625" y="3" dx="1.2" dy="0.35" layer="1" rot="R90"/>
<smd name="11" x="0.975" y="3" dx="1.2" dy="0.35" layer="1" rot="R90"/>
<smd name="12" x="0.325" y="3" dx="1.2" dy="0.35" layer="1" rot="R90"/>
<smd name="13" x="-0.325" y="3" dx="1.2" dy="0.35" layer="1" rot="R90"/>
<smd name="14" x="-0.975" y="3" dx="1.2" dy="0.35" layer="1" rot="R90"/>
<smd name="15" x="-1.625" y="3" dx="1.2" dy="0.35" layer="1" rot="R90"/>
<smd name="16" x="-2.275" y="3" dx="1.2" dy="0.35" layer="1" rot="R90"/>
<wire x1="-2.5" y1="-2.2" x2="-2.5" y2="2.2" width="0.127" layer="21"/>
<wire x1="-2.5" y1="2.2" x2="2.5" y2="2.2" width="0.127" layer="21"/>
<wire x1="2.5" y1="2.2" x2="2.5" y2="-2.2" width="0.127" layer="21"/>
<wire x1="2.5" y1="-2.2" x2="-2.5" y2="-2.2" width="0.127" layer="21"/>
<rectangle x1="-0.45" y1="-3.2" x2="-0.2" y2="-2.2" layer="51"/>
<rectangle x1="-1.1" y1="-3.2" x2="-0.85" y2="-2.2" layer="51"/>
<rectangle x1="-1.75" y1="-3.2" x2="-1.5" y2="-2.2" layer="51"/>
<rectangle x1="-2.4" y1="-3.2" x2="-2.15" y2="-2.2" layer="51"/>
<rectangle x1="0.2" y1="-3.2" x2="0.45" y2="-2.2" layer="51"/>
<rectangle x1="0.85" y1="-3.2" x2="1.1" y2="-2.2" layer="51"/>
<rectangle x1="1.5" y1="-3.2" x2="1.75" y2="-2.2" layer="51"/>
<rectangle x1="2.15" y1="-3.2" x2="2.4" y2="-2.2" layer="51"/>
<rectangle x1="-2.4" y1="2.2" x2="-2.15" y2="3.2" layer="51"/>
<rectangle x1="-1.75" y1="2.2" x2="-1.5" y2="3.2" layer="51"/>
<rectangle x1="-1.1" y1="2.2" x2="-0.85" y2="3.2" layer="51"/>
<rectangle x1="-0.45" y1="2.2" x2="-0.2" y2="3.2" layer="51"/>
<rectangle x1="0.2" y1="2.2" x2="0.45" y2="3.2" layer="51"/>
<rectangle x1="0.85" y1="2.2" x2="1.1" y2="3.2" layer="51"/>
<rectangle x1="1.5" y1="2.2" x2="1.75" y2="3.2" layer="51"/>
<rectangle x1="2.15" y1="2.2" x2="2.4" y2="3.2" layer="51"/>
<circle x="-1.9" y="-1.6" radius="0.3048" width="0" layer="21"/>
<text x="-2.54" y="4.064" size="0.8128" layer="25">&gt;NAME</text>
<text x="-2.54" y="-4.953" size="0.8128" layer="27">&gt;VALUE</text>
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
<package name="7395-03">
<description>&lt;b&gt;MOLEX 2.54mm KK RA CONNECTOR&lt;/b&gt;
&lt;br&gt;Fixed Orientation</description>
<wire x1="3.81" y1="-5.08" x2="3.81" y2="-1.905" width="0.254" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.175" y2="-1.905" width="0.254" layer="21"/>
<wire x1="3.175" y1="-1.905" x2="3.175" y2="-2.54" width="0.254" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="1.905" y2="-2.54" width="0.254" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="1.905" y2="-1.905" width="0.254" layer="21"/>
<wire x1="1.905" y1="-1.905" x2="0.635" y2="-1.905" width="0.254" layer="21"/>
<wire x1="0.635" y1="-1.905" x2="0.635" y2="-2.54" width="0.254" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="-0.635" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="-0.635" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-0.635" y1="-1.905" x2="-1.905" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-1.905" y1="-1.905" x2="-1.905" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-3.175" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-3.175" y1="-2.54" x2="-3.175" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-3.175" y1="-1.905" x2="-3.81" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-3.81" y2="-5.08" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-5.08" x2="-2.921" y2="-5.08" width="0.254" layer="21"/>
<wire x1="-2.921" y1="-5.08" x2="2.54" y2="-5.08" width="0.127" layer="21"/>
<wire x1="2.54" y1="-5.08" x2="3.81" y2="-5.08" width="0.254" layer="21"/>
<wire x1="2.54" y1="-5.08" x2="2.54" y2="-13.081" width="0.254" layer="21"/>
<wire x1="2.54" y1="-13.081" x2="2.286" y2="-13.589" width="0.254" layer="21"/>
<wire x1="2.286" y1="-13.589" x2="-1.3208" y2="-13.589" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-5.08" x2="-2.54" y2="-13.081" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-13.081" x2="-2.286" y2="-13.589" width="0.254" layer="21"/>
<wire x1="-2.286" y1="-13.589" x2="-1.2192" y2="-13.589" width="0.254" layer="21"/>
<wire x1="0" y1="-5.08" x2="-0.381" y2="-5.08" width="0.254" layer="51"/>
<wire x1="-2.921" y1="-5.08" x2="-2.921" y2="-11.303" width="0.254" layer="21"/>
<wire x1="-2.921" y1="-11.303" x2="-2.5908" y2="-11.6586" width="0.254" layer="21"/>
<wire x1="2.921" y1="-5.08" x2="2.921" y2="-11.303" width="0.254" layer="21"/>
<wire x1="2.921" y1="-11.303" x2="2.5908" y2="-11.6586" width="0.254" layer="21"/>
<pad name="1" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="3.9101" y="2.9479" size="1.016" layer="25" ratio="10" rot="R180">&gt;NAME</text>
<text x="2.0559" y="-3.4021" size="1.27" layer="21" ratio="14" rot="R270">1</text>
<text x="-2.9733" y="-3.2751" size="1.27" layer="21" ratio="14" rot="R270">3</text>
<text x="4.6721" y="-2.4399" size="0.8128" layer="27" ratio="10" rot="R270">&gt;VALUE</text>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-2.5146" x2="2.794" y2="-0.2794" layer="51"/>
<rectangle x1="-0.254" y1="-2.5146" x2="0.254" y2="-0.2794" layer="51"/>
<rectangle x1="-2.794" y1="-2.5146" x2="-2.286" y2="-0.2794" layer="51"/>
</package>
<package name="6410-03">
<description>&lt;b&gt;MOLEX 2.54mm KK  CONNECTOR&lt;/b&gt;</description>
<wire x1="3.81" y1="2.921" x2="-3.81" y2="2.921" width="0.254" layer="21"/>
<wire x1="-3.81" y1="2.921" x2="-3.81" y2="-2.921" width="0.254" layer="21"/>
<wire x1="3.81" y1="2.921" x2="3.81" y2="-2.921" width="0.254" layer="21"/>
<wire x1="3.81" y1="-2.921" x2="-3.81" y2="-2.921" width="0.254" layer="21"/>
<wire x1="-3.175" y1="-2.921" x2="-3.175" y2="-2.286" width="0.254" layer="21"/>
<wire x1="-3.175" y1="-2.286" x2="-1.905" y2="-2.286" width="0.254" layer="21"/>
<wire x1="-1.905" y1="-2.286" x2="-1.905" y2="-2.921" width="0.254" layer="21"/>
<wire x1="-0.635" y1="-2.921" x2="-0.635" y2="-2.286" width="0.254" layer="21"/>
<wire x1="-0.635" y1="-2.286" x2="0.635" y2="-2.286" width="0.254" layer="21"/>
<wire x1="0.635" y1="-2.286" x2="0.635" y2="-2.921" width="0.254" layer="21"/>
<wire x1="1.905" y1="-2.921" x2="1.905" y2="-2.286" width="0.254" layer="21"/>
<wire x1="1.905" y1="-2.286" x2="3.175" y2="-2.286" width="0.254" layer="21"/>
<wire x1="3.175" y1="-2.286" x2="3.175" y2="-2.921" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-2.54" y2="2.921" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="2.54" y2="1.905" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.905" x2="2.54" y2="2.921" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-2.286" y2="1.397" width="0.254" layer="21"/>
<wire x1="-2.286" y1="1.397" x2="2.286" y2="1.397" width="0.254" layer="21"/>
<wire x1="2.286" y1="1.397" x2="2.54" y2="1.905" width="0.254" layer="21"/>
<pad name="3" x="-2.54" y="0" drill="1" shape="octagon" rot="R90"/>
<pad name="2" x="0" y="0" drill="1" shape="octagon" rot="R90"/>
<pad name="1" x="2.54" y="0" drill="1" shape="square" rot="R90"/>
<text x="-3.81" y="3.302" size="0.8128" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-4.191" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
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
<package name="MSOP8">
<smd name="1" x="-0.975" y="-2.3" dx="1.2" dy="0.35" layer="1" rot="R90"/>
<smd name="2" x="-0.325" y="-2.3" dx="1.2" dy="0.35" layer="1" rot="R90"/>
<smd name="3" x="0.325" y="-2.3" dx="1.2" dy="0.35" layer="1" rot="R90"/>
<smd name="4" x="0.975" y="-2.3" dx="1.2" dy="0.35" layer="1" rot="R90"/>
<smd name="5" x="0.975" y="2.3" dx="1.2" dy="0.35" layer="1" rot="R90"/>
<smd name="6" x="0.325" y="2.3" dx="1.2" dy="0.35" layer="1" rot="R90"/>
<smd name="7" x="-0.325" y="2.3" dx="1.2" dy="0.35" layer="1" rot="R90"/>
<smd name="8" x="-0.975" y="2.3" dx="1.2" dy="0.35" layer="1" rot="R90"/>
<wire x1="-1.5" y1="1.5" x2="1.5" y2="1.5" width="0.127" layer="21"/>
<wire x1="1.5" y1="1.5" x2="1.5" y2="-1.5" width="0.127" layer="21"/>
<wire x1="1.5" y1="-1.5" x2="-1.5" y2="-1.5" width="0.127" layer="21"/>
<wire x1="-1.5" y1="-1.5" x2="-1.5" y2="1.5" width="0.127" layer="21"/>
<circle x="-1" y="-1" radius="0.3" width="0" layer="21"/>
<rectangle x1="-1.125" y1="1.5" x2="-0.825" y2="2.45" layer="51"/>
<rectangle x1="-0.475" y1="1.5" x2="-0.175" y2="2.45" layer="51"/>
<rectangle x1="0.175" y1="1.5" x2="0.475" y2="2.45" layer="51"/>
<rectangle x1="0.825" y1="1.5" x2="1.125" y2="2.45" layer="51"/>
<rectangle x1="-1.125" y1="-2.45" x2="-0.825" y2="-1.5" layer="51"/>
<rectangle x1="-0.475" y1="-2.45" x2="-0.175" y2="-1.5" layer="51"/>
<rectangle x1="0.175" y1="-2.45" x2="0.475" y2="-1.5" layer="51"/>
<rectangle x1="0.825" y1="-2.45" x2="1.125" y2="-1.5" layer="51"/>
<text x="-2.032" y="-2.032" size="0.8128" layer="25" rot="R90">&gt;NAME</text>
<text x="2.794" y="-2.286" size="0.8128" layer="27" rot="R90">&gt;VALUE</text>
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
<package name="BNC">
<description>Fits Mouser Part#5227161</description>
<wire x1="7.493" y1="-5.9718" x2="7.493" y2="-5.969" width="0.127" layer="21"/>
<wire x1="7.493" y1="-5.969" x2="7.493" y2="6.8712" width="0.127" layer="21"/>
<wire x1="7.493" y1="6.8712" x2="-7.493" y2="6.8712" width="0.127" layer="21"/>
<wire x1="-7.493" y1="6.8712" x2="-7.493" y2="-5.969" width="0.127" layer="21"/>
<wire x1="-7.493" y1="-5.969" x2="-7.493" y2="-5.9718" width="0.127" layer="21"/>
<wire x1="-7.112" y1="6.8712" x2="-7.112" y2="15.8882" width="0.127" layer="51"/>
<wire x1="-7.112" y1="15.8882" x2="-6.604" y2="15.8882" width="0.127" layer="51"/>
<wire x1="-6.604" y1="15.8882" x2="6.604" y2="15.8882" width="0.127" layer="51"/>
<wire x1="6.604" y1="15.8882" x2="7.0866" y2="15.8882" width="0.127" layer="51"/>
<wire x1="7.0866" y1="15.8882" x2="7.112" y2="15.8882" width="0.127" layer="51"/>
<wire x1="7.112" y1="15.8882" x2="7.112" y2="6.8712" width="0.127" layer="51"/>
<wire x1="6.604" y1="15.8882" x2="6.604" y2="29.7312" width="0.127" layer="51"/>
<wire x1="6.604" y1="29.7312" x2="-6.604" y2="29.7312" width="0.127" layer="51"/>
<wire x1="-6.604" y1="29.7312" x2="-6.604" y2="15.8882" width="0.127" layer="51"/>
<wire x1="-7.0866" y1="13.7546" x2="7.0866" y2="14.6182" width="0.127" layer="51"/>
<wire x1="-7.0866" y1="12.4846" x2="7.0866" y2="13.3482" width="0.127" layer="51"/>
<wire x1="-7.0866" y1="11.2146" x2="7.0866" y2="12.0782" width="0.127" layer="51"/>
<wire x1="-7.0866" y1="9.9446" x2="7.0866" y2="10.8082" width="0.127" layer="51"/>
<wire x1="-7.0866" y1="8.6746" x2="7.0866" y2="9.5382" width="0.127" layer="51"/>
<wire x1="-7.0866" y1="7.4046" x2="7.0866" y2="8.2682" width="0.127" layer="51"/>
<wire x1="-7.0866" y1="15.0246" x2="7.0866" y2="15.8882" width="0.127" layer="51"/>
<circle x="0" y="26.48" radius="0.8179" width="0.127" layer="51"/>
<pad name="GND" x="-2.54" y="-6" drill="0.8" shape="long" rot="R90"/>
<pad name="S" x="0" y="-6" drill="0.8" shape="long" rot="R90"/>
<pad name="3" x="-5" y="0" drill="2"/>
<pad name="4" x="5" y="0" drill="2"/>
<text x="-6.35" y="4.89" size="0.4064" layer="25">&gt;NAME</text>
<text x="-6.35" y="3.62" size="0.4064" layer="27" rot="SR0">&gt;VALUE</text>
<wire x1="-7.493" y1="-5.969" x2="-3.683" y2="-5.969" width="0.127" layer="21"/>
<wire x1="7.493" y1="-5.969" x2="1.143" y2="-5.969" width="0.127" layer="21"/>
<wire x1="-3.683" y1="-5.969" x2="1.143" y2="-5.969" width="0.127" layer="51"/>
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
</packages>
<symbols>
<symbol name="AD5761R">
<wire x1="-10.16" y1="17.78" x2="10.16" y2="17.78" width="0.254" layer="94"/>
<wire x1="10.16" y1="17.78" x2="10.16" y2="-17.78" width="0.254" layer="94"/>
<wire x1="10.16" y1="-17.78" x2="-10.16" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-17.78" x2="-10.16" y2="17.78" width="0.254" layer="94"/>
<pin name="!ALERT" x="-12.7" y="15.24" length="short" direction="out" function="dot"/>
<pin name="!CLEAR" x="-12.7" y="12.7" length="short" direction="in" function="dot"/>
<pin name="!RESET" x="-12.7" y="10.16" length="short" direction="in" function="dot"/>
<pin name="VREFIO" x="-12.7" y="-15.24" length="short"/>
<pin name="!LDAC" x="-12.7" y="7.62" length="short" direction="in" function="dot"/>
<pin name="!SYNC" x="-12.7" y="2.54" length="short" direction="in" function="dot"/>
<pin name="SDI" x="-12.7" y="-2.54" length="short" direction="in"/>
<pin name="SCLK" x="-12.7" y="-5.08" length="short" direction="in"/>
<pin name="SDO" x="-12.7" y="0" length="short" direction="out"/>
<pin name="DGND" x="12.7" y="-15.24" length="short" direction="pwr" rot="R180"/>
<pin name="DVCC" x="12.7" y="-10.16" length="short" direction="pwr" rot="R180"/>
<pin name="VOUT" x="12.7" y="15.24" length="short" direction="out" rot="R180"/>
<pin name="VSS" x="12.7" y="-2.54" length="short" direction="pwr" rot="R180"/>
<pin name="AGND" x="12.7" y="2.54" length="short" direction="pwr" rot="R180"/>
<pin name="VDD" x="12.7" y="7.62" length="short" direction="pwr" rot="R180"/>
<text x="-10.16" y="18.542" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-20.32" size="1.778" layer="96">&gt;VALUE</text>
<pin name="EXT_CAP" x="-12.7" y="-10.16" length="short" direction="out"/>
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
<symbol name="ADP1720">
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
<symbol name="ADR45XX">
<description>&lt;H1&gt;ANALOG DEVICES&lt;/H1&gt;
&lt;b&gt;Ultralow Noise, High Accuracy Voltage References&lt;/b&gt;</description>
<wire x1="-7.62" y1="5.08" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<pin name="IN" x="-10.16" y="2.54" length="short" direction="pwr"/>
<pin name="OUT" x="10.16" y="2.54" length="short" direction="pwr" rot="R180"/>
<pin name="GND" x="0" y="-7.62" visible="off" length="short" direction="pwr" rot="R90"/>
<text x="-2.032" y="-3.302" size="1.524" layer="97">GND</text>
<text x="-7.62" y="8.382" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="5.842" size="1.778" layer="96">&gt;VALUE</text>
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
<symbol name="BNC">
<circle x="0" y="0" radius="2.54" width="0.254" layer="94"/>
<circle x="0" y="0" radius="0.5679" width="0.254" layer="94"/>
<text x="-2.54" y="5.08" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="2.54" size="1.778" layer="96">&gt;VALUE</text>
<text x="0" y="-2.54" size="1.778" layer="94" rot="MR180">GND</text>
<text x="2.54" y="0" size="1.778" layer="94">OUT</text>
<pin name="OUT" x="5.08" y="0" visible="off" length="middle" rot="R180"/>
<pin name="GND" x="0" y="-5.08" visible="off" length="short" rot="R90"/>
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
</symbols>
<devicesets>
<deviceset name="AD5761R" prefix="IC">
<description>&lt;b&gt;Multiple Range, 16-/12-Bit, Bipolar/Unipolar Voltage Output DACs with 2 ppm/°C Reference&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="AD5761R" x="0" y="0"/>
</gates>
<devices>
<device name="BRUZ" package="TSSOP16">
<connects>
<connect gate="G$1" pin="!ALERT" pad="1"/>
<connect gate="G$1" pin="!CLEAR" pad="2"/>
<connect gate="G$1" pin="!LDAC" pad="11"/>
<connect gate="G$1" pin="!RESET" pad="3"/>
<connect gate="G$1" pin="!SYNC" pad="13"/>
<connect gate="G$1" pin="AGND" pad="5"/>
<connect gate="G$1" pin="DGND" pad="16"/>
<connect gate="G$1" pin="DVCC" pad="15"/>
<connect gate="G$1" pin="EXT_CAP" pad="9"/>
<connect gate="G$1" pin="SCLK" pad="14"/>
<connect gate="G$1" pin="SDI" pad="12"/>
<connect gate="G$1" pin="SDO" pad="10"/>
<connect gate="G$1" pin="VDD" pad="8"/>
<connect gate="G$1" pin="VOUT" pad="7"/>
<connect gate="G$1" pin="VREFIO" pad="4"/>
<connect gate="G$1" pin="VSS" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="FB_" prefix="L">
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
<deviceset name="22-?-03" prefix="J">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
wire to board 2.54 mm (.1 inch) pitch header</description>
<gates>
<gate name="-1" symbol="MV-1" x="0" y="5.08" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M-1" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-3" symbol="M-1" x="0" y="-5.08" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="05-7038" package="7395-03">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
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
<device name="27-2031" package="6410-03">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
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
<deviceset name="ADP1720" prefix="IC">
<description>&lt;h1&gt;ANALOG DEVICES&lt;/h1&gt;
&lt;b&gt;50 mA, High Voltage, Micropower Linear Regulator&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="ADP1720" x="0" y="-2.54"/>
</gates>
<devices>
<device name="ARMZ-5-R7" package="MSOP8">
<connects>
<connect gate="G$1" pin="EN" pad="4"/>
<connect gate="G$1" pin="GND" pad="1 5 6 7 8"/>
<connect gate="G$1" pin="IN" pad="2"/>
<connect gate="G$1" pin="OUT" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ADR45*" prefix="IC">
<description>&lt;h1&gt;ANALOG DEVICES&lt;/h1&gt;
&lt;b&gt;Ultralow Noise, High Accuracy Voltage References&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="ADR45XX" x="0" y="0"/>
</gates>
<devices>
<device name="20BRZ" package="SOIC-8">
<connects>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="IN" pad="2"/>
<connect gate="G$1" pin="OUT" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="25BRZ" package="SOIC-8">
<connects>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="IN" pad="2"/>
<connect gate="G$1" pin="OUT" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="30BRZ" package="SOIC-8">
<connects>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="IN" pad="2"/>
<connect gate="G$1" pin="OUT" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="33BRZ" package="SOIC-8">
<connects>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="IN" pad="2"/>
<connect gate="G$1" pin="OUT" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="40BRZ" package="SOIC-8">
<connects>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="IN" pad="2"/>
<connect gate="G$1" pin="OUT" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="50BRZ" package="SOIC-8">
<connects>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="IN" pad="2"/>
<connect gate="G$1" pin="OUT" pad="6"/>
</connects>
<technologies>
<technology name=""/>
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
<deviceset name="BNC">
<description>BNC Connector, Mouser Part# 5227161</description>
<gates>
<gate name="G$1" symbol="BNC" x="0" y="0"/>
</gates>
<devices>
<device name="PTH" package="BNC">
<connects>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="OUT" pad="S"/>
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
<symbol name="VCC" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="VDD" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.27" y1="-1.905" x2="0" y2="1.27" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VDD" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="VSS" library_version="1">
<wire x1="-1.27" y1="1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="1.27" y2="1.905" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="1.27" y2="1.905" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.905" x2="0" y2="-1.27" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VSS" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="GND" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VCC" prefix="P+" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VDD" prefix="VDD" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VDD" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VSS" prefix="VSS" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VSS" x="0" y="0"/>
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
<part name="IC1" library="SmartMDC" deviceset="AD5761R" device="BRUZ"/>
<part name="P+1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="VDD1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="VSS1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="VDD2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="VSS2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="BD1" library="SmartMDC" deviceset="FB_" device="0805" value="600ohm"/>
<part name="BD2" library="SmartMDC" deviceset="FB_" device="0805" value="600ohm"/>
<part name="BD3" library="SmartMDC" deviceset="FB_" device="0805" value="600ohm"/>
<part name="P+2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="C1" library="SmartMDC" deviceset="C_EU_" device="C0603G" value="100n"/>
<part name="C2" library="SmartMDC" deviceset="C_EU_" device="C0603G" value="100n"/>
<part name="C3" library="SmartMDC" deviceset="C_EU_" device="C0402G" value="100n"/>
<part name="C4" library="SmartMDC" deviceset="C_EU_" device="C0805G" value="10uX10V"/>
<part name="JP2" library="SmartMDC" deviceset="22-?-03" device="27-2031"/>
<part name="JP3" library="SmartMDC" deviceset="22-?-02" device="27-2021" value="22-27-2021-02"/>
<part name="GND4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="C7" library="SmartMDC" deviceset="C_EU_" device="C0603G" value="100n"/>
<part name="C8" library="SmartMDC" deviceset="C_EU_" device="C0603G" value="100n"/>
<part name="C9" library="SmartMDC" deviceset="C_EU_" device="C0402G" value="100n"/>
<part name="C5" library="SmartMDC" deviceset="C_EU_" device="C1206G" value="10uX25V"/>
<part name="C6" library="SmartMDC" deviceset="C_EU_" device="C1206G" value="10uX25V"/>
<part name="IC2" library="SmartMDC" deviceset="ADP1720" device="ARMZ-5-R7"/>
<part name="VDD3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="C10" library="SmartMDC" deviceset="C_EU_" device="C1206G" value="10uX25V"/>
<part name="C11" library="SmartMDC" deviceset="C_EU_" device="C0603G" value="100n"/>
<part name="C12" library="SmartMDC" deviceset="C_EU_" device="C0603G" value="1uX25V"/>
<part name="IC3" library="SmartMDC" deviceset="ADR45*" device="25BRZ"/>
<part name="C13" library="SmartMDC" deviceset="C_EU_" device="C0603G" value="1u"/>
<part name="C14" library="SmartMDC" deviceset="C_EU_" device="C0603G" value="100n"/>
<part name="R1" library="SmartMDC" deviceset="R_EU_" device="R0603G" value="10K"/>
<part name="P+3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="BNC1" library="SmartMDC" deviceset="BNC" device="PTH"/>
<part name="C15" library="SmartMDC" deviceset="C_EU_" device="C0603G" value="10n"/>
<part name="GND3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="JP1" library="SmartMDC" deviceset="PINHD-1X6" device=""/>
<part name="J1" library="SmartMDC" deviceset="SJ" device="S"/>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="A5L-LOC" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND7" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND9" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC1" gate="G$1" x="50.8" y="66.04"/>
<instance part="P+1" gate="VCC" x="73.66" y="55.88" rot="R270"/>
<instance part="VDD1" gate="G$1" x="78.74" y="73.66" rot="R270"/>
<instance part="VSS1" gate="G$1" x="78.74" y="63.5" rot="R90"/>
<instance part="GND1" gate="1" x="68.58" y="50.8" rot="R90"/>
<instance part="VDD2" gate="G$1" x="109.22" y="66.04" rot="R90"/>
<instance part="VSS2" gate="G$1" x="109.22" y="40.64" rot="R270"/>
<instance part="BD1" gate="G$1" x="149.86" y="66.04"/>
<instance part="BD2" gate="G$1" x="149.86" y="40.64"/>
<instance part="BD3" gate="G$1" x="152.4" y="91.44"/>
<instance part="P+2" gate="VCC" x="109.22" y="91.44" rot="R90"/>
<instance part="C1" gate="G$1" x="142.24" y="60.96"/>
<instance part="C2" gate="G$1" x="142.24" y="45.72" rot="R180"/>
<instance part="C3" gate="G$1" x="142.24" y="86.36"/>
<instance part="C4" gate="G$1" x="129.54" y="86.36"/>
<instance part="JP2" gate="-1" x="162.56" y="58.42"/>
<instance part="JP2" gate="-2" x="162.56" y="53.34"/>
<instance part="JP2" gate="-3" x="162.56" y="48.26"/>
<instance part="JP3" gate="-1" x="162.56" y="91.44"/>
<instance part="JP3" gate="-2" x="162.56" y="86.36"/>
<instance part="GND4" gate="1" x="142.24" y="76.2"/>
<instance part="C7" gate="G$1" x="116.84" y="60.96"/>
<instance part="C8" gate="G$1" x="116.84" y="45.72" rot="R180"/>
<instance part="C9" gate="G$1" x="116.84" y="86.36"/>
<instance part="C5" gate="G$1" x="129.54" y="60.96"/>
<instance part="C6" gate="G$1" x="129.54" y="45.72" rot="R180"/>
<instance part="IC2" gate="G$1" x="114.3" y="111.76"/>
<instance part="VDD3" gate="G$1" x="60.96" y="116.84" rot="R90"/>
<instance part="C10" gate="G$1" x="68.58" y="111.76"/>
<instance part="C11" gate="G$1" x="93.98" y="111.76"/>
<instance part="C12" gate="G$1" x="81.28" y="111.76"/>
<instance part="IC3" gate="G$1" x="142.24" y="114.3"/>
<instance part="C13" gate="G$1" x="127" y="111.76"/>
<instance part="C14" gate="G$1" x="154.94" y="111.76"/>
<instance part="R1" gate="G$1" x="58.42" y="25.4"/>
<instance part="P+3" gate="VCC" x="68.58" y="25.4" rot="R270"/>
<instance part="BNC1" gate="G$1" x="20.32" y="20.32"/>
<instance part="C15" gate="G$1" x="20.32" y="53.34"/>
<instance part="GND3" gate="1" x="30.48" y="96.52"/>
<instance part="GND5" gate="1" x="20.32" y="73.66" rot="R270"/>
<instance part="JP1" gate="A" x="40.64" y="106.68"/>
<instance part="J1" gate="1" x="162.56" y="116.84"/>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="GND2" gate="1" x="114.3" y="101.6"/>
<instance part="GND6" gate="1" x="109.22" y="53.34" rot="R270"/>
<instance part="GND7" gate="1" x="20.32" y="12.7"/>
<instance part="GND8" gate="1" x="20.32" y="45.72"/>
<instance part="GND9" gate="1" x="68.58" y="68.58" rot="R90"/>
</instances>
<busses>
</busses>
<nets>
<net name="NSS" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="!SYNC"/>
<wire x1="38.1" y1="68.58" x2="35.56" y2="68.58" width="0.1524" layer="91"/>
<label x="33.02" y="68.58" size="1.778" layer="95" rot="MR0"/>
</segment>
<segment>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="53.34" y1="25.4" x2="50.8" y2="25.4" width="0.1524" layer="91"/>
<label x="48.26" y="25.4" size="1.778" layer="95" rot="MR0"/>
</segment>
<segment>
<wire x1="38.1" y1="109.22" x2="30.48" y2="109.22" width="0.1524" layer="91"/>
<label x="27.94" y="109.22" size="1.778" layer="95" rot="MR0"/>
<pinref part="JP1" gate="A" pin="3"/>
</segment>
</net>
<net name="MISO" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="SDO"/>
<wire x1="38.1" y1="66.04" x2="35.56" y2="66.04" width="0.1524" layer="91"/>
<label x="33.02" y="66.04" size="1.778" layer="95" rot="MR0"/>
</segment>
<segment>
<wire x1="38.1" y1="114.3" x2="30.48" y2="114.3" width="0.1524" layer="91"/>
<label x="27.94" y="114.3" size="1.778" layer="95" rot="MR0"/>
<pinref part="JP1" gate="A" pin="1"/>
</segment>
</net>
<net name="MOSI" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="SDI"/>
<wire x1="38.1" y1="63.5" x2="35.56" y2="63.5" width="0.1524" layer="91"/>
<label x="33.02" y="63.5" size="1.778" layer="95" rot="MR0"/>
</segment>
<segment>
<wire x1="38.1" y1="111.76" x2="30.48" y2="111.76" width="0.1524" layer="91"/>
<label x="27.94" y="111.76" size="1.778" layer="95" rot="MR0"/>
<pinref part="JP1" gate="A" pin="2"/>
</segment>
</net>
<net name="SCLK" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="SCLK"/>
<wire x1="38.1" y1="60.96" x2="35.56" y2="60.96" width="0.1524" layer="91"/>
<label x="33.02" y="60.96" size="1.778" layer="95" rot="MR0"/>
</segment>
<segment>
<wire x1="38.1" y1="106.68" x2="30.48" y2="106.68" width="0.1524" layer="91"/>
<label x="27.94" y="106.68" size="1.778" layer="95" rot="MR0"/>
<pinref part="JP1" gate="A" pin="4"/>
</segment>
</net>
<net name="ALERT" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="!ALERT"/>
<wire x1="38.1" y1="81.28" x2="35.56" y2="81.28" width="0.1524" layer="91"/>
<label x="33.02" y="81.28" size="1.778" layer="95" rot="MR0"/>
</segment>
<segment>
<wire x1="38.1" y1="104.14" x2="30.48" y2="104.14" width="0.1524" layer="91"/>
<label x="27.94" y="104.14" size="1.778" layer="95" rot="MR0"/>
<pinref part="JP1" gate="A" pin="5"/>
</segment>
</net>
<net name="VREF" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="VREFIO"/>
<wire x1="38.1" y1="50.8" x2="35.56" y2="50.8" width="0.1524" layer="91"/>
<label x="33.02" y="50.8" size="1.778" layer="95" rot="MR0"/>
</segment>
<segment>
<pinref part="J1" gate="1" pin="2"/>
<wire x1="167.64" y1="116.84" x2="170.18" y2="116.84" width="0.1524" layer="91"/>
<label x="172.72" y="116.84" size="1.778" layer="95"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="DGND"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="63.5" y1="50.8" x2="66.04" y2="50.8" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="142.24" y1="78.74" x2="129.54" y2="78.74" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="2"/>
<wire x1="129.54" y1="81.28" x2="129.54" y2="78.74" width="0.1524" layer="91"/>
<pinref part="C3" gate="G$1" pin="2"/>
<wire x1="142.24" y1="81.28" x2="142.24" y2="78.74" width="0.1524" layer="91"/>
<pinref part="C9" gate="G$1" pin="2"/>
<wire x1="116.84" y1="81.28" x2="116.84" y2="78.74" width="0.1524" layer="91"/>
<wire x1="116.84" y1="78.74" x2="129.54" y2="78.74" width="0.1524" layer="91"/>
<junction x="129.54" y="78.74"/>
<pinref part="GND4" gate="1" pin="GND"/>
<junction x="142.24" y="78.74"/>
<pinref part="JP3" gate="-2" pin="S"/>
<wire x1="160.02" y1="86.36" x2="157.48" y2="86.36" width="0.1524" layer="91"/>
<wire x1="142.24" y1="78.74" x2="157.48" y2="78.74" width="0.1524" layer="91"/>
<wire x1="157.48" y1="78.74" x2="157.48" y2="86.36" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="38.1" y1="101.6" x2="30.48" y2="101.6" width="0.1524" layer="91"/>
<wire x1="30.48" y1="101.6" x2="30.48" y2="99.06" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="6"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="!LDAC"/>
<pinref part="GND5" gate="1" pin="GND"/>
<wire x1="38.1" y1="73.66" x2="22.86" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC2" gate="G$1" pin="GND"/>
<wire x1="114.3" y1="104.14" x2="114.3" y2="106.68" width="0.1524" layer="91"/>
<pinref part="C10" gate="G$1" pin="2"/>
<wire x1="68.58" y1="106.68" x2="68.58" y2="104.14" width="0.1524" layer="91"/>
<wire x1="68.58" y1="104.14" x2="81.28" y2="104.14" width="0.1524" layer="91"/>
<pinref part="C11" gate="G$1" pin="2"/>
<wire x1="81.28" y1="104.14" x2="93.98" y2="104.14" width="0.1524" layer="91"/>
<wire x1="93.98" y1="104.14" x2="114.3" y2="104.14" width="0.1524" layer="91"/>
<wire x1="93.98" y1="106.68" x2="93.98" y2="104.14" width="0.1524" layer="91"/>
<junction x="93.98" y="104.14"/>
<junction x="114.3" y="104.14"/>
<pinref part="C12" gate="G$1" pin="2"/>
<wire x1="81.28" y1="106.68" x2="81.28" y2="104.14" width="0.1524" layer="91"/>
<junction x="81.28" y="104.14"/>
<pinref part="IC3" gate="G$1" pin="GND"/>
<wire x1="114.3" y1="104.14" x2="127" y2="104.14" width="0.1524" layer="91"/>
<wire x1="127" y1="104.14" x2="142.24" y2="104.14" width="0.1524" layer="91"/>
<wire x1="142.24" y1="104.14" x2="142.24" y2="106.68" width="0.1524" layer="91"/>
<pinref part="C13" gate="G$1" pin="2"/>
<wire x1="127" y1="106.68" x2="127" y2="104.14" width="0.1524" layer="91"/>
<junction x="127" y="104.14"/>
<pinref part="C14" gate="G$1" pin="2"/>
<wire x1="154.94" y1="106.68" x2="154.94" y2="104.14" width="0.1524" layer="91"/>
<wire x1="154.94" y1="104.14" x2="142.24" y2="104.14" width="0.1524" layer="91"/>
<junction x="142.24" y="104.14"/>
<pinref part="GND2" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="2"/>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="142.24" y1="50.8" x2="142.24" y2="53.34" width="0.1524" layer="91"/>
<wire x1="142.24" y1="53.34" x2="142.24" y2="55.88" width="0.1524" layer="91"/>
<junction x="142.24" y="53.34"/>
<wire x1="129.54" y1="55.88" x2="129.54" y2="53.34" width="0.1524" layer="91"/>
<wire x1="129.54" y1="53.34" x2="129.54" y2="50.8" width="0.1524" layer="91"/>
<wire x1="142.24" y1="53.34" x2="129.54" y2="53.34" width="0.1524" layer="91"/>
<junction x="129.54" y="53.34"/>
<wire x1="111.76" y1="53.34" x2="116.84" y2="53.34" width="0.1524" layer="91"/>
<wire x1="116.84" y1="53.34" x2="129.54" y2="53.34" width="0.1524" layer="91"/>
<wire x1="142.24" y1="53.34" x2="160.02" y2="53.34" width="0.1524" layer="91"/>
<pinref part="JP2" gate="-2" pin="S"/>
<pinref part="C7" gate="G$1" pin="2"/>
<wire x1="116.84" y1="55.88" x2="116.84" y2="53.34" width="0.1524" layer="91"/>
<pinref part="C8" gate="G$1" pin="2"/>
<wire x1="116.84" y1="53.34" x2="116.84" y2="50.8" width="0.1524" layer="91"/>
<junction x="116.84" y="53.34"/>
<pinref part="C5" gate="G$1" pin="2"/>
<pinref part="C6" gate="G$1" pin="2"/>
<pinref part="GND6" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="BNC1" gate="G$1" pin="GND"/>
<pinref part="GND7" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C15" gate="G$1" pin="2"/>
<pinref part="GND8" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="AGND"/>
<wire x1="66.04" y1="68.58" x2="63.5" y2="68.58" width="0.1524" layer="91"/>
<pinref part="GND9" gate="1" pin="GND"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="DVCC"/>
<pinref part="P+1" gate="VCC" pin="VCC"/>
<wire x1="71.12" y1="55.88" x2="63.5" y2="55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="BD3" gate="G$1" pin="1"/>
<wire x1="149.86" y1="91.44" x2="142.24" y2="91.44" width="0.1524" layer="91"/>
<pinref part="C3" gate="G$1" pin="1"/>
<wire x1="142.24" y1="91.44" x2="129.54" y2="91.44" width="0.1524" layer="91"/>
<wire x1="142.24" y1="88.9" x2="142.24" y2="91.44" width="0.1524" layer="91"/>
<junction x="142.24" y="91.44"/>
<pinref part="C4" gate="G$1" pin="1"/>
<wire x1="129.54" y1="91.44" x2="129.54" y2="88.9" width="0.1524" layer="91"/>
<pinref part="P+2" gate="VCC" pin="VCC"/>
<junction x="129.54" y="91.44"/>
<wire x1="111.76" y1="91.44" x2="116.84" y2="91.44" width="0.1524" layer="91"/>
<pinref part="C9" gate="G$1" pin="1"/>
<wire x1="116.84" y1="91.44" x2="129.54" y2="91.44" width="0.1524" layer="91"/>
<wire x1="116.84" y1="88.9" x2="116.84" y2="91.44" width="0.1524" layer="91"/>
<junction x="116.84" y="91.44"/>
</segment>
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<pinref part="P+3" gate="VCC" pin="VCC"/>
<wire x1="66.04" y1="25.4" x2="63.5" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VDD" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="VDD"/>
<pinref part="VDD1" gate="G$1" pin="VDD"/>
<wire x1="76.2" y1="73.66" x2="63.5" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="142.24" y1="63.5" x2="142.24" y2="66.04" width="0.1524" layer="91"/>
<wire x1="142.24" y1="66.04" x2="129.54" y2="66.04" width="0.1524" layer="91"/>
<wire x1="129.54" y1="66.04" x2="129.54" y2="63.5" width="0.1524" layer="91"/>
<pinref part="VDD2" gate="G$1" pin="VDD"/>
<pinref part="BD1" gate="G$1" pin="1"/>
<wire x1="111.76" y1="66.04" x2="116.84" y2="66.04" width="0.1524" layer="91"/>
<wire x1="116.84" y1="66.04" x2="129.54" y2="66.04" width="0.1524" layer="91"/>
<wire x1="142.24" y1="66.04" x2="147.32" y2="66.04" width="0.1524" layer="91"/>
<junction x="129.54" y="66.04"/>
<junction x="142.24" y="66.04"/>
<pinref part="C7" gate="G$1" pin="1"/>
<wire x1="116.84" y1="63.5" x2="116.84" y2="66.04" width="0.1524" layer="91"/>
<junction x="116.84" y="66.04"/>
<pinref part="C5" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="IC2" gate="G$1" pin="IN"/>
<wire x1="104.14" y1="116.84" x2="101.6" y2="116.84" width="0.1524" layer="91"/>
<pinref part="VDD3" gate="G$1" pin="VDD"/>
<pinref part="IC2" gate="G$1" pin="EN"/>
<wire x1="101.6" y1="116.84" x2="93.98" y2="116.84" width="0.1524" layer="91"/>
<wire x1="93.98" y1="116.84" x2="81.28" y2="116.84" width="0.1524" layer="91"/>
<wire x1="81.28" y1="116.84" x2="68.58" y2="116.84" width="0.1524" layer="91"/>
<wire x1="68.58" y1="116.84" x2="63.5" y2="116.84" width="0.1524" layer="91"/>
<wire x1="104.14" y1="114.3" x2="101.6" y2="114.3" width="0.1524" layer="91"/>
<wire x1="101.6" y1="114.3" x2="101.6" y2="116.84" width="0.1524" layer="91"/>
<junction x="101.6" y="116.84"/>
<pinref part="C10" gate="G$1" pin="1"/>
<wire x1="68.58" y1="114.3" x2="68.58" y2="116.84" width="0.1524" layer="91"/>
<pinref part="C11" gate="G$1" pin="1"/>
<wire x1="93.98" y1="114.3" x2="93.98" y2="116.84" width="0.1524" layer="91"/>
<junction x="68.58" y="116.84"/>
<junction x="93.98" y="116.84"/>
<pinref part="C12" gate="G$1" pin="1"/>
<wire x1="81.28" y1="114.3" x2="81.28" y2="116.84" width="0.1524" layer="91"/>
<junction x="81.28" y="116.84"/>
</segment>
</net>
<net name="VSS" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="VSS"/>
<pinref part="VSS1" gate="G$1" pin="VSS"/>
<wire x1="76.2" y1="63.5" x2="63.5" y2="63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="142.24" y1="43.18" x2="142.24" y2="40.64" width="0.1524" layer="91"/>
<wire x1="142.24" y1="40.64" x2="129.54" y2="40.64" width="0.1524" layer="91"/>
<wire x1="129.54" y1="40.64" x2="129.54" y2="43.18" width="0.1524" layer="91"/>
<pinref part="VSS2" gate="G$1" pin="VSS"/>
<pinref part="BD2" gate="G$1" pin="1"/>
<wire x1="111.76" y1="40.64" x2="116.84" y2="40.64" width="0.1524" layer="91"/>
<wire x1="116.84" y1="40.64" x2="129.54" y2="40.64" width="0.1524" layer="91"/>
<wire x1="142.24" y1="40.64" x2="147.32" y2="40.64" width="0.1524" layer="91"/>
<junction x="129.54" y="40.64"/>
<junction x="142.24" y="40.64"/>
<pinref part="C8" gate="G$1" pin="1"/>
<wire x1="116.84" y1="43.18" x2="116.84" y2="40.64" width="0.1524" layer="91"/>
<junction x="116.84" y="40.64"/>
<pinref part="C6" gate="G$1" pin="1"/>
</segment>
</net>
<net name="VOUT" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="VOUT"/>
<wire x1="63.5" y1="81.28" x2="66.04" y2="81.28" width="0.1524" layer="91"/>
<label x="68.58" y="81.28" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="BNC1" gate="G$1" pin="OUT"/>
<wire x1="25.4" y1="20.32" x2="30.48" y2="20.32" width="0.1524" layer="91"/>
<label x="33.02" y="20.32" size="1.778" layer="95"/>
</segment>
</net>
<net name="VDD_IN" class="0">
<segment>
<pinref part="BD1" gate="G$1" pin="2"/>
<wire x1="154.94" y1="66.04" x2="157.48" y2="66.04" width="0.1524" layer="91"/>
<wire x1="157.48" y1="66.04" x2="157.48" y2="58.42" width="0.1524" layer="91"/>
<pinref part="JP2" gate="-1" pin="S"/>
<wire x1="157.48" y1="58.42" x2="160.02" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VSS_IN" class="0">
<segment>
<pinref part="BD2" gate="G$1" pin="2"/>
<wire x1="154.94" y1="40.64" x2="157.48" y2="40.64" width="0.1524" layer="91"/>
<wire x1="157.48" y1="40.64" x2="157.48" y2="48.26" width="0.1524" layer="91"/>
<pinref part="JP2" gate="-3" pin="S"/>
<wire x1="157.48" y1="48.26" x2="160.02" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC_IN" class="0">
<segment>
<pinref part="BD3" gate="G$1" pin="2"/>
<wire x1="157.48" y1="91.44" x2="160.02" y2="91.44" width="0.1524" layer="91"/>
<pinref part="JP3" gate="-1" pin="S"/>
</segment>
</net>
<net name="5VOUT" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="OUT"/>
<wire x1="124.46" y1="116.84" x2="127" y2="116.84" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="IN"/>
<pinref part="C13" gate="G$1" pin="1"/>
<wire x1="127" y1="116.84" x2="132.08" y2="116.84" width="0.1524" layer="91"/>
<wire x1="127" y1="114.3" x2="127" y2="116.84" width="0.1524" layer="91"/>
<junction x="127" y="116.84"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="EXT_CAP"/>
<pinref part="C15" gate="G$1" pin="1"/>
<wire x1="38.1" y1="55.88" x2="20.32" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VREF_OUT" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="OUT"/>
<wire x1="152.4" y1="116.84" x2="154.94" y2="116.84" width="0.1524" layer="91"/>
<pinref part="C14" gate="G$1" pin="1"/>
<wire x1="154.94" y1="116.84" x2="157.48" y2="116.84" width="0.1524" layer="91"/>
<wire x1="154.94" y1="114.3" x2="154.94" y2="116.84" width="0.1524" layer="91"/>
<junction x="154.94" y="116.84"/>
<pinref part="J1" gate="1" pin="1"/>
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
