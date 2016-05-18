<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.3.0">
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
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="con-phoenix-508">
<description>&lt;b&gt;Phoenix Connectors&lt;/b&gt;&lt;p&gt;
Grid 5.08 mm&lt;p&gt;
Based on the previous libraries:
&lt;ul&gt;
&lt;li&gt;pho508a.lbr
&lt;li&gt;pho508b.lbr
&lt;li&gt;pho508c.lbr
&lt;li&gt;pho508d.lbr
&lt;li&gt;pho508e.lbr
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MSTBA4">
<description>&lt;b&gt;PHOENIX&lt;/b&gt;</description>
<wire x1="-11.176" y1="7.112" x2="-11.176" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-11.176" y1="7.112" x2="-8.255" y2="7.112" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="7.112" x2="-6.985" y2="7.112" width="0.1524" layer="51"/>
<wire x1="-6.985" y1="7.112" x2="-3.175" y2="7.112" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="7.112" x2="-1.905" y2="7.112" width="0.1524" layer="51"/>
<wire x1="8.255" y1="7.112" x2="11.176" y2="7.112" width="0.1524" layer="21"/>
<wire x1="-11.176" y1="-1.905" x2="11.176" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="11.176" y1="7.112" x2="11.176" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-11.176" y1="-4.953" x2="-8.509" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="-11.176" y1="-1.905" x2="-11.176" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="11.176" y1="-1.905" x2="11.176" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-4.953" x2="-7.112" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-4.953" x2="-3.429" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="-7.112" y1="-3.683" x2="-8.128" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="-4.953" x2="-8.128" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="-4.953" x2="-6.731" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="-4.953" x2="-2.032" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="-4.953" x2="1.651" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-4.953" x2="3.429" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-4.953" x2="6.731" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-4.953" x2="8.509" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-4.953" x2="11.176" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-4.953" x2="-3.048" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-4.953" x2="-1.651" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-3.683" x2="-2.032" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-3.683" x2="3.048" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-4.953" x2="3.048" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-4.953" x2="2.032" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="1.905" y1="7.112" x2="3.175" y2="7.112" width="0.1524" layer="51"/>
<wire x1="-1.905" y1="7.112" x2="1.905" y2="7.112" width="0.1524" layer="21"/>
<wire x1="6.985" y1="7.112" x2="8.255" y2="7.112" width="0.1524" layer="51"/>
<wire x1="3.175" y1="7.112" x2="6.985" y2="7.112" width="0.1524" layer="21"/>
<wire x1="7.112" y1="-3.683" x2="8.128" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-4.953" x2="8.128" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-4.953" x2="7.112" y2="-3.683" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="5.08" drill="1.397" shape="long" rot="R90"/>
<pad name="2" x="-2.54" y="5.08" drill="1.397" shape="long" rot="R90"/>
<pad name="4" x="7.62" y="5.08" drill="1.397" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="5.08" drill="1.397" shape="long" rot="R90"/>
<text x="-11.176" y="7.62" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.16" y="0" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-9.652" y="4.445" size="1.27" layer="21" ratio="10">1</text>
<text x="-4.826" y="4.445" size="1.27" layer="21" ratio="10">2</text>
<text x="0.254" y="4.445" size="1.27" layer="21" ratio="10">3</text>
<text x="5.334" y="4.445" size="1.27" layer="21" ratio="10">4</text>
</package>
<package name="MSTBA2">
<description>&lt;b&gt;PHOENIX&lt;/b&gt;</description>
<wire x1="-6.096" y1="7.112" x2="-6.096" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="7.112" x2="-3.175" y2="7.112" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="7.112" x2="-1.905" y2="7.112" width="0.1524" layer="51"/>
<wire x1="-1.905" y1="7.112" x2="1.905" y2="7.112" width="0.1524" layer="21"/>
<wire x1="1.905" y1="7.112" x2="3.175" y2="7.112" width="0.1524" layer="51"/>
<wire x1="3.175" y1="7.112" x2="6.096" y2="7.112" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="-1.905" x2="6.096" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="6.096" y1="7.112" x2="6.096" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="-4.953" x2="-3.429" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="-1.905" x2="-6.096" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-1.905" x2="6.096" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="-4.953" x2="-2.032" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="-4.953" x2="1.651" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-3.683" x2="-3.048" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-4.953" x2="-3.048" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-4.953" x2="-1.651" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-4.953" x2="3.048" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-4.953" x2="6.096" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-4.953" x2="2.032" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-4.953" x2="3.429" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-3.683" x2="3.048" y2="-3.683" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="5.08" drill="1.397" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="5.08" drill="1.397" shape="long" rot="R90"/>
<text x="-6.096" y="7.62" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="0" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-4.572" y="4.445" size="1.27" layer="21" ratio="10">1</text>
<text x="0.254" y="4.445" size="1.27" layer="21" ratio="10">2</text>
</package>
</packages>
<symbols>
<symbol name="SK">
<wire x1="0" y1="-1.27" x2="-1.27" y2="0" width="0.254" layer="94" curve="-90" cap="flat"/>
<wire x1="-1.27" y1="0" x2="0" y2="1.27" width="0.254" layer="94" curve="-90" cap="flat"/>
<wire x1="-3.81" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="0" y2="1.27" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="0" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<circle x="-5.08" y="0" radius="1.27" width="0.254" layer="94"/>
<circle x="-5.08" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="-6.604" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<pin name="1" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="SKV">
<wire x1="0" y1="-1.27" x2="-1.27" y2="0" width="0.254" layer="94" curve="-90" cap="flat"/>
<wire x1="-1.27" y1="0" x2="0" y2="1.27" width="0.254" layer="94" curve="-90" cap="flat"/>
<wire x1="-3.81" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="0" y2="1.27" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="0" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<circle x="-5.08" y="0" radius="1.27" width="0.254" layer="94"/>
<circle x="-5.08" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="-7.62" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<text x="-6.604" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<pin name="1" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MSTBA4" prefix="X">
<description>&lt;b&gt;PHOENIX&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="SK" x="0" y="7.62" addlevel="always"/>
<gate name="-2" symbol="SK" x="0" y="2.54" addlevel="always"/>
<gate name="-3" symbol="SK" x="0" y="-2.54" addlevel="always"/>
<gate name="-4" symbol="SKV" x="0" y="-7.62" addlevel="always"/>
</gates>
<devices>
<device name="" package="MSTBA4">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-2" pin="1" pad="2"/>
<connect gate="-3" pin="1" pad="3"/>
<connect gate="-4" pin="1" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="FARNELL" constant="no"/>
<attribute name="MPN" value="1757268" constant="no"/>
<attribute name="OC_FARNELL" value="3705195" constant="no"/>
<attribute name="OC_NEWARK" value="71C4163" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MSTBA2" prefix="X">
<description>&lt;b&gt;PHOENIX&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="SK" x="0" y="5.08" addlevel="always"/>
<gate name="-2" symbol="SKV" x="0" y="0" addlevel="always"/>
</gates>
<devices>
<device name="" package="MSTBA2">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-2" pin="1" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="FARNELL" constant="no"/>
<attribute name="MPN" value="1757242" constant="no"/>
<attribute name="OC_FARNELL" value="3705171" constant="no"/>
<attribute name="OC_NEWARK" value="71C4161" constant="no"/>
</technology>
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
<symbol name="+12V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.27" y1="-0.635" x2="0" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="-0.635" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+12V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="V+">
<wire x1="0.889" y1="-1.27" x2="0" y2="0.127" width="0.254" layer="94"/>
<wire x1="0" y1="0.127" x2="-0.889" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-0.889" y1="-1.27" x2="0.889" y2="-1.27" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="V+" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+12V" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+12V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
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
<deviceset name="V+" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="V+" x="0" y="0"/>
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
<library name="transistor-fet">
<description>&lt;b&gt;Field Effect Transistors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;p&gt;
&lt;p&gt;
Symbols changed according to IEC617&lt;p&gt; 
All types, packages and assignment to symbols and pins checked&lt;p&gt;
Package outlines partly checked&lt;p&gt;
&lt;p&gt;
JFET = junction FET&lt;p&gt;
IGBT-x = insulated gate bipolar transistor&lt;p&gt;
x=N: NPN; x=P: PNP&lt;p&gt;
IGFET-mc-nnn; (IGFET=insulated gate field effect transistor)&lt;P&gt;
m=D: depletion mode (Verdr&amp;auml;ngungstyp)&lt;p&gt;
m=E: enhancement mode (Anreicherungstyp)&lt;p&gt;
c: N=N-channel; P=P-Channel&lt;p&gt;
GDSB: gate, drain, source, bulk&lt;p&gt;
&lt;p&gt;
by R. Vogg  15.March.2002</description>
<packages>
<package name="SO-8">
<description>&lt;b&gt;SO 8 small outline&lt;/b&gt;</description>
<wire x1="-1.8034" y1="2.3622" x2="-1.8034" y2="-2.3622" width="0.127" layer="21"/>
<wire x1="-1.8034" y1="-2.3622" x2="1.8034" y2="-2.3622" width="0.127" layer="21"/>
<wire x1="1.8034" y1="-2.3622" x2="1.8034" y2="2.3622" width="0.127" layer="21"/>
<wire x1="1.8034" y1="2.3622" x2="-1.8034" y2="2.3622" width="0.127" layer="21"/>
<circle x="-1.2446" y="1.8034" radius="0.3556" width="0.0508" layer="21"/>
<smd name="1" x="-2.7432" y="1.905" dx="1.524" dy="0.6096" layer="1"/>
<smd name="8" x="2.7432" y="1.905" dx="1.524" dy="0.6096" layer="1"/>
<smd name="2" x="-2.7432" y="0.635" dx="1.524" dy="0.6096" layer="1"/>
<smd name="3" x="-2.7432" y="-0.635" dx="1.524" dy="0.6096" layer="1"/>
<smd name="7" x="2.7432" y="0.635" dx="1.524" dy="0.6096" layer="1"/>
<smd name="6" x="2.7432" y="-0.635" dx="1.524" dy="0.6096" layer="1"/>
<smd name="4" x="-2.7432" y="-1.905" dx="1.524" dy="0.6096" layer="1"/>
<smd name="5" x="2.7432" y="-1.905" dx="1.524" dy="0.6096" layer="1"/>
<text x="-2.032" y="-4.0005" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-2.032" y="2.7305" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.762" y="1.143" size="1.016" layer="21" ratio="10">8</text>
<rectangle x1="-2.8702" y1="1.7272" x2="-1.8542" y2="2.0828" layer="51"/>
<rectangle x1="-2.8702" y1="0.4572" x2="-1.8542" y2="0.8128" layer="51"/>
<rectangle x1="-2.8702" y1="-0.8128" x2="-1.8542" y2="-0.4572" layer="51"/>
<rectangle x1="-2.8702" y1="-2.0828" x2="-1.8542" y2="-1.7272" layer="51"/>
<rectangle x1="1.8542" y1="1.7272" x2="2.8702" y2="2.0828" layer="51"/>
<rectangle x1="1.8542" y1="0.4572" x2="2.8702" y2="0.8128" layer="51"/>
<rectangle x1="1.8542" y1="-0.8128" x2="2.8702" y2="-0.4572" layer="51"/>
<rectangle x1="1.8542" y1="-2.0828" x2="2.8702" y2="-1.7272" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="P-MOSFET">
<wire x1="0.762" y1="-0.762" x2="0.762" y2="0" width="0.254" layer="94"/>
<wire x1="0.762" y1="0" x2="0.762" y2="0.762" width="0.254" layer="94"/>
<wire x1="0.762" y1="-3.175" x2="0.762" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0.762" y1="-2.54" x2="0.762" y2="-1.905" width="0.254" layer="94"/>
<wire x1="0.762" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="2.54" width="0.1524" layer="94"/>
<wire x1="0.762" y1="1.905" x2="0.762" y2="2.54" width="0.254" layer="94"/>
<wire x1="0.762" y1="2.54" x2="0.762" y2="3.175" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="0.762" y2="2.54" width="0.1524" layer="94"/>
<wire x1="3.81" y1="-2.54" x2="3.81" y2="0.508" width="0.1524" layer="94"/>
<wire x1="3.81" y1="0.508" x2="3.81" y2="2.54" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="3.81" y2="2.54" width="0.1524" layer="94"/>
<wire x1="0.762" y1="-2.54" x2="3.81" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="3.048" y1="0.762" x2="3.302" y2="0.508" width="0.1524" layer="94"/>
<wire x1="3.302" y1="0.508" x2="3.81" y2="0.508" width="0.1524" layer="94"/>
<wire x1="3.81" y1="0.508" x2="4.318" y2="0.508" width="0.1524" layer="94"/>
<wire x1="4.318" y1="0.508" x2="4.572" y2="0.254" width="0.1524" layer="94"/>
<circle x="2.54" y="2.54" radius="0.3592" width="0" layer="94"/>
<circle x="2.54" y="-2.54" radius="0.3592" width="0" layer="94"/>
<text x="-11.43" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<text x="-11.43" y="-1.27" size="1.778" layer="95">&gt;NAME</text>
<pin name="S" x="2.54" y="5.08" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="G" x="-2.54" y="2.54" visible="off" length="short" direction="pas"/>
<pin name="D" x="2.54" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<polygon width="0.1524" layer="94">
<vertex x="3.81" y="0.508"/>
<vertex x="4.318" y="-0.254"/>
<vertex x="3.302" y="-0.254"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="2.54" y="0"/>
<vertex x="1.524" y="0.762"/>
<vertex x="1.524" y="-0.762"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="BSO201SP" prefix="Q">
<description>&lt;b&gt;OptiMOS(R)-P Small-Signal-Transistor&lt;/b&gt; P-Channel, Enhancement mode, Super Logic Level (2.5 V rated)&lt;p&gt;
RDS(on) 8mOhm, ID -14.9 a&lt;br&gt;
Source: http://www.infineon.com/upload/Document/cmc_upload/documents/011/3655/BSO201SP_211201.pdf</description>
<gates>
<gate name="G$1" symbol="P-MOSFET" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SO-8">
<connects>
<connect gate="G$1" pin="D" pad="5 6 7 8"/>
<connect gate="G$1" pin="G" pad="4"/>
<connect gate="G$1" pin="S" pad="1 2 3"/>
</connects>
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
<part name="X1" library="con-phoenix-508" deviceset="MSTBA4" device=""/>
<part name="P+1" library="supply1" deviceset="+12V" device=""/>
<part name="P+2" library="supply1" deviceset="+12V" device="" value="+12V2"/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="X2" library="con-phoenix-508" deviceset="MSTBA4" device=""/>
<part name="P+3" library="supply1" deviceset="+12V" device="" value="+12V2"/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="X3" library="con-phoenix-508" deviceset="MSTBA2" device=""/>
<part name="GND5" library="supply1" deviceset="GND" device=""/>
<part name="P+4" library="supply1" deviceset="V+" device="" value="V+Bat"/>
<part name="P+5" library="supply1" deviceset="+12V" device=""/>
<part name="P+6" library="supply1" deviceset="V+" device="" value="V+Bat"/>
<part name="P+7" library="supply1" deviceset="+12V" device="" value="+12VOUT"/>
<part name="P+8" library="supply1" deviceset="+12V" device="" value="+12VOUT"/>
<part name="Q1" library="transistor-fet" deviceset="BSO201SP" device=""/>
<part name="Q2" library="transistor-fet" deviceset="BSO201SP" device=""/>
<part name="Q3" library="transistor-fet" deviceset="BSO201SP" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="X1" gate="-1" x="40.64" y="48.26"/>
<instance part="X1" gate="-2" x="40.64" y="40.64"/>
<instance part="X1" gate="-3" x="40.64" y="33.02"/>
<instance part="X1" gate="-4" x="40.64" y="25.4"/>
<instance part="P+1" gate="1" x="58.42" y="38.1"/>
<instance part="P+2" gate="1" x="58.42" y="53.34"/>
<instance part="GND1" gate="1" x="50.8" y="38.1"/>
<instance part="GND2" gate="1" x="50.8" y="22.86"/>
<instance part="X2" gate="-1" x="40.64" y="7.62"/>
<instance part="X2" gate="-2" x="40.64" y="0"/>
<instance part="X2" gate="-3" x="40.64" y="-7.62"/>
<instance part="X2" gate="-4" x="40.64" y="-15.24"/>
<instance part="P+3" gate="1" x="58.42" y="12.7"/>
<instance part="GND3" gate="1" x="50.8" y="-2.54"/>
<instance part="GND4" gate="1" x="50.8" y="-17.78"/>
<instance part="X3" gate="-1" x="38.1" y="-53.34"/>
<instance part="X3" gate="-2" x="38.1" y="-43.18"/>
<instance part="GND5" gate="1" x="48.26" y="-58.42"/>
<instance part="P+4" gate="1" x="50.8" y="-38.1"/>
<instance part="P+5" gate="1" x="180.34" y="10.16"/>
<instance part="P+6" gate="1" x="157.48" y="10.16"/>
<instance part="P+7" gate="1" x="58.42" y="-2.54"/>
<instance part="P+8" gate="1" x="167.64" y="-43.18" rot="R180"/>
<instance part="Q1" gate="G$1" x="182.88" y="-20.32" rot="R180"/>
<instance part="Q2" gate="G$1" x="154.94" y="-20.32" rot="MR180"/>
<instance part="Q3" gate="G$1" x="154.94" y="-5.08"/>
</instances>
<busses>
</busses>
<nets>
<net name="+12V2" class="0">
<segment>
<pinref part="X1" gate="-1" pin="1"/>
<pinref part="P+2" gate="1" pin="+12V"/>
<wire x1="45.72" y1="48.26" x2="58.42" y2="48.26" width="0.1524" layer="91"/>
<wire x1="58.42" y1="48.26" x2="58.42" y2="50.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X2" gate="-1" pin="1"/>
<pinref part="P+3" gate="1" pin="+12V"/>
<wire x1="45.72" y1="7.62" x2="58.42" y2="7.62" width="0.1524" layer="91"/>
<wire x1="58.42" y1="7.62" x2="58.42" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="X1" gate="-4" pin="1"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="45.72" y1="25.4" x2="50.8" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X1" gate="-2" pin="1"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="45.72" y1="40.64" x2="50.8" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X2" gate="-2" pin="1"/>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="45.72" y1="0" x2="50.8" y2="0" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X2" gate="-4" pin="1"/>
<pinref part="GND4" gate="1" pin="GND"/>
<wire x1="45.72" y1="-15.24" x2="50.8" y2="-15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND5" gate="1" pin="GND"/>
<wire x1="48.26" y1="-53.34" x2="48.26" y2="-55.88" width="0.1524" layer="91"/>
<pinref part="X3" gate="-1" pin="1"/>
<wire x1="43.18" y1="-53.34" x2="48.26" y2="-53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="V+" class="0">
<segment>
<pinref part="P+4" gate="1" pin="V+"/>
<wire x1="50.8" y1="-43.18" x2="50.8" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="X3" gate="-2" pin="1"/>
<wire x1="43.18" y1="-43.18" x2="50.8" y2="-43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+6" gate="1" pin="V+"/>
<wire x1="157.48" y1="0" x2="157.48" y2="7.62" width="0.1524" layer="91"/>
<pinref part="Q3" gate="G$1" pin="S"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<wire x1="152.4" y1="-17.78" x2="144.78" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="144.78" y1="-17.78" x2="144.78" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="144.78" y1="-7.62" x2="152.4" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="144.78" y1="-7.62" x2="129.54" y2="-7.62" width="0.1524" layer="91"/>
<junction x="144.78" y="-7.62"/>
<pinref part="Q3" gate="G$1" pin="G"/>
<wire x1="152.4" y1="-7.62" x2="152.4" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="Q2" gate="G$1" pin="G"/>
<wire x1="152.4" y1="-17.78" x2="152.4" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<wire x1="185.42" y1="-22.86" x2="198.12" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="Q1" gate="G$1" pin="G"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<wire x1="157.48" y1="-15.24" x2="157.48" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="Q2" gate="G$1" pin="D"/>
<pinref part="Q3" gate="G$1" pin="D"/>
</segment>
</net>
<net name="+12V1" class="0">
<segment>
<pinref part="P+1" gate="1" pin="+12V"/>
<wire x1="58.42" y1="35.56" x2="58.42" y2="33.02" width="0.1524" layer="91"/>
<pinref part="X1" gate="-3" pin="1"/>
<wire x1="58.42" y1="33.02" x2="45.72" y2="33.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+5" gate="1" pin="+12V"/>
<pinref part="Q1" gate="G$1" pin="D"/>
<wire x1="180.34" y1="7.62" x2="180.34" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+12VOUT" class="0">
<segment>
<wire x1="157.48" y1="-33.02" x2="167.64" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="167.64" y1="-33.02" x2="180.34" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="180.34" y1="-33.02" x2="180.34" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="157.48" y1="-25.4" x2="157.48" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="Q1" gate="G$1" pin="S"/>
<pinref part="Q2" gate="G$1" pin="S"/>
<pinref part="P+8" gate="1" pin="+12V"/>
<wire x1="167.64" y1="-40.64" x2="167.64" y2="-33.02" width="0.1524" layer="91"/>
<junction x="167.64" y="-33.02"/>
</segment>
<segment>
<pinref part="P+7" gate="1" pin="+12V"/>
<wire x1="58.42" y1="-5.08" x2="58.42" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="X2" gate="-3" pin="1"/>
<wire x1="58.42" y1="-7.62" x2="45.72" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
